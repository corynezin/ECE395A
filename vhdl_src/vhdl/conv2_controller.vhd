-- Name : Brenda So
-- Date : 11/25/2017
-- Goal : Make a controller to control the different muxes and enabling pins in conv2
-- NOTE : For x_mux and h_mux, the 0 port is connected to FIFO / ram, while the 1 port is connected to feedback
-- TODO : Add support for MAC and output_mux and RAM
-- state 0 : IDLE State
-- state 1 : INIT State, initialize State (x_fifo and h_fifo are being filled)
-- state 2 : DROP READ State. In this state, when a value is read from x_fifo, 
--           drop it and write a new value from big FIFO
-- state 3 : NORMAL READ State. In this state, when a value is read from the x_fifo
--           write the same value back to the small FIFO
-- state 4 : OUTPUT WRITE State. In this State, the output of the MAC is written to o_fifo. 
--           the o_mux will depend on whether w_counter is 1 or not
-- state 5 : CHANGE WEIGHT State. In this state, when a value is read from the x_fifo
--           the weight would not be written back to the h_fifo, instead it would come from RAM

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv2_controller is
  generic(
    N_filters: integer := 32
  );
  Port ( 
  -- input 
      clk : IN STD_LOGIC;
      last_fifo_full : IN STD_LOGIC;
      last_fifo_empty: IN STD_LOGIC;
      x_fifo_full : IN STD_LOGIC;
      h_fifo_full : IN STD_LOGIC;
      o_fifo_full: IN STD_LOGIC;
      x_fifo_empty : IN STD_LOGIC;
      h_fifo_empty : IN STD_LOGIC;
      o_fifo_empty : IN STD_LOGIC;
      x_fifo_prog_full : IN STD_LOGIC;
      h_fifo_prog_full : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      
      -- output to MUXes
      x_mux : OUT STD_LOGIC;
      h_mux : OUT STD_LOGIC;
      o_mux : OUT STD_LOGIC;
      
      -- output to FIFOs
      x_fifo_rden: OUT STD_LOGIC;
      x_fifo_wren: OUT STD_LOGIC;
      h_fifo_rden: OUT STD_LOGIC;
      h_fifo_wren: OUT STD_LOGIC;
      o_fifo_rden: OUT STD_LOGIC;
      o_fifo_wren: OUT STD_LOGIC;
      b_fifo_rden: OUT STD_LOGIC;
      b_fifo_wren: OUT STD_LOGIC;
      
      ram_address: OUT STD_LOGIC_VECTOR(8 downto 0);
      mac_enable: OUT STD_LOGIC;
      filter_input_enable: OUT STD_LOGIC;
      ctr_rst: OUT STD_LOGIC;
      relu_ready : OUT STD_LOGIC;
      result_ready: OUT STD_LOGIC
  );
end conv2_controller;

architecture RTL of conv2_controller is
signal curr_state : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal curr_state_d1,curr_state_d2 : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal b_fifo_wren_assert : STD_LOGIC := '0';
signal b_fifo_rden_assert : STD_LOGIC := '0';
signal x_fifo_wren_assert : STD_LOGIC := '0';
signal x_fifo_rden_assert : STD_LOGIC := '0';
signal h_fifo_wren_assert : STD_LOGIC := '0';
signal h_fifo_rden_assert : STD_LOGIC := '0';
signal o_fifo_wren_assert : STD_LOGIC := '0';
signal o_fifo_rden_assert : STD_LOGIC := '0';
signal prev_state: STD_LOGIC_VECTOR(3 downto 0);
signal prev_prev_state: STD_LOGIC_VECTOR(3 downto 0);

-- signal prev_prev_state: STD_LOGIC_VECTOR(3 downto 0);
-- signal prev_prev_prev_state: STD_LOGIC_VECTOR(3 downto 0);

begin
b_fifo_wren <= '1' when b_fifo_wren_assert = '1' and (last_fifo_full = '0') else '0';
b_fifo_rden <= '1' when b_fifo_rden_assert = '1' and (last_fifo_empty = '0') else '0';
x_fifo_wren <= '1' when x_fifo_wren_assert = '1' and (x_fifo_full = '0') else '0';
x_fifo_rden <= '1' when x_fifo_rden_assert = '1' and (x_fifo_empty = '0') else '0';
h_fifo_wren <= '1' when h_fifo_wren_assert = '1' and (h_fifo_full = '0') else '0';
h_fifo_rden <= '1' when h_fifo_rden_assert = '1' and (h_fifo_empty = '0') else '0';
o_fifo_wren <= '1' when o_fifo_wren_assert = '1' and (o_fifo_full = '0') else '0';
o_fifo_rden <= '1' when o_fifo_rden_assert = '1' and (o_fifo_empty = '0') else '0';
process(clk) 
variable w_counter : INTEGER := 0;  -- counter to see when to change weights (h) (start changing
variable wc_counter : INTEGER := 0; -- counter to change weights (stop changing)
variable d_counter : INTEGER := 0;  -- counter for data (x)
variable o_counter : INTEGER := 0;  -- counter to see whether we finish changing all the weights
variable ram_counter: INTEGER := 0;
variable counter1,counter3,counter5,counter6: INTEGER := 0;
begin
    if rising_edge(clk) then
        if (rst = '1') then
            curr_state <= "0000";
            curr_state_d1 <= "0000";
            curr_state_d2 <= "0000";
            prev_state <= "0000";
            prev_prev_state <= "0000";
            w_counter := 0;
            wc_counter := 0;
            d_counter := 0;
            o_counter := 0;
            ram_counter := 0;
            counter1 := 0;
            counter3 := 0;
            counter5 := 0;
            counter6 := 0;
            relu_ready <= '0';
            result_ready <= '0';
            b_fifo_wren_assert <= '0';
            b_fifo_rden_assert <= '0';
            x_fifo_wren_assert <= '0';
            x_fifo_rden_assert <= '0';
            h_fifo_wren_assert <= '0';
            h_fifo_rden_assert <= '0';
            o_fifo_wren_assert <= '0';
            o_fifo_rden_assert <= '0';
            ram_address <= "000000000";
            mac_enable <= '0';
            relu_ready <= '0';
            result_ready <= '0';
        end if;
        case curr_state is
            when "0000" =>
                -- case 0 : IDLE state, nothing happens, no processing should occur, all enabling pins should be 
                -- set to false, and all muxes should be set to zero
                x_mux <= '0';
                h_mux <= '0';
                o_mux <= '0';
                relu_ready <= '0';
                result_ready <= '0';
                x_fifo_rden_assert <= '0';
                x_fifo_wren_assert <= '0';
                h_fifo_rden_assert <= '0';
                h_fifo_wren_assert <= '0';
                o_fifo_rden_assert <= '0';
                o_fifo_wren_assert <= '0'; 
                b_fifo_rden_assert <= '0'; 
                b_fifo_wren_assert <= '1';
                mac_enable <= '0';
                filter_input_enable <= '0';
                ctr_rst <= '0';
                -- if the previous fifo is full, then we should go to initialize state
                if last_fifo_full = '1' then
                    curr_state <= "0001";
                    ram_counter := ram_counter + 1;
                else
                    w_counter := 0;
                    d_counter := 0;
                    o_counter := 0;
                    wc_counter := 0;
                    ram_counter := 0;
                    ram_address <= "000000000";
                end if;
            when "0001" =>
                -- case 1 : INIT state, the MAC and output FIFO should not be changed
                -- but we can start filling up the x_fifo and h_fifo, the MAC and output FIFO
                -- should still be disabled
                x_mux <= '0';
                h_mux <= '0';
                o_mux <= '0';
                -- since h_fifo_wren need to account for 2 read latencies from RAM, the counter needs to count
                -- to 3 before h_fifo_wren is enabled, before it counts to 3, th ram counter should 
                if counter1 = 3 then
                    h_fifo_wren_assert <= '1';
                elsif counter1 = 2 then
                    counter1 := counter1 + 1;
                elsif counter1 = 1 then
                    x_fifo_rden_assert <= '0';
                    x_fifo_wren_assert <= '1';
                    o_fifo_rden_assert <= '0';
                    o_fifo_wren_assert <= '0';
                    counter1 := counter1 + 1;
                else
                    counter1 := counter1 + 1;
                end if;
                b_fifo_rden_assert <= '1';
                b_fifo_wren_assert <= '0';
                h_fifo_wren_assert <= '1';
                mac_enable <= '0';
                filter_input_enable <= '0';
                ctr_rst <= '0';
                -- if x_fifo is full and h_fifo is full, then we can proceed to drop read stage,
                -- where the first value is read
                w_counter := 0;
                d_counter := 0;
                o_counter := 0;
                wc_counter := 0;
                
                -- if x fifo is full, don't write anything from b fifo
                --if counter5 = 16 then
                --    b_fifo_rden_assert <= '0';
                --end if;

                if counter5 = 16 then
                    curr_state <= "0010"; 
                    b_fifo_rden_assert <= '0'; 
                    counter1 := 0;
                    counter5 := 0;
                else
                    counter5 := counter5 + 1;
                end if;
                if ram_counter <= 15 then
                    ram_counter := ram_counter + 1;
                end if;
            when "0010" =>
                -- state 2 : DROP READ State. In this state, when a value is read from x_fifo, 
                -- drop it THe MAC takes input at this state
                x_mux <= '0';   
                h_mux <= '1';   -- read back from h_fifo
                o_mux <= '0';
                --x_fifo_rden_assert <= '1';
                x_fifo_wren_assert <= '0';
                if prev_state = "0101" then
                    x_fifo_rden_assert <= '1';
                else
                    x_fifo_rden_assert <= '1';
                end if;
                if prev_state = "0100" or prev_state = "0101" then
                    h_fifo_rden_assert <= '0'; -- changed 1 to 0
                    h_fifo_wren_assert <= '0'; -- same here
                else
                    h_fifo_rden_assert <= '1'; -- changed 1 to 0
                    h_fifo_wren_assert <= '1'; -- same here
                end if;
                o_fifo_rden_assert <= '0';
                o_fifo_wren_assert <= '0'; 
                b_fifo_rden_assert <= '0';
                b_fifo_wren_assert <= '0';
                filter_input_enable <= '0';
                ctr_rst <= '0';
                if prev_state = "0100" then
                    mac_enable <= '1';
                else
                    mac_enable <= '0';
                end if;
                w_counter := w_counter + 1; -- increment the weight counter by 1 
                d_counter := 1;
                curr_state <= "0011";   -- go  to state 3
            when "0011" =>
                -- state 3 : NORMAL READ State. In this state, when a value is read from x_fifo,
                -- write the same value back to FIFO    
                if counter3 = 1 then
                    x_mux <= '1';   -- read back from x_fifo
                    h_mux <= '1';   -- read back from h_fifo
                    o_mux <= '0';
                    ctr_rst <= '0';
                else
                    x_mux <= '0';
                    counter3 := counter3 + 1;
                    ctr_rst <= '1';
                end if;
                if prev_state = "0010" then
                    filter_input_enable <= '0';
                end if;
                x_fifo_rden_assert <= '1';
                x_fifo_wren_assert <= '1';
                h_fifo_rden_assert <= '1';
                h_fifo_wren_assert <= '1';
                --o_fifo_rden_assert <= '0';
                o_fifo_wren_assert <= '0'; 
                b_fifo_rden_assert <= '0';
                b_fifo_wren_assert <= '0';
                mac_enable <= '1';
                filter_input_enable <= '1';
                d_counter := d_counter + 1;
                if (d_counter = 16) and wc_counter > 0 then
                    o_fifo_rden_assert <= '1';
                else
                    o_fifo_rden_assert <= '0';
                end if;
                if (d_counter = 17) then
                    curr_state <= "0100";

                    b_fifo_rden_assert <= '1';
                    counter3 := 0;
                end if;
            when "0100" =>
                -- state 4 : OUTPUT WRITE State. In this State, the output of the MAC is written to o_fifo. 
                --           the value of o_mux will depend on whether w_counter is 1 or not
                -- if w_counter is 1, it means this is the first set of values to be 
                -- written into output FIFO, so just deliver the outputs directly
                -- from MAC to FIFO, else , we need to add values between FIFO and 
                -- output of MAC 
                if (wc_counter = 0) then
                    o_mux <= '0';
                else
                    o_mux <= '1';
                end if;
                x_mux <= '0';
                x_fifo_rden_assert <= '0';
                x_fifo_wren_assert <= '1';
                h_fifo_rden_assert <= '0';
                h_fifo_wren_assert <= '0';
                o_fifo_wren_assert <= '1'; 
                o_fifo_rden_assert <= '0';
                b_fifo_rden_assert <= '0';
                b_fifo_wren_assert <= '0';
                mac_enable <= '1';
                filter_input_enable <= '1';
                ctr_rst <= '0';
                if (w_counter = 44) then --was 45
                    -- go to change weight state
                    ram_counter := ram_counter + 1;
                    wc_counter := wc_counter + 1;
                    w_counter := 0;
                    if (wc_counter = N_filters) then
                        curr_state <= "0110";
                    else
                        curr_state <= "0101";
                    end if;
                else 
                    -- no need to change weights, go back to state 2
                    curr_state <= "0010";
                    --b_fifo_rden_assert <= '1';
                    filter_input_enable <= '0';
                end if;
            when "0101" =>
                -- state 5 : CHANGE WEIGHT STATE
                x_mux <= '0';
                h_mux <= '0';
                o_mux <= '0';
                x_fifo_rden_assert <= '1';
                x_fifo_wren_assert <= '1';
                o_fifo_rden_assert <= '0';
                o_fifo_wren_assert <= '0';
                
                if wc_counter = N_filters - 1 then
                    relu_ready <= '1';
                else
                    relu_ready <= '0';
                end if;
                if counter1 = 1 then
                    h_fifo_rden_assert <= '1';
                    h_fifo_wren_assert <= '1';
                else
                    counter1 := counter1 + 1;
                end if;
                if counter5 = 0 then
                    b_fifo_rden_assert <= '1'; --used to be 0
                else
                    b_fifo_rden_assert <= '1';
                end if;
                
                if counter5 < 2 then
                    mac_enable <= '1';
                else
                    mac_enable <= '0';
                end if;
                
                b_fifo_wren_assert <= '0';
                h_fifo_wren_assert <= '1';
                h_fifo_rden_assert <= '1';
                filter_input_enable <= '0';
                ctr_rst <= '0';
                -- if x_fifo is full and h_fifo is full, then we can proceed to drop read stage,
                -- where the first value is read
                
                -- if x fifo is full, don't write anything from b fifo
                if counter5 = 16 then
                    b_fifo_rden_assert <= '0';
                end if;
                if counter5 = 16 then
                    x_fifo_rden_assert <= '0';
                    h_mux <= '1';
                    curr_state <= "0010"; 
                    b_fifo_rden_assert <= '0'; 
                    counter1 := 0;
                    counter5 := 0;
                    h_fifo_rden_assert <= '0'; -- changed 1 to 0
                    h_fifo_wren_assert <= '0'; -- same here
                else
                    counter5 := counter5 + 1;
                end if;
                
                if (ram_counter mod 16) /= 0 then
                    ram_counter := ram_counter + 1;
                end if;
                
            when "0110" =>
                -- State 6 : end state
                
              -- output to MUXes
              x_mux <= '0';
              h_mux <= '0';
              o_mux <= '1';
              result_ready <= '1';
              -- output to FIFOs
              x_fifo_rden_assert <= '0';
              x_fifo_wren_assert <= '0';
              h_fifo_rden_assert <= '0';
              h_fifo_wren_assert <= '0';
              if counter6 >= 1 then
                o_fifo_wren_assert <= '1';
              else
                o_fifo_wren_assert <= '0';
              end if;
              o_fifo_rden_assert <= '1';
              b_fifo_rden_assert <= '0';
              b_fifo_wren_assert <= '0';
              if counter6 < 2 then
                  mac_enable <= '1';
                  counter6:= counter6 + 1;
              else
                  mac_enable <= '0';
              end if;
              filter_input_enable <= '0';
              ctr_rst <= '0';
              ram_counter := 0;
            when others =>
                curr_state <= "0000";
        end case;
        prev_state <= curr_state;
--        prev_prev_state <= prev_state;
--         prev_prev_prev_state <= prev_prev_state;
        ram_address <= std_logic_vector(to_unsigned(ram_counter,9));
    end if;
end process;

end RTL;
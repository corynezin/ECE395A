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
  Port ( 
  
    -- input 
    clk : IN STD_LOGIC;
    last_fifo_full : IN STD_LOGIC;
    x_fifo_full : IN STD_LOGIC;
    h_fifo_full : IN STD_LOGIC;
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
    
    ram_address: OUT STD_LOGIC_VECTOR(10 downto 0)
  );
end conv2_controller;

architecture RTL of conv2_controller is
signal curr_state : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal curr_state_d1,curr_state_d2 : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
process(clk) 
variable w_counter : INTEGER := 0;  -- counter to see when to change weights (h) (start changing
variable wc_counter : INTEGER := 0; -- counter to change weights (stop changing)
variable d_counter : INTEGER := 0;  -- counter for data (x)
variable o_counter : INTEGER := 0;  -- counter to see whether we finish changing all the weights
variable ram_counter: INTEGER := 0;
variable load_counter: INTEGER := 0;
begin
    if rising_edge(clk) then
        if (rst = '1') then
            curr_state <= "0000";
        end if;
        case curr_state is
            when "0000" =>
                -- case 0 : IDLE state, nothing happens, no processing should occur, all enabling pins should be 
                -- set to false, and all muxes should be set to zero
                x_mux <= '0';
                h_mux <= '0';
                o_mux <= '0';
                x_fifo_rden <= '0';
                x_fifo_wren <= '0';
                h_fifo_rden <= '0';
                h_fifo_wren <= '0';
                o_fifo_rden <= '0';
                o_fifo_wren <= '0'; 
                b_fifo_rden <= '0'; 
                b_fifo_wren <= '1'; -- since fifo is not full, we keep on writing to FIFO
                -- if the previous fifo is full, then we should go to initialize state
                if last_fifo_full = '1' then
                    curr_state_d1 <= "0001";
                    curr_state <= curr_state_d1;
                end if;
                w_counter := 0;
                d_counter := 0;
                o_counter := 0;
                wc_counter := 0;
                ram_counter := 0;
                ram_address <= "00000000000";
            when "0001" =>
                -- case 1 : INIT state, the MAC and output FIFO should not be changed
                -- but we can start filling up the x_fifo and h_fifo, the MAC and output FIFO
                -- should still be disabled
                ram_address <= std_logic_vector(to_unsigned(ram_counter,11));
                x_mux <= '0';
                h_mux <= '0';
                o_mux <= '0';
                x_fifo_rden <= '0';
                x_fifo_wren <= '1';
                h_fifo_rden <= '0';
                h_fifo_wren <= '1';
                o_fifo_rden <= '0';
                o_fifo_wren <= '0'; 
                b_fifo_rden <= '1';
                b_fifo_wren <= '0';
                -- if x_fifo is full and h_fifo is full, then we can proceed to drop read stage,
                -- where the first value is read
                w_counter := 0;
                d_counter := 0;
                o_counter := 0;
                wc_counter := 0;
                ram_counter := ram_counter + 1;
                if (x_fifo_full = '1' and h_fifo_full = '1') then
                    curr_state <= "0010";
                end if;
            when "0010" =>
                -- state 2 : DROP READ State. In this state, when a value is read from x_fifo, 
                -- drop it and write a new value from big FIFO, THe MAC takes input at this state
                x_mux <= '0';   -- read from big FIFO
                h_mux <= '1';   -- read back from h_fifo
                o_mux <= '0';
                x_fifo_rden <= '1';
                x_fifo_wren <= '1';
                h_fifo_rden <= '1';
                h_fifo_wren <= '1';
                o_fifo_rden <= '0';
                o_fifo_wren <= '0'; 
                b_fifo_rden <= '1';
                b_fifo_wren <= '0';
                w_counter := w_counter + 1; -- increment the weight counter by 1 
                d_counter := 1;
                curr_state <= "0011";   -- go to state 3
            when "0011" =>
                -- state 3 : NORMAL READ State. In this state, when a value is read from x_fifo,
                -- write the same value back to FIFO    
                x_mux <= '1';   -- read back from x_fifo
                h_mux <= '1';   -- read back from h_fifo
                o_mux <= '0';
                x_fifo_rden <= '1';
                x_fifo_wren <= '1';
                h_fifo_rden <= '1';
                h_fifo_wren <= '1';
                o_fifo_rden <= '0';
                o_fifo_wren <= '0'; 
                b_fifo_rden <= '0';
                b_fifo_wren <= '0';
                d_counter := d_counter + 1;
                if (d_counter = 16) then
                    curr_state <= "0100";
                end if;

            when "0100" =>
                -- state 4 : OUTPUT WRITE State. In this State, the output of the MAC is written to o_fifo. 
                --           the value of o_mux will depend on whether w_counter is 1 or not
                -- if w_counter is 1, it means this is the first set of values to be 
                -- written into output FIFO, so just deliver the outputs directly
                -- from MAC to FIFO, else , we need to add values between FIFO and 
                -- output of MAC 
                if (w_counter = 1) then
                    o_fifo_rden <= '0';
                    o_mux <= '0';
                else
                    o_fifo_rden <= '1';
                    o_mux <= '1';
                    -- NOTE : DO WE NEED TO TAKE INTO ACCOUNT OF READ LATENCY??????
                end if;
                x_fifo_rden <= '0';
                x_fifo_wren <= '0';
                h_fifo_rden <= '0';
                h_fifo_wren <= '0';
                o_fifo_wren <= '1'; 
                b_fifo_rden <= '0';
                b_fifo_wren <= '0';
                if (w_counter = 45) then
                    -- go to change weight state
                    curr_state <= "0101";
                else 
                    -- no need to change weights, go back to state 2
                    curr_state <= "0010";
                end if;
            when others =>
                -- if we ever get to an invalid state, go back to IDLE state
                curr_state <= "0000";
        end case;
    end if;
end process;

end RTL;

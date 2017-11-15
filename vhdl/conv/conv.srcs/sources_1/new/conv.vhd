--Name: Cory Nezin
--Date: 11/09/2017
--Goal: Implement Convolution layer with weight switching

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (23 downto 0);
           rst: in STD_LOGIC;
           data_valid: in STD_LOGIC;
           clk: in STD_LOGIC;
           weights_ready: out STD_LOGIC);
end conv;

architecture RTL of conv is
component fir128 is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end component fir128;

signal sel: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
signal sel_valid: STD_LOGIC := '0';
signal valid_data : STD_LOGIC_VECTOR(7 downto 0);
signal inter_weights_ready : STD_LOGIC := '1';
-- DEBUGGING SIGNALS
-- signal inter_signal : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
-- signal si : SIGNED(7 downto 0);
-- signal sj : SIGNED(7 downto 0);
begin

F: fir128
    port map(
    -- Inputs
    aclk => clk,
    s_axis_data_tvalid => data_valid,
    s_axis_data_tdata => valid_data,
    s_axis_config_tvalid => sel_valid,
    s_axis_config_tdata => sel,
    -- Outputs
    m_axis_data_tdata => y
    );
valid_data <= x when (inter_weights_ready = '1') else "00000000";    
process(clk)
variable i : integer := 0; -- Indexes samples
variable j : integer := 0; -- Indexes set of taps
variable counter : integer := 0;  -- Indexes to start latency counter, used to pause the FIFO
variable init : integer := 1;
begin
         if (counter > 0 and counter <= 8) then
            counter := counter+1;
            --inter_signal <= inter_signal + "00000001";
        else
            if (init = 0) then
                i := (i + 1) mod 128;
            end if;
            inter_weights_ready <= '1';
            weights_ready <= '1';
        end if;   
        
        
        if i = 127 and counter = 0 and init = 0 then
            j := (j + 1) mod 128;
            sel_valid <= '1';
            sel <= std_logic_vector(to_unsigned(j,8));
            counter := 1;
            inter_weights_ready <= '0';
            weights_ready <= '0';
        else
            sel_valid <= '0';
        end if;
        
            
        if (counter > 8) then
            counter := 0;
            --inter_signal <= "00000000";
            inter_weights_ready <= '1';
            weights_ready <= '1';
        end if;
--        inter_signal <= std_logic_vector(to_unsigned(counter,8));
--        si <= to_signed(i,8);
--        sj <= to_signed(j,8);
        
        if rst = '1' then
            init := 1;
            i := 0;
            j := 0;
            sel <= std_logic_vector(to_unsigned(j,8));
            counter := 1;
            inter_weights_ready <= '0';
            weights_ready <= '0';
        else
            init := 0;
        end if;
    end if;
end process;

end RTL;

--Name: Cory Nezin
--Date: 11/09/2017
--Goal: Implement Convolution layer with weight switching

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_0 is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (23 downto 0);
           rst: in STD_LOGIC;
           data_valid: in STD_LOGIC;
           clk: in STD_LOGIC;
           output_valid : out STD_LOGIC);
end conv_0;

architecture RTL of conv_0 is
component fir128_0 is
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

end component fir128_0;

signal sel: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
signal sel_valid: STD_LOGIC := '0';
signal valid_data : STD_LOGIC_VECTOR(7 downto 0);
-- signal inter_weights_ready : STD_LOGIC := '1';
-- DEBUGGING SIGNALS
-- signal inter_signal : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
begin

F: fir128_0
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
-- valid_data <= x when (inter_weights_ready = '1') else "00000000";    
valid_data <= x;
process(clk)
variable i : integer := 0; -- Indexes samples
variable j : integer := 0; -- Indexes set of taps
variable counter : integer := 0;  -- Indexes to start latency counter, used to pause the FIFO
variable init : integer := 1;
begin
    if rising_edge(clk) then
        if (init = 0) then
            i := (i + 1) mod 128;
        end if;
        -- weight changing
        if i = 127 and init = 0 then
            if (data_valid = '1') then
                j := (j + 1) mod 128;
                sel_valid <= '1';
                sel <= std_logic_vector(to_unsigned(j,8));
            end if;
        else
            sel_valid <= '0';
        end if;
        
        -- throw away the first 7 datapoints
        if (i >= 16#0c# and i <= 16#12#) then
            output_valid <= '0';
        else
            output_valid <= '1'; 
        end if;

        if rst = '1' then
            init := 1;
            i := 0;
            j := 0;
            sel <= std_logic_vector(to_unsigned(j,8));
        else
            init := 0;
        end if;
        
    end if;
end process;

end RTL;

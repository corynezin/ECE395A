--Name: Cory Nezin
--Date: 11/09/2017
--Goal: Implement Convolution layer with weight switching

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_0 is
    generic(
        M: Integer:=16; --Input bit width
        N: Integer:=24; --Output bit width
        P: Integer:=32 --Coefficient sets
    );
    Port ( x : in STD_LOGIC_VECTOR (M-1 downto 0);
           y : out STD_LOGIC_VECTOR (N-1 downto 0);
           rst: in STD_LOGIC;
           srst: in STD_LOGIC;
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
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( M-1 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end component fir128_0;

signal sel: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
signal sel_valid: STD_LOGIC := '0';
signal valid_data : STD_LOGIC_VECTOR(M-1 downto 0);
signal valid_intermediate: STD_LOGIC:='0';
signal init_sig: STD_LOGIC := '1';
--signal temp_out: STD_LOGIC_VECTOR(22 downto 0) := (others => '0');

-- signal inter_weights_ready : STD_LOGIC := '1';
-- DEBUGGING SIGNALS
-- signal inter_signal : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
begin
output_valid <= valid_intermediate when init_sig = '0' and srst = '0' else '0';
--y(23) <= temp_out(22);
--y(22 downto 0) <= temp_out;
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
            i := (i + 1);-- mod 128; -- 32 was 128
        end if;
        -- weight changing
        if i = 127 - 17 and init = 0 then -- 31 was 127
            if (data_valid = '1') then
                if j = P-1 then -- 31 was 127
                    j := 0;
                else
                    j := j + 1;
                end if;
                sel_valid <= '1';
                sel <= std_logic_vector(to_unsigned(j,8));
            end if;
        elsif i /= 0 then
            sel_valid <= '0';
        elsif i = 0 and init = 1 then
            sel_valid <= '0';
        end if;
        
        -- throw away the first 7 datapoints
        if i < 8 or i = 128 then
            valid_intermediate <= '0';
        else
            valid_intermediate <= '1'; 
        end if;

        if rst = '1' then
            init := 0;
            init_sig <= '0';
        else
            init := 1;
            init_sig <= '1';
            i := 0;
            j := 0;
            sel <= std_logic_vector(to_unsigned(j,8));
            valid_intermediate <= '0';
            init_sig <= '1';
            sel_valid <= '1';
        end if;
        i := i mod 128;
    end if;
end process;

end RTL;

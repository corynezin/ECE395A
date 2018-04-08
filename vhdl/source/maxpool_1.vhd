--Name: Cory Nezin
--Date: 11/03/2017
--Goal: Perform maxpool of size 2, stride 2
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity maxpool2_1 is
    generic (N : INTEGER ); -- Bit width
    Port ( input : in STD_LOGIC_VECTOR (N-1 downto 0);
           output : out STD_LOGIC_VECTOR (N-1 downto 0);
           clk : in STD_LOGIC;
           ceclk: in STD_LOGIC; -- clock enabled clock, anded with input_valid already
           input_valid: in STD_LOGIC; -- high when output of previous stage (relu) is valid
           output_valid: out STD_LOGIC); -- high when output of this stage is valid
end maxpool2_1;

architecture RTL of maxpool2_1 is
component downsample is
    generic (N : INTEGER);
    Port ( d : in STD_LOGIC_VECTOR (N-1 downto 0);
           q : out STD_LOGIC_VECTOR (N-1 downto 0);
           clk: in STD_LOGIC);
end component downsample;

signal z: STD_LOGIC_VECTOR(N-1 downto 0) := (N-1=>'1',others=>'0'); -- Previous sample to be compared
signal y: STD_LOGIC_VECTOR(N-1 downto 0) := (N-1=>'1',others=>'0'); -- output of pooling, full rate
signal delay1,delay2,delay3: STD_LOGIC:= '0';
signal output_valid_signal: STD_LOGIC:='0';
begin
d2: downsample
    generic map(
        N => N
    )
    Port Map (
        d => y,
        q => output, -- downsampled output of pooling
        clk => ceclk
    );
    
y <= input when signed(input) > signed(z) else z; -- check which is greater for pooling

process(clk)
begin
if rising_edge(clk) then
    z <= input;             -- Delayed version for comparison
    delay1 <= input_valid;  -- Max pooling has a natural latency of one
    delay2 <= delay1;       -- output clock cycle, or two input clock cycle
    delay3 <= delay2;       -- Since it reduces the rate of the data by a factor of 2.
end if;
end process;
output_valid_signal <= delay1;
output_valid <= output_valid_signal;
-- This just works...

end RTL;

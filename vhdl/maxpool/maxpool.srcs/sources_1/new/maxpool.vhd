--Name: Cory Nezin
--Date: 11/03/2017
--Goal: Perform maxpool of size 2, stride 2
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity maxpool2 is
    generic (N : INTEGER);
    Port ( input : in STD_LOGIC_VECTOR (N-1 downto 0);
           output : out STD_LOGIC_VECTOR (N-1 downto 0);
           clk : in STD_LOGIC);
end maxpool2;

architecture RTL of maxpool2 is
component downsample is
    generic (N : INTEGER);
    Port ( d : in STD_LOGIC_VECTOR (N-1 downto 0);
           q : out STD_LOGIC_VECTOR (N-1 downto 0);
           clk: in STD_LOGIC);
end component downsample;

signal z: STD_LOGIC_VECTOR(N-1 downto 0) := (N-1=>'1',others=>'0');
signal y: STD_LOGIC_VECTOR(N-1 downto 0) := (N-1=>'1',others=>'0');

begin
d2: downsample
    GENERIC MAP(
        N => N
    )
    PORT MAP (
        d => y,
        q => output,
        clk => clk
    );
    
y <= input when signed(input) > signed(z) else z;

process(clk)
begin
if rising_edge(clk) then
    z <= input;
end if;
end process;

end RTL;

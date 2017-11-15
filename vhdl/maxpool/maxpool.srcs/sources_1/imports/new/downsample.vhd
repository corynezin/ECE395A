--Name: Cory Nezin
--Date: 11/03/2017
--Goal: Downsample by a factor of 2
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity downsample is
    Port ( d : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0);
           clk: in STD_LOGIC);
end downsample;

architecture Behavioral of downsample is
signal t: STD_LOGIC := '0';
begin
process(clk)
--Variable declarations
begin
if rising_edge(clk) then
    if t = '0' then
        q <= d;
    end if;
    t <= not t;
end if;
end process;

end Behavioral;

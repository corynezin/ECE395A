--Name: Cory Nezin
--Date: 11/03/2017
--Goal: Downsample by a factor of 2
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity downsample is
    generic(N : INTEGER);
    Port ( d : in STD_LOGIC_VECTOR (N-1 downto 0);
           q : out STD_LOGIC_VECTOR (N-1 downto 0);
           rst: in STD_LOGIC;
           ce: in STD_LOGIC;
           clk: in STD_LOGIC);
end downsample;

architecture Behavioral of downsample is
signal t: STD_LOGIC := '0';
signal inter: STD_LOGIC_VECTOR(N-1 downto 0):= (others => '0');
begin
q <= inter;
process(clk)
--Variable declarations
begin
if rising_edge(clk) then
    if ce = '1' then
        if rst = '1' then
            inter <= (others => '0');
            t <= '0';
        else
            if t = '0' then
                inter <= d;
            end if;
            t <= not t;
        end if;
    end if;
end if;
end process;

end Behavioral;

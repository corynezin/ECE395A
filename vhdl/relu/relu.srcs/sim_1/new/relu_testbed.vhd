-- Name : Brenda So
-- Date : 10/27/2017
-- Goal : To build a ReLu function in hardware. It is a MUX like function
--        that would use the first bit of the input as the addressing bit
--        and output 0 (addr = 1) or data (addr = 0)


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity relu_testbed is
  Port ( aout : out SIGNED (7 downto 0)
        );
end relu_testbed;

architecture Behavioral of relu_testbed is

signal s1 : SIGNED(7 downto 0) := "00000000";
signal s2 : SIGNED (7 downto 0);
signal clk : STD_LOGIC := '1';

-- Components
component Relu is
  generic (N : INTEGER);
  Port ( 
    clk     : IN STD_LOGIC;
    addr    : IN STD_LOGIC;
    d0      : IN SIGNED(N-1 downto 0);
    output  : OUT SIGNED(N-1 downto 0)
  );
end component;

begin
relu0: Relu generic map (N => 8)
            port map (clk => clk, addr => std_logic(s1(7)), d0 => s1, output => s2);
aout <= s2;
process begin
    wait for 2 ms;
    s1 <= "00010000";
    wait for 2 ms;
    s1 <= "10000000";
    wait for 2 ms;
end process;

--Simulated Clock
process begin
  wait for 1 ms;
  clk <= not clk;
end process;

end Behavioral;

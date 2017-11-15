-- Name: Brenda So
-- Date: 11/14/2017
-- Goal: Implement 2:1 MUX


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is
  Port ( 
        x_0 : IN STD_LOGIC_VECTOR(7 downto 0);
        x_1 : IN STD_LOGIC_VECTOR(7 downto 0);
        y : OUT STD_LOGIC_VECTOR(7 downto 0);
        addr : IN STD_LOGIC);
end mux2_1;

architecture RTL of mux2_1 is

begin
    y <= x_0 when (addr = '1') else x_1;

end RTL;

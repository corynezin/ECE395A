-- Name: Brenda So
-- Date: 11/14/2017
-- Goal: Implement 2:1 MUX


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1_8 is
  Generic(
        M: Integer := 16
  );
  Port ( 
        x_0 : IN STD_LOGIC_VECTOR(M-1 downto 0);
        x_1 : IN STD_LOGIC_VECTOR(M-1 downto 0);
        y : OUT STD_LOGIC_VECTOR(M-1 downto 0);
        addr : IN STD_LOGIC);
end mux2_1_8;

architecture RTL of mux2_1_8 is

begin
    y <= x_0 when (addr = '0') else x_1;

end RTL;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1_1 is
  Port ( 
        x_0 : IN STD_LOGIC;
        x_1 : IN STD_LOGIC;
        y : OUT STD_LOGIC;
        addr : IN STD_LOGIC);
end mux2_1_1;

architecture RTL of mux2_1_1 is

begin
    y <= x_0 when (addr = '0') else x_1;

end RTL;

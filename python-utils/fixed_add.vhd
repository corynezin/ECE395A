library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fixed_add is
    port (a :in  signed(7 downto 0);
          b :in  signed(7 downto 0);
          output     :out signed (7 downto 0)
          );
end fixed_add;
-- assume no overflow
architecture RTL of fixed_add is
begin
    output <= a + b;
end architecture;

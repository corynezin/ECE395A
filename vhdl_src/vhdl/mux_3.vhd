library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux_3 is
    Generic (
        size: integer:= 32
    );
    Port (
    addr: in STD_LOGIC_VECTOR(1 downto 0);
    input_a: in STD_LOGIC_VECTOR(size-1 downto 0);
    input_b: in STD_LOGIC_VECTOR(size-1 downto 0);
    input_c: in STD_LOGIC_VECTOR(size-1 downto 0);
    output: out STD_LOGIC_VECTOR(size-1 downto 0)
     );
end mux_3;

architecture RTL of mux_3 is

begin
output <=
    input_a when addr = "00" else
    input_b when addr = "01" else
    input_c when addr = "10" else
    (others => '0');
end RTL;

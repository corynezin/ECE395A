library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity b_test is
port(input: in signed(7 downto 0);
     output: out signed(7 downto 0));
begin
output <= signed(to_std_logic_vector(to_bitvector(std_logic_vector(input)) sra 7))-
          signed(to_std_logic_vector(to_bitvector(std_logic_vector(input)) sra 5));
end architecture;
end b_test;

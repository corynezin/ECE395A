-- Name : Cory Nezin
-- Date : 09/13/2017
-- Goal : An FPGA implementation of a simple nueral network.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.MATRIX.ALL;

entity simple_nn is
  Port ( v_in : in vector_in;
         v_out : out vector_out );
end simple_nn;

architecture Behavioral of simple_nn is

component matrix_multiply is
    generic ( N: INTEGER; M: INTEGER );
    Port ( v_in : in vector_in;
           v_out : out vector_out);
end component;

begin
matrix_a : matrix_multiply 
  generic map(N => 3, M => 5)
  port map(v_in => v_in, v_out => v_out );

end Behavioral;

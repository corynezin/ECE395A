-- Pre-requisites for including vectors as ports
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package MATRIX is
  constant matrix_height: INTEGER := 3;
  constant matrix_width: INTEGER := 5;
  constant number_size: INTEGER := 8;
  type vector_out is array(0 to matrix_height-1) of SIGNED(number_size-1 downto 0);
  type vector_in is array(0 to matrix_width-1) of SIGNED (number_size-1 downto 0);
  type matrix is array(0 to matrix_height-1) of vector_in;
end MATRIX;
--Name: Cory Nezin
--Date: 10/10/2017
--Goal: Create vector/matrix data type
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package MATRIX is
  constant matrix_height: INTEGER := 3; -- Vector out
  constant matrix_width: INTEGER := 5;  -- Vector in
  constant number_size: INTEGER := 8;   -- Precision
  type vector_out is array(0 to matrix_height-1) of SIGNED(number_size-1 downto 0);
  type vector_in is array(0 to matrix_width-1) of SIGNED (number_size-1 downto 0);
  type matrix is array(0 to matrix_height-1) of vector_in;
end MATRIX;
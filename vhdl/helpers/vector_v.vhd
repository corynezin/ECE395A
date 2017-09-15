package body MATRIX is
constant matrix_height: INTEGER:= 3;
constant matrix_width: INTEGER:= 5;
constant number_size: INTEGER:= 8;
end MATRIX;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.MATRIX.ALL;
package vector_v is
constant v: vector_in:=(
"11100000","01010110","11100000","01010000","00100000");
end package;
--package body MATRIX is
--constant matrix_height: INTEGER:= 3;
--constant matrix_width: INTEGER:= 5;
--constant number_size: INTEGER:= 8;
--end MATRIX;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.MATRIX.ALL;
package vector_w is
constant w: vector_in:=(
"00000010","01000110","11001001","01110001","00000011");
end package;
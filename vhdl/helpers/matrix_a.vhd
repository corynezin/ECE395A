
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.MATRIX.ALL;

--package body MATRIX is
--constant matrix_height: INTEGER:= 3;
--constant matrix_width: INTEGER:= 5;
--constant number_size: INTEGER:= 8;
--end MATRIX;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.MATRIX.ALL;

package matrix_a is
constant A: matrix:=(
("00100110","10000000","01110001","01000000","10000001"),
("00111100","01110011","11101000","11011100","10101110"),
("10110001","10000100","00001101","00011000","01000010"));
end package;

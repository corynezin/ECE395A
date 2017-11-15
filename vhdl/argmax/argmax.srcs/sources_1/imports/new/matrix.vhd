-- Pre-requisites for including vectors as ports
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package VECTOR is
  type vector_out is array(0 to matrix_height-1) of SIGNED(number_size-1 downto 0);
end VECTOR;
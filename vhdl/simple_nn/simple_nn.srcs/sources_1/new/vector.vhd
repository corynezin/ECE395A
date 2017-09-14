-- Pre-requisites for including vectors as ports
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package VECTOR is
  constant vector_in_size: INTEGER;
  constant number_in_size: INTEGER;
  type vector_in is array(0 to vector_in_size-1) of SIGNED (number_in_size-1 downto 0);
  
  constant vector_out_size: INTEGER;
  constant number_out_size: INTEGER;
  type vector_out is array(0 to vector_out_size-1) of SIGNED (number_out_size-1 downto 0);
end VECTOR;
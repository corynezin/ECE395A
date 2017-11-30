-- Pre-requisites for including vectors as ports
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package VECTOR is
  type vector is array(0 to 9) of SIGNED(7 downto 0);
end VECTOR;
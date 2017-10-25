-- Name : Brenda So
-- Date : 09/24/2017
-- Goal : To build a ReLu function in hardware. It is a MUX like function
--        that would use the first bit of the input as the addressing bit
--        and output 0 (addr = 1) or data (addr = 0)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Relu is
  generic (N : INTEGER);
  Port ( 
    clk     : IN STD_LOGIC;
    addr    : IN STD_LOGIC;
    d0      : IN SIGNED(N-1 downto 0);
    output  : OUT SIGNED(N-1 downto 0)
  );
end Relu;

architecture RTL of Relu is
signal is_neg :STD_LOGIC;
begin
output <= d0 when addr = '0' else
           (others=>'0') when addr = '1';
end RTL;
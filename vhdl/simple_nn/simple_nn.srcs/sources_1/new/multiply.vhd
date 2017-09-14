----------------------------------------------------------------------------------
-- Company: The Cooper Union
-- Engineer: Cory Nezin
-- 
-- Create Date: 09/13/2017 04:45:44 PM
-- Design Name: Multiplier
-- Module Name: multiply - RTL
-- Project Name: FPGA Optimization for Nueral Networks
-- Target Devices: Zedboard
-- Tool Versions: Vivado 2017.2
-- Description: A simple multiplier
-- 
-- Dependencies: None
-- 
-- Revision: 0.01
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity multiply is
-- Q n m Should be defined for both inputs and the output
  generic ( N: INTEGER; N_n: INTEGER; N_m: INTEGER;
            M: INTEGER; M_n: INTEGER; M_m: INTEGER;
            L: INTEGER; L_n: INTEGER; L_m: INTEGER);

  Port ( x : in SIGNED(N-1 downto 0);
         y : in SIGNED(M-1 downto 0);
         z : out SIGNED(L-1 downto 0));
end multiply;

architecture RTL of multiply is
signal t: SIGNED(N+M-1 downto 0);
begin

t <= x*y;
z <= t(N + M - 1 - L_n downto N + M - 1 - L_n - L + 1);

end RTL;

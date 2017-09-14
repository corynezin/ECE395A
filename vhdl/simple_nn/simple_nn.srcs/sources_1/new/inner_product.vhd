----------------------------------------------------------------------------------
-- Company: The Cooper Union
-- Engineer: Cory Nezin
-- 
-- Create Date: 09/13/2017 05:25:41 PM
-- Design Name: Inner Product
-- Module Name: inner_product - RTL
-- Project Name: FPGA Optimization for Nueral Networks
-- Target Devices: Zedboard
-- Tool Versions: Vivado 2017.2
-- Description: A simple inner product
-- 
-- Dependencies: multiply
-- 
-- Revision: 0.01
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.VECTOR.ALL;

entity inner_product is
-- Q n m Should be defined for both inputs and the output
  generic ( N: INTEGER; N_n: INTEGER; N_m: INTEGER;
            M: INTEGER; M_n: INTEGER; M_m: INTEGER;
            L: INTEGER; L_n: INTEGER; L_m: INTEGER);
            
  Port ( v : in vector_in;
         w : in vector_in;
         x : out SIGNED(L-1 downto 0));
         
end inner_product;

package body VECTOR is
  constant vector_in_size: INTEGER := 100;
  constant number_in_size: INTEGER := 8;
  constant vector_out_size: INTEGER := 100;
  constant number_out_size: INTEGER := 8;
end VECTOR;

architecture RTL of inner_product is

component multiply
  generic( N: INTEGER; N_n: INTEGER; N_m: INTEGER;
         M: INTEGER; M_n: INTEGER; M_m: INTEGER;
         L: INTEGER; L_n: INTEGER; L_m: INTEGER);
  port(x : in signed(N-1 downto 0);
       y : in signed(M-1 downto 0);
       z : out signed(L-1 downto 0));
end component;

signal t: vector_in;
signal s: SIGNED(L-1 downto 0);

begin
  GEN_MULT: -- Multiply vectors element-wise
    for i in 0 to 784-1 generate
    begin
      MULTX: multiply
        generic map( N => 8, N_n => 1, N_m => 7,
                     M => 8, M_n => 1, M_m => 7,
                     L => 8, L_n => 1, L_m => 7)
        port map (x => v(n), y => w(n), z => t(n) );
    END GENERATE GEN_MULT;
  -- Sum up all of the results
  process(w,v)
  begin
    for n in 0 to 784-1 loop
      s <= s + t(n);
    end loop;
  end process;
  x <= s;
    
end RTL;

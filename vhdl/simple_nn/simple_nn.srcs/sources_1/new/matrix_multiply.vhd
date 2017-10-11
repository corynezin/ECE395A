----------------------------------------------------------------------------------
-- Company: The Cooper Union
-- Engineer: Cory Nezin
-- 
-- Create Date: 09/13/2017 04:14:29 PM
-- Design Name: Naive Matrix Multiply
-- Module Name: matrix_multiply - RTL
-- Project Name: FPGA Optimization for Nueral Networks
-- Target Devices: Zedboard
-- Tool Versions: Vivado 2017.2
-- Description: A naive impelementation of matrix multiplication
-- 
-- Dependencies: multiply
-- 
-- Revision: 0.01
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.MATRIX.ALL;
use WORK.MATRIX_A.ALL;


entity matrix_multiply is
    generic ( N: INTEGER; M: INTEGER );
    Port ( v_in : in vector_in;
           v_out : out vector_out);
end matrix_multiply;

--package body MATRIX is
--  constant matrix_height: INTEGER:= 3;
--  constant matrix_width: INTEGER:= 5;
--  constant number_size: INTEGER:= 8;
--end MATRIX;

architecture RTL of matrix_multiply is
-- Inner Product to be used:
component inner_product
  generic( N: INTEGER; N_n: INTEGER; N_m: INTEGER;
           M: INTEGER; M_n: INTEGER; M_m: INTEGER;
           L: INTEGER; L_n: INTEGER; L_m: INTEGER);
  Port(w   : in vector_in;
       v   : in vector_in;
       x   : out signed(L-1 downto 0));
end component;

begin
  GEN_IP: 
  for i in 0 to N-1 generate
  begin
    MULTX: inner_product
      generic map( N => 8, N_n => 1, N_m => 7,
                   M => 8, M_n => 1, M_m => 7,
                   L => 8, L_n => 1, L_m => 7)
      port map (w => A(i), v => v_in, x => v_out(i));
  END GENERATE GEN_IP;
end RTL;

----------------------------------------------------------------------------------
-- Company: The Cooper Union
-- Engineer: Cory Nezin
-- 
-- Create Date: 09/13/2017 04:00:54 PM
-- Design Name: Simple Neural Network
-- Module Name: simple_nn - Behavioral
-- Project Name: FPGA Optimization for Nueral Networks
-- Target Devices: Zedboard
-- Tool Versions: Vivado 2017.2
-- Description: An FPGA implementation of a simple nueral network.
-- 
-- Dependencies: matrix_multiply
-- 
-- Revision: 0.01
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.MATRIX.ALL;
use WORK.VECTOR_V.ALL;

entity simple_nn is
--  Port ( );
end simple_nn;

architecture Behavioral of simple_nn is

component matrix_multiply is
    generic ( N: INTEGER; M: INTEGER );
    Port ( v_in : in vector_in;
           v_out : out vector_out);
end component;

signal w: vector_out;

begin
matrix_a : matrix_multiply 
  generic map(N => 100, M => 784)
  port map(v_in => v, v_out => w );

end Behavioral;

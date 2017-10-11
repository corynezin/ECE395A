----------------------------------------------------------------------------------
-- Company: The Cooper Union
-- Engineer: Cory Nezin
-- 
-- Create Date: 09/14/2017 03:37:56 PM
-- Design Name: Neural Net Test Bed
-- Module Name: neural_net_testbed - Behavioral
-- Project Name: FPGA Optimization for Nueral Networks
-- Target Devices: Zedboard
-- Tool Versions: Vivado 2017.2
-- Description: Test bed for Neural Net
-- 
-- Dependencies: simple_nn
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
use WORK.VECTOR_W.ALL;

entity neural_net_testbed is
  Port ( my_in : in vector_in;
        my_out : out vector_out);
end neural_net_testbed;


architecture Behavioral of neural_net_testbed is

component simple_nn is
  port( v_in : in vector_in;
        v_out : out vector_out );
end component;

signal ww: vector_in;
signal v: vector_out;
signal val_1 : signed(7 downto 0);

begin
my_out <= v;
-- nn: simple_nn
--   port map(v_in => my_in, v_out => my_out);
end Behavioral;



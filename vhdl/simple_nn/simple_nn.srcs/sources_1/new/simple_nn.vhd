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

entity simple_nn is
--  Port ( );
end simple_nn;

architecture Behavioral of simple_nn is

component matrix_multiply is
    generic ( N: INTEGER; M: INTEGER );
    Port ( v_in : in INTEGER;
           v_out : out INTEGER);
end component;

begin


end Behavioral;

-- Name: Brenda So
-- Date: 11/14/2017
-- Goal: Testing conv_layer.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_layer_tb is
--  Port ( );
end conv_layer_tb;

architecture Behavioral of conv_layer_tb is

component conv_layer is
  Port ( 
         x: IN STD_LOGIC_VECTOR(7 downto 0);
         rst: IN STD_LOGIC;
         clk: IN STD_LOGIC;
         y: OUT STD_LOGIC_VECTOR(23 downto 0);
         output_valid : OUT STD_LOGIC
         );
end component;
signal input_x : STD_LOGIC_VECTOR(7 downto 0) := "00000011";
signal input_rst : STD_LOGIC;
signal clk : STD_LOGIC := '0';
signal y : STD_LOGIC_VECTOR(23 downto 0);
signal output_valid : STD_LOGIC;
begin
conv_layer_0 : conv_layer port map (
                                    x => input_x,
                                    rst => input_rst,
                                    clk => clk,
                                    y => y,
                                    output_valid => output_valid);
input_rst <= '0';                                  
process
variable i : INTEGER := 3;
begin
    wait for 1 ms;
    clk <= not clk;
    if clk = '0' then
        i := (i + 1) mod 128;
        input_x <= std_logic_vector(to_unsigned(i,8));
    end if;
end process;
end Behavioral;

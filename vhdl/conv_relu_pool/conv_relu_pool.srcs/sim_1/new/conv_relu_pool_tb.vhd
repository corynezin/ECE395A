-- Name: Cory Nezin
-- Date: 11/16/2017
-- Goal: Implement addition, relu, and max pooling on top of convolution.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity conv_relu_pool_tb is
--  Port ( );
end conv_relu_pool_tb;

architecture Behavioral of conv_relu_pool_tb is
-------------------------- UUT Declaration --------------------------
component conv_relu_pool is
    generic(
        M: Integer:=16; --Input bit width
        N: Integer:=24 --Output bit width
    );
    Port(
        a: IN STD_LOGIC_VECTOR(M-1 downto 0);
        b: IN STD_LOGIC_VECTOR(M-1 downto 0);
        y: OUT STD_LOGIC_VECTOR(N-1 downto 0);
        rst: IN STD_LOGIC;
        clk: IN STD_LOGIC
    );
end component conv_relu_pool;
-------------------------- Signal Declaration --------------------------
signal input_a : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal input_b : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal input_rst : STD_LOGIC:= '0';
signal y_output : STD_LOGIC_VECTOR(23 downto 0);
signal clk: STD_LOGIC:= '0';
file file_VECTORS : text;
begin
crp: conv_relu_pool
    generic map(
        M => 16,
        N => 24
    )
    port map(
        a => input_a,
        b => input_b,
        y => y_output,
        rst => input_rst,
        clk => clk
    );
    
input_rst <= '0';
-------------------------- Input generation --------------------------
process
variable v_ILINE     : line;
variable v_ADD_TERM1 : std_logic_vector(15 downto 0);
variable v_ADD_TERM2 : std_logic_vector(15 downto 0);
variable v_SPACE     : character;
begin
    file_open(file_VECTORS, "/home/nezin/Documents/ECE395A/vhdl/coefficients/in.txt",  read_mode);
    while not endfile(file_VECTORS) loop
        readline(file_VECTORS, v_ILINE);
        read(v_ILINE, v_ADD_TERM1);
        read(v_ILINE, v_SPACE);           -- read in the space character
        read(v_ILINE, v_ADD_TERM2);
        input_a <= v_ADD_TERM1;
        input_b <= v_ADD_TERM2;
        clk <= not clk;
        wait for 10 ns;
        clk <= not clk;
        wait for 10 ns;
    end loop;

    file_close(file_VECTORS);

end process;
-------------------------- Input generation --------------------------

end Behavioral;

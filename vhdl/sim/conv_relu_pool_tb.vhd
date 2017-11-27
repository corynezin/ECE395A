-- Name: Cory Nezin
-- Date: 11/16/2017
-- Goal: Implement addition, relu, and max pooling on top of convolution.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_relu_pool_tb is
--  Port ( );
end conv_relu_pool_tb;

architecture Behavioral of conv_relu_pool_tb is
-------------------------- UUT Declaration --------------------------
component conv_relu_pool is
    generic(
        M: Integer:=8; --Input bit width
        N: Integer:=24 --Output bit width
    );
    Port(
        x: IN STD_LOGIC_VECTOR(M-1 downto 0);
        y: OUT STD_LOGIC_VECTOR(N-1 downto 0);
        rst: IN STD_LOGIC;
        clk: IN STD_LOGIC
    );
end component conv_relu_pool;
-------------------------- Signal Declaration --------------------------
signal input_x : STD_LOGIC_VECTOR(7 downto 0) := "00000011";
signal input_rst : STD_LOGIC:= '0';
signal y_output : STD_LOGIC_VECTOR(23 downto 0);
signal clk: STD_LOGIC:= '0';

begin
crp: conv_relu_pool
    port map(
        x => input_x,
        y => y_output,
        rst => input_rst,
        clk => clk
    );
    
input_rst <= '0';
-------------------------- Input generation --------------------------
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
-------------------------- Input generation --------------------------

end Behavioral;

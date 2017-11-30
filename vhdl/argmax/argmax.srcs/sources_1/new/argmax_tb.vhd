--Name: Cory Nezin
--Date: 10/27/17
--Goal: Test argmax

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.VECTOR.ALL;

entity argmax_tb is
--  Port ( );
end argmax_tb;

architecture Behavioral of argmax_tb is
signal ans: STD_LOGIC_VECTOR(3 downto 0);
signal inp: VECTOR := ("00000001","01110010","01100000","11100000","01100100","00001001","01110010","11100010","01101010","01100011");
signal clk: STD_LOGIC := '0';

component argmax is
  Port (
    logits: in vector;
    biggest: out STD_LOGIC_VECTOR(3 downto 0);
    clk: in STD_LOGIC
  );
end component argmax;
begin

am: argmax
    port map (
        logits => inp,
        biggest => ans,
        clk => clk
    );

process begin
    wait for 1 ms;
    clk <= not clk;
end process;

process (clk) begin
    if falling_edge(clk) then
        inp <= ("10000001","11110010","11100000","01100000","11100100","10001001","11110010","01100010","11101010","11100011");
    end if;
end process;
end Behavioral;

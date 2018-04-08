--Name: Cory Nezin
--Date: 02/25/2018
--Goal: Test slope bias loader

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity slope_bias_loader_tb is
    Port (
    ini: in std_logic_vector(7 downto 0);
    outi: out std_logic_vector(31 downto 0)
    );
end slope_bias_loader_tb;

architecture Behavioral of slope_bias_loader_tb is
    signal x: std_logic_vector(7 downto 0) := "10110011";
    signal y: std_logic_vector(31 downto 0);
    component slope_bias_loader
        Generic(
            B: integer := 8;
            N: integer := 6;
            M: integer := 26;
            slope_adjustment_factor: integer := 128;
            negative_slope_exponent: integer := 16;
            bias: integer := 7
        );
        Port (
            input: in std_logic_vector(B - 1 downto 0);
            output: out std_logic_vector(N + M - 1 downto 0)
         );
    end component slope_bias_loader;
begin

x <= ini;
sbl: slope_bias_loader
    generic map (
    B => 8, N => 6, M => 26,
    slope_adjustment_factor => 1276,
    negative_slope_exponent => 16,
    bias => 7
    )
    port map (
    input => x, output => y
    );

outi <= y;
end Behavioral;

--Name: Cory Nezin
--Date: 02/22/2018
--Goal: Translate 8 bits slope-bias to 32 bit standard

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity slope_bias_loader is
    Generic(
        B: integer := 8;
        bias_adjustment_factor: integer := -303112;
        negative_bias_exponent: integer := 16;
        N: integer := 6;  --QN.M
        M: integer := 26;
        slope_adjustment_factor: integer := 128;
        negative_slope_exponent: integer := 16
    );
    Port (
        input: in std_logic_vector(B - 1 downto 0);
        output: out std_logic_vector(N + M - 1 downto 0)
     );
attribute use_dsp : string;
attribute use_dsp of slope_bias_loader : entity is "no";
end slope_bias_loader;

architecture RTL of slope_bias_loader is

signal input_signed: signed(B - 1 downto 0);
signal output_signed: signed( B + N + M - 1 downto 0);
signal bias_signed: signed( B + N + M - 1 downto 0);
signal slope_adjustment_factor_signed: signed (N + M - 1 downto 0);
signal bias_adjustment_factor_signed: signed (B + N + M - 1 downto 0);
signal intermediate_product: std_logic_vector(B + N + M - 1 downto 0);


begin
input_signed <= signed(input);

slope_adjustment_factor_signed <= to_signed(slope_adjustment_factor, slope_adjustment_factor_signed'length);

bias_adjustment_factor_signed <= to_signed(bias_adjustment_factor, bias_adjustment_factor_signed'length);
bias_signed <= shift_left(bias_adjustment_factor_signed,M-negative_bias_exponent);

output_signed <= slope_adjustment_factor_signed * input_signed;

intermediate_product <= std_logic_vector(shift_left(output_signed,M-negative_slope_exponent) + bias_signed);
output <= intermediate_product(N+M-1 downto 0);
end RTL;

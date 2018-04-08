-- Name: Cory Nezin
-- Date: 03/01/2018
-- Goal: do a dot product of length len

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dot_n is
    Generic (
    input_bits: integer:= 32;  --32
    output_bits: integer:= 32; --32
    M: integer:= 352
    );
    Port (
        a: in STD_LOGIC_VECTOR( input_bits-1 downto 0 ); --weight
        b: in STD_LOGIC_VECTOR( input_bits-1 downto 0 ); --activation
        bias: in STD_LOGIC_VECTOR( 24 downto 0 );
--        rst: in STD_LOGIC;
        carry_clear: in STD_LOGIC;
        clk: in STD_LOGIC;
        y: out STD_LOGIC_VECTOR( input_bits-1 downto 0 )
    );
--attribute use_dsp : string;
--attribute use_dsp of dot_n : entity is "yes";
end dot_n;

architecture RTL of dot_n is
signal accumulated_value: SIGNED(42 downto 0) := (others => '0');
signal new_value: SIGNED(42 downto 0) := (others => '0');
signal high: STD_LOGIC_VECTOR(24 downto 0);
signal low: STD_LOGIC_VECTOR(17 downto 0);
signal high_bias: STD_LOGIC_VECTOR(42 downto 0);
begin

high_bias(42 downto 37) <= "111111" when bias(0) = '1' else "000000";
high_bias(36 downto 36-24) <= bias;
high_bias(36-25 downto 0) <= (others => '0');
accumulated_value <= new_value when carry_clear = '0' else signed(high_bias);
y <= std_logic_vector(accumulated_value(42-6 downto 42-6-31) );
high <= b(31 downto 31-24);
low <= a(31 downto 31-17);
process(clk) begin
    if rising_edge(clk) and carry_clear = '0' then
        new_value <= signed(high)  * signed(low) + signed(accumulated_value);
--        if rst = '1' then
--            ctr <= (others => '0');
--        else
--            ctr <= std_logic_vector(unsigned(ctr) + 1);
--            if ctr = len then
--                carry_clear <= '1';
--                valid <= '0';
--            else
--                carry_clear <= '0';
--                valid <= '1';
--            end if;
--        end if;
    end if;
    
    
end process;
end RTL;

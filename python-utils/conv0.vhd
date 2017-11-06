library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use data_types;
entity conv0 is
port(input: in conv_0_input;
     clk: in std_logic;
     rst: in std_logic;
     output: out conv_0_output);
component fir_0_0 is
    port(input: in signed(7 downto 0);
         clk : in std_logic;
         rst : in std_logic;
         output: out signed(7 downto 0));
end component;
component fir_0_1 is
    port(input: in signed(7 downto 0);
         clk : in std_logic;
         rst : in std_logic;
         output: out signed(7 downto 0));
end component;
component fir_1_0 is
    port(input: in signed(7 downto 0);
         clk : in std_logic;
         rst : in std_logic;
         output: out signed(7 downto 0));
end component;
component fir_1_1 is
    port(input: in signed(7 downto 0);
         clk : in std_logic;
         rst : in std_logic;
         output: out signed(7 downto 0));
end component;
component fixed_add is
    port(a: in signed(7 downto 0);
         b: in signed(7 downto 0);
         output: out signed(7 downto 0)
        );
end fixed_add;
end conv0;
architecture RTL of conv0 is
signal out_0 : conv_0_input;
signal out_1 : conv_0_input;
begin
-- connec the inputs of FIR filter
FF0_0: fir_0_0 port map(input=>input(0), clk=>clk, rst=>rst, output=>out_0(0));
FF0_1: fir_0_1 port map(input=>input(1), clk=>clk, rst=>rst, output=>out_0(1));
FF1_0: fir_1_0 port map(input=>input(0), clk=>clk, rst=>rst, output=>out_1(0));
FF1_1: fir_1_1 port map(input=>input(1), clk=>clk, rst=>rst, output=>out_1(1));
ADD_0: fixed_add port map(a=>output_0(0), b=>output_0(1), output=>output(0));
ADD_1: fixed_add port map(a=>output_1(0), b=>output_1(1), output=>output(1));
end architecture;

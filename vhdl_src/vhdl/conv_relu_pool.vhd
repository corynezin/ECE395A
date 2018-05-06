-- Name: Cory Nezin
-- Date: 11/16/2017
-- Goal: Implement addition, relu, and max pooling on top of convolution.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_relu_pool is
    generic(
        M: Integer:=16; --Input bit width
        N: Integer:=24 --Output bit width
    );
    Port(
        a: IN STD_LOGIC_VECTOR(M-1 downto 0);
        b: IN STD_LOGIC_VECTOR(M-1 downto 0);
        y: OUT STD_LOGIC_VECTOR(N-1 downto 0);
        rst: IN STD_LOGIC;
        clk: IN STD_LOGIC;
        y_valid: OUT STD_LOGIC
    );
end conv_relu_pool;

architecture RTL of conv_relu_pool is
component conv_layer_0 is
    generic(
        M: Integer:=16; --Input bit width
        N: Integer:=24 --Output bit width
    );
    Port( 
        x: IN STD_LOGIC_VECTOR(M-1 downto 0);
        rst: IN STD_LOGIC;
        clk: IN STD_LOGIC;
        y: OUT STD_LOGIC_VECTOR(N-1 downto 0);
        output_valid: OUT STD_LOGIC
        );
end component conv_layer_0;

component conv_layer_1 is
    generic(
        M: Integer:=16; --Input bit width
        N: Integer:=24 --Output bit width
    );
  Port ( 
         x: IN STD_LOGIC_VECTOR(M-1 downto 0);
         rst: IN STD_LOGIC;
         clk: IN STD_LOGIC;
         y: OUT STD_LOGIC_VECTOR(N-1 downto 0);
         output_valid: OUT STD_LOGIC
         );
end component conv_layer_1;

component Relu is
  generic (N : INTEGER);
  Port ( 
    d0      : IN STD_LOGIC_VECTOR(N-1 downto 0);
    output  : OUT STD_LOGIC_VECTOR(N-1 downto 0)
  );
end component Relu;

component maxpool2_1 is
    generic (N : INTEGER);
    Port ( input : in STD_LOGIC_VECTOR (N-1 downto 0);
           output : out STD_LOGIC_VECTOR (N-1 downto 0);
           rst: in STD_LOGIC;
           clk : in STD_LOGIC;
           ceclk: in STD_LOGIC;
           input_valid: in STD_LOGIC;
           output_valid: out STD_LOGIC);
end component maxpool2_1;

signal conv0_valid: STD_LOGIC:= '0';
signal conv1_valid: STD_LOGIC:= '0';
signal y1,y2: STD_LOGIC_VECTOR(N-1 downto 0);
signal sum: STD_LOGIC_VECTOR(N-1 downto 0);
signal z: STD_LOGIC_VECTOR(N-1 downto 0) := (others => '0');
signal w: STD_LOGIC_VECTOR(N-1 downto 0) := (others => '0');
signal ce: STD_LOGIC:= '0';
signal sum_valid: STD_LOGIC:='0';
signal pool_valid: STD_LOGIC:='0';
signal valid_valid: STD_LOGIC:='0';
signal relu_out: STD_LOGIC_VECTOR(23 downto 0);
signal maxpl_in: STD_LOGIC_VECTOR(23 downto 0);
begin

sum_valid <= conv0_valid and conv1_valid;

ce <= valid_valid;
process(clk) begin
    if rising_edge(clk)  then
        if rst = '1' then
            valid_valid <= '0';
        elsif sum_valid = '1' then
            valid_valid <= sum_valid;
        end if;
    end if;
end process;
conv0: conv_layer_0
    port map(
        x => a,
        y => y1,
        rst => rst,
        clk => clk,
        output_valid => conv0_valid
    );
conv1: conv_layer_1
    port map(
        x => b,
        y => y2,
        rst => rst,
        clk => clk,
        output_valid => conv1_valid
    );
    
sum <= std_logic_vector(signed(y1) + signed(y2));

r: Relu
    generic map(
        N => 24
    )
    port map(
        d0 => sum,
        output => relu_out
    );
mp: maxpool2_1
    generic map(
        N => 24
    )
    port map(
        clk => clk,
        ceclk => ce,
        rst => rst,
        input => maxpl_in,
        output => w,
        input_valid => sum_valid,
        output_valid => pool_valid
    );
    
process(clk) begin
if rising_edge(clk) then
    maxpl_in <= relu_out;
end if;
end process;
y <= w when sum_valid = '1' else (others=>'0');
y_valid <= '1' when sum_valid = '1' else '0'; --used to be pool valid
end RTL;

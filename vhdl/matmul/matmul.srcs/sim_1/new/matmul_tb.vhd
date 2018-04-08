library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity matmul_tb is
--    Port (
--        x: in STD_LOGIC_VECTOR( 31 downto 0 );
--        y: out STD_LOGIC_VECTOR( 31 downto 0 )
--    );
end matmul_tb;

architecture Behavioral of matmul_tb is
component matmul is
    Generic (
        input_bits: integer:= 32;
        output_bits: integer:= 64;
        M: integer:= 64;
        N: integer:= 352
    );
    Port (
        x: in STD_LOGIC_VECTOR( input_bits-1 downto 0 );
        y: out STD_LOGIC_VECTOR( input_bits-1 downto 0 );
        input_from_prev_layer: in STD_LOGIC;
        clk: in STD_LOGIC
    );
end component matmul;
signal clk: STD_LOGIC := '0';
signal input_from_prev_layer: STD_LOGIC := '1';
signal x: STD_LOGIC_VECTOR(31 downto 0):= "00000100000000000000000000000000";
signal y: STD_LOGIC_VECTOR(31 downto 0);

begin

m: matmul
Port map(
    x => x,
    y => y,
    input_from_prev_layer => input_from_prev_layer,
    clk => clk
);

process begin
    wait for 1ms;
    clk <= not clk;
end process;

process(clk) begin
    if rising_edge(clk) then
    x <= std_logic_vector(-signed(x));
end if;
end process;

end Behavioral;

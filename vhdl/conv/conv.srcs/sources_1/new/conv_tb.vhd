--Name: Cory Nezin
--Date: 11/09/2017
--Goal: Test conv layer

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_tb is
--  Port ( );
end conv_tb;

architecture Behavioral of conv_tb is
component conv is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (23 downto 0);
           rst: in STD_LOGIC;
           clk : in STD_LOGIC;
           data_valid: in STD_LOGIC
           );
end component;

signal clk: STD_LOGIC:= '0';
signal lfsr: STD_LOGIC_VECTOR(7 downto 0):= "00000001";
signal y: STD_LOGIC_VECTOR(23 downto 0);
signal rst: STD_LOGIC := '0';
begin
conv0: conv
    port map(
        x => lfsr(7 downto 0),
        y => y,
        rst => rst,
        clk => clk,
        data_valid => '1'
    );

process
variable i: integer := 1;
begin
    wait for 1 ms;
    clk <= not clk;
    if clk = '0' then
        i := (i + 1) mod 128;
        if (i < 4) then
            rst <= '1';
        else
            rst <= '0';
        end if;
        lfsr <= std_logic_vector(to_unsigned(i,8));
    end if;
end process;

end Behavioral;

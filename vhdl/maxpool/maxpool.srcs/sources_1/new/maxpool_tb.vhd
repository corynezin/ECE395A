--Name: Cory Nezin
--Date: 11/03/2017
--Goal: test maxpool2
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;

entity maxpool_tb is
--  Port ( );
end maxpool_tb;

architecture Behavioral of maxpool_tb is
component maxpool2 is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC);
end component maxpool2;

signal lfsr: STD_LOGIC_VECTOR(15 downto 0):= "0000000000000001";
signal input: STD_LOGIC_VECTOR(7 downto 0);
signal clk: STD_LOGIC:= '0';
signal mpd: STD_LOGIC_VECTOR(7 downto 0);
signal choose: STD_LOGIC:= '0';
signal prev: STD_LOGIC_VECTOR(7 downto 0);
signal post: STD_LOGIC_VECTOR(7 downto 0);
begin

mp: maxpool2
    Port Map(
        input => input,
        output => mpd,
        clk => clk
    );


input <= lfsr(7 downto 0) when choose = '1' else lfsr(15 downto 8);

process(clk,choose)
    file LogFile : text open write_mode is "logfile.log";
    variable LineBuffer : line;
begin
    if rising_edge(choose) then
        write(LineBuffer, mpd, right, 8);
        writeline(LogFile, LineBuffer);
    end if;
    if rising_edge(clk) then
        write(LineBuffer, input, right, 8);
        writeline(LogFile, LineBuffer);
    end if;
end process;

process(clk) begin
    if rising_edge(clk) then
        if choose = '1' then
            lfsr(0) <= lfsr(15) xor lfsr(14) xor lfsr(12) xor lfsr(3);
            for i in 1 to 15 loop
                lfsr(i) <= lfsr(i-1);
            end loop;
            choose <= '0';
        else
            choose <= '1';
        end if;
        
    end if;
end process;

process begin
    wait for 1 ms;
    clk <= not clk;
end process;

end Behavioral;

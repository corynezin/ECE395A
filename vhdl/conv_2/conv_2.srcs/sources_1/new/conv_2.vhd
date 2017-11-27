--Name: Cory Nezin
--Date: 10/18/2017
--Goal: Test the FIFO dot product component

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_2 is
    Generic (
        M: Integer := 8; --Input bit width
        N: Integer := 24 --Output bit width
    );
    Port ( data_in : in STD_LOGIC_VECTOR(M-1 downto 0);
           data_out : out STD_LOGIC_VECTOR(N-1 downto 0);
           clk : in STD_LOGIC;
           data_in_valid : in STD_LOGIC;
           data_out_valid : out STD_LOGIC);
end conv_2;

architecture RTL of conv_2 is

component fifo_16 is
    Port ( 
        clk : in STD_LOGIC;
        srst : in STD_LOGIC;
        din : in STD_LOGIC_VECTOR ( 7 downto 0 );
        wr_en : in STD_LOGIC;
        rd_en : in STD_LOGIC;
        dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
        full : out STD_LOGIC;
        almost_full : out STD_LOGIC;
        empty : out STD_LOGIC
    );
end component fifo_16;

signal ce: STD_LOGIC:= '0';
signal ceclk: STD_LOGIC:= '0';
signal rst: STD_LOGIC:= '1';
signal filter_in: STD_LOGIC_VECTOR(M-1 downto 0):= "00000000";
begin

signal_fifo: fifo_16
    port map(
        clk => clk,
        srst => rst,
        din => data_in,
        dout => filter_in,
        wr_en => wren,
        rd_en => rden,
        prog_full => full1,
        empty => empty1
    );

ceclk <= clk and ce;
process(clk) begin
if rising_edge(clk) then
    if data_in_valid = '1' then
        
    end if;
end if;
end process;

end RTL;

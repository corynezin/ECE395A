-- Name: Brenda So
-- Date: 11/14/2017
-- Goal: Implement convolution layer (FIFO + Conv) with the appropriate logic control

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity conv_layer is
  Port ( 
         x: IN STD_LOGIC_VECTOR(7 downto 0);
         rst: IN STD_LOGIC;
         clk: IN STD_LOGIC;
         y: OUT STD_LOGIC_VECTOR(23 downto 0)
         );
end conv_layer;

architecture RTL of conv_layer is

-- Convolution component
component conv is
    Port ( 
           x : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (23 downto 0);
           rst: in STD_LOGIC;
           data_valid: in STD_LOGIC;
           clk: in STD_LOGIC;
           weights_ready: out STD_LOGIC
           );
end component;

-- FIFO component
component fifo_generator_0 is
  Port ( 
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC );
end component;

component mux2_1 is
  Port ( 
        x_0 : IN STD_LOGIC_VECTOR(7 downto 0);
        x_1 : IN STD_LOGIC_VECTOR(7 downto 0);
        y : OUT STD_LOGIC_VECTOR(7 downto 0);
        addr : IN STD_LOGIC);
end component;


signal w_ready : STD_LOGIC := '0';
signal rd_enable : STD_LOGIC := '0';
signal wr_enable : STD_LOGIC := '0';
signal fifo_in : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal fifo_out : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal fifo_full : STD_LOGIC;

begin
h1: conv port map (x => fifo_out,
                   y => y,
                   rst => rst,
                   data_valid=> rd_enable,
                   clk => clk,
                   weights_ready => w_ready);
fifo_128_1: fifo_generator_0 port map (
                                        clk => clk,
                                        srst => rst,
                                        din => fifo_in,
                                        wr_en => wr_enable,
                                        rd_en => rd_enable,
                                        dout => fifo_out,
                                        full => fifo_full
                                      );
mux_0 : mux2_1 port map (
                         x_0 => x,
                         x_1 => fifo_out,
                         y => y,
                         addr => fifo_full
                         );
                                 
rd_enable <= w_ready and fifo_full;
wr_enable <= not (fifo_full and not(w_ready));

end RTL;

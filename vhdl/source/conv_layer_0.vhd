-- Name: Brenda So
-- Date: 11/14/2017
-- Goal: Implement convolution layer (FIFO + Conv) with the appropriate logic control

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_layer_0 is
    Port ( 
         x: IN STD_LOGIC_VECTOR(7 downto 0);
         rst: IN STD_LOGIC;
         clk: IN STD_LOGIC;
         y: OUT STD_LOGIC_VECTOR(23 downto 0);
         output_valid: OUT STD_LOGIC
         );
end conv_layer_0;

architecture RTL of conv_layer_0 is

-- Convolution component
component conv_0 is
    Port ( 
           x : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (23 downto 0);
           rst: in STD_LOGIC;
           data_valid: in STD_LOGIC;
           clk: in STD_LOGIC;
           output_valid : out STD_LOGIC
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
      almost_full : out STD_LOGIC;
      empty : out STD_LOGIC;
      data_count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      prog_full : out STD_LOGIC );
end component;

component mux2_1_8 is
  Port ( 
        x_0 : IN STD_LOGIC_VECTOR(7 downto 0);
        x_1 : IN STD_LOGIC_VECTOR(7 downto 0);
        y : OUT STD_LOGIC_VECTOR(7 downto 0);
        addr : IN STD_LOGIC);
end component;

component mux2_1_1 is
  Port ( 
        x_0 : IN STD_LOGIC;
        x_1 : IN STD_LOGIC;
        y : OUT STD_LOGIC;
        addr : IN STD_LOGIC);
end component;


signal w_ready : STD_LOGIC := '0';
signal rd_enable : STD_LOGIC := '0';
signal wr_enable : STD_LOGIC := '0';
signal fifo_in : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal fifo_out : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal fifo_full : STD_LOGIC;
signal fifo_almost_full : STD_LOGIC;
signal is_full : STD_LOGIC;
signal init : STD_LOGIC := '1';
signal wr_intermediate : STD_LOGIC;
signal wr_inter : STD_LOGIC;
signal h1_output_valid : STD_LOGIC := '0';
signal is_output_valid : STD_LOGIC := '0';
begin
h0: conv_0 port map (
    x => fifo_out,
    y => y,
    rst => rst,
    data_valid=> rd_enable, -- PROBLEM LINE >:(
    clk => clk,
    output_valid => h1_output_valid);
fifo_128_1: fifo_generator_0 port map (
    clk => clk,
    srst => rst,
    din => fifo_in,
    wr_en => wr_enable,
    rd_en => rd_enable,
    dout => fifo_out,
    full => fifo_full,
    -- note : prog_full is the programmable full,
    prog_full => fifo_almost_full
    );
mux_0 : mux2_1_8 port map (
    x_0 => x,
    x_1 => fifo_out,
    y => fifo_in,
    addr => is_full
    );     
mux_1: mux2_1_1 port map(
    x_0 => fifo_almost_full,
    x_1 => fifo_full,
    y => is_full,
    addr => init
);


-- rd_enable <= (w_ready and is_full);
-- wr_enable <= not (is_full and not(w_ready)) when (init = '1') else wr_intermediate;
rd_enable <= is_full;
wr_enable <= not is_full when (init = '1') else wr_intermediate;
--output_valid <= (not init) and h1_output_valid;
output_valid <= ((not init) and h1_output_valid) when (is_output_valid = '1') else '0';

process(clk)
variable counter : integer := 0;
begin
    
    if (rising_edge(clk)) then
        -- shift registers to deal with read latency for write enable
        wr_intermediate <= rd_enable;
        if (rst = '1') then
            init <= '1';
        end if;
        if (fifo_full = '1') then
            init <= '0';
            counter := 1;
            is_output_valid <= '0';
        end if;    
        if (counter >= 1) then
            counter := counter + 1;
        end if;
        if (counter = 14) then
            counter := 0;
            is_output_valid <= '1';
        end if;
    end if;
    
end process;
end RTL;

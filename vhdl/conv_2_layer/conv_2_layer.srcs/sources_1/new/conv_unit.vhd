-- Name: Cory Nezin
-- Date: 12/10/2017
-- Goal: Implement a 2D convolution unit

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
Library xpm;
use xpm.vcomponents.all;
entity conv_unit is
Generic( 
    N_signal: integer := 24;
    N_coef: integer := 8;
    N_out: integer := 48;
    addr_bits: integer := 11;
    mif_name: string);
Port(
    clk: in STD_LOGIC;
    srst: in STD_LOGIC;
    din: in STD_LOGIC_VECTOR(N_signal-1 downto 0);
    dout: out STD_LOGIC_VECTOR(N_out-1 downto 0);
    mac_enable: in STD_LOGIC;
    ctr_rst: in STD_LOGIC;
    filter_input_enable: in STD_LOGIC;
    filter_rom_address: in STD_LOGIC_VECTOR (addr_bits-1 downto 0) ;
    x_fifo_wren: in STD_LOGIC;
    x_fifo_rden: in STD_LOGIC;
    h_fifo_wren: in STD_LOGIC;
    h_fifo_rden: in STD_LOGIC;
    o_fifo_wren: in STD_LOGIC;
    o_fifo_rden: in STD_LOGIC;
    x_mux_addr: in STD_LOGIC;
    h_mux_addr: in STD_LOGIC;
    o_mux_addr: in STD_LOGIC);
end conv_unit;

architecture RTL of conv_unit is
COMPONENT fifo_16x24
PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(N_signal-1 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(N_signal-1 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC);
END COMPONENT;
COMPONENT fifo_16
PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(N_coef-1 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(N_coef-1 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC);
END COMPONENT;

COMPONENT dot is
Generic (
    N_signal: integer := 24;
    N_coef: integer := 8;
    L: integer := 10;
    O: integer := 48);
Port ( 
    x:      in STD_LOGIC_VECTOR (N_signal-1 downto 0); --component of first vector
    y:      in STD_LOGIC_VECTOR (N_coef-1 downto 0); --component of second vector
    sclr:   in STD_LOGIC;                     --Synchronus Clear
    clk:    in STD_LOGIC;                     --Clock
    ce:     in STD_LOGIC;                     --Clock Enable
    zout:   out STD_LOGIC_VECTOR (O-1 downto 0);
    valid:  out STD_LOGIC;
    ctr_rst:in STD_LOGIC);
    
end component dot;
COMPONENT fifo_45
PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC);
END COMPONENT;
COMPONENT Relu is
generic 
    (N : INTEGER);
Port ( 
    d0      : IN STD_LOGIC_VECTOR(N-1 downto 0);
    output  : OUT STD_LOGIC_VECTOR(N-1 downto 0));
end COMPONENT Relu;
COMPONENT maxpool2 is
    generic (N : INTEGER);
    Port ( input : in STD_LOGIC_VECTOR (N-1 downto 0);
           output : out STD_LOGIC_VECTOR (N-1 downto 0);
           clk : in STD_LOGIC);
end COMPONENT maxpool2;

signal x_fifo_output: STD_LOGIC_VECTOR( N_signal-1 downto 0) := (others => '0');
signal h_fifo_output: STD_LOGIC_VECTOR( N_coef-1 downto 0) := (others => '0');
signal o_fifo_output: STD_LOGIC_VECTOR (N_out-1 downto 0);
signal x_fifo_input: STD_LOGIC_VECTOR(N_signal-1 downto 0) := (others => '0');
signal h_fifo_input: STD_LOGIC_VECTOR(N_coef-1 downto 0) := (others => '0');
signal o_fifo_input: STD_LOGIC_VECTOR(N_out-1 downto 0):= (others => '0');
signal x_fifo_full, h_fifo_full, o_fifo_full: STD_LOGIC:= '0';
signal filter_rom_output: STD_LOGIC_VECTOR (N_coef-1 downto 0) := (others => '0');
signal dot_valid: STD_LOGIC:='0';
signal mac_filter_input: STD_LOGIC_VECTOR(N_coef-1 downto 0) := (others => '0');
signal actual_dot_valid : STD_LOGIC := '0';
signal mac_output: STD_LOGIC_VECTOR(N_out-1 downto 0) := (others => '0');
signal partial_sum: STD_LOGIC_VECTOR(N_out-1 downto 0);
signal relu_ready, result_ready: STD_LOGIC:= '0';
signal relu_output: STD_LOGIC_VECTOR(N_out-1 downto 0 );
signal maxpool_output: STD_LOGIC_VECTOR(N_out-1 downto 0 );

begin
x_fifo: fifo_16x24
PORT MAP (
    clk => clk,
    srst => srst,
    din => x_fifo_input,
    wr_en => x_fifo_wren,
    rd_en => x_fifo_rden,
    dout => x_fifo_output,
    full => x_fifo_full
);
h_fifo: fifo_16
PORT MAP (
    clk => clk,
    srst => srst,
    din => h_fifo_input,
    wr_en => h_fifo_wren,
    rd_en => h_fifo_rden,
    dout => h_fifo_output,
    full => h_fifo_full
);

x_fifo_input <= din when x_mux_addr = '0' else x_fifo_output;
  
h_fifo_input <= filter_rom_output when h_mux_addr = '0' else h_fifo_input;
xpm_memory_sprom_inst:xpm_memory_sprom
    generic map(
    --Common module generics
    MEMORY_SIZE => 16384,--positive integer, number of bits.
    MEMORY_PRIMITIVE => "auto",--string;"auto","distributed","block"or"ultra";
    MEMORY_INIT_FILE => mif_name,--string;"none"or"<filename>.mem"
    MEMORY_INIT_PARAM =>"", --string;
    USE_MEM_INIT => 1, --integer;0,1
    WAKEUP_TIME => "disable_sleep",--string;"disable_sleep"or"use_sleep_pin"
    MESSAGE_CONTROL => 0, --integer;0,1
    --Port A module generics
    READ_DATA_WIDTH_A => N_coef, --positiveinteger
    ADDR_WIDTH_A => addr_bits, --positiveinteger
    READ_RESET_VALUE_A => "0", --string
    READ_LATENCY_A => 2 --non-negativeinteger
    )
    port map(
    --Commonmoduleports
    sleep =>'0',
    --PortAmoduleports
    clka=>clk,
    rsta=>srst,
    ena=>'1',
    regcea=> '1',
    addra=>filter_rom_address,
    injectsbiterra=>'0',--donotchange
    injectdbiterra=>'0',--donotchange
    douta=>filter_rom_output,
    sbiterra=>open,--donotchange
    dbiterra=>open--donotchange
    );
inner_product : dot
PORT MAP( 
    x => x_fifo_output,
    y => mac_filter_input,
    sclr => srst,
    clk => clk,
    ce => mac_enable,
    zout => mac_output,
    valid => dot_valid,
    ctr_rst => ctr_rst);
o_fifo: fifo_45
PORT MAP (
    clk => clk,
    srst => srst,
    din => o_fifo_input,
    wr_en => o_fifo_wren,
    rd_en => o_fifo_rden,
    dout => o_fifo_output,
    prog_full => o_fifo_full);
r: Relu
GENERIC MAP
    (N => 48)
PORT MAP (
    d0 => o_fifo_output,
    output => relu_output);
mp: maxpool2
GENERIC MAP
    (N => 48)
PORT MAP( 
    input => relu_output,
    output => maxpool_output,
    clk => clk);
    
partial_sum <= std_logic_vector(signed(mac_output) + signed(o_fifo_output));
o_fifo_input <= mac_output when o_mux_addr = '0' else partial_sum;
mac_filter_input <= h_fifo_output when filter_input_enable = '1' else (others => '0');
dout <= o_fifo_output;
end RTL;
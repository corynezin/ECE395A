-- Name: Cory Nezin
-- Date: 12/10/2017
-- Goal: Implement 2D convolution

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity conv_layer_2 is
Generic (
    N_signal: integer := 24;
    N_coef: integer := 8;
    N_out: integer := 48;
    addr_bits: integer := 11);
Port ( 
    din: in STD_LOGIC_VECTOR (N_signal-1 downto 0);
    b_fifo_full: in STD_LOGIC;
    b_fifo_empty: in STD_LOGIC;
    b_fifo_wren: out STD_LOGIC;
    b_fifo_rden: out STD_LOGIC;
    dout: out STD_LOGIC_VECTOR (N_out-1 downto 0);
    clk: in STD_LOGIC;
    srst: in STD_LOGIC );
end conv_layer_2;

architecture RTL of conv_layer_2 is
type output_array is array (0 to 63) of STD_LOGIC_VECTOR(47 downto 0);
component conv_unit is
Generic(
    N_in: integer := 24;
    N_out: integer := 48;
    addr_bits: integer := 11;
    mif_name: string := "/home/nezin/Documents/ECE395A/vhdl/source/mem/0.mem");
Port(
    clk: in STD_LOGIC;
    srst: in STD_LOGIC;
    din: in STD_LOGIC_VECTOR(N_in-1 downto 0);
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
end component conv_unit;
  
component conv2_controller is
Port ( 
    clk : IN STD_LOGIC;
    last_fifo_full : IN STD_LOGIC;
    last_fifo_empty: IN STD_LOGIC;
    x_fifo_full : IN STD_LOGIC;
    h_fifo_full : IN STD_LOGIC;
    x_fifo_prog_full : IN STD_LOGIC;
    h_fifo_prog_full : IN STD_LOGIC;
    o_fifo_full: IN STD_LOGIC;
    x_fifo_empty : IN STD_LOGIC;
    h_fifo_empty : IN STD_LOGIC;
    o_fifo_empty : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    
    x_mux : OUT STD_LOGIC;
    h_mux : OUT STD_LOGIC;
    o_mux : OUT STD_LOGIC;
    
    x_fifo_rden: OUT STD_LOGIC;
    x_fifo_wren: OUT STD_LOGIC;
    h_fifo_rden: OUT STD_LOGIC;
    h_fifo_wren: OUT STD_LOGIC;
    o_fifo_rden: OUT STD_LOGIC;
    o_fifo_wren: OUT STD_LOGIC;
    b_fifo_rden: OUT STD_LOGIC;
    b_fifo_wren: OUT STD_LOGIC;
    
    ram_address: OUT STD_LOGIC_VECTOR(10 downto 0);
    mac_enable: OUT STD_LOGIC;
    filter_input_enable: OUT STD_LOGIC;
    ctr_rst: OUT STD_LOGIC;
    relu_ready: OUT STD_LOGIC;
    result_ready: OUT STD_LOGIC);
end component conv2_controller;

signal x_fifo_wren, x_fifo_rden, h_fifo_wren,
       h_fifo_rden, o_fifo_wren, o_fifo_rden,
       x_mux_addr, h_mux_addr, o_mux_addr,
       x_fifo_full, h_fifo_full, o_fifo_full,
       x_fifo_empty, h_fifo_empty, o_fifo_empty,
       x_fifo_prog_full, h_fifo_prog_full,
       filter_input_enable, ctr_rst, relu_ready,
       result_ready, mac_enable
       :STD_LOGIC:= '0';
       
signal filter_rom_address: STD_LOGIC_VECTOR(addr_bits-1 downto 0) := (others => '0');
signal output_matrix: output_array := (others => "000000000000000000000000000000000000000000000000");
begin

conv_0: conv_unit
Generic Map(
    mif_name => "/home/nezin/Documents/ECE395A/vhdl/source/mem/0.mem")
Port Map(
    clk => clk,
    srst => srst,
    din => din,
    dout => output_matrix(0),
    mac_enable => mac_enable,
    ctr_rst => ctr_rst,
    filter_input_enable => filter_input_enable,
    filter_rom_address => filter_rom_address,
    x_fifo_wren => x_fifo_wren,
    x_fifo_rden => x_fifo_rden,
    h_fifo_wren => h_fifo_wren,
    h_fifo_rden => h_fifo_rden,
    o_fifo_wren => o_fifo_wren,
    o_fifo_rden => o_fifo_rden,
    x_mux_addr => x_mux_addr,
    h_mux_addr => h_mux_addr,
    o_mux_addr => o_mux_addr);
    
generate_conv:
for i in 1 to 63 generate begin
    conv_gen: conv_unit
    Generic Map(
        mif_name => "/home/nezin/Documents/ECE395A/vhdl/source/mem/" & integer'image(i) & ".mem")
    Port Map(
        clk => clk,
        srst => srst,
        din => din,
        dout => output_matrix(i),
        mac_enable => mac_enable,
        ctr_rst => ctr_rst,
        filter_input_enable => filter_input_enable,
        filter_rom_address => filter_rom_address,
        x_fifo_wren => x_fifo_wren,
        x_fifo_rden => x_fifo_rden,
        h_fifo_wren => h_fifo_wren,
        h_fifo_rden => h_fifo_rden,
        o_fifo_wren => o_fifo_wren,
        o_fifo_rden => o_fifo_rden,
        x_mux_addr => x_mux_addr,
        h_mux_addr => h_mux_addr,
        o_mux_addr => o_mux_addr);    
    end generate generate_conv;
    
controller: conv2_controller
PORT MAP( 
    clk => clk,
    last_fifo_full => b_fifo_full,
    last_fifo_empty => b_fifo_empty,
    x_fifo_full => x_fifo_full,
    h_fifo_full => h_fifo_full,
    o_fifo_full => o_fifo_full,
    x_fifo_empty => x_fifo_empty,
    h_fifo_empty => h_fifo_empty,
    o_fifo_empty => o_fifo_empty,
    rst => srst,
    x_fifo_prog_full => x_fifo_prog_full,
    h_fifo_prog_full => h_fifo_prog_full,
    
    x_mux => x_mux_addr,
    h_mux => h_mux_addr,
    o_mux => o_mux_addr,
    
    x_fifo_rden => x_fifo_rden,
    x_fifo_wren => x_fifo_wren,
    h_fifo_rden => h_fifo_rden,
    h_fifo_wren => h_fifo_wren,
    o_fifo_rden => o_fifo_rden,
    o_fifo_wren => o_fifo_wren,
    b_fifo_rden => b_fifo_rden,
    b_fifo_wren => b_fifo_wren,
    
    ram_address => filter_rom_address,
    mac_enable => mac_enable,
    filter_input_enable => filter_input_enable,
    ctr_rst => ctr_rst,
    relu_ready => relu_ready,
    result_ready => result_ready);
    
process(clk)
variable i: integer := 0;
begin
    if rising_edge(clk) then
        i := (i + 1) mod 64;
        dout <= output_matrix(i);
    end if;
end process;
end RTL;

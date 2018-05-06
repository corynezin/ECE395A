-- Name: Cory Nezin
-- Date: 12/10/2017
-- Goal: Implement 2D convolution

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity conv_layer_2 is
Generic (
    N_filters : integer := 16; -- Used to be 64
    N_signal: integer := 24;
    N_coef_enc: integer := 16;
    N_coef_dec: integer := 32;
    N_out: integer := 64;
    addr_bits: integer := 9);
Port ( 
    din: in STD_LOGIC_VECTOR (N_signal-1 downto 0);
    b_fifo_full: in STD_LOGIC;
    b_fifo_empty: in STD_LOGIC;
    b_fifo_wren: out STD_LOGIC;
    b_fifo_rden: out STD_LOGIC;
    dout: out STD_LOGIC_VECTOR (N_out-1 downto 0);
    clk: in STD_LOGIC;
    srst: in STD_LOGIC;
    answer_ready: out STD_LOGIC;
    s_fifo_rden: out STD_LOGIC);
end conv_layer_2;

architecture RTL of conv_layer_2 is
type output_array is array (0 to N_filters - 1) of STD_LOGIC_VECTOR(N_out-1 downto 0);
component conv_unit is
Generic(
    N_filter_sets: integer := 32;
    N_window: integer := 16;
    N_signal: integer := 24;
    N_coef_enc: integer := 16;
    N_coef_dec: integer := 32;
    N_out: integer := 64; --16+24+32
    addr_bits: integer := 9; -- was 11
    mif_name: string);
Port(
    clk: in STD_LOGIC;
    srst: in STD_LOGIC;
    din: in STD_LOGIC_VECTOR(N_signal-1 downto 0);
    dout: out STD_LOGIC_VECTOR(N_out-1 downto 0);
    mac_enable: in STD_LOGIC;
    ctr_rst: in STD_LOGIC;
    filter_input_enable: in STD_LOGIC;
    filter_rom_address: in STD_LOGIC_VECTOR (addr_bits-1 downto 0);
    x_fifo_wren: in STD_LOGIC;
    x_fifo_rden: in STD_LOGIC;
    h_fifo_wren: in STD_LOGIC;
    h_fifo_rden: in STD_LOGIC;
    o_fifo_wren: in STD_LOGIC;
    o_fifo_rden: in STD_LOGIC;
    x_mux_addr: in STD_LOGIC;
    h_mux_addr: in STD_LOGIC;
    o_mux_addr: in STD_LOGIC;
    result_ready: in STD_LOGIC;
    answer_ready: out STD_LOGIC);
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
    
    ram_address: OUT STD_LOGIC_VECTOR(8 downto 0);
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
        mac_enable, maxpool_ready, done_piping, done_piping_prev
       :STD_LOGIC:= '0';
       
signal dout_inter: STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
signal filter_rom_address: STD_LOGIC_VECTOR(addr_bits-1 downto 0) := (others => '0');
signal output_matrix: output_array := (others => "0000000000000000000000000000000000000000000000000000000000000000");
signal rr_int: STD_LOGIC:='0';
begin
conv_0: conv_unit
Generic Map(
    mif_name => "/home/nezin/Documents/ECE395A/vhdl/coefficients/real_conv2_0.mem")
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
    o_mux_addr => o_mux_addr,
    result_ready => rr_int,
    answer_ready => maxpool_ready);
    
generate_conv:
for i in 1 to N_filters - 1 generate begin
    conv_gen: conv_unit
    Generic Map(
        mif_name => "/home/nezin/Documents/ECE395A/vhdl/coefficients/real_conv2_" & integer'image(i) & ".mem")
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
        o_mux_addr => o_mux_addr,
        result_ready => rr_int);    
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
    result_ready => rr_int);
    
answer_ready <= maxpool_ready when done_piping_prev = '0' and srst = '0' else '0';
dout <= dout_inter;
s_fifo_rden <= done_piping;

process(clk)
variable i: integer := 0;
variable j: integer := 0;
begin
    if rising_edge(clk) then
        if srst = '1' then
            i:=0;
            j:=0;
            done_piping_prev <= '0';
            done_piping <= '0';
        else
        if maxpool_ready = '1' and done_piping_prev = '0' then
            dout_inter <= output_matrix(i);
            j := j + 1;
            if j = 44 then
                i := i+1;
                j := 0;
                if i = 16 then
                    done_piping_prev <= '1';
                end if;
            end if;
        else
            dout_inter <= (others => '0');
        end if;
        done_piping <= done_piping_prev;
        end if;
    end if;
end process;
end RTL;

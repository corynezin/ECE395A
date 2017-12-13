library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;

entity conv2_controller_tb is
--  Port ( );
end conv2_controller_tb;

architecture Behavioral of conv2_controller_tb is

component conv2_controller is
Port ( 
-- input 
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
    dot_valid : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    
    -- output to MUXes
    x_mux : OUT STD_LOGIC;
    h_mux : OUT STD_LOGIC;
    o_mux : OUT STD_LOGIC;
    
    -- output to FIFOs
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
    state: OUT STD_LOGIC_VECTOR(3 downto 0);
    filter_input_enable: OUT STD_LOGIC;
    ctr_rst: OUT STD_LOGIC;
    actual_dot_valid : OUT STD_LOGIC;
    relu_ready: OUT STD_LOGIC;
    result_ready: OUT STD_LOGIC
);
end component conv2_controller;
COMPONENT fifo_16
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC
  );
END COMPONENT;
COMPONENT fifo_64
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END COMPONENT;
component mux2_1_8 is
  Port ( 
        x_0 : IN STD_LOGIC_VECTOR(7 downto 0); -- Choice 0
        x_1 : IN STD_LOGIC_VECTOR(7 downto 0); -- Choice 1
        y : OUT STD_LOGIC_VECTOR(7 downto 0);  -- Chosen
        addr : IN STD_LOGIC);                  -- 0 -> x_0, 1 -> x_1
end component mux2_1_8;
COMPONENT filter_rom
    PORT (
        a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
        clk : IN STD_LOGIC;
        qspo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END COMPONENT;
component dot is
    Generic (
        N: integer := 8;
        M: integer := 8;
        L: integer := 10;
        O: integer := 48
    );
    Port ( 
        x:      in STD_LOGIC_VECTOR (N-1 downto 0); --component of first vector
        y:      in STD_LOGIC_VECTOR (M-1 downto 0); --component of second vector
        T:      in UNSIGNED (L-1 downto 0);         --Length of vector
        sclr:   in STD_LOGIC;                     --Synchronus Clear
        clk:    in STD_LOGIC;                     --Clock
        ce:     in STD_LOGIC;                     --Clock Enable
        zout:   out STD_LOGIC_VECTOR (O-1 downto 0);
        valid:  out STD_LOGIC;
        ctr_rst:in STD_LOGIC
    );
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
    prog_full : OUT STD_LOGIC
  );
END COMPONENT;
COMPONENT Relu is
  generic (N : INTEGER);
  Port ( 
    d0      : IN STD_LOGIC_VECTOR(N-1 downto 0);
    output  : OUT STD_LOGIC_VECTOR(N-1 downto 0)
  );
end COMPONENT Relu;
COMPONENT maxpool2 is
    generic (N : INTEGER);
    Port ( input : in STD_LOGIC_VECTOR (N-1 downto 0);
           output : out STD_LOGIC_VECTOR (N-1 downto 0);
           clk : in STD_LOGIC);
end COMPONENT maxpool2;

signal clk:STD_LOGIC:='0';
signal srst:STD_LOGIC:='0';
signal x_mux_addr, h_mux_addr, o_mux_addr: STD_LOGIC:='0';
signal x_fifo_wren, h_fifo_wren, o_fifo_wren, b_fifo_wren: STD_LOGIC:= '0';
signal x_fifo_rden, h_fifo_rden, o_fifo_rden, b_fifo_rden: STD_LOGIC:= '0';
signal x_fifo_output, h_fifo_output, b_fifo_output: STD_LOGIC_VECTOR( 7 downto 0) := "00000000";
signal o_fifo_output: STD_LOGIC_VECTOR (47 downto 0);
signal x_fifo_input, h_fifo_input, b_fifo_input: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal o_fifo_input: STD_LOGIC_VECTOR(47 downto 0):= "000000000000000000000000000000000000000000000000";
signal x_fifo_full, h_fifo_full, b_fifo_full, o_fifo_full: STD_LOGIC:= '0';
signal x_fifo_prog_full, h_fifo_prog_full: STD_LOGIC := '0';
signal x_fifo_empty, h_fifo_empty, b_fifo_empty, o_fifo_empty: STD_LOGIC:= '0';
signal filter_rom_output: STD_LOGIC_VECTOR (7 downto 0);
signal filter_rom_address: STD_LOGIC_VECTOR( 10 downto 0);
signal lfsr: STD_LOGIC_VECTOR(7 downto 0):= "00000001";
signal state: STD_LOGIC_VECTOR(3 downto 0);
signal choose: STD_LOGIC:='0';
signal dot_valid: STD_LOGIC:='0';
signal mac_enable: STD_LOGIC:='0';
signal mac_filter_input: STD_LOGIC_VECTOR(7 downto 0);
signal filter_input_enable: STD_LOGIC := '0';
signal ctr_rst: STD_LOGIC := '0';
signal actual_dot_valid : STD_LOGIC := '0';
signal mac_output: STD_LOGIC_VECTOR(47 downto 0) := "000000000000000000000000000000000000000000000000";
signal partial_sum: STD_LOGIC_VECTOR(47 downto 0);
signal relu_ready, result_ready: STD_LOGIC:= '0';
signal relu_output: STD_LOGIC_VECTOR( 47 downto 0 );
signal maxpool_output: STD_LOGIC_VECTOR( 47 downto 0 );
begin

x_fifo: fifo_16
PORT MAP (
    clk => clk,
    srst => srst,
    din => x_fifo_input,
    wr_en => x_fifo_wren,
    rd_en => x_fifo_rden,
    dout => x_fifo_output,
    full => x_fifo_full,
    prog_full => x_fifo_prog_full
);
h_fifo: fifo_16
PORT MAP (
    clk => clk,
    srst => srst,
    din => h_fifo_input,
    wr_en => h_fifo_wren,
    rd_en => h_fifo_rden,
    dout => h_fifo_output,
    full => h_fifo_full,
    prog_full => h_fifo_prog_full
);
b_fifo: fifo_64
PORT MAP (
    clk => clk,
    srst => srst,
    din => b_fifo_input,
    wr_en => b_fifo_wren,
    rd_en => b_fifo_rden,
    dout => b_fifo_output,
    full => b_fifo_full,
    empty => b_fifo_empty);
x_mux: mux2_1_8
PORT MAP ( 
    x_0 => b_fifo_output,
    x_1 => x_fifo_output, 
    y => x_fifo_input,
    addr => x_mux_addr); 
h_mux: mux2_1_8
PORT MAP ( 
    x_0 => filter_rom_output,
    x_1 => h_fifo_output,
    y => h_fifo_input,
    addr => h_mux_addr);    
controller: conv2_controller
PORT MAP( 
    -- input 
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
    dot_valid => dot_valid,
    -- output to MUXes
    x_mux => x_mux_addr,
    h_mux => h_mux_addr,
    o_mux => o_mux_addr,
    
    -- output to FIFOs
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
    state => state,
    filter_input_enable => filter_input_enable,
    ctr_rst => ctr_rst,
    actual_dot_valid => actual_dot_valid,
    relu_ready => relu_ready,
    result_ready => result_ready);
filter_rom_0 : filter_rom
PORT MAP (
    a => filter_rom_address,
    clk => clk,
    qspo => filter_rom_output);
inner_product : dot
PORT MAP( 
    x => x_fifo_output,
    y => mac_filter_input,
    T => "0000010000",
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
    empty => o_fifo_empty,
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
b_fifo_input <= lfsr(7 downto 0);
mac_filter_input <= h_fifo_output when filter_input_enable = '1' else "00000000";
process begin
    wait for 1ms;
    clk <= not clk;
    choose <= '1';
end process;

process(clk)
file LogFile : text open write_mode is "logfile.log";
file validout : text open write_mode is "validout.log";
variable LineBuffer : line;
variable outBuffer : line;
begin
    if rising_edge(clk) then
        write(LineBuffer, to_integer(signed(b_fifo_input)), left);
        writeline(LogFile, LineBuffer);
        if actual_dot_valid = '1' then
            write(LineBuffer, to_integer(signed(mac_output)), left);
            writeline(validout, LineBuffer);    
        end if;
    end if;
end process;

process(clk) begin
    if rising_edge(clk) then
        lfsr(0) <= lfsr(7) xor lfsr(5) xor lfsr(4) xor lfsr(3);
        for i in 1 to 7 loop
            lfsr(i) <= lfsr(i-1);
        end loop;
    end if;
end process;

end Behavioral;

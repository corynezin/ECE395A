library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity conv_layer_2_tb is
--  Port ( );
end conv_layer_2_tb;

architecture Behavioral of conv_layer_2_tb is
component conv_layer_2 is
Generic (
    N_in: integer := 8;
    N_out: integer := 48;
    addr_bits: integer := 11
    );
Port ( 
    din: in STD_LOGIC_VECTOR (N_in-1 downto 0);
    b_fifo_full: in STD_LOGIC;
    b_fifo_empty: in STD_LOGIC;
    b_fifo_wren: out STD_LOGIC;
    b_fifo_rden: out STD_LOGIC;
    dout: out STD_LOGIC_VECTOR (N_out-1 downto 0);
    clk: in STD_LOGIC;
    srst: in STD_LOGIC );
end component conv_layer_2;

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
end COMPONENT fifo_64;

signal clk: STD_LOGIC:= '0';
signal srst: STD_LOGIC := '0';
signal b_fifo_input: STD_LOGIC_VECTOR(7 downto 0);
signal b_fifo_wren: STD_LOGIC := '0';
signal b_fifo_rden: STD_LOGIC := '0';
signal b_fifo_full: STD_LOGIC := '0';
signal b_fifo_empty: STD_LOGIC := '0';
signal b_fifo_output: STD_LOGIC_VECTOR(7 downto 0);
signal choose: STD_LOGIC := '0';
signal lfsr: STD_LOGIC_VECTOR(7 downto 0):= "00000001";
signal conv_layer_output: STD_LOGIC_VECTOR(47 downto 0) := (others => '0');
begin

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
    
conv_layer: conv_layer_2
Port Map ( 
    din => b_fifo_output,
    b_fifo_full => b_fifo_full,
    b_fifo_empty => b_fifo_empty,
    b_fifo_rden => b_fifo_rden,
    b_fifo_wren => b_fifo_wren,
    dout => conv_layer_output,
    clk => clk,
    srst => srst );
process begin
    wait for 1ms;
    clk <= not clk;
    choose <= '1';
end process;

b_fifo_input <= lfsr(7 downto 0);
process(clk) begin
    if rising_edge(clk) then
        lfsr(0) <= lfsr(7) xor lfsr(5) xor lfsr(4) xor lfsr(3);
        for i in 1 to 7 loop
            lfsr(i) <= lfsr(i-1);
        end loop;
    end if;
end process;
end Behavioral;

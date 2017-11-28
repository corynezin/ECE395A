-- Name: Cory Nezin
-- Date: 11/25/2017
-- Goal: Test Conv Relu Pool / FIFO

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_2_tb is
--  Port ( );
end conv_2_tb;

architecture Behavioral of conv_2_tb is
-------------------------- Conv Relu Pool Declaration --------------------------
component conv_relu_pool is
    generic(
        M: Integer:=8; --Input bit width
        N: Integer:=24 --Output bit width
    );
    Port(
        x: IN STD_LOGIC_VECTOR(M-1 downto 0); -- Input to layer, raw IQ data
        y: OUT STD_LOGIC_VECTOR(N-1 downto 0);-- Output of layer, after Convolution, Relu, and Max pool
        rst: IN STD_LOGIC;                    -- Global reset, no use for this yet  
        clk: IN STD_LOGIC;                    -- Clock, expects full rate
        y_valid: OUT STD_LOGIC                -- Says when output of max pool (final layer) is valid
                                              -- Note: should be sampled at half rate
    );
end component conv_relu_pool;
-------------------------- FIFO-7680 Declaration --------------------------
component fifo_7680 is
    Port ( 
        clk : in STD_LOGIC;                         -- Half rate clock
        rst : in STD_LOGIC;                         -- Global reset
        din : in STD_LOGIC_VECTOR ( 7 downto 0 );   -- Data in
        wr_en : in STD_LOGIC;                       -- Write TO fifo
        rd_en : in STD_LOGIC;                       -- Read FROM fifo
        dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); -- Data out
        full : out STD_LOGIC;                       -- When is fifo full (8192)
        empty : out STD_LOGIC;                      -- When is fifo empty
        prog_full : out STD_LOGIC                   -- When does fifo contain 7680 elements
    );
end component fifo_7680;
-------------------------- FIFO-16 Declaration --------------------------
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
-------------------------- Filter Memory Declaration --------------------------
component dist_mem_gen_2 is
    Port ( 
        a : in STD_LOGIC_VECTOR ( 10 downto 0 );
        clk : in STD_LOGIC;
        qspo : out STD_LOGIC_VECTOR ( 7 downto 0 )
    );
end component dist_mem_gen_2;
-------------------------- Controller Declaration --------------------------
component conv2_controller is
  Port ( 
  
    -- input 
    clk : IN STD_LOGIC;
    last_fifo_full : IN STD_LOGIC;
    x_fifo_full : IN STD_LOGIC;
    h_fifo_full : IN STD_LOGIC;
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
    
    ram_address: OUT STD_LOGIC_VECTOR(10 downto 0)
  );
end component conv2_controller;
-------------------------- Mux Declaration --------------------------
component mux2_1_8 is
  Port ( 
        x_0 : IN STD_LOGIC_VECTOR(7 downto 0); -- Choice 0
        x_1 : IN STD_LOGIC_VECTOR(7 downto 0); -- Choice 1
        y : OUT STD_LOGIC_VECTOR(7 downto 0);  -- Chosen
        addr : IN STD_LOGIC);                  -- 0 -> x_0, 1 -> x_1
end component mux2_1_8;
-------------------------- Signal Declaration --------------------------
signal input_x : STD_LOGIC_VECTOR(7 downto 0) := "00000011";        -- Raw IQ simulation
signal input_rst : STD_LOGIC:= '0';                                 -- Reset input (?)
signal y_output : STD_LOGIC_VECTOR(23 downto 0);                    -- Output of conv/relu/maxpool
signal y_trunc : STD_LOGIC_VECTOR(7 downto 0);                      -- Truncated result
signal clk: STD_LOGIC:= '0';                                        -- Full rate clock
signal clk2: STD_LOGIC:= '0';                                       -- Half rate clock
signal rst: STD_LOGIC:= '0';                                        -- Global reset
signal wren: STD_LOGIC:= '0';                                       -- Write enable for big fifo
signal rden: STD_LOGIC:= '0';                                       -- Read enable for big fifo
signal big_fifo_full: STD_LOGIC:= '0';                              
signal h_fifo_output, b_fifo_output: STD_LOGIC_VECTOR(7 downto 0);
signal x_fifo_loop, h_fifo_loop: STD_LOGIC_VECTOR(7 downto 0);      -- Output of fifo that loops around
signal x_fifo_input, h_fifo_input: STD_LOGIC_VECTOR(7 downto 0) := "00000000";    -- Output of mux into fifo input
signal x_mux_addr, h_mux_addr, o_mux_addr: STD_LOGIC:= '0';
signal x_fifo_wren, h_fifo_wren, o_fifo_wren, b_fifo_wren: STD_LOGIC:= '0';
signal x_fifo_rden, h_fifo_rden, o_fifo_rden, b_fifo_rden: STD_LOGIC:= '0';
signal y_valid : STD_LOGIC := '0';
signal filter_rom_output: STD_LOGIC_VECTOR (7 downto 0);
signal filter_rom_address: STD_LOGIC_VECTOR( 10 downto 0);

signal x_fifo_full, h_fifo_full: STD_LOGIC:= '0';
-------------------------- Conv Relu Pool instantiation --------------------------
begin
crp: conv_relu_pool
    port map(
        x => input_x,
        y => y_output,
        rst => input_rst,
        clk => clk,
        y_valid => y_valid
    );
-------------------------- FIFO-7680 instantiation --------------------------
fifo1: fifo_7680
    port map(
        clk => clk2,
        rst => rst,
        din => y_trunc,
        dout => b_fifo_output,
        wr_en => wren,  -- NOTE: not just yvalid anymore
        rd_en => rden,
        prog_full => big_fifo_full
    );
-------------------------- FIFO-16 instantiation --------------------------
x_fifo: fifo_16
  port map ( 
      clk => clk2,
      srst => rst,
      din => x_fifo_input,
      wr_en => x_fifo_wren,
      rd_en => x_fifo_rden,
      dout => x_fifo_loop,
      full => x_fifo_full);
      
h_fifo: fifo_16
    port map ( 
        clk => clk2,
        srst => rst,
        din => h_fifo_input,
        wr_en => h_fifo_wren,
        rd_en => h_fifo_rden,
        dout => h_fifo_loop,
        full => h_fifo_full);
-------------------------- Controller instantiation --------------------------
controller: conv2_controller
  port map( 
  -- input 
  clk => clk2,
  last_fifo_full => big_fifo_full,
  x_fifo_full => x_fifo_full,
  h_fifo_full => h_fifo_full,
  rst => rst,
  
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
  
  ram_address => filter_rom_address
);
-------------------------- Mux instantiations --------------------------
x_mux: mux2_1_8
    port map ( 
        x_0 => b_fifo_output,
        x_1 => x_fifo_loop, 
        y => x_fifo_input,
        addr => x_mux_addr);
        
h_mux: mux2_1_8
    port map ( 
        x_0 => filter_rom_output,
        x_1 => h_fifo_loop, 
        y => h_fifo_input,
        addr => h_mux_addr);
-- Misc.     
input_rst <= '0';
y_trunc <= y_output(19 downto 12); -- TODO: determine optimal cutoff.
wren <= b_fifo_wren and y_valid;    -- only write if the output is valid and if the state machine allows it
rden <= b_fifo_rden;
-------------------------- ROM Instantiation --------------------------
filter_rom: dist_mem_gen_2     
    port map ( 
        a => filter_rom_address,
        clk => clk2,
        qspo => filter_rom_output );
-------------------------- Input generation --------------------------
process
variable i : INTEGER := 3;
begin
    wait for 1 ms;
    clk <= not clk;
    if clk = '1' then
        i := (i + 1) mod 128;
        input_x <= std_logic_vector(to_unsigned(i,8));
    end if;
end process;
process begin
    wait for 2 ms;
    clk2 <= not clk2;
end process;
-------------------------- Input generation --------------------------

end Behavioral;

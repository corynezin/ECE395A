-- Name: Cory Nezin
-- Date: 03/01/2018
-- Goal: Perform matrix multiplication for an N x M matrix using P MACs.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity matmul is
    Generic (
        input_bits: integer:= 32;
        output_bits: integer:= 64;
        M: integer:= 64;
        N: integer:= 352
    );
    Port (
        prev_input: in STD_LOGIC_VECTOR( input_bits-1 downto 0 );
        arg_max: out STD_LOGIC_VECTOR( 3 downto 0 );
        answer_ready: out STD_LOGIC;
        input_from_prev_layer: in STD_LOGIC;
        srst: in STD_LOGIC;
        clk: in STD_LOGIC
    );
end matmul;
architecture RTL of matmul is
type output_array is array (0 to M - 1) of STD_LOGIC_VECTOR( output_bits - 1 downto 0);
type bias_array is array (0 to M - 1) of STD_LOGIC_VECTOR( 24 downto 0);
type input_array is array (0 to M - 1) of STD_LOGIC_VECTOR( input_bits - 1 downto 0);
type output_array_mux is array (0 to M - 1) of STD_LOGIC_VECTOR( input_bits - 1 downto 0);
type length_array is array (0 to 2) of STD_LOGIC_VECTOR( 9 downto 0);
component slope_bias_loader is
    Generic(
        B: integer := 8;
        bias_adjustment_factor: integer := -303112;
        negative_bias_exponent: integer := 16;
        N: integer := 6;  --QN.M
        M: integer := 26;
        slope_adjustment_factor: integer := 128;
        negative_slope_exponent: integer := 16
    );
    Port (
        input: in std_logic_vector(B - 1 downto 0);
        output: out std_logic_vector(N + M - 1 downto 0)
     );
end component slope_bias_loader;
component mux_3 is
    Generic(
        size: integer:= 32
    );
    Port (
        addr: in STD_LOGIC_VECTOR(1 downto 0);
        input_a: in STD_LOGIC_VECTOR(size-1 downto 0);
        input_b: in STD_LOGIC_VECTOR(size-1 downto 0);
        input_c: in STD_LOGIC_VECTOR(size-1 downto 0);
        output: out STD_LOGIC_VECTOR(size-1 downto 0)
     );
end component mux_3;
COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(511 DOWNTO 0)
  );
END COMPONENT;
component dot_n is
    Generic (
    input_bits: integer:= 8;
    output_bits: integer:= 16;
    M: integer:= 352
    );
    Port (
        a: in STD_LOGIC_VECTOR( input_bits-1 downto 0 );
        b: in STD_LOGIC_VECTOR( input_bits-1 downto 0 );
        bias: in STD_LOGIC_VECTOR( 24 downto 0 );
        carry_clear: in STD_LOGIC;
        clk: in STD_LOGIC;
        y: out STD_LOGIC_VECTOR( input_bits-1 downto 0 )
    );
end component dot_n;
COMPONENT activation_fifo
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END COMPONENT;
COMPONENT Relu is
  generic (N : INTEGER);
  Port ( 
    d0      : IN STD_LOGIC_VECTOR(N-1 downto 0);
    output  : OUT STD_LOGIC_VECTOR(N-1 downto 0)
  );
end COMPONENT Relu;
signal t,x,xd1,xd2,xd3,xd4,xd5,xd6: STD_LOGIC_VECTOR( input_bits-1 downto 0 ):=(others=>'0');
signal activation: STD_LOGIC_VECTOR( input_bits-1 downto 0 );
signal initialized: STD_LOGIC:= '0';
signal clken, switch, nclken, full, empty, switching, done_counting, gclk, finishing, finished, cool_counting: STD_LOGIC:= '0';
signal dot_valid, fifo_wren, fifo_rden, using_activations, just_finished, output_valid: STD_LOGIC := '0';
signal max_value: STD_LOGIC_VECTOR( input_bits-1 downto 0):= "10000000000000000000000000000000";
signal addr: STD_LOGIC_VECTOR(8 downto 0) := (others=>'0');
signal rom_out: STD_LOGIC_VECTOR(511 downto 0);
signal dot_out: input_array := ((others=> (others=>'0')));
signal relu_in: input_array := ((others=> (others=>'0')));
signal activation_fifo_input: STD_LOGIC_VECTOR(31 downto 0) := (others=>'0');
signal mux_out: output_array_mux:= ((others=> (others=>'0')));
signal bias: output_array:= ((others=> (others=>'0')));
signal mux_bias: bias_array:= ((others=> (others=>'0')));
signal sbl_mux_in_a,sbl_mux_in_b,sbl_mux_in_c: input_array:= ((others=> (others=>'0')));
signal bias_a: bias_array:=(
"1111111100010110100110001","1111110111001011000101011","1111111111110100101101000","1111111010011110111111000",
"1111111110100011000011010","1111101011110100011111000","1111111111110111101010010","1111110100110001100010100",
"1111111011110001010111000","1111111111001101110110010","1111111000000110111010110","1111111000001011001010111",
"1111111111110011110001110","1111111111110111001011110","1111111100000000001000110","1111110111101010111110110",
"1111111111010110101100110","1111111111100010110111001","1111100111010101111011100","1111101011111001110101100",
"1111111111001110110001000","1111111100000011100110111","1111111111101010101101010","1111111010000001000000100",
"1111101110110010100000000","1111110010010000111011010","1111110111011100000001100","1111111111101000011001000",
"1111110000001110011110111","1111110011010101001101001","1111111010100011010001100","1111110101010110000010110",
"0000000100110001100111001","1111111010100100001011010","1111110001100101010111110","1111111111110111111000011",
"1111110100000000111111101","1111111111010001110110000","1111111111101111110101111","1111111111011101001011111",
"1111111011011100010011000","0000000010000011011000010","0000000001011111000000010","1111111110101010101010011",
"1111110111111000111001001","1111111001111011000010000","1111111100100101100000100","0000000100001010011010010",
"0000001100011011110001001","1111111111110011010001101","1111111111100011000100001","0000010010110111000011000",
"1111111111011101011011011","1111111111000000111001111","1111111010110000011100001","1111111110111011110010000",
"1111101011001101100111110","1111111011010111001101111","1111110001000001000010001","1111111111110110100011000",
"1111111111101000101111110","1111111001000100111001101","1111100110101000110101101","1111110101000011011111000");
signal bias_b: bias_array:=(
"1111111101001100010110111","1111111101001110010110011","0000000001100010111000110","1111110110100100000101110",
"1111111100111110101101011","1111111111000111010111100","0000000000001101010001110","0000000011011101010101100",
"1111111110101101010111000","1111111110001000100010011","1111110011110110110000101","1111111111010101011110111",
"1111111010000000100011000","1111111110010001101011101","1111111111101110011110011","1111110110010001000110001",
"0000000000111011110110000","1111111101101000001010001","1111111100010100111111100","1111111001010001011110010",
"1111111010100101000100101","1111101100111100111001100","1111110101011110001110101","0000000000110000110110010",
"1111111111100110000000111","1111110001001100000010110","1111111110101111011010010","0000000100010111111011001",
"1111110101000100111100110","1111111110100011110010010","1111111100101101100110111","1111101001101111100001010",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000");
signal bias_c: bias_array:=(
"0000000010000000001010100","1111111111010010010111001","0000000001001010011010101","0000000001100001011110111",
"0000000001101001101110110","1111111111010001001110001","1111111111001000000101010","1111111101001111101110111",
"0000000001010100100001110","1111111111011001010110001","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000");
signal length_a: STD_LOGIC_VECTOR(9 downto 0):= "0101100000";
signal length_b: STD_LOGIC_VECTOR(9 downto 0):= "0001000000";
signal length_c: STD_LOGIC_VECTOR(9 downto 0):= "0000100000";
signal width_a: STD_LOGIC_VECTOR(9 downto 0):= "0001000000";
signal width_b: STD_LOGIC_VECTOR(9 downto 0):= "0000100000";
signal width_c: STD_LOGIC_VECTOR(9 downto 0):= "0000001010";
signal mux_length: STD_LOGIC_VECTOR(9 downto 0):= "0000000000";
signal mux_width: STD_LOGIC_VECTOR(9 downto 0):= "0000000000";
signal mux_addr: STD_LOGIC_VECTOR(1 downto 0) := "00";
signal dot_rst: STD_LOGIC:= '1'; -- used to be 1
signal fifo_rst: STD_LOGIC:= '0'; -- used to be 1
signal out_index_sig: unsigned(5 downto 0);
signal fifo_rden_delay: STD_LOGIC:='0';

begin
process(clk)
begin
if rising_edge(clk) then 
    x <= xd1;
    xd1 <= xd2;
    xd2 <= xd3;
    xd3 <= xd4;
    xd4 <= prev_input;
end if;
end process;
nclken <= not clken;
t <= x when using_activations = '0' else activation;
gclk <= clk and clken;
answer_ready <= output_valid;
mux_len_gen: mux_3
    Generic map( size => 10 )
    Port map( addr => mux_addr, input_a => length_a, input_b => length_b, input_c => length_c, output => mux_length );
mux_wid_gen: mux_3
    Generic map( size => 10 )
    Port map( addr => mux_addr, input_a => width_a, input_b => width_b, input_c => width_c, output => mux_width );
process(clk)
variable out_index : integer := 0;
variable counter: integer := 0;
variable fin_count: integer := 0;
variable stt_count: integer := 0;
variable max_count: integer := 0;
begin
    if rising_edge(clk) then
        if srst = '1' then
            out_index:=0;
            counter:=0;
            fin_count:=0;
            stt_count:=0;
            max_count:=0;
            output_valid <= '0';
            initialized <= '0';
            dot_rst <= '0';
            clken <= '0';
            fifo_rst<='1';
            output_valid <= '0';
        else
        out_index_sig <= to_unsigned(out_index,6);
        -- Check if initializing
        if input_from_prev_layer = '1' and initialized = '0' then
            initialized <= '1';
            dot_rst <= '0';
            addr <= (others => '0');
            clken <= '1';
            fifo_rst <= '0';
            dot_rst <= '1';
            output_valid <= '0';
        end if;
        if initialized = '1' then
            dot_rst <= '0';
            if cool_counting = '0' then
                addr <= std_logic_vector(unsigned(addr) + 1);
            end if;
            -- If entire dot product has finished
            if counter = to_integer(unsigned(mux_length)) then
                done_counting <= '1';
            end if;
            if counter = to_integer(unsigned(mux_length)) + 1then
                fifo_rden <= '0';
            end if;
            if counter = to_integer(unsigned(mux_length)) - 1 then
                cool_counting <= '1';
            end if;
            if done_counting = '1' and fin_count = 0 and mux_addr /= "10" then
                switch <= '1';
                fifo_rst <= '1';
            end if;
            if done_counting = '1' and max_count <= 9 and mux_addr = "10" then
                if relu_in(out_index) > max_value then
                    max_value <= relu_in(out_index);
                    arg_max <= std_logic_vector(to_unsigned(max_count,4));
                end if;
                max_count := max_count + 1;
            end if;
            if max_count = 10 then
                output_valid <= '1';
            end if;
            if switch = '1' then
                switching <= '1';
                fifo_rst <= '0';
                using_activations <= '1';
                clken <= '0';
            end if;
            if switching = '1' and out_index < to_integer(unsigned(mux_width)) then
                fifo_wren <= '1';
                activation_fifo_input <= dot_out(out_index);
                out_index := out_index + 1;
            end if;
            if out_index = to_integer(unsigned(mux_width)) then
                fin_count := fin_count + 1;
                switching <= '0';
            end if;
            if fin_count = 4 then
                mux_addr <= std_logic_vector(unsigned(mux_addr) + 1);
                --clken <= '1';
                fifo_rst <= '0';
                done_counting <= '0';
                switch <= '0';
                switching <= '0';
                fifo_wren <= '0';
                fin_count := 0;
                cool_counting <= '0';
                counter := 0;
                out_index := 0;
                just_finished <= '1';
            end if;
            if just_finished = '1' then
                stt_count := stt_count + 1;
            end if;
            if stt_count = 2 then 
                fifo_rden <= '1';            
            end if;
            if stt_count = 3 then 
                dot_rst <= '1';
                just_finished <= '0';
                clken <= '1';
                stt_count := 0;
            end if;
            -- Check if entire process is complete
            if mux_addr = "11" then
                mux_addr <= (others => '0');
                using_activations <= '0';
                initialized <= '0';
            end if;
            if switch = '0' then
                counter := counter + 1;
            end if;
        end if;
        end if;
    end if;
end process;
act_fifo : activation_fifo
  PORT MAP (
    clk => clk,
    srst => fifo_rst,
    din => activation_fifo_input,
    wr_en => fifo_wren,
    rd_en => fifo_rden,
    dout => activation,
    full => full,
    empty => empty
  );
fc1 : blk_mem_gen_0
  PORT MAP (
    clka => clk,
    ena => '1',
    addra => addr,
    douta => rom_out
  );
generate_dots:
for i in 0 to M-1 generate begin
    mux_bias_gen: mux_3
    Generic map( size => 25 )
    Port map( addr => mux_addr, input_a => bias_a(i), input_b => bias_b(i), input_c => bias_c(i), output => mux_bias(i) );
    dot_gen: dot_n
    Generic map(
        input_bits => input_bits,
        output_bits => input_bits,
        M => 352
    )
    Port map(
        a => mux_out(i),
        b => t,
        bias => mux_bias(i),
        carry_clear => dot_rst,
        clk => gclk,
        y => relu_in(i)
    );
    r: Relu
      generic map (N => 32)
      Port map( 
        d0 => relu_in(i),
        output => dot_out(i)
      );
end generate generate_dots;

generate_sbl:
for i in 0 to M-1 generate begin
    mux_gen: mux_3
    Generic map(
        size => 32
    )
    Port map(
        addr => mux_addr,
        input_a => sbl_mux_in_a(i),
        input_b => sbl_mux_in_b(i),
        input_c => sbl_mux_in_c(i),
        output => mux_out(i)
    );
    sbl_gen_a: slope_bias_loader
    Generic map(
        B => 8, N => 6, M => 26,
        bias_adjustment_factor => -59637,
        negative_bias_exponent => 16,
        slope_adjustment_factor => 1887, -- 7772*2^-16 = 0.11859 is about 0.1185932 (the real slope)
        negative_slope_exponent => 16
    )
    Port map(
        input => rom_out( 8*(i+1)-1 downto 8*i ),
        output => sbl_mux_in_a(i)
     );
    sbl_gen_b: slope_bias_loader
    Generic map(
        B => 8, N => 6, M => 26,
        bias_adjustment_factor => -78909,
        negative_bias_exponent => 16,
        slope_adjustment_factor => 1487, -- 7772*2^-16 = 0.11859 is about 0.1185932 (the real slope)
        negative_slope_exponent => 16
    )
    Port map(
        input => rom_out( 8*(i+1)-1 downto 8*i ),
        output => sbl_mux_in_b(i)
     );
    sbl_gen_c: slope_bias_loader
    Generic map(
        B => 8, N => 6, M => 26,
        bias_adjustment_factor => -37561,
        negative_bias_exponent => 16,
        slope_adjustment_factor => 666, -- 7772*2^-16 = 0.11859 is about 0.1185932 (the real slope)
        negative_slope_exponent => 16
    )
    Port map(
        input => rom_out( 8*(i+1)-1 downto 8*i ),
        output => sbl_mux_in_c(i)
     );
end generate generate_sbl;

end RTL;

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
type low_array is array (0 to M - 1) of STD_LOGIC_VECTOR( 17 downto 0);
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
        low: in STD_LOGIC_VECTOR( 17 downto 0 );
        high: in STD_LOGIC_VECTOR( 24 downto 0 );
        bias: in STD_LOGIC_VECTOR( 24 downto 0 );
        carry_clear: in STD_LOGIC;
        clk: in STD_LOGIC;
        clken: in STD_LOGIC;
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
signal mux_out: low_array:= ((others=> (others=>'0')));
signal bias: output_array:= ((others=> (others=>'0')));
signal mux_bias: bias_array:= ((others=> (others=>'0')));
signal sbl_mux_in_a,sbl_mux_in_b,sbl_mux_in_c: low_array:= ((others=> (others=>'0')));
signal bias_a: bias_array:=(
"1111110111111111001001101","0000000101000100010111010","0000000000111101011110000","1111111110111101000110101",
"1111111111011001110000001","0000000111001101010100110","1111111111111000000111100","1111111101001100001111001",
"0000000011010100011001111","1111111111111011101001000","0000000111010001110010100","1111111111110010001101110",
"0000000100100000010010100","1111111111110111110111100","1111111111111000010110100","1111111111111000010100001",
"0000000001001100110010000","1111111111111011011001101","1111111111000100001010000","1111111111111000100011010",
"1111111111111000010100001","1111111111110010010001101","1111111111111000010100011","0000000000100011001101010",
"1111111111111000010100011","1111111111111000001001110","1111111111111000010100001","1111111111111010001000111",
"0000001000110101001011110","0000000000011111110100101","1111111111111000010100010","1111111101001011101000111",
"1111111111101100001000010","0000000010011100011001100","1111111111111000010100001","1111111100011001001000010",
"1111111111110111011101010","1111111100010010110011110","0000000010101000110001110","1111111110001110001101011",
"1111111000111010110100010","1111111110001011101011010","1111111111111000100010011","1111111111111000010100001",
"1111111011101011010000001","1111111010011101010100011","1111111111111010101100001","1111111111111000010100001",
"0000000000001100011100110","1111111001011011110100001","1111111111101110110011101","1111111111111000100110001",
"1111111111111000010100010","1111111111111000001001011","1111111101110100001100100","1111111101001101100110100",
"1111111111110100010001000","1111111111110000101001110","1111111111111000010100001","1111111111000111110010110",
"1111111011111000011010001","1111111111111000010100010","1111111011011000000011100","0000000000000001010001001");
signal bias_b: bias_array:=(
"1111111111101111100001101","0000000010010111010110011","1111111111100011100001010","1111111111011110101100000",
"1111111111110001000111110","1111111111100101110110010","0000000011101111001000011","1111111111110010101110000",
"0000000000110110010010001","1111111111101011101001111","1111111111110111110111100","0000000000100000010001001",
"1111111111110011110101101","1111111111110011110001000","0000000011011101111011100","1111111001010110011001111",
"1111111111110001110011010","0000000111010011101110000","1111111111010010010001011","1111111111000111100111011",
"1111111111111000010011000","1111111111110111010010101","1111110111000101100110010","1111111111111000000111101",
"1111111111111000010100001","1111111101101000110100011","1111111111011000010010111","1111111010001110001101110",
"0000000011010111011000001","0000000010010010110000111","1111111111001100010010001","1111111111000001101000011",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
"0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000");
signal bias_c: bias_array:=(
"0000000010000111001000101","0000000000110001010000010","1111111110001111000010010","1111111111000011110001001",
"0000000010001011011000101","0000000100000100100110000","1111111010010011010001110","1111111001000000110111001",
"0000000110000101011011000","0000000001010101010111011","0000000000000000000000000","0000000000000000000000000",
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
signal counter_signal: STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal outind_signal: STD_LOGIC_VECTOR(9 downto 0) := "0000000000";
signal trunc_t: STD_LOGIC_VECTOR(24 downto 0);
signal arg_max_sig: STD_LOGIC_VECTOR(3 downto 0):= "0000";
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
trunc_t <= t(31 downto 31-24);
--gclk <= clk and clken;
answer_ready <= output_valid;
arg_max <= arg_max_sig;
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
            bias_a <= 
            (
            "1111110111111111001001101","0000000101000100010111010","0000000000111101011110000","1111111110111101000110101",
            "1111111111011001110000001","0000000111001101010100110","1111111111111000000111100","1111111101001100001111001",
            "0000000011010100011001111","1111111111111011101001000","0000000111010001110010100","1111111111110010001101110",
            "0000000100100000010010100","1111111111110111110111100","1111111111111000010110100","1111111111111000010100001",
            "0000000001001100110010000","1111111111111011011001101","1111111111000100001010000","1111111111111000100011010",
            "1111111111111000010100001","1111111111110010010001101","1111111111111000010100011","0000000000100011001101010",
            "1111111111111000010100011","1111111111111000001001110","1111111111111000010100001","1111111111111010001000111",
            "0000001000110101001011110","0000000000011111110100101","1111111111111000010100010","1111111101001011101000111",
            "1111111111101100001000010","0000000010011100011001100","1111111111111000010100001","1111111100011001001000010",
            "1111111111110111011101010","1111111100010010110011110","0000000010101000110001110","1111111110001110001101011",
            "1111111000111010110100010","1111111110001011101011010","1111111111111000100010011","1111111111111000010100001",
            "1111111011101011010000001","1111111010011101010100011","1111111111111010101100001","1111111111111000010100001",
            "0000000000001100011100110","1111111001011011110100001","1111111111101110110011101","1111111111111000100110001",
            "1111111111111000010100010","1111111111111000001001011","1111111101110100001100100","1111111101001101100110100",
            "1111111111110100010001000","1111111111110000101001110","1111111111111000010100001","1111111111000111110010110",
            "1111111011111000011010001","1111111111111000010100010","1111111011011000000011100","0000000000000001010001001");
            bias_b <= (
            "1111111111101111100001101","0000000010010111010110011","1111111111100011100001010","1111111111011110101100000",
            "1111111111110001000111110","1111111111100101110110010","0000000011101111001000011","1111111111110010101110000",
            "0000000000110110010010001","1111111111101011101001111","1111111111110111110111100","0000000000100000010001001",
            "1111111111110011110101101","1111111111110011110001000","0000000011011101111011100","1111111001010110011001111",
            "1111111111110001110011010","0000000111010011101110000","1111111111010010010001011","1111111111000111100111011",
            "1111111111111000010011000","1111111111110111010010101","1111110111000101100110010","1111111111111000000111101",
            "1111111111111000010100001","1111111101101000110100011","1111111111011000010010111","1111111010001110001101110",
            "0000000011010111011000001","0000000010010010110000111","1111111111001100010010001","1111111111000001101000011",
            "0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
            "0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
            "0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
            "0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
            "0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
            "0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
            "0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000",
            "0000000000000000000000000","0000000000000000000000000","0000000000000000000000000","0000000000000000000000000");
            bias_c <= (
            "0000000010000111001000101","0000000000110001010000010","1111111110001111000010010","1111111111000011110001001",
            "0000000010001011011000101","0000000100000100100110000","1111111010010011010001110","1111111001000000110111001",
            "0000000110000101011011000","0000000001010101010111011","0000000000000000000000000","0000000000000000000000000",
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
            out_index:=0;
            counter:=0;
            fin_count:=0;
            stt_count:=0;
            max_count:=0;
            output_valid <= '0';
            initialized <= '0';
            clken <= '0';
            fifo_rst<='1';
            dot_rst <= '1';
            done_counting <= '0';
            cool_counting <= '0';
            switching <= '0';
            just_finished <= '0';
            using_activations <= '0';
            fifo_wren <= '0';
            switch <= '0';
            mux_addr <= "00";
            max_value <= "10000000000000000000000000000000";
            arg_max_sig <= "0000";
        else
        out_index_sig <= to_unsigned(out_index,6);
        -- Check if initializing
        if input_from_prev_layer = '1' and initialized = '0' then
            initialized <= '1';
            addr <= (others => '0');
            clken <= '1';
            fifo_rst <= '0';
            dot_rst <= '1';
            output_valid <= '0';
        end if;
        if initialized = '1' then
            dot_rst <= '0';
            if cool_counting = '0' and unsigned(addr) <= 447 then
                addr <= std_logic_vector(unsigned(addr) + 1);
            end if;
            -- If entire dot product has finished
            if counter = to_integer(unsigned(mux_length)) then
                done_counting <= '1';
            end if;
            if counter = to_integer(unsigned(mux_length)) + 1 then
                fifo_rden <= '0';
            end if;
            if counter = to_integer(unsigned(mux_length)) - 1 then
                cool_counting <= '1';
            end if;
            if done_counting = '1' and fin_count = 0 then
                switch <= '1';
                fifo_rst <= '1';
            end if;
            if done_counting = '1' and max_count <= 9 and mux_addr = "10" and switching = '1' then
                if signed(relu_in(out_index)) > signed(max_value) then
                    max_value <= relu_in(out_index);
                    arg_max_sig <= std_logic_vector(to_unsigned(max_count,4));
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
                dot_rst <= '1'; --just added          
                clken <= '1'; --just added          
            end if;
            if stt_count = 3 then
--                dot_rst <= '1';
                just_finished <= '0';
--                clken <= '1';
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
    counter_signal <= std_logic_vector(to_unsigned(counter,4));
    outind_signal <= std_logic_vector(to_unsigned(out_index,10));
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
        low => mux_out(i),
        high => trunc_t,
        bias => mux_bias(i),
        carry_clear => dot_rst,
        clk => clk,
        clken => clken,
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
        size => 18
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
        B => 8, N => 6, M => 12,
        bias_adjustment_factor => -70732,
        negative_bias_exponent => 16,
        slope_adjustment_factor => 1890, -- 7772*2^-16 = 0.11859 is about 0.1185932 (the real slope)
        negative_slope_exponent => 16
    )
    Port map(
        input => rom_out( 8*(i+1)-1 downto 8*i ),
        output => sbl_mux_in_a(i)
     );
    sbl_gen_b: slope_bias_loader
    Generic map(
        B => 8, N => 6, M => 12,
        bias_adjustment_factor => -33660,
        negative_bias_exponent => 16,
        slope_adjustment_factor => 3446, -- 7772*2^-16 = 0.11859 is about 0.1185932 (the real slope)
        negative_slope_exponent => 16
    )
    Port map(
        input => rom_out( 8*(i+1)-1 downto 8*i ),
        output => sbl_mux_in_b(i)
     );
    sbl_gen_c: slope_bias_loader
    Generic map(
        B => 8, N => 6, M => 12,
        bias_adjustment_factor => -52233,
        negative_bias_exponent => 16,
        slope_adjustment_factor => 1805, -- 7772*2^-16 = 0.11859 is about 0.1185932 (the real slope)
        negative_slope_exponent => 16
    )
    Port map(
        input => rom_out( 8*(i+1)-1 downto 8*i ),
        output => sbl_mux_in_c(i)
     );
end generate generate_sbl;

end RTL;
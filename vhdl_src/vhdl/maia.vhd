library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use STD.textio.all;
use ieee.std_logic_textio.all;
use IEEE.NUMERIC_STD.ALL;
entity maia is
    Port (
        iq: in STD_LOGIC_VECTOR(31 downto 0);
        dout: out STD_LOGIC_VECTOR(7 downto 0);
        is_ready: out STD_LOGIC;
        clk: in STD_LOGIC;
        srst: in STD_LOGIC
    );
end maia;

architecture Behavioral of maia is
component conv_layer_2 is
Generic (
    N_filters : integer := 16; -- Used to be 64
    N_signal: integer := 24;
    N_coef_enc: integer := 8;
    N_coef_dec: integer := 32;
    N_out: integer := 64;
    addr_bits: integer := 11);
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
end component conv_layer_2;

component conv_relu_pool is
    generic(
        M: Integer:=16; --Input bit width
        N: Integer:=24 --Output bit width
    );
    Port(
        a: IN STD_LOGIC_VECTOR(M-1 downto 0);
        b: IN STD_LOGIC_VECTOR(M-1 downto 0);
        y: OUT STD_LOGIC_VECTOR(N-1 downto 0);
        rst: IN STD_LOGIC;
        clk: IN STD_LOGIC;
        y_valid: OUT STD_LOGIC
    );
end component conv_relu_pool;

COMPONENT fifo_7680
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC
  );
END COMPONENT;
COMPONENT matmul is
    Generic (
        input_bits: integer:= 32;
        output_bits: integer:= 64;
        M: integer:= 64;
        N: integer:= 352
    );
    Port (
        prev_input: in STD_LOGIC_VECTOR( input_bits-1 downto 0 );
        arg_max: out STD_LOGIC_VECTOR( 3 downto 0 );
        input_from_prev_layer: in STD_LOGIC;
        answer_ready: out STD_LOGIC;
        clk: in STD_LOGIC;
        srst: in STD_LOGIC
    );
END COMPONENT;
COMPONENT fifo_generator_1
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    prog_full : OUT STD_LOGIC
  );
END COMPONENT;
signal input_a : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal input_b : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal b_fifo_input: STD_LOGIC_VECTOR(23 downto 0);
signal b_fifo_wren: STD_LOGIC := '0';
signal b_fifo_rden: STD_LOGIC := '0';
signal b_fifo_full: STD_LOGIC := '0';
signal b_fifo_empty: STD_LOGIC := '0';
signal b_fifo_output: STD_LOGIC_VECTOR(23 downto 0);
signal choose: STD_LOGIC := '0';
signal conv_layer_output: STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
signal y_valid, result_ready: STD_LOGIC:='0';
signal true_b_fifo_wren: STD_LOGIC:='0';
signal next_input: STD_LOGIC_VECTOR(63 downto 0);
signal clk_half: STD_LOGIC:= '1';
signal clk_fifo, clk_s_fifo: STD_LOGIC:= '1';
signal first_stage_complete: STD_LOGIC:= '0';
signal full_reset: STD_LOGIC:= '0';
signal temp: STD_LOGIC:='0';
signal data_count: STD_LOGIC_VECTOR(8 downto 0);
signal matmul_input: STD_LOGIC_VECTOR(31 downto 0);
signal s_fifo_rden,s_fifo_wren,s_fifo_rden_prev,s_fifo_rden_temp: STD_LOGIC:='0';
signal matmul_input_ready: STD_LOGIC:='0';
signal input_from_prev_layer: STD_LOGIC:='0';
signal final_answer_ready: STD_LOGIC:='0';
signal arg_max: STD_LOGIC_VECTOR(3 downto 0):="0000";
signal matmul_answer_ready: STD_LOGIC:='0';
signal flag: STD_LOGIC:= '0';
signal reset_trigger_1: STD_LOGIC := '0';
signal reset_trigger_2: STD_LOGIC := '0';
signal b_fifo_counter: STD_LOGIC_VECTOR(10 downto 0) := (others => '0');
signal b_fifo_full_useless: STD_LOGIC:='0';
file file_VECTORS : text;
file file_VECTORS2 : text;
begin
--next_input <= conv_layer_output;
conv1: conv_relu_pool
    Port Map(
        a => input_a,
        b => input_b,
        y => b_fifo_input,
        rst => srst,
        clk => clk,
        y_valid => y_valid
    );
    
b_fifo: fifo_7680
  PORT MAP (
    clk => clk_fifo,
    srst => srst,
    din => b_fifo_input,
    wr_en => true_b_fifo_wren,
    rd_en => b_fifo_rden,
    dout => b_fifo_output,
    --full => b_fifo_full,
    empty => b_fifo_empty,
    prog_full => b_fifo_full_useless
  );
    
conv_layer: conv_layer_2
Generic map(
    N_filters => 16,
    N_signal => 24,
    N_coef_enc => 8,
    N_coef_dec => 32,
    N_out => 64,
    addr_bits => 9)
Port Map ( 
    din => b_fifo_output,
    b_fifo_full => b_fifo_full,
    b_fifo_empty => b_fifo_empty,
    b_fifo_rden => b_fifo_rden,
    b_fifo_wren => b_fifo_wren,
    dout => conv_layer_output,
    clk => clk,
    srst => srst,
    answer_ready => result_ready,
    s_fifo_rden => s_fifo_rden_prev);
s_fifo : fifo_generator_1
  PORT MAP (
    clk => clk_s_fifo,
    srst => srst,
    din => conv_layer_output,
    wr_en => s_fifo_wren,
    rd_en => s_fifo_rden,
    dout => next_input,
    data_count => data_count
    );
fc_layer: matmul
Port Map (
    prev_input => matmul_input,
    arg_max => arg_max,
    input_from_prev_layer => input_from_prev_layer,
    answer_ready => matmul_answer_ready,
    clk => clk,
    srst => srst
);
s_fifo_rden_temp <= '0' when srst = '1' else s_fifo_rden_prev;
matmul_input <= next_input(63-10 downto 63-10-31);--8 integer bits
clk_fifo <= clk;--clk_half when first_stage_complete = '0' else clk;
clk_s_fifo <= clk;--clk_half when matmul_input_ready = '0' else clk;
s_fifo_wren <= result_ready and clk_half;
dout <= "0000" & arg_max when matmul_answer_ready = '1' else (others => '0');
input_a <= iq(31 downto 16);
input_b <= iq(15 downto 0);

true_b_fifo_wren <= y_valid and clk_half when first_stage_complete = '0' else '0';
is_ready <= matmul_answer_ready;
process(clk)
variable stage_2_output_counter: integer := 0;
variable reset_counter: integer:=0;
begin
    if rising_edge(clk) then
        if srst = '1' then
            first_stage_complete <= '0';
            stage_2_output_counter := 0;
            s_fifo_rden <= '0';
            final_answer_ready <= '0';
            b_fifo_full <= '0';
            b_fifo_counter <= (others => '0');
        else
            if true_b_fifo_wren = '1' and first_stage_complete = '0' then
                b_fifo_counter <= std_logic_vector(unsigned(b_fifo_counter) + 1);
            end if;
            if reset_counter = 0 then
                reset_trigger_1 <= '1';
                reset_counter := reset_counter + 1;
            elsif reset_counter = 1 and matmul_answer_ready = '0' then
                reset_trigger_1 <= '0';
            end if;
    
            --s_fifo_rden <= s_fifo_rden_prev;
            input_from_prev_layer <= matmul_input_ready;
            matmul_input_ready <= s_fifo_rden;
            if s_fifo_rden_prev = '1' and stage_2_output_counter < 353 then
                stage_2_output_counter := stage_2_output_counter + 1;
            end if;
            if stage_2_output_counter = 353 then
                s_fifo_rden <= '0';
            elsif srst = '0' then
                s_fifo_rden <= s_fifo_rden_temp;
            else
                s_fifo_rden <= '0';
            end if;
    --        if first_stage_complete = '0' then
    --            true_b_fifo_wren <= y_valid and clk_half;
    --        else
    --            true_b_fifo_wren <= '0';
    --        end if;
            temp <= y_valid;
            clk_half <= not clk_half;
            if b_fifo_counter = "11101111111" then -- 1919
                first_stage_complete <= '1';
                b_fifo_full <= '1';
            end if;
        end if;
    end if;
end process;

end Behavioral;
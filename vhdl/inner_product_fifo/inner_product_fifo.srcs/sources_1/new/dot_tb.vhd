--Name: Cory Nezin
--Date: 10/18/2017
--Goal: Test the FIFO dot product component

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dot_tb is
--  Port ( );
end dot_tb;

architecture Behavioral of dot_tb is
component dot is
    Generic (
        N: integer := 7;
        M: integer := 7;
        L: integer := 9
    );
    Port ( 
        x:      in STD_LOGIC_VECTOR (N downto 0); --component of first vector
        y:      in STD_LOGIC_VECTOR (M downto 0); --component of second vector
        T:      in UNSIGNED (L downto 0);         --Length of vector
        sclr:   in STD_LOGIC;                     --Synchronus Clear
        clk:    in STD_LOGIC;                     --Clock
        ce:     in STD_LOGIC;                     --Clock Enable
        zout:   out STD_LOGIC_VECTOR ( 47 downto 0 )
    );
end component dot;

component fifo is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    full: out STD_LOGIC;
    empty: out STD_LOGIC;
    wr_ack: out STD_LOGIC
  );

end component fifo;

component ram1 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end component ram1;

component ram2 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end component ram2;

signal clk: STD_LOGIC := '0';
signal out1,out2: STD_LOGIC_VECTOR (7 downto 0);
signal ram1out,ram2out: STD_LOGIC_VECTOR (7 downto 0);
signal ramindex: STD_LOGIC_VECTOR (9 downto 0);
signal wren: STD_LOGIC := '0';
signal rden: STD_LOGIC := '0';
signal rst: STD_LOGIC := '1';
signal full1, full2: STD_LOGIC;
signal empty1, empty2: STD_LOGIC;
signal wrack1, wrack2: STD_LOGIC;
signal innerprod: STD_LOGIC_VECTOR ( 47 downto 0 );
signal mult_enable: STD_LOGIC := '0';

begin
ramcomp1: ram1
    port map(
        a => ramindex,
        spo => ram1out
    );
ramcomp2: ram2
    port map(
        a => ramindex,
        spo => ram2out
    );
fifo1: fifo
    port map(
        clk => clk,
        rst => rst,
        din => ram1out,
        dout => out1,
        wr_en => wren,
        rd_en => rden,
        full => full1,
        empty => empty1,
        wr_ack => wrack1
    );
fifo2: fifo
    port map(
        clk => clk,
        rst => rst,
        din => ram2out,
        dout => out2,
        wr_en => wren,
        rd_en => rden,
        full => full2,
        empty => empty2,
        wr_ack => wrack2
    );
dot0: dot
    port map(
        x => out1,
        y => out2,
        T => "0000001000",
        sclr => '0',
        clk => clk,
        ce => mult_enable,
        zout => innerprod
    );
    
--Simulated Clock and Counter
process
variable i: integer:= 1;
variable init: integer:= 1;
variable reset: integer:= 0;
begin
    wait for 1 ms;
    -- Always clock
    clk <= not clk;
    
    if i = 1 then
        rst <= '0';
    end if;
    if i = 13 and init = 1 then
        wren <= '1';
    end if;
    -- If initializing, load ram into fifo
    if init = 1 and i >= 12 and clk = '1' then
        ramindex <= std_logic_vector(to_unsigned(i-12,10));
    end if;
    -- Increment counter
    if clk = '1' then
        i := (i + 1) mod 1037;
    end if;
    -- If done loading, stop loading
    if i = 0 then
        init := 0;
        -- Enable FIFO read, disable write
        rden <= '1';
        wren <= '0';
        mult_enable <= '1';
    end if;
end process;

end Behavioral;

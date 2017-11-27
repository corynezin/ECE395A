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
        zout:   out STD_LOGIC_VECTOR ( 47 downto 0 );
        valid:  out STD_LOGIC
    );
end component dot;

component fifo_7680 is
    Port ( 
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        din : in STD_LOGIC_VECTOR ( 7 downto 0 );
        wr_en : in STD_LOGIC;
        rd_en : in STD_LOGIC;
        dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
        full : out STD_LOGIC;
        empty : out STD_LOGIC;
        prog_full : out STD_LOGIC
    );
end component fifo_7680;

component ram1 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 12 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end component ram1;

signal clk: STD_LOGIC := '0';
signal out1,out2: STD_LOGIC_VECTOR (7 downto 0);
signal ram1out,ram2out: STD_LOGIC_VECTOR (7 downto 0);
signal ramindex: STD_LOGIC_VECTOR (12 downto 0);
signal wren: STD_LOGIC := '0';
signal rden: STD_LOGIC := '0';
signal rst: STD_LOGIC := '1';
signal full1, full2: STD_LOGIC;
signal empty1, empty2: STD_LOGIC;
signal wrack1, wrack2: STD_LOGIC;
signal innerprod: STD_LOGIC_VECTOR ( 47 downto 0 );
signal mult_enable: STD_LOGIC := '0';
signal valid: STD_LOGIC;

begin
ramcomp1: ram1
    port map(
        a => ramindex,
        spo => ram1out
    );

fifo1: fifo_7680
    port map(
        clk => clk,
        rst => rst,
        din => ram1out,
        dout => out1,
        wr_en => wren,
        rd_en => rden,
        prog_full => full1,
        empty => empty1
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
        ramindex <= std_logic_vector(to_unsigned(i-12,13));
    end if;
    -- Increment counter
    if clk = '1' then
        i := (i + 1) mod (7680 + 13);
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

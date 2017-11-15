--Name: Cory Nezin
--Date: 10/18/2017
--Goal: Build a FIFO based dot product component

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dot is
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
        zout:   out STD_LOGIC_VECTOR (47 downto 0);
        valid:  out STD_LOGIC
    );
end dot;

architecture RTL of dot is

component xbip_multadd_0
    Port ( 
        CLK : in STD_LOGIC;
        CE : in STD_LOGIC;
        SCLR : in STD_LOGIC;
        A : in STD_LOGIC_VECTOR ( N downto 0 );
        B : in STD_LOGIC_VECTOR ( M downto 0 );
        C : in STD_LOGIC_VECTOR ( 47 downto 0 );
        SUBTRACT : in STD_LOGIC;
        P : out STD_LOGIC_VECTOR ( 47 downto 0 );
        PCIN : in STD_LOGIC_VECTOR ( 47 downto 0 );
        PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 )
    );
end component;

signal z: STD_LOGIC_VECTOR (47 downto 0) := (others => '0');        --Carry
signal ac: STD_LOGIC_VECTOR (47 downto 0) := (others => '0');       --Accumulated Value
signal cc: STD_LOGIC := '1';                          --Carry clear
signal ctr: UNSIGNED (L downto 0) := (others => '0'); --For debugging purposes only
signal gclk: STD_LOGIC;
signal validsig: STD_LOGIC := '0';
begin
mac0: xbip_multadd_0
    Port Map (
        clk => clk,
        ce => ce,
        sclr => sclr,
        a => x,
        b => y,
        c => z,
        subtract => '0',
        pcin => z,
        pcout => ac
    );

z <= ac when cc = '0' else (others => '0');
zout <= ac;
gclk <= clk when ce = '1' else '0';
valid <= validsig;
process(gclk)
variable i: integer := 0;
begin
    if rising_edge(gclk) then
        -- Accounting for latency of Multiply Adder
        if i = 2 then
            validsig <= '1';
            cc <= '1';
        else
            validsig <= '0';
            cc <= '0';
        end if;
    end if;
    if rising_edge(gclk) then
        i := (i + 1) mod to_integer(T);
    end if;
end process;

end RTL;

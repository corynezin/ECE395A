--Name: Cory Nezin
--Date: 10/18/2017
--Goal: Build a FIFO based dot product component

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dot is
    Generic (
        N_signal: integer := 24;
        N_coef: integer := 32;
        L: integer := 10;
        O: integer := 64
    );
    Port ( 
        x:      in STD_LOGIC_VECTOR (N_signal-1 downto 0); --component of first vector
        y:      in STD_LOGIC_VECTOR (N_coef-1 downto 0); --component of second vector
        sclr:   in STD_LOGIC;                     --Synchronus Clear
        clk:    in STD_LOGIC;                     --Clock
        ce:     in STD_LOGIC;                     --Clock Enable
        zout:   out STD_LOGIC_VECTOR (64-1 downto 0);
        valid:  out STD_LOGIC;
        ctr_rst:in STD_LOGIC
    );
end dot;

architecture RTL of dot is
signal cc: STD_LOGIC:= '0';
signal gclk: STD_LOGIC;
signal validsig: STD_LOGIC := '0';
signal carry: STD_LOGIC_VECTOR(O-1 downto 0) := (others => '0');
signal ans: STD_LOGIC_VECTOR(O-1 downto 0) := (others => '0');
signal ctr: STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
gclk <= clk and ce;
carry <= ans when cc = '0' else (others => '0');
zout <= ans;
valid <= validsig;
process(gclk) begin
    if rising_edge(gclk) then
        -- Arithmetic control
        ans <= std_logic_vector(signed(x)*signed(y) + signed(carry));
        -- Counter control
        if ctr_rst = '1' then
            ctr <= "0000";
            cc <= '1';
        else
            ctr <= std_logic_vector(unsigned(ctr) + 1);     
            -- Valid control
            if ctr = "1111" then
                cc <= '1' ;
                validsig <= '1';
            else
                cc <= '0';
                validsig <= '0';
            end if;
        end if;
    end if;
end process;

end RTL;

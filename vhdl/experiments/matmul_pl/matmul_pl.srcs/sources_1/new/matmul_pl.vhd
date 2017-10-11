--Name: Cory Nezin
--Date: 09/19/2017
--Goal: Efficient multiplication with FMAC's
--Standard Libraries:
library IEEE; use IEEE.STD_LOGIC_1164.ALL; use IEEE.NUMERIC_STD.ALL;
--Our Libraries:
use WORK.MATRIX.ALL;

entity matmul_pl is
    Port ( x : in STD_LOGIC;
           y : out STD_LOGIC);
end matmul_pl;

architecture rtl of matmul_pl is
--IP Components:
--Fused Multiply Accumulator (Uses DSP slice)
component xbip_multadd_0 is
  Port ( 
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 105 downto 0 );
    SUBTRACT : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 106 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
end component xbip_multadd_0;
signal clk : STD_LOGIC = '0';
signal 
begin
your_instance_name : xbip_multadd_0
  PORT MAP (
    CLK => clk,
    CE => '1',
    SCLR => '0',
    A => A,
    B => B,
    C => C,
    SUBTRACT => '0',
    P => P,
    PCOUT => PCOUT
  );
end rtl;

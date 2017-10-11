--Name: Cory Nezin
--Date: 10/10/2017
--Goal: Create an inner product ciruit using MAC

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.MATRIX.ALL;

entity inner_product_testbed is
  -- Higher precision may be needed for values from previous stage
  --Generic (N,M : integer := 7);
  Port ( aout : out signed (7 downto 0) );
end inner_product_testbed;

architecture Behavioral of inner_product_testbed is
-- Inputs (tbd)
signal u : vector_in := ("00000001","00000010","00000011","00000100","00000101");
signal v : vector_in := ("00000010","00000010","00000010","00000010","00000010");
-- Signals
signal clk: STD_LOGIC := '0';
signal ce: STD_LOGIC := '1';
signal sclr: STD_LOGIC := '1';
signal ui: signed (7 downto 0) := "00000000";
signal vi: signed (7 downto 0) := "00000000";
signal as: STD_LOGIC_VECTOR(47 downto 0) := "000000000000000000000000000000000000000000000000";
signal sub: STD_LOGIC := '0';
signal c: STD_LOGIC_VECTOR(47 downto 0) := "000000000000000000000000000000000000000000000000";
signal ac: STD_LOGIC_VECTOR(47 downto 0) := "000000000000000000000000000000000000000000000000";
signal std_ui : STD_LOGIC_VECTOR(7 downto 0);
signal std_vi : STD_LOGIC_VECTOR(7 downto 0);
-- Components
component mac
  Port ( 
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 47 downto 0 );
    SUBTRACT : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 47 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
end component;

begin
process(clk) begin
  if clk = '1' then
    c <= as;
  end if;
  aout <= signed( ac(47 downto 40) );
end process;
std_ui <= std_logic_vector(ui);
std_vi <= std_logic_vector(vi);
mac0: mac
  Port Map (
    clk => clk,
    ce => ce,
    sclr => sclr,
    a => std_ui,
    b => std_vi,
    c => c,
    subtract => sub,
    p => as,
    pcout => ac
  );
  
--Queue for loading from vector
process(clk)
  variable i : integer := 0;
  begin
  if rising_edge(clk) then
    if sclr = '0' then
      ui <= u(i);
      vi <= v(i);
      i := i + 1;
      i := i mod 5;
    end if;
  end if;
  end process;
  
--Simulated Clock
process begin
  wait for 1 ms;
  clk <= not clk;
end process;
process begin
  wait for 2 ms;
  sclr <= '0';
end process;

end Behavioral;

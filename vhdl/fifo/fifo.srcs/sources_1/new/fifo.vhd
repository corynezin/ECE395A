library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo is
  Port ( 
  clk : in STD_LOGIC;
  rst : in STD_LOGIC;
  din : in STD_LOGIC_VECTOR ( 7 downto 0 );
  wr_en : in STD_LOGIC;
  rd_en : in STD_LOGIC;
  dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
  full : out STD_LOGIC;
  empty : out STD_LOGIC
);
end fifo;

architecture RTL of fifo is
component fifo_generator_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
end component fifo_generator_0;

begin

f: fifo_generator_0
    port map(
    clk => clk,
    rst => rst,
    din => din,
    wr_en => wr_en,
    rd_en => rd_en
    );

end RTL;

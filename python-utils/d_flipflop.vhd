library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity d_flipflop is
    port (data  :in  signed(7 downto 0);
          clk   :in  std_logic;
          reset :in  std_logic;
          q     :out signed (7 downto 0)
          );
end d_flipflop;

architecture RTL of d_flipflop is

begin
     process (clk, reset) begin
         if (reset = '0') then
             q <= "00000000";
         elsif (rising_edge(clk)) then
             q <= data;
         end if;
     end process;

end architecture;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2017 09:50:45 PM
-- Design Name: 
-- Module Name: big_fifo_wrapper - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity big_fifo_wrapper is
--  Port ( );
end big_fifo_wrapper;

architecture Behavioral of big_fifo_wrapper is
component fifo_7680 is
    Port ( 
        clk : in STD_LOGIC;                         -- Half rate clock
        rst : in STD_LOGIC;                         -- Global reset
        din : in STD_LOGIC_VECTOR ( 7 downto 0 );   -- Data in
        wr_en : in STD_LOGIC;                       -- Write TO fifo
        rd_en : in STD_LOGIC;                       -- Read FROM fifo
        dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); -- Data out
        full : out STD_LOGIC;                       -- When is fifo full (8192)
        empty : out STD_LOGIC;                      -- When is fifo empty
        prog_full : out STD_LOGIC                   -- When does fifo contain 7680 elements
    );
end component fifo_7680;
begin
    process(clk)
    begin
        if (rising_edge(clk)) then
        
        end if;
    end process;

end Behavioral;

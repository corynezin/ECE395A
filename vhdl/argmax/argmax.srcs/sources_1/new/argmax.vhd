--Name: Cory Nezin
--Date: 10/27/17
--Goal: Output the port with the largest input

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use WORK.VECTOR.ALL;

entity argmax is
  Port (
    logits: in vector;
    biggest: out STD_LOGIC_VECTOR(1 downto 0);
    clk: in STD_LOGIC 
  );
end argmax;

architecture RTL of argmax is
    
begin
process(clk)
variable max: integer := -256;
variable ind: integer := 0;
begin
    for i in 0 to 1 loop
        if logits(i) > logits(i+1) then
            ind := i;
            max := to_integer(logits(i));
        else
            ind := i+1;
            max := to_integer(logits(i+1));
        end if;  
    end loop;
    biggest <= std_logic_vector(to_unsigned(ind,2));
end process;

end RTL;

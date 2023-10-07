----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL; 

entity decoder is
  generic (N: integer);
  Port (
    w: in std_logic_vector ((N-1) downto 0);
    en: in std_logic;
    y: out std_logic_vector ((2**N)-1 downto 0)
   );
end decoder;

architecture Behavioral of decoder is
begin
    decode: process(en, w)
    begin   
        if (en = '1') then
            y <= (others=>'0');
            y(TO_INTEGER (unsigned(w)))<='1';
        else
            y<= (others=>'0');
        end if;
    end process;
end Behavioral;

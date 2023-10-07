

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;


entity dec_top is
  Port ( 
        w: in std_logic_vector (2 downto 0);
        en: in std_logic;
        y: out std_logic_vector (7 downto 0)
  );
end dec_top;

architecture Behavioral of dec_top is
component decoder 
    generic(N : integer);
    port(
      w: in std_logic_vector (2 downto 0);
      en: in std_logic;
      y: out std_logic_vector (7 downto 0)
    );
end component;
begin
DEC8: decoder
    generic map(
        N=>3
    )
    port map(
    w=>w,
    en=>en,
    y=>y
    );

end Behavioral;

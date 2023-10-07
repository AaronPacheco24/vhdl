


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use UNISIM.VComponents.all;

entity param_mux is
    generic (N: integer);
      Port (
        m: in std_logic_vector (N-1 downto 0);
        p: in std_logic_vector (N-1 downto 0);
        sel: in std_logic;
        f: out std_logic_vector (N-1 downto 0)
       );
end param_mux;

architecture Behavioral of param_mux is
begin
    process (m,p,sel)
        begin
            if sel = '0' then
                f<=m;
            else
                f<=p;
            end if;
        end process;

end Behavioral;

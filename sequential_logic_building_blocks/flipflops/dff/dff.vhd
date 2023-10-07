
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


--use UNISIM.VComponents.all;

entity dff is
  Port ( 
        d:      in std_logic;
        clk:    in std_logic;
        reset:  in std_logic;
        q:      out std_logic
  );
end dff;


architecture Behavioral of dff is
begin
    dff: process
    begin
        wait until rising_edge(clk);
            if (reset = '1') then
                q <= '0';
            else
                q<=d;
            end if;
    end process;
end Behavioral;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux28 is
  Port ( 
    m: in std_logic_vector (7 downto 0);
    p: in std_logic_vector (7 downto 0);
    sel: in std_logic;
    f: out std_logic_vector (7 downto 0)
  );
end mux28;

architecture mux2to8 of mux28 is
    component param_mux
    generic(
        N: integer);
    port(
        m: in std_logic_vector ((N-1) downto 0);
        p: in std_logic_vector ((N-1) downto 0);
        sel: in std_logic;
        f: out std_logic_vector ((N-1) downto 0)
    );
    end component;

begin
M8: param_mux
    generic map(
        N=>8
    )
    port map (
     m=>m,
     p=>p,
     sel=>sel,
     f=>f
    );
end mux2to8;

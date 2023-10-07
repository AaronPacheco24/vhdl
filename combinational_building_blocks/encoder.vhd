----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/30/2023 06:39:23 PM
-- Design Name: 
-- Module Name: encoder - Behavioral
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

entity encoder is
  Port ( 
    w: in std_logic_vector (3 downto 0);
    y: out std_logic_vector (1 downto 0)
  );
end encoder;

architecture Behavioral of encoder is

begin
    encode: process(w)
    begin 
        case w is
            when "0001" => 
                y <="00";
            when "0010" => 
                y <= "01";
            when "0100" =>
                y<= "10";
            when "1000" =>
                y<= "11";
            when others =>
                y<= "00";
       end case;
    
        
    end process;

end Behavioral;

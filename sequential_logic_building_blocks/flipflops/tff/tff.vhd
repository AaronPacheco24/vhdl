----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/30/2023 08:53:22 PM
-- Design Name: 
-- Module Name: t_ff - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Create
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity t_ff is
  Port (
        d:  in std_logic;
        clk:in std_logic;
        rst:in std_logic;
        t:  out std_logic
        
   );
end t_ff;

architecture Behavioral of t_ff is
signal temp: std_logic ;
begin
    tff: process(rst, clk)
        begin   
        if (rst = '1') then
            temp <= '0';
        elsif (rising_edge(clk)) then
            if d = '1' then
                temp <= '0';
            elsif d = '0' then
                temp <= '1';
            else
                temp <= '0';
            end if;
        end if; 
    end process;
    t<=temp;
end Behavioral;

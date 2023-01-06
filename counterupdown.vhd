----------------------------------------------------------------------------------
-- Company: factuly of shoubra 
-- Engineer: abdelrahman khaled elsayed
-- Create Date:   19:26:09 12/18/2022
-- Design Name:   3bit counter
-- Module Name:   C:/vhdl/counter_3_bit/counter/testupdown.vhd
-- Project Name:  counter
-- VHDL Test Bench Created by ISE for module: counterupdown
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity counterupdown is
    Port ( clk: in std_logic; -- clock input
           rst: in std_logic; -- reset input 
     up_down: in std_logic; -- up or down
           q: out std_logic_vector(2 downto 0) -- output 3-bit counter
     );
end counterupdown;

architecture Beh of counterupdown is
signal sig: std_logic_vector(2 downto 0);
begin
process(clk)
begin
if(clk='1') then
    if(rst='1') then
         sig<= "000";
    elsif(up_down='1') then
         sig <= sig- '1'; -- count down
  else 
   sig<=sig+'1'; -- count up
    end if;
 end if;
end process;
 q<= sig;
end Beh;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:13:22 07/01/2016 
-- Design Name: 
-- Module Name:    regWithEnable - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity regWithEnable is
	port(
		input : in std_logic_vector(31 downto 0);
		en : in std_logic;
		clock,reset : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end regWithEnable;

architecture Behavioral of regWithEnable is
	signal R: std_logic_vector(31 downto 0);
begin
RegProcess: process(clock)
	begin
	if(clock = '1' and clock'event)then
		if(reset = '1')then
			R <= (others => '0');
		elsif(en = '1')then
			R <= input;
		end if;
	end if;
end process;

output <= R;

end Behavioral;


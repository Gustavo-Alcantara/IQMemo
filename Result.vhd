library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_vector.all;

entity result is port (
		X: in std_logic_vector(3 downto 0);
		Bonus_reg: in std_logic_vector(3 downto 0);
		sel: in std_logic_vector(1 downto 0);
		result: out std_logic_vector(7 downto 0));
		end result;
		
architecture behav of result is
	result <= 32*sel + 4*('0' & Bonus_reg(2 downto 0)) + "00" & X(1 downto 0)  
end behav;
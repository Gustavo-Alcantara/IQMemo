library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_vector.all;

entity logica is port(
	round, bonus: in std_logic_vector(3 downto 0);
	nivel: in std_logic_vector(1 downto 0);
	points: out std_logic_vector(7 downto 0)
);
end logica;
		
architecture behav of logica is
	points <= 32*nivel + 4*('0' & bonus(2 downto 0)) + "00" & round(1 downto 0)  
end behav;
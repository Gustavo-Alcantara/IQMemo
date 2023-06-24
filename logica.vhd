library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity logica is port(
	round, bonus: in std_logic_vector(3 downto 0);
	nivel: in std_logic_vector(1 downto 0);
	points: out std_logic_vector(7 downto 0)
);
end logica;
		
architecture behav of logica is
signal result: std_logic_vector(10 downto 0);
begin
	result <= (nivel & "00000" + ('0' & bonus(2 downto 0))&"00" + "00" & round(1 downto 0));
	points <= result(7 downto 0);
end behav;
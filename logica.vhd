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
signal resultado: std_logic_vector(7 downto 0);
signal divBonus: std_logic_vector(2 downto 0);
signal divRound: std_logic_vector(1 downto 0);

begin
	divBonus <= bonus(3 downto 1);
	divRound <= round(1 downto 0);
	resultado <= ("0" & nivel & "00000") + (divBonus & "00") + divRound;
	points <= resultado(7 downto 0);
end behav;
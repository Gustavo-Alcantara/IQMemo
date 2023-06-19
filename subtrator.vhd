library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity subtrator is port (
			Bonus_reg: in std_logic_vector(3 downto 0);
			erro: in std_logic;
			bonus: out std_logic_vector);
			end subtrator;

architecture behav of subtrator is
	bonus <= Bonus_reg - erro;
end behav
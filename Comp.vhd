library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_vector.all;

entity comp is port (
		A: in std_logic_vector(14 downto 0);
		B: in std_logic_vector(14 downto 0);
		X: out std_logic);
		end comp;
		
architecture behav of comp is
		X <= '1' when A = B else '0';
end behav
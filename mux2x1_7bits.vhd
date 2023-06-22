library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_vector.all;

entity mux2x1_7bits is port(
		A: in std_logic_vector(6 downto 0);
		B: in std_logic_vector(6 downto 0);
		sel: in std_logic;
		X: in std_logic_vector(6 downto 0));
end mux2x1_7bits;
		
architecture aqtmux of mux2x1_7bits is
begin
		X <= A when sel = '0' else
			  B;
end aqtmux;
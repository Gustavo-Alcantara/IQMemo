library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity mux2x1_7bits is
port(
	E0, E1: in std_logic_vector(6 downto 0);
	sel: in std_logic;
	saida: out std_logic_vector(6 downto 0)
);
end mux2x1_7bits;
		
architecture aqtmux of mux2x1_7bits is
begin
		saida <= E0 when sel = '0' else
			  E1;
end aqtmux;
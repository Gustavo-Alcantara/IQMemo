library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_vector.all;

entity mux4x1_32bits is port(
	E0, E1, E2, E3: in std_logic_vector(31 downto 0);
	sel: in std_logic_vector(1 downto 0);
	saida: out std_logic_vector(31 downto 0)
);
end mux4x1_32bits;
		
architecture aqtmux of mux4x1_32bits is
begin
		X <= E0 when sel = "00" else
			  E1 when sel = "01" else
			  E2 when sel = "10" else
			  E3;
end aqtmux;
		
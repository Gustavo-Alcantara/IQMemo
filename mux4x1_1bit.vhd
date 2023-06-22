library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_vector.all;

entity mux4x1_1bit is port(
	E0, E1, E2, E3: in std_logic;
	sel: in std_logic_vector(1 downto 0);
	saida: out std_logic
);
end mux4x1_1bit;
		
architecture aqtmux of mux4x1_1bit is
begin
		X <= A when sel = "00" else
			  B when sel = "01" else
			  C when sel = "10" else
			  D;
end aqtmux;
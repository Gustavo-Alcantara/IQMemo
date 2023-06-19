library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_vector.all;

entity mux4132b is port(
		A: std_logic_vector(31 downto 0);
		B: std_logic_vector(31 downto 0);
		C: std_logic_vector(31 downto 0);
		D: std_logic_vector(31 downto 0);
		sel: std_logic_vector(1 downto 0)
		X: std_logic_vector(31 downto 0));
		
architecture aqtmux of mux41 is
begin
		X <= A when sel = "00" else
			  B when sel = "01" else
			  C when sel = "10" else
			  D;
end aqtmux;
		
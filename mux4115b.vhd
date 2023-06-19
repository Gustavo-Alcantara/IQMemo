library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_vector.all;

entity mux4115b is port(
		A: in std_logic_vector(14 downto 0);
		B: in std_logic_vector(14 downto 0);
		C: in std_logic_vector(14 downto 0);
		D: in std_logic_vector(14 downto 0);
		sel: in std_logic_vector(1 downto 0)
		X: out std_logic_vector(14 downto 0));
		
architecture aqtmux of mux4115bb is
begin
		X <= A when sel = "00" else
			  B when sel = "01" else
			  C when sel = "10" else
			  D;
end aqtmux;
library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_vector.all;

entity mux411b is port(
		A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		D: in std_logic;
		sel: in std_logic_vector(1 downto 0)
		X: out std_logic);
		
architecture aqtmux of mux411b is
begin
		X <= A when sel = "00" else
			  B when sel = "01" else
			  C when sel = "10" else
			  D;
end aqtmux;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM2a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM2a;

architecture arc_ROM2a of ROM2a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= "010000100110010" when address = "0000" else --ROM0 possui os valores 6, 1 e D no round 0.
		    "110100000001100" when address = "0001" else
			 "001101100100000" when address = "0010" else
			 "100000001100101" when address = "0011" else
			 "000001100000111" when address = "0100" else
			 "100100100000101" when address = "0101" else
			 "001000000101110" when address = "0110" else
			 "001010010101000" when address = "0111" else
			 "010011000100100" when address = "1000" else
--         EDCBA9876543210
			 "101000110000100" when address = "1001" else
			 "010110000001010" when address = "1010" else
			 "001110000001100" when address = "1011" else
			 "110000100110000" when address = "1100" else
			 "000001000100111" when address = "1101" else
			 "001010001010100" when address = "1110" else
			 "000101000011001";
			 
end arc_ROM2a;
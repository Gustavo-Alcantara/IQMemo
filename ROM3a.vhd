library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM3a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM3a;

architecture arc_ROM3a of ROM3a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= "010000101110010" when address = "0000" else --ROM0 possui os valores 6, 1 e D no round 0.
		    "110100100001100" when address = "0001" else
			 "001101110100000" when address = "0010" else
			 "100010001100101" when address = "0011" else
			 "001001100000111" when address = "0100" else
			 "100100100010101" when address = "0101" else
			 "101000000101110" when address = "0110" else
			 "011010010101000" when address = "0111" else
			 "010011000101100" when address = "1000" else
--         EDCBA9876543210
			 "101001110000100" when address = "1001" else
			 "010110000101010" when address = "1010" else
			 "001110000001101" when address = "1011" else
			 "110000100110001" when address = "1100" else
			 "000001000110111" when address = "1101" else
			 "000011001011100" when address = "1110" else
			 "000101000011011";
			 
end arc_ROM3a;
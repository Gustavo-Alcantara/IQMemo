library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM1a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM1a;

architecture arc_ROM1a of ROM1a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= "010000100100010" when address = "0000" else --ROM0 possui os valores 6, 1 e D no round 0.
		    "110100000000100" when address = "0001" else
			 "001100100100000" when address = "0010" else
			 "100000000100101" when address = "0011" else
			 "000001100000011" when address = "0100" else
			 "100001000000101" when address = "0101" else
			 "001000000001110" when address = "0110" else
			 "001010000101000" when address = "0111" else
			 "000011001100100" when address = "1000" else
--         EDCBA9876543210
			 "101000100000100" when address = "1001" else
			 "010110000000010" when address = "1010" else
			 "001100000001100" when address = "1011" else
			 "010000100110000" when address = "1100" else
			 "000001000100011" when address = "1101" else
			 "000010001010100" when address = "1110" else
			 "000000100011001";
			 
end arc_ROM1a;
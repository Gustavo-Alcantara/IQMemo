library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM3 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM3;

architecture arc_ROM3 of ROM3 is
begin

--         HEX2      HEX5     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "1000"	& "0101" & "0110" & "0100"	& "0001" & "1111" & "1101" & "1111" when address = "0000" else
--         8          5        6       4       1       des       D       des

			 "1111"	& "0011" & "0010" & "1011"	& "1000" & "1101" & "1110" & "1111" when address = "0001" else
--         des       3       2         B         8       D        E       des

			 "0111"	& "1001" & "1111" & "1000"	& "0101" & "1111" & "1011" & "1100" when address = "0010" else
--           7       9        des       8        5      des       B        C

			 "0000"	& "1111" & "0010" & "1111"	& "0101" & "0110" & "1010" & "1110" when address = "0011" else
--         0         des       2       des       5        6        A       E

			 "1100"	& "1001" & "1000" & "0000"	& "0010" & "0001" & "1111" & "1111" when address = "0100" else
--           C        9       8          0       2       1       des      des

			 "0010"	& "1000" & "1110" & "1111"	& "1010" & "0100" & "1111" & "0000" when address = "0101" else
--          2          8        E      des       A       4       des       0

			 "1111"	& "0001" & "0010" & "1111"	& "0101" & "1110" & "0011" & "1100" when address = "0110" else
--         des        1        2      des        5        E       3        C			 
			 
			 "1100"	& "1101" & "0011" & "1010"	& "0111" & "1111" & "0101" & "1111" when address = "0111" else
--          C         D      3       A        	 7       des        5      des

			 "1111"	& "1001" & "1010" & "1110"	& "0101" & "0011" & "0010" & "1111" when address = "1000" else
--         des        9       A         E          5        3      2       des

			 "1100"	& "0111" & "1000" & "1111"	& "1001" & "0010" & "1111" & "1110" when address = "1001" else
--         C          7       8       des        9       2       des       E

			 "0001"	& "0101" & "1111" & "1011"	& "1111" & "1010" & "1101" & "0011" when address = "1010" else
--          1         5      des       B       des       A        D        3

			 "0000"	& "0011" & "0010" & "1010"	& "1011" & "1111" & "1100" & "1111" when address = "1011" else
--           0        3       2         A       B       des       C       des

			 "1111"	& "1000" & "0101" & "1101"	& "1110" & "0100" & "0000" & "1111" when address = "1100" else
--         des        8         5       D         E       4         0      des

			 "0101"	& "1111" & "1001" & "0010"	& "0000" & "0100" & "1111" & "0001" when address = "1101" else
--          5        des       9        2       0         4      des       1

          "0010"	& "1111" & "0100" & "1111"	& "1001" & "1010" & "0011" & "0110" when address = "1110" else
--          2        des       4       des       9       A        3        6

			 "1001"	& "1011" & "1111" & "0100"	& "1111" & "0001" & "0000" & "0011";
--           9        B       des       4       des       1       0       3
			 
end arc_ROM3;
library ieee;
use ieee.std_logic_1154.all;
use ieee.numeric_std.all;

entity ROM2 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM2;

architecture arc_ROM2 of ROM2 is
begin

--         HEX2      HEX5     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "1000"	& "0101" & "1111" & "0100"	& "0001" & "1111" & "1101" & "1111" when address = "0000" else
--         8          5       des       4       1       des       D       des

			 "1111"	& "0011" & "0010" & "1011"	& "1111" & "1101" & "1110" & "1111" when address = "0001" else
--         des       3       2         B      des       D        E       des

			 "1111"	& "1001" & "1111" & "1000"	& "0101" & "1111" & "1011" & "1100" when address = "0010" else
--         des       9        des       8        5      des       B        C

			 "0000"	& "1111" & "0010" & "1111"	& "0101" & "1111" & "0110" & "1110" when address = "0011" else
--         0         des       2       des       5       des        6       E

			 "1111"	& "1001" & "1000" & "1111"	& "0010" & "0001" & "1111" & "0000" when address = "0100" else
--         des        9       8        des       2       1       des        0

			 "0010"	& "1000" & "1110" & "1111"	& "1111" & "1100" & "1111" & "0000" when address = "0101" else
--          2          8        E      des      des       B       des       0

			 "1111"	& "0001" & "0010" & "1111"	& "0101" & "1111" & "0011" & "1100" when address = "0110" else
--         des        1        2      des        5      des       3        C			 
			 
			 "1100"	& "1111" & "0011" & "1010"	& "0111" & "1111" & "0101" & "1111" when address = "0111" else
--          C        des      3       A          7       des        5      des

			 "1111"	& "1001" & "1010" & "0101"	& "1101" & "1111" & "0010" & "1111" when address = "1000" else
--         des        9       A       5          D      des       2       des

			 "1100"	& "0111" & "1000" & "1111"	& "1111" & "0010" & "1111" & "1110" when address = "1001" else
--         C          7       8       des      des       2       des       E

			 "0001"	& "1111" & "1111" & "1011"	& "1111" & "1010" & "1101" & "0011" when address = "1010" else
--          1        des      des       B       des       A        D        3

			 "1111"	& "0011" & "0010" & "1010"	& "1011" & "1111" & "1100" & "1111" when address = "1011" else
--         des        3       2         A       B       des       C       des

			 "1111"	& "1000" & "0101" & "1101"	& "1110" & "0100" & "1111" & "1111" when address = "1100" else
--         des        8         5       D         E       4       des      des

			 "0101"	& "1111" & "1001" & "0010"	& "0000" & "1111" & "1111" & "0001" when address = "1101" else
--          5        des       9        2       0       des      des       1

          "1100"	& "1111" & "0100" & "1111"	& "1111" & "1010" & "0010" & "0110" when address = "1110" else
--          C        des       4       des      des       A        2        6

			 "1001"	& "1011" & "1111" & "0100"	& "1111" & "1111" & "0000" & "0011";
--           9        B       des       4       des      des       0       3
			 
end arc_ROM2;
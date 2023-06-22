library ieee;
use ieee.std_logic_1164.all;

entity registrador_user is port (
	R, E, clock: in std_logic;
	D: in std_logic_vector(14 downto 0);
	Q: out std_logic_vector(14 downto 0)
	 );
end registrador_user;

architecture behv of registrador_user is
begin
	 process(clock, D, R) 
	 begin 
		 if R = '1' then
			Q <= "00000000000000";
		 elsif (clock'event and clock = '1' and E) then 
			Q <= D;
 end if; 
 end process;
end behv;
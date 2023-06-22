library ieee;
use ieee.std_logic_1164.all;

entity registrador_sel is port (
	R, E, clock: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0)
	 );
end registrador_sel;

architecture behv of registrador_sel is
begin
	 process(clock, D, R) 
	 begin 
		 if R = '0' then
			Q <= "0000";
		 elsif (clock'event and clock = '1' and E) then 
			Q <= D;
 end if; 
 end process;
end behv;
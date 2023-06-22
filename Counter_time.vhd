library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity counter_time is port(
		R: in std_logic;
		E: in std_logic;
		clock: in std_logic;
		tc: out std_logic;
		Q: out std_logic_vector(3 downto 0));
		end counter_time;
		
architecture arqct of counter_time is
signal tempo_reg: std_logic_vector(3 downto 0);
begin
	process(clock, R)
	begin
		if R = '1' then
			tempo_reg <= "1010";
		elsif (clock'event and clock ='1' and E ='1') then
			tempo_reg <= tempo_reg - 1;
		end if;
	end process;
	Q <= tempo_reg;
	tc <= '1' when tempo_reg = "0000" else '0';
end arqct;
library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity counter_round is port(
		R: in std_logic;
		E: in std_logic;
		clock: in std_logic;
		Q: out std_logic_vector(3 downto 0);
		tc: out std_logic);
		end counter_round;
		
architecture arqct of counter_round is
signal round_reg: std_logic_vector(3 downto 0);
begin
	process(clock, R)
	begin
		if R = '1' then
			round_reg <= "0000";
		elsif (clock'event and clock ='1' and E ='1') then
			round_reg <= round_reg + 1;
		end if;
	end process;
	Q <= round_reg;
	tc <= '1' when round_reg = "1111" else '0';
end arqct;
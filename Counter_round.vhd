library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity counter_round is port(
		R: in std_logic;
		E: in std_logic;
		clock: in std_logic;
		tc: out std_logic;
		Q: out std_logic_vector(3 downto 0));
		end counter_time;
		
architecture arqct of counter_time is
	signal round_reg: std_logic_vector(3 downto 0);
	
	process(clock, R)
	begin
		if R = '1' then
			tempo_reg <= "0000"
		elsif (clk_1hz'event and clk_1hz ='1' and E ='1') then
			round_reg <= round_reg + 1
	end process;
	Q <= round_reg
	tc <= '1' when round_reg = "1111" else '0';
end arqct
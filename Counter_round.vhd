library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity counter_round is port(
		reset: in std_logic;
		E: in std_logic;
		clk_50: in std_logic;
		end_round: out std_logic;
		round: out std_logic_vector(3 downto 0));
		end counter_time;
		
architecture arqct of counter_time is
	signal round_reg: std_logic_vector(3 downto 0);
	
	process(clk_50, reset)
	begin
		if reset = '1' then
			tempo_reg <= "0000"
		elsif (clk_1hz'event and clk_1hz ='1' and E ='1') then
			round_reg <= tempo_reg + 1
	end process;
	round <= round_reg
	end_round <= '1' when tempo_reg = "1111" else '0';
end arqct
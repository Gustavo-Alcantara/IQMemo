library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity counter_time is port(
		set: in std_logic;
		E: in std_logic;
		clk_1hz: in std_logic;
		end_time: out std_logic;
		tempo: out std_logic_vector(3 downto 0));
		end counter_time;
		
architecture arqct of counter_time is
	signal tempo_reg: std_logic_vector(3 downto 0);
	
	process(clk_1hz, set)
	begin
		if set = '1' then
			tempo_reg <= "1010"
		elsif (clk_1hz'event and clk_1hz ='1' and E ='1') then
			tempo_reg <= tempo_reg - 1
	end process;
	tempo <= tempo_reg
	end_time <= '1' when tempo_reg = "0000" else '0';
end arqct
library ieee;
use ieee.std_logic_1164.all;
 
entity controle is
port(
-- Entradas de controle
	enter, reset, CLOCK: in std_logic;
-- Entradas de status
	end_game, end_time, end_round, end_FPGA: in std_logic;
-- Saídas de comandos
	R1, R2, E1, E2, E3, E4, E5: out std_logic
);
end controle;

architecture bhv of controle is
    type STATES is (Init, Setup, Play_FPGA, Play_User, Count_round, Check, sWait, Result); 
    signal EA, PE: STATES;
begin
    
    P1: process(clock)
    begin
    if (clock'event AND clock = '1') then
            EA <= PE;
        end if;
    end process;
    
    P2: process(EA, reset)
    begin
	 
        case EA is
		  
		  when Init => R1 <= '1'; R2 <= '1'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '0'; E5 <= '0';
				if reset ='1' then
					PE <= Setup;
				elsif reset ='0' then PE <= Init;
				end if;
			
		  when Setup => R1 <= '1'; R2 <= '0'; E1 <= '1'; E2 <= '1'; E3 <= '0'; E4 <= '0'; E5 <= '0';
				if reset ='1' then
					PE <= Setup;
				elsif enter = '1' then
					PE <= Play_FPGA;
				elsif enter = '0' then
					PE <= Setup;
				end if;
				
			when Play_FPGA => R1 <= '0'; R2 <= '0'; E1 <= '0'; E2 <= '1'; E3 <= '1'; E4 <= '0'; E5 <= '0';
				if reset ='1' then
					PE <= Setup;
				elsif end_FPGA ='1' then
					PE <= Play_User;
				end if;
			
			when Play_User => R1 <= '0'; R2 <= '0'; E1 <= '0'; E2 <= '0'; E3 <= '1'; E4 <= '0'; E5 <= '0';
				if reset ='1' then
					PE <= Setup;
				elsif enter ='1' then
					PE <= Count_round;
				elsif end_time ='1' then
					PE <= result;
				end if;
				
			when Count_round => R1 <= '1'; R2 <= '0'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '1'; E5 <= '0';
				if reset ='1' then
					PE <= Setup;
				else PE <= Check;
				end if;
				
			when Check => R1 <= '1'; R2 <= '0'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '0'; E5 <= '0';
				if reset ='1' then
					PE <= Setup;
				elsif (end_FPGA or end_game or end_time or end_round) = '0' then
					PE <= sWait;
				else PE <= result;
				end if;
				
			when sWait => R1 <= '1'; R2 <= '0'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '0'; E5 <= '0';
				if reset ='1' then
					PE <= Setup;
				else PE <= Play_FPGA;
				end if;
				
			when Result => R1 <= '1'; R2 <= '1'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '0'; E5 <= '1';
				if reset ='1' then
					PE <= Setup;
				elsif enter ='1' then
					PE <= Init;
				elsif enter ='0' then
					PE <= result;
				end if;
				
        end case;
    end process;
end bhv;
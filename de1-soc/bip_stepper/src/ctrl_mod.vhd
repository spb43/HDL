library ieee;
use ieee.std_logic_1164.all;

entity ctrl_mod is
port(iclk		:in std_logic;
		irst	:in std_logic;
		iEN	:in std_logic;
		iDir	:in std_logic;
			odata	:out std_logic_vector(3 downto 0)
		);
end entity ctrl_mod;

architecture behav of ctrl_mod is

type state_type is (Idle, st_1, st_2, st_3, st_4);
signal state   	:state_type;


begin

state_ctrl_process: process(iclk,irst)

begin
	if(irst = '1') then
		state <= Idle;
		odata <= "0000";
	elsif(rising_edge(iclk)) then
		if(iEn = '0') then
			state <= Idle;
			odata <= "0000";
		else
		case(state) is
			--IDLE STATE
			when Idle =>
				if(iEn ='1') then
					state <= st_1;
				else
					state <= Idle;
				end if;
				odata <= "0000";
			--STATE_1:
			when st_1 =>
				if(iEn = '1' and iDir = '1') then
					state <= st_2;
				elsif(iEn = '1' and iDir = '0') then
					state <= st_4;
				end if;
				odata <= "1010";
			--STATE_2:
			when st_2 =>
				if(iEn = '1' and iDir = '1') then
					state <= st_3;
				elsif(iEn = '1' and iDir = '0') then
					state <= st_1;
				end if;
				odata <= "0110";
			--STATE_3:
			when st_3 =>
				if(iEn = '1' and iDir = '1') then
					state <= st_4;
				elsif(iEn = '1' and iDir = '0') then
					state <= st_2;
				end if;
				odata <= "0101";
			--STATE_4:
			when st_4 =>
				if(iEn = '1' and iDir = '1') then
					state <= st_1;
				elsif(iEn = '1' and iDir = '0') then
					state <= st_3;
				end if;
				odata <= "1001";
			end case;
		end if;
	end if;
end process state_ctrl_process;
	
--out_process:process(state)
--begin
--	case(state) is
--		when Idle => 
--			odata <= "0000";
--		when st_1 =>
--			odata <= "1010";
--		when st_2 =>
--			odata <= "0110";
--		when st_3 =>
--			odata <= "0101";
--		when st_4 =>
--			odata <= "1001";
--	end case;
--end process out_process;
--			
end architecture behav;
----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 09.11.2016 
-- Module Name: jon_cnt - behavioral
-- Project Name: jon_cnt
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: Quartus 15.0
-- Description: 10-bit Johnsons counter 
--------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity jon_cnt is

port(clk, rst		:in std_logic;
		q	:out std_logic_vector(9 downto 0));
		
end entity jon_cnt;

architecture behav of jon_cnt is

signal s_count	:std_logic_vector(9 downto 0);

begin

q <= std_logic_vector(s_count);

cnt_process:process(clk,rst)
		begin
			if(rst = '1') then
				s_count <= (OTHERS => '0');
			elsif(rising_edge(clk)) then
				s_count(1) <= s_count(0);
				s_count(2) <= s_count(1);
				s_count(3) <= s_count(2);
				s_count(4) <= s_count(3);
				s_count(5) <= s_count(4);
				s_count(6) <= s_count(5);
				s_count(7) <= s_count(6);
				s_count(8) <= s_count(7);
				s_count(9) <= s_count(8);
				s_count(0) <= not s_count(9);
			end if;
end process cnt_process;

end architecture behav;
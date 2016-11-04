----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 01.11.2016 
-- Module Name: Counter_10bit - Behavioral
-- Project Name: Counter module
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: 10-bit counter 
-- Revision 0.01 - File Created
--------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std_unsigned.all;

entity counter_10bit is
generic(bus_width:	integer:= 10);
port(clk	:in std_logic;
	reset	:in std_logic;
	q	:out std_logic_vector(bus_width-1 downto 0));
end entity counter_10bit;

architecture behav of counter_10bit is
signal s_q	:std_logic_vector(bus_width-1 downto 0);
begin
	cnt_process: process(clk,reset)
			begin
			if(reset = '1') then
				s_q <= (others => '0');
			elsif(rising_edge(clk)) then
				s_q <= s_q + 1;
			end if;
	end process cnt_process;
q <= s_q;
end architecture behav;

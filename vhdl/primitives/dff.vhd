----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: D-flipflop - Behavioral
-- Project Name: D-flipflop
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: D-flipflop
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity dff is
port(clk	:in std_logic;
	d_in 	:in std_logic;
	q	:out std_logic);
end entity dff;

architecture behavioral of dff is
begin
main_process:process(clk) 
	begin
		if(rising_edge(clk)) then
			q <= d_in;
		end if;
end process main_process;
end architecture behavioral;
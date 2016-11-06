----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 06.11.2016 
-- Module Name: gray2bin 
-- Project Name: gray2bin
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: gray to binay code converter
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity gray2bin is
generic( N:	integer := 8);
port(gray_code		:in std_logic_vector(N-1 downto 0); --Input gray code vector
	bin_code	:out std_logic_vector(N-1 downto 0)); --Output binary code vector
end entity gray2bin;

architecture dataflow of gray2bin is

begin
	conv_process:process(gray_code) --main convertion process
	variable bin_vec:	std_logic_vector(N-1 downto 0);--create variable vertor for using in loop
	begin
		bin_vec(N-1) := gray_code(N-1); 
		conv_loop:for i in (N-2) downto 0 loop
				bin_vec(i) := bin_vec(i+1) xor gray_code(i);
		end loop conv_loop;
		bin_code <= bin_vec;
	end process conv_process;
end architecture dataflow;


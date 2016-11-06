----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 06.11.2016 
-- Module Name: bin2gray 
-- Project Name: bin2gray
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: binary to gray code converter
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity bin2gray is
generic( N:	integer := 8); --width of input vector
port(bin_code		:in std_logic_vector(N-1 downto 0); --Input binary code vector
	gray_code	:out std_logic_vector(N-1 downto 0)); --Output gray code vector
end entity bin2gray;

architecture dataflow of bin2gray is

begin
	conv_process:process(bin_code) --main convertion process
	variable gray_vec:	std_logic_vector(N-1 downto 0);--create variable vertor for using in loop
	begin
		gray_vec(N-1) := bin_code(N-1); 
		conv_loop:for i in (N-2) downto 0 loop
				gray_vec(i) := bin_code(i) xor bin_code(i+1);
		end loop conv_loop;
		gray_code <= gray_vec;
	end process conv_process;
end architecture dataflow;


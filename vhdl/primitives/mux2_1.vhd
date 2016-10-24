----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: mux2_1 - Dataflow
-- Project Name:mux2_1
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: multiplexer 2 in 1
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is
generic(data_width: integer := 8);
port(d_in0	:in std_logic_vector(data_width-1 downto 0);
	d_in1	:in std_logic_vector(data_width-1 downto 0);
	sel	:in std_logic;
	y	:out std_logic_vector(data_width-1 downto 0));
end entity mux2_1;

architecture dataflow of mux2_1 is
begin
	y <= d_in1 when sel = '1' else d_in0;
	
	--with sel select y <=
	--	d_in1 when '1',
	--	d_in0 when others; 

end architecture dataflow;

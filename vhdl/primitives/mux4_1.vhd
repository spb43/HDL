----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: mux4_1 - Dataflow
-- Project Name:mux4_1
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: multiplexer 4 in 1
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity mux4_1 is
generic(data_width: integer := 8);
port(d_in0	:in std_logic_vector(data_width-1 downto 0);
	d_in1	:in std_logic_vector(data_width-1 downto 0);
	d_in2	:in std_logic_vector(data_width-1 downto 0);
	d_in3	:in std_logic_vector(data_width-1 downto 0);
	sel	:in std_logic_vector(1 downto 0);
	y	:out std_logic_vector(data_width-1 downto 0));
end entity mux4_1;

architecture dataflow of mux4_1 is
begin
	y <= d_in0 when sel = "00" else
		d_in1 when sel = "01" else 
		d_in2 when sel = "10" else 
		d_in3;
	
	--with sel select y <=
	--	d_in0 when "00",
	--	d_in1 when "01",
	--	d_in2 when "10",
	--	d_in3 when others; 

end architecture dataflow;

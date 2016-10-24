----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: not_gate - Dataflow
-- Project Name:not_gate
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: Inverter

-- Revision 0.01 - File Created

----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity not_gate is
generic (data_width: integer := 8);
port(a		:in std_logic_vector(data_width-1 downto 0);
	y	:out std_logic_vector(data_width-1 downto 0));
end entity not_gate;

architecture dataflow of not_gate is
begin
	y <= not a;
end architecture dataflow;

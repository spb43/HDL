----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 01.11.2016 
-- Module Name: Subtractor - Dataflow
-- Project Name: Subtract module
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: Subtract module with N bit bus width
-- Revision 0.01 - File Created
--------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std_unsigned.all;

entity subtract is
generic(bus_width:	integer:= 8);
port(a,b	:in std_logic_vector(bus_width-1 downto 0);
	y	:out std_logic_vector(bus_width-1 downto 0));
end entity subtract;

architecture dataflow of subtract is

begin
	y <= a - b;
end architecture dataflow;

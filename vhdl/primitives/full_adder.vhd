----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: full_adder- Dataflow
-- Project Name: full_adder
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: full_adder
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
port(A,B	:in std_logic;
	CIN	:in std_logic;
	COUT	:out std_logic;
	SUM	:out std_logic);
end entity full_adder;

architecture dataflow of full_adder is

begin
	SUM <= A xor B xor CIN;
	COUT <= (A and B) or (CIN and (A xor B));
end architecture dataflow;

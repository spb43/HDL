----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: tristate_buffer- Dataflow
-- Project Name: tristate
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: tristate_buffer
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity tristate is
port(d_in	:in std_logic_vector(3 downto 0);
	en	:in boolean;
	d_out	:out std_logic_vector(3 downto 0));
end entity tristate;

architecture dataflow of tristate is

begin
	d_out <= d_in when en else "ZZZZ"; 

end architecture dataflow;

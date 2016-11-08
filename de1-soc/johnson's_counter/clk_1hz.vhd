----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 09.11.2016 
-- Module Name: clk_1hz - behavioral
-- Project Name: clk_div
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: Quartus 15.0
-- Description: Clock devider to frequency around 1Hz
--------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity clk_1Hz is
port(clk_50			:in std_logic;
		clk_1Hz		:out std_logic);
		
end entity clk_1Hz;

architecture behav of clk_1Hz is

--signal count : integer := 1;
signal clk : std_logic :='0';

begin

 --clk generation.For 50 MHz clock this generates 1 Hz clock.
process(clk_50) 
variable count: integer := 1;
begin
if(clk_50'event and clk_50='1') then
	count := count+1;
	if(count = 25000000) then
		clk <= not clk;
		count := 1;
	end if;
end if;
end process;

clk_1hz <= clk;
end behav;
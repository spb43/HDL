library ieee;
use ieee.std_logic_1164.all;

entity tb_lfsr_32 is
end entity tb_lfsr_32;

architecture test of tb_lfsr_32 is

component lfsr_32 
	PORT(
	    	rand_num	:out std_logic_vector(3 downto 0);
	    	rst		:in std_logic;
		clk 		:in std_logic 
	    );
end component lfsr_32;

signal rand_num			:std_logic_vector(3 downto 0);
signal clk,rst			:std_logic;
constant period			:time := 20ns;

begin
	reg_comp: lfsr_32 
		port map 
			(clk => clk,
			 rst => rst,
			 rand_num => rand_num);
end architecture test;
library ieee;
use ieee.std_logic_1164.all;

entity stepper is
port(CLOCK_50		:in std_logic;
		SW		:in std_logic_vector(9 downto 0);
		GPIO_0	:out std_logic_vector(35 downto 0)
		--iEN	:in std_logic;
		--iDir	:in std_logic;
		--ispeed	:in std_logic_vector(2 downto 0);
		--odata	:out std_logic_vector(3 downto 0)
		);
end entity stepper;

architecture struct of stepper is

signal s_clk	:std_logic;


component ctrl_mod is
port(iclk		:in std_logic;
		irst	:in std_logic;
		iEN	:in std_logic;
		iDir	:in std_logic;
		odata	:out std_logic_vector(3 downto 0)
		);
end component ctrl_mod;

component clk_div is
port(iclk_50			:in std_logic;
		irst				:in std_logic;
		ipresc		:in std_logic_vector(2 downto 0);
		oclk		:out std_logic);
		
end component clk_div;

begin

ctrl_cmp: ctrl_mod port map( iclk => s_clk,
				irst => SW(5),
				iDir => SW(1),
				iEN => SW(0),
				odata => GPIO_0(9 downto 6));
clk_div_cmp: clk_div port map(iclk_50 => CLOCK_50,
				irst => SW(5),
				ipresc => SW(9 downto 7),
				oclk => s_clk);
end architecture struct;
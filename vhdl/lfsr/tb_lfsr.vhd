library ieee;
use ieee.std_logic_1164.all;

entity tb_lfsr is
end entity tb_lfsr;

architecture tb of tb_lfsr is

constant clk_period: time := 20 ns; --50Mhz clock
constant rst_period: time := 30 ns;
constant N:		integer := 32;



component lfsr32 
	port (
	 	clk			:in  std_logic;                    
		reset			:in  std_logic;                    
		lfsr_out		:out std_logic_vector (N-1 downto 0)
  	);
end component lfsr32;

signal s_clk		:std_logic := '0';
signal s_rst		:std_logic := '0';
signal s_lfsr_out	:std_logic_vector(N-1 downto 0);

begin 

lfsr_comp: lfsr32 port map(clk=>s_clk, reset=>s_rst, lfsr_out=>s_lfsr_out);

s_clk <= not s_clk after clk_period;
s_rst <= not s_rst after rst_period*100;

end architecture tb;

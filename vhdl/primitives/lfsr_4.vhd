LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY lfsr_4 IS
	PORT(
	    	rand_num	:out std_logic_vector(3 downto 0);
	    	rst		:in std_logic;
		clk 		:in std_logic 
	    
	    );
END ENTITY lfsr_4;

ARCHITECTURE behav OF lfsr_4 IS

	signal s_count :std_logic_vector(3 downto 0);
	signal feedback :std_logic;

	BEGIN
	main_proc:PROCESS(clk,rst)
		BEGIN
			if(rst = '1') then
				s_count <= (others => '0');
			elsif(rising_edge(clk)) then
				s_count <= s_count & feedback;
			end if;
	end process main_proc;
	
	feedback <= not(s_count(3) xor s_count(2));
	rand_num <= s_count;	

END ARCHITECTURE behav;

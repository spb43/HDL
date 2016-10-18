----------------------------------------------------------------------------------
-- Company: University  
-- Engineer: student
-- Module Name: comparator - Behavioral
-- Project Name: comparator
-- Target Devices: zybo
-- Tool Versions: vivado_2015

-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator is
    --generic(bus_width   :integer := 2);
    Port ( i_val1 : in STD_LOGIC_VECTOR (1 downto 0);
           i_val2 : in STD_LOGIC_VECTOR (1 downto 0);
           o_VAL1_eq_VAL2 : out STD_LOGIC;
           o_VAL1_morethen_VAL2 : out STD_LOGIC;
           o_VAL1_lessthen_VAL2 : out STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

begin

    o_VAL1_eq_VAL2 <= '1' WHEN i_val1 = i_val2 ELSE '0';
    o_VAL1_morethen_VAL2 <= '1' WHEN i_val1 > i_val2 ELSE '0';
    o_VAL1_lessthen_VAL2 <= '1' WHEN i_val1 < i_val2 ELSE '0';


end Behavioral;

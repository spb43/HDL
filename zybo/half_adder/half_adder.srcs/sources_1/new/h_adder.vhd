----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- 
-- Create Date: 12.10.2016 17:29:20
-- Module Name: h_adder - Behavioral
-- Project Name:adder 
-- Target Devices: Zybo
-- Tool Versions: Vivado 2015
-- Description: test of zybo board

-- Revision 0.01 - File Created

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity h_adder is
    Port ( i_a : in STD_LOGIC;
           i_b : in STD_LOGIC;
           o_carry :out STD_LOGIC;
           o_sum : out STD_LOGIC);
end h_adder;

architecture Behavioral of h_adder is

begin

    o_sum <= i_a xor i_b;
    o_carry <= i_a and i_b;

end Behavioral;

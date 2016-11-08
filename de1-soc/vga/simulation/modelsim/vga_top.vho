-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "11/08/2016 02:28:18"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_top IS
    PORT (
	VGA_HS : OUT std_logic;
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 1);
	VGA_VS : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_R : OUT std_logic_vector(7 DOWNTO 0)
	);
END vga_top;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[0]~q\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[1]~q\ : std_logic;
SIGNAL \inst|Add0~2\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[2]~q\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[3]~q\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[4]~q\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[5]~q\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[6]~q\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[8]~q\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[9]~q\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[10]~q\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|main_process:h_cnt[7]~q\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|main_process~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|main_process~0_combout\ : std_logic;
SIGNAL \inst|main_process~2_combout\ : std_logic;
SIGNAL \inst|H_sync~q\ : std_logic;
SIGNAL \inst|Add1~5_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[0]~q\ : std_logic;
SIGNAL \inst|Add1~6\ : std_logic;
SIGNAL \inst|Add1~1_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[1]~q\ : std_logic;
SIGNAL \inst|Add1~2\ : std_logic;
SIGNAL \inst|Add1~33_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[2]~q\ : std_logic;
SIGNAL \inst|Add1~34\ : std_logic;
SIGNAL \inst|Add1~41_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[3]~q\ : std_logic;
SIGNAL \inst|Add1~42\ : std_logic;
SIGNAL \inst|Add1~13_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[4]~q\ : std_logic;
SIGNAL \inst|Add1~14\ : std_logic;
SIGNAL \inst|Add1~9_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[5]~q\ : std_logic;
SIGNAL \inst|Add1~10\ : std_logic;
SIGNAL \inst|Add1~17_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[6]~q\ : std_logic;
SIGNAL \inst|Add1~18\ : std_logic;
SIGNAL \inst|Add1~21_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[7]~q\ : std_logic;
SIGNAL \inst|Add1~22\ : std_logic;
SIGNAL \inst|Add1~25_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[8]~q\ : std_logic;
SIGNAL \inst|Add1~26\ : std_logic;
SIGNAL \inst|Add1~38\ : std_logic;
SIGNAL \inst|Add1~29_sumout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[10]~q\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|v_cnt~0_combout\ : std_logic;
SIGNAL \inst|main_process:v_cnt[9]~q\ : std_logic;
SIGNAL \inst|Add1~37_sumout\ : std_logic;
SIGNAL \inst|main_process~4_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|v_cnt~3_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|main_process~3_combout\ : std_logic;
SIGNAL \inst|v_cnt~1_combout\ : std_logic;
SIGNAL \inst|v_cnt~2_combout\ : std_logic;
SIGNAL \inst|main_process~5_combout\ : std_logic;
SIGNAL \inst|V_sync~q\ : std_logic;
SIGNAL \inst|Equal1~6_combout\ : std_logic;
SIGNAL \inst|Equal1~7_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal1~5_combout\ : std_logic;
SIGNAL \inst|v_cnt~4_combout\ : std_logic;
SIGNAL \inst|Equal1~4_combout\ : std_logic;
SIGNAL \inst|main_process~6_combout\ : std_logic;
SIGNAL \inst1|pll_vga_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll_vga_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|G\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[7]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[9]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[10]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[6]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[8]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[3]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[4]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[5]~q\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_v_cnt~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_main_process~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_v_cnt~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_v_cnt~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_v_cnt~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_v_cnt~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_main_process~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_main_process~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_main_process~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[0]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[2]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:h_cnt[1]~q\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[6]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[7]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[8]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[2]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[3]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[4]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[9]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[10]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[5]~q\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[0]~q\ : std_logic;
SIGNAL \inst|ALT_INV_main_process:v_cnt[1]~q\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~37_sumout\ : std_logic;

BEGIN

VGA_HS <= ww_VGA_HS;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
VGA_VS <= ww_VGA_VS;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_CLK <= ww_VGA_CLK;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
VGA_R <= ww_VGA_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);

\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\inst|ALT_INV_Add0~33_sumout\ <= NOT \inst|Add0~33_sumout\;
\inst|ALT_INV_Add0~29_sumout\ <= NOT \inst|Add0~29_sumout\;
\inst|ALT_INV_Add0~25_sumout\ <= NOT \inst|Add0~25_sumout\;
\inst|ALT_INV_Add0~21_sumout\ <= NOT \inst|Add0~21_sumout\;
\inst|ALT_INV_Add0~17_sumout\ <= NOT \inst|Add0~17_sumout\;
\inst|ALT_INV_Add0~13_sumout\ <= NOT \inst|Add0~13_sumout\;
\inst|ALT_INV_Add0~9_sumout\ <= NOT \inst|Add0~9_sumout\;
\inst|ALT_INV_Add0~5_sumout\ <= NOT \inst|Add0~5_sumout\;
\inst|ALT_INV_main_process:h_cnt[7]~q\ <= NOT \inst|main_process:h_cnt[7]~q\;
\inst|ALT_INV_main_process:h_cnt[9]~q\ <= NOT \inst|main_process:h_cnt[9]~q\;
\inst|ALT_INV_main_process:h_cnt[10]~q\ <= NOT \inst|main_process:h_cnt[10]~q\;
\inst|ALT_INV_main_process:h_cnt[6]~q\ <= NOT \inst|main_process:h_cnt[6]~q\;
\inst|ALT_INV_main_process:h_cnt[8]~q\ <= NOT \inst|main_process:h_cnt[8]~q\;
\inst|ALT_INV_main_process:h_cnt[3]~q\ <= NOT \inst|main_process:h_cnt[3]~q\;
\inst|ALT_INV_main_process:h_cnt[4]~q\ <= NOT \inst|main_process:h_cnt[4]~q\;
\inst|ALT_INV_main_process:h_cnt[5]~q\ <= NOT \inst|main_process:h_cnt[5]~q\;
\inst|ALT_INV_Add0~1_sumout\ <= NOT \inst|Add0~1_sumout\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\inst|ALT_INV_Equal0~5_combout\ <= NOT \inst|Equal0~5_combout\;
\inst|ALT_INV_Equal0~4_combout\ <= NOT \inst|Equal0~4_combout\;
\inst|ALT_INV_Equal0~3_combout\ <= NOT \inst|Equal0~3_combout\;
\inst|ALT_INV_Equal1~7_combout\ <= NOT \inst|Equal1~7_combout\;
\inst|ALT_INV_Equal1~6_combout\ <= NOT \inst|Equal1~6_combout\;
\inst|ALT_INV_Equal1~5_combout\ <= NOT \inst|Equal1~5_combout\;
\inst|ALT_INV_Equal1~4_combout\ <= NOT \inst|Equal1~4_combout\;
\inst|ALT_INV_v_cnt~4_combout\ <= NOT \inst|v_cnt~4_combout\;
\inst|ALT_INV_main_process~4_combout\ <= NOT \inst|main_process~4_combout\;
\inst|ALT_INV_Equal1~3_combout\ <= NOT \inst|Equal1~3_combout\;
\inst|ALT_INV_Equal1~2_combout\ <= NOT \inst|Equal1~2_combout\;
\inst|ALT_INV_Equal1~1_combout\ <= NOT \inst|Equal1~1_combout\;
\inst|ALT_INV_Equal1~0_combout\ <= NOT \inst|Equal1~0_combout\;
\inst|ALT_INV_v_cnt~3_combout\ <= NOT \inst|v_cnt~3_combout\;
\inst|ALT_INV_v_cnt~2_combout\ <= NOT \inst|v_cnt~2_combout\;
\inst|ALT_INV_v_cnt~1_combout\ <= NOT \inst|v_cnt~1_combout\;
\inst|ALT_INV_v_cnt~0_combout\ <= NOT \inst|v_cnt~0_combout\;
\inst|ALT_INV_LessThan1~1_combout\ <= NOT \inst|LessThan1~1_combout\;
\inst|ALT_INV_LessThan1~0_combout\ <= NOT \inst|LessThan1~0_combout\;
\inst|ALT_INV_main_process~3_combout\ <= NOT \inst|main_process~3_combout\;
\inst|ALT_INV_Equal0~2_combout\ <= NOT \inst|Equal0~2_combout\;
\inst|ALT_INV_main_process~1_combout\ <= NOT \inst|main_process~1_combout\;
\inst|ALT_INV_LessThan0~2_combout\ <= NOT \inst|LessThan0~2_combout\;
\inst|ALT_INV_main_process~0_combout\ <= NOT \inst|main_process~0_combout\;
\inst|ALT_INV_Equal0~1_combout\ <= NOT \inst|Equal0~1_combout\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst|ALT_INV_LessThan0~1_combout\ <= NOT \inst|LessThan0~1_combout\;
\inst|ALT_INV_LessThan0~0_combout\ <= NOT \inst|LessThan0~0_combout\;
\inst|ALT_INV_main_process:h_cnt[0]~q\ <= NOT \inst|main_process:h_cnt[0]~q\;
\inst|ALT_INV_main_process:h_cnt[2]~q\ <= NOT \inst|main_process:h_cnt[2]~q\;
\inst|ALT_INV_main_process:h_cnt[1]~q\ <= NOT \inst|main_process:h_cnt[1]~q\;
\inst|ALT_INV_Add1~41_sumout\ <= NOT \inst|Add1~41_sumout\;
\inst|ALT_INV_Add1~37_sumout\ <= NOT \inst|Add1~37_sumout\;
\inst|ALT_INV_Add1~33_sumout\ <= NOT \inst|Add1~33_sumout\;
\inst|ALT_INV_Add1~29_sumout\ <= NOT \inst|Add1~29_sumout\;
\inst|ALT_INV_Add1~25_sumout\ <= NOT \inst|Add1~25_sumout\;
\inst|ALT_INV_Add1~21_sumout\ <= NOT \inst|Add1~21_sumout\;
\inst|ALT_INV_Add1~17_sumout\ <= NOT \inst|Add1~17_sumout\;
\inst|ALT_INV_Add1~13_sumout\ <= NOT \inst|Add1~13_sumout\;
\inst|ALT_INV_Add1~9_sumout\ <= NOT \inst|Add1~9_sumout\;
\inst|ALT_INV_main_process:v_cnt[6]~q\ <= NOT \inst|main_process:v_cnt[6]~q\;
\inst|ALT_INV_main_process:v_cnt[7]~q\ <= NOT \inst|main_process:v_cnt[7]~q\;
\inst|ALT_INV_main_process:v_cnt[8]~q\ <= NOT \inst|main_process:v_cnt[8]~q\;
\inst|ALT_INV_main_process:v_cnt[2]~q\ <= NOT \inst|main_process:v_cnt[2]~q\;
\inst|ALT_INV_main_process:v_cnt[3]~q\ <= NOT \inst|main_process:v_cnt[3]~q\;
\inst|ALT_INV_main_process:v_cnt[4]~q\ <= NOT \inst|main_process:v_cnt[4]~q\;
\inst|ALT_INV_main_process:v_cnt[9]~q\ <= NOT \inst|main_process:v_cnt[9]~q\;
\inst|ALT_INV_main_process:v_cnt[10]~q\ <= NOT \inst|main_process:v_cnt[10]~q\;
\inst|ALT_INV_main_process:v_cnt[5]~q\ <= NOT \inst|main_process:v_cnt[5]~q\;
\inst|ALT_INV_Add1~5_sumout\ <= NOT \inst|Add1~5_sumout\;
\inst|ALT_INV_Add1~1_sumout\ <= NOT \inst|Add1~1_sumout\;
\inst|ALT_INV_main_process:v_cnt[0]~q\ <= NOT \inst|main_process:v_cnt[0]~q\;
\inst|ALT_INV_main_process:v_cnt[1]~q\ <= NOT \inst|main_process:v_cnt[1]~q\;
\inst|ALT_INV_Add0~41_sumout\ <= NOT \inst|Add0~41_sumout\;
\inst|ALT_INV_Add0~37_sumout\ <= NOT \inst|Add0~37_sumout\;

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|H_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|V_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X6_Y81_N19
\VGA_BLANK_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X28_Y81_N36
\VGA_SYNC_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(7),
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(6),
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(5),
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(4),
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(3),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(2),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G\(7),
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G\(6),
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G\(5),
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G\(4),
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G\(3),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G\(2),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R\(7),
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R\(6),
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R\(5),
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R\(4),
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R\(3),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R\(2),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "gclk_far",
	nreset_invert => "true",
	output_clock_frequency => "540.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 10000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 20,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "fb_1",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "600 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 27,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 27,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 3,
	pll_m_cnt_prst => 6,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 3,
	pll_n_cnt_lo_div => 2,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \inst1|pll_vga_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \SW[1]~input_o\,
	refclkin => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \inst1|pll_vga_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 3,
	dprio0_cnt_lo_div => 2,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "108.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \inst1|pll_vga_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G6
\inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire\(0),
	outclk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: MLABCELL_X28_Y80_N0
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst|main_process:h_cnt[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~14\ = CARRY(( \inst|main_process:h_cnt[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[0]~q\,
	cin => GND,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: FF_X28_Y80_N2
\inst|main_process:h_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~13_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[0]~q\);

-- Location: MLABCELL_X28_Y80_N3
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \inst|main_process:h_cnt[1]~q\ ) + ( GND ) + ( \inst|Add0~14\ ))
-- \inst|Add0~2\ = CARRY(( \inst|main_process:h_cnt[1]~q\ ) + ( GND ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[1]~q\,
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~1_sumout\,
	cout => \inst|Add0~2\);

-- Location: FF_X28_Y80_N5
\inst|main_process:h_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~1_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[1]~q\);

-- Location: MLABCELL_X28_Y80_N6
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|main_process:h_cnt[2]~q\ ) + ( GND ) + ( \inst|Add0~2\ ))
-- \inst|Add0~10\ = CARRY(( \inst|main_process:h_cnt[2]~q\ ) + ( GND ) + ( \inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[2]~q\,
	cin => \inst|Add0~2\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: FF_X28_Y80_N8
\inst|main_process:h_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~9_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[2]~q\);

-- Location: MLABCELL_X28_Y80_N9
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst|main_process:h_cnt[3]~q\ ) + ( GND ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( \inst|main_process:h_cnt[3]~q\ ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[3]~q\,
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: FF_X28_Y80_N10
\inst|main_process:h_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~5_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[3]~q\);

-- Location: MLABCELL_X28_Y80_N12
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \inst|main_process:h_cnt[4]~q\ ) + ( GND ) + ( \inst|Add0~6\ ))
-- \inst|Add0~30\ = CARRY(( \inst|main_process:h_cnt[4]~q\ ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[4]~q\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: FF_X28_Y80_N14
\inst|main_process:h_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~29_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[4]~q\);

-- Location: MLABCELL_X28_Y80_N15
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst|main_process:h_cnt[5]~q\ ) + ( GND ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( \inst|main_process:h_cnt[5]~q\ ) + ( GND ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[5]~q\,
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: FF_X28_Y80_N16
\inst|main_process:h_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~25_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[5]~q\);

-- Location: MLABCELL_X28_Y80_N18
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst|main_process:h_cnt[6]~q\ ) + ( GND ) + ( \inst|Add0~26\ ))
-- \inst|Add0~22\ = CARRY(( \inst|main_process:h_cnt[6]~q\ ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[6]~q\,
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: FF_X28_Y80_N20
\inst|main_process:h_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~21_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[6]~q\);

-- Location: MLABCELL_X28_Y80_N21
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|main_process:h_cnt[7]~q\ ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst|main_process:h_cnt[7]~q\ ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[7]~q\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: MLABCELL_X28_Y80_N24
\inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~41_sumout\ = SUM(( \inst|main_process:h_cnt[8]~q\ ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~42\ = CARRY(( \inst|main_process:h_cnt[8]~q\ ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[8]~q\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~41_sumout\,
	cout => \inst|Add0~42\);

-- Location: FF_X28_Y80_N26
\inst|main_process:h_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~41_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[8]~q\);

-- Location: MLABCELL_X28_Y80_N27
\inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~37_sumout\ = SUM(( \inst|main_process:h_cnt[9]~q\ ) + ( GND ) + ( \inst|Add0~42\ ))
-- \inst|Add0~38\ = CARRY(( \inst|main_process:h_cnt[9]~q\ ) + ( GND ) + ( \inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[9]~q\,
	cin => \inst|Add0~42\,
	sumout => \inst|Add0~37_sumout\,
	cout => \inst|Add0~38\);

-- Location: FF_X28_Y80_N29
\inst|main_process:h_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~37_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[9]~q\);

-- Location: MLABCELL_X28_Y80_N30
\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( \inst|main_process:h_cnt[10]~q\ ) + ( GND ) + ( \inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:h_cnt[10]~q\,
	cin => \inst|Add0~38\,
	sumout => \inst|Add0~33_sumout\);

-- Location: FF_X28_Y80_N32
\inst|main_process:h_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~33_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[10]~q\);

-- Location: MLABCELL_X28_Y80_N48
\inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ( \inst|main_process:h_cnt[10]~q\ & ( (\inst|main_process:h_cnt[9]~q\ & ((\inst|main_process:h_cnt[7]~q\) # (\inst|main_process:h_cnt[8]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_main_process:h_cnt[8]~q\,
	datac => \inst|ALT_INV_main_process:h_cnt[9]~q\,
	datad => \inst|ALT_INV_main_process:h_cnt[7]~q\,
	dataf => \inst|ALT_INV_main_process:h_cnt[10]~q\,
	combout => \inst|LessThan0~1_combout\);

-- Location: MLABCELL_X28_Y80_N51
\inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ( \inst|main_process:h_cnt[4]~q\ & ( (!\inst|main_process:h_cnt[8]~q\ & (!\inst|main_process:h_cnt[5]~q\ & (!\inst|main_process:h_cnt[6]~q\ & !\inst|main_process:h_cnt[3]~q\))) ) ) # ( !\inst|main_process:h_cnt[4]~q\ & ( 
-- (!\inst|main_process:h_cnt[8]~q\ & (!\inst|main_process:h_cnt[5]~q\ & !\inst|main_process:h_cnt[6]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_main_process:h_cnt[8]~q\,
	datab => \inst|ALT_INV_main_process:h_cnt[5]~q\,
	datac => \inst|ALT_INV_main_process:h_cnt[6]~q\,
	datad => \inst|ALT_INV_main_process:h_cnt[3]~q\,
	dataf => \inst|ALT_INV_main_process:h_cnt[4]~q\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LABCELL_X29_Y80_N45
\inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|LessThan0~1_combout\) # (\inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_LessThan0~1_combout\,
	datad => \inst|ALT_INV_LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: FF_X28_Y80_N23
\inst|main_process:h_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add0~17_sumout\,
	sclr => \inst|ALT_INV_LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:h_cnt[7]~q\);

-- Location: LABCELL_X29_Y80_N3
\inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = ( \inst|Add0~21_sumout\ & ( (\inst|LessThan0~1_combout\ & !\inst|LessThan0~0_combout\) ) ) # ( !\inst|Add0~21_sumout\ & ( (!\inst|Add0~17_sumout\) # ((\inst|LessThan0~1_combout\ & !\inst|LessThan0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101010101011111010101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~17_sumout\,
	datac => \inst|ALT_INV_LessThan0~1_combout\,
	datad => \inst|ALT_INV_LessThan0~0_combout\,
	dataf => \inst|ALT_INV_Add0~21_sumout\,
	combout => \inst|Equal0~1_combout\);

-- Location: MLABCELL_X28_Y80_N54
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( \inst|Add0~5_sumout\ & ( (!\inst|LessThan0~0_combout\ & \inst|LessThan0~1_combout\) ) ) # ( !\inst|Add0~5_sumout\ & ( (!\inst|LessThan0~0_combout\ & (((!\inst|Add0~9_sumout\ & !\inst|Add0~13_sumout\)) # 
-- (\inst|LessThan0~1_combout\))) # (\inst|LessThan0~0_combout\ & (!\inst|Add0~9_sumout\ & (!\inst|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011101010110000001110101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~0_combout\,
	datab => \inst|ALT_INV_Add0~9_sumout\,
	datac => \inst|ALT_INV_Add0~13_sumout\,
	datad => \inst|ALT_INV_LessThan0~1_combout\,
	dataf => \inst|ALT_INV_Add0~5_sumout\,
	combout => \inst|Equal0~0_combout\);

-- Location: LABCELL_X29_Y80_N9
\inst|main_process~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|main_process~1_combout\ = ( \inst|Add0~21_sumout\ & ( (\inst|LessThan0~2_combout\ & ((\inst|Add0~17_sumout\) # (\inst|Add0~33_sumout\))) ) ) # ( !\inst|Add0~21_sumout\ & ( (\inst|LessThan0~2_combout\ & (((\inst|Add0~25_sumout\ & 
-- \inst|Add0~17_sumout\)) # (\inst|Add0~33_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000111000001010000011100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~33_sumout\,
	datab => \inst|ALT_INV_Add0~25_sumout\,
	datac => \inst|ALT_INV_LessThan0~2_combout\,
	datad => \inst|ALT_INV_Add0~17_sumout\,
	dataf => \inst|ALT_INV_Add0~21_sumout\,
	combout => \inst|main_process~1_combout\);

-- Location: MLABCELL_X28_Y80_N57
\inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = ( \inst|Add0~37_sumout\ & ( (!\inst|LessThan0~0_combout\ & \inst|LessThan0~1_combout\) ) ) # ( !\inst|Add0~37_sumout\ & ( (!\inst|Add0~41_sumout\) # ((!\inst|LessThan0~0_combout\ & \inst|LessThan0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111010111100001111101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~0_combout\,
	datac => \inst|ALT_INV_Add0~41_sumout\,
	datad => \inst|ALT_INV_LessThan0~1_combout\,
	dataf => \inst|ALT_INV_Add0~37_sumout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LABCELL_X29_Y80_N6
\inst|main_process~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|main_process~0_combout\ = ( \inst|LessThan0~1_combout\ & ( (\inst|Add0~25_sumout\ & (\inst|Add0~29_sumout\ & \inst|LessThan0~0_combout\)) ) ) # ( !\inst|LessThan0~1_combout\ & ( (\inst|Add0~25_sumout\ & \inst|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Add0~25_sumout\,
	datac => \inst|ALT_INV_Add0~29_sumout\,
	datad => \inst|ALT_INV_LessThan0~0_combout\,
	dataf => \inst|ALT_INV_LessThan0~1_combout\,
	combout => \inst|main_process~0_combout\);

-- Location: LABCELL_X29_Y80_N30
\inst|main_process~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|main_process~2_combout\ = ( \inst|Equal0~2_combout\ & ( \inst|main_process~0_combout\ & ( ((\inst|Equal0~1_combout\ & (!\inst|Add0~1_sumout\ & \inst|Equal0~0_combout\))) # (\inst|main_process~1_combout\) ) ) ) # ( !\inst|Equal0~2_combout\ & ( 
-- \inst|main_process~0_combout\ ) ) # ( \inst|Equal0~2_combout\ & ( !\inst|main_process~0_combout\ & ( (\inst|main_process~1_combout\) # (\inst|Equal0~1_combout\) ) ) ) # ( !\inst|Equal0~2_combout\ & ( !\inst|main_process~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101011111111111111111111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal0~1_combout\,
	datab => \inst|ALT_INV_Add0~1_sumout\,
	datac => \inst|ALT_INV_Equal0~0_combout\,
	datad => \inst|ALT_INV_main_process~1_combout\,
	datae => \inst|ALT_INV_Equal0~2_combout\,
	dataf => \inst|ALT_INV_main_process~0_combout\,
	combout => \inst|main_process~2_combout\);

-- Location: FF_X29_Y80_N31
\inst|H_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|main_process~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|H_sync~q\);

-- Location: LABCELL_X30_Y80_N0
\inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~5_sumout\ = SUM(( \inst|main_process:v_cnt[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \inst|Add1~6\ = CARRY(( \inst|main_process:v_cnt[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:v_cnt[0]~q\,
	cin => GND,
	sumout => \inst|Add1~5_sumout\,
	cout => \inst|Add1~6\);

-- Location: FF_X30_Y80_N2
\inst|main_process:v_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~5_sumout\,
	asdata => \inst|main_process:v_cnt[0]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[0]~q\);

-- Location: LABCELL_X30_Y80_N3
\inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~1_sumout\ = SUM(( \inst|main_process:v_cnt[1]~q\ ) + ( GND ) + ( \inst|Add1~6\ ))
-- \inst|Add1~2\ = CARRY(( \inst|main_process:v_cnt[1]~q\ ) + ( GND ) + ( \inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:v_cnt[1]~q\,
	cin => \inst|Add1~6\,
	sumout => \inst|Add1~1_sumout\,
	cout => \inst|Add1~2\);

-- Location: FF_X30_Y80_N5
\inst|main_process:v_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~1_sumout\,
	asdata => \inst|main_process:v_cnt[1]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[1]~q\);

-- Location: LABCELL_X30_Y80_N6
\inst|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~33_sumout\ = SUM(( \inst|main_process:v_cnt[2]~q\ ) + ( GND ) + ( \inst|Add1~2\ ))
-- \inst|Add1~34\ = CARRY(( \inst|main_process:v_cnt[2]~q\ ) + ( GND ) + ( \inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_main_process:v_cnt[2]~q\,
	cin => \inst|Add1~2\,
	sumout => \inst|Add1~33_sumout\,
	cout => \inst|Add1~34\);

-- Location: FF_X30_Y80_N8
\inst|main_process:v_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~33_sumout\,
	asdata => \inst|main_process:v_cnt[2]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[2]~q\);

-- Location: LABCELL_X30_Y80_N9
\inst|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~41_sumout\ = SUM(( \inst|main_process:v_cnt[3]~q\ ) + ( GND ) + ( \inst|Add1~34\ ))
-- \inst|Add1~42\ = CARRY(( \inst|main_process:v_cnt[3]~q\ ) + ( GND ) + ( \inst|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_main_process:v_cnt[3]~q\,
	cin => \inst|Add1~34\,
	sumout => \inst|Add1~41_sumout\,
	cout => \inst|Add1~42\);

-- Location: FF_X30_Y80_N11
\inst|main_process:v_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~41_sumout\,
	asdata => \inst|main_process:v_cnt[3]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[3]~q\);

-- Location: LABCELL_X30_Y80_N12
\inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~13_sumout\ = SUM(( \inst|main_process:v_cnt[4]~q\ ) + ( GND ) + ( \inst|Add1~42\ ))
-- \inst|Add1~14\ = CARRY(( \inst|main_process:v_cnt[4]~q\ ) + ( GND ) + ( \inst|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:v_cnt[4]~q\,
	cin => \inst|Add1~42\,
	sumout => \inst|Add1~13_sumout\,
	cout => \inst|Add1~14\);

-- Location: FF_X30_Y80_N14
\inst|main_process:v_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~13_sumout\,
	asdata => \inst|main_process:v_cnt[4]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[4]~q\);

-- Location: LABCELL_X30_Y80_N15
\inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~9_sumout\ = SUM(( \inst|main_process:v_cnt[5]~q\ ) + ( GND ) + ( \inst|Add1~14\ ))
-- \inst|Add1~10\ = CARRY(( \inst|main_process:v_cnt[5]~q\ ) + ( GND ) + ( \inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_main_process:v_cnt[5]~q\,
	cin => \inst|Add1~14\,
	sumout => \inst|Add1~9_sumout\,
	cout => \inst|Add1~10\);

-- Location: FF_X30_Y80_N17
\inst|main_process:v_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~9_sumout\,
	asdata => \inst|main_process:v_cnt[5]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[5]~q\);

-- Location: LABCELL_X30_Y80_N18
\inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~17_sumout\ = SUM(( \inst|main_process:v_cnt[6]~q\ ) + ( GND ) + ( \inst|Add1~10\ ))
-- \inst|Add1~18\ = CARRY(( \inst|main_process:v_cnt[6]~q\ ) + ( GND ) + ( \inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_main_process:v_cnt[6]~q\,
	cin => \inst|Add1~10\,
	sumout => \inst|Add1~17_sumout\,
	cout => \inst|Add1~18\);

-- Location: FF_X30_Y80_N20
\inst|main_process:v_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~17_sumout\,
	asdata => \inst|main_process:v_cnt[6]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[6]~q\);

-- Location: LABCELL_X30_Y80_N21
\inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~21_sumout\ = SUM(( \inst|main_process:v_cnt[7]~q\ ) + ( GND ) + ( \inst|Add1~18\ ))
-- \inst|Add1~22\ = CARRY(( \inst|main_process:v_cnt[7]~q\ ) + ( GND ) + ( \inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:v_cnt[7]~q\,
	cin => \inst|Add1~18\,
	sumout => \inst|Add1~21_sumout\,
	cout => \inst|Add1~22\);

-- Location: FF_X30_Y80_N23
\inst|main_process:v_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~21_sumout\,
	asdata => \inst|main_process:v_cnt[7]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[7]~q\);

-- Location: LABCELL_X30_Y80_N24
\inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~25_sumout\ = SUM(( \inst|main_process:v_cnt[8]~q\ ) + ( GND ) + ( \inst|Add1~22\ ))
-- \inst|Add1~26\ = CARRY(( \inst|main_process:v_cnt[8]~q\ ) + ( GND ) + ( \inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_main_process:v_cnt[8]~q\,
	cin => \inst|Add1~22\,
	sumout => \inst|Add1~25_sumout\,
	cout => \inst|Add1~26\);

-- Location: FF_X30_Y80_N26
\inst|main_process:v_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~25_sumout\,
	asdata => \inst|main_process:v_cnt[8]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[8]~q\);

-- Location: LABCELL_X30_Y80_N27
\inst|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~37_sumout\ = SUM(( \inst|main_process:v_cnt[9]~q\ ) + ( GND ) + ( \inst|Add1~26\ ))
-- \inst|Add1~38\ = CARRY(( \inst|main_process:v_cnt[9]~q\ ) + ( GND ) + ( \inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:v_cnt[9]~q\,
	cin => \inst|Add1~26\,
	sumout => \inst|Add1~37_sumout\,
	cout => \inst|Add1~38\);

-- Location: LABCELL_X30_Y80_N30
\inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~29_sumout\ = SUM(( \inst|main_process:v_cnt[10]~q\ ) + ( GND ) + ( \inst|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_main_process:v_cnt[10]~q\,
	cin => \inst|Add1~38\,
	sumout => \inst|Add1~29_sumout\);

-- Location: FF_X30_Y80_N32
\inst|main_process:v_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~29_sumout\,
	asdata => \inst|main_process:v_cnt[10]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[10]~q\);

-- Location: LABCELL_X30_Y80_N36
\inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = ( !\inst|main_process:v_cnt[9]~q\ & ( \inst|main_process:v_cnt[2]~q\ & ( (!\inst|main_process:v_cnt[5]~q\) # ((!\inst|main_process:v_cnt[4]~q\ & !\inst|main_process:v_cnt[3]~q\)) ) ) ) # ( !\inst|main_process:v_cnt[9]~q\ & ( 
-- !\inst|main_process:v_cnt[2]~q\ & ( (!\inst|main_process:v_cnt[5]~q\) # ((!\inst|main_process:v_cnt[4]~q\ & ((!\inst|main_process:v_cnt[3]~q\) # (!\inst|main_process:v_cnt[1]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101000000000000000000011111111100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_main_process:v_cnt[4]~q\,
	datab => \inst|ALT_INV_main_process:v_cnt[3]~q\,
	datac => \inst|ALT_INV_main_process:v_cnt[1]~q\,
	datad => \inst|ALT_INV_main_process:v_cnt[5]~q\,
	datae => \inst|ALT_INV_main_process:v_cnt[9]~q\,
	dataf => \inst|ALT_INV_main_process:v_cnt[2]~q\,
	combout => \inst|LessThan1~0_combout\);

-- Location: LABCELL_X29_Y80_N48
\inst|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = ( !\inst|main_process:v_cnt[6]~q\ & ( (!\inst|main_process:v_cnt[7]~q\ & !\inst|main_process:v_cnt[8]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_main_process:v_cnt[7]~q\,
	datad => \inst|ALT_INV_main_process:v_cnt[8]~q\,
	dataf => \inst|ALT_INV_main_process:v_cnt[6]~q\,
	combout => \inst|LessThan1~1_combout\);

-- Location: LABCELL_X30_Y80_N51
\inst|v_cnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|v_cnt~0_combout\ = ( \inst|LessThan1~1_combout\ & ( (!\inst|LessThan0~0_combout\ & (\inst|LessThan0~1_combout\ & (\inst|main_process:v_cnt[10]~q\ & !\inst|LessThan1~0_combout\))) ) ) # ( !\inst|LessThan1~1_combout\ & ( (!\inst|LessThan0~0_combout\ & 
-- (\inst|LessThan0~1_combout\ & \inst|main_process:v_cnt[10]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~0_combout\,
	datab => \inst|ALT_INV_LessThan0~1_combout\,
	datac => \inst|ALT_INV_main_process:v_cnt[10]~q\,
	datad => \inst|ALT_INV_LessThan1~0_combout\,
	dataf => \inst|ALT_INV_LessThan1~1_combout\,
	combout => \inst|v_cnt~0_combout\);

-- Location: FF_X30_Y80_N29
\inst|main_process:v_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|Add1~37_sumout\,
	asdata => \inst|main_process:v_cnt[9]~q\,
	sclr => \inst|v_cnt~0_combout\,
	sload => \inst|LessThan0~2_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|main_process:v_cnt[9]~q\);

-- Location: LABCELL_X31_Y80_N24
\inst|main_process~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|main_process~4_combout\ = ( \inst|main_process:v_cnt[9]~q\ & ( \inst|v_cnt~0_combout\ & ( \inst|LessThan0~2_combout\ ) ) ) # ( \inst|main_process:v_cnt[9]~q\ & ( !\inst|v_cnt~0_combout\ & ( ((\inst|Add1~41_sumout\) # (\inst|LessThan0~2_combout\)) # 
-- (\inst|Add1~37_sumout\) ) ) ) # ( !\inst|main_process:v_cnt[9]~q\ & ( !\inst|v_cnt~0_combout\ & ( (!\inst|LessThan0~2_combout\ & (((\inst|Add1~41_sumout\)) # (\inst|Add1~37_sumout\))) # (\inst|LessThan0~2_combout\ & (((\inst|main_process:v_cnt[3]~q\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001111110011010111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~37_sumout\,
	datab => \inst|ALT_INV_main_process:v_cnt[3]~q\,
	datac => \inst|ALT_INV_LessThan0~2_combout\,
	datad => \inst|ALT_INV_Add1~41_sumout\,
	datae => \inst|ALT_INV_main_process:v_cnt[9]~q\,
	dataf => \inst|ALT_INV_v_cnt~0_combout\,
	combout => \inst|main_process~4_combout\);

-- Location: LABCELL_X29_Y80_N24
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( \inst|LessThan1~0_combout\ & ( \inst|LessThan0~0_combout\ & ( (!\inst|main_process:v_cnt[10]~q\ & !\inst|main_process:v_cnt[6]~q\) ) ) ) # ( !\inst|LessThan1~0_combout\ & ( \inst|LessThan0~0_combout\ & ( 
-- (!\inst|main_process:v_cnt[10]~q\ & !\inst|main_process:v_cnt[6]~q\) ) ) ) # ( \inst|LessThan1~0_combout\ & ( !\inst|LessThan0~0_combout\ & ( (!\inst|main_process:v_cnt[10]~q\ & (((!\inst|main_process:v_cnt[6]~q\)) # (\inst|LessThan0~1_combout\))) # 
-- (\inst|main_process:v_cnt[10]~q\ & (\inst|LessThan0~1_combout\ & (\inst|LessThan1~1_combout\))) ) ) ) # ( !\inst|LessThan1~0_combout\ & ( !\inst|LessThan0~0_combout\ & ( (!\inst|main_process:v_cnt[10]~q\ & ((!\inst|main_process:v_cnt[6]~q\) # 
-- (\inst|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010101010110010001110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_main_process:v_cnt[10]~q\,
	datab => \inst|ALT_INV_LessThan0~1_combout\,
	datac => \inst|ALT_INV_LessThan1~1_combout\,
	datad => \inst|ALT_INV_main_process:v_cnt[6]~q\,
	datae => \inst|ALT_INV_LessThan1~0_combout\,
	dataf => \inst|ALT_INV_LessThan0~0_combout\,
	combout => \inst|Equal1~0_combout\);

-- Location: LABCELL_X29_Y80_N54
\inst|v_cnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|v_cnt~3_combout\ = ( \inst|main_process:v_cnt[10]~q\ & ( (!\inst|LessThan0~0_combout\ & (\inst|LessThan0~1_combout\ & (\inst|LessThan1~1_combout\ & \inst|LessThan1~0_combout\))) ) ) # ( !\inst|main_process:v_cnt[10]~q\ & ( 
-- (!\inst|LessThan0~0_combout\ & \inst|LessThan0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~0_combout\,
	datab => \inst|ALT_INV_LessThan0~1_combout\,
	datac => \inst|ALT_INV_LessThan1~1_combout\,
	datad => \inst|ALT_INV_LessThan1~0_combout\,
	dataf => \inst|ALT_INV_main_process:v_cnt[10]~q\,
	combout => \inst|v_cnt~3_combout\);

-- Location: LABCELL_X29_Y80_N57
\inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = ( \inst|main_process:v_cnt[8]~q\ & ( (\inst|LessThan0~1_combout\ & !\inst|LessThan0~0_combout\) ) ) # ( !\inst|main_process:v_cnt[8]~q\ & ( (!\inst|main_process:v_cnt[7]~q\) # ((\inst|LessThan0~1_combout\ & 
-- !\inst|LessThan0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110000111111110011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_LessThan0~1_combout\,
	datac => \inst|ALT_INV_LessThan0~0_combout\,
	datad => \inst|ALT_INV_main_process:v_cnt[7]~q\,
	dataf => \inst|ALT_INV_main_process:v_cnt[8]~q\,
	combout => \inst|Equal1~1_combout\);

-- Location: LABCELL_X29_Y80_N18
\inst|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = ( \inst|Add1~21_sumout\ & ( \inst|Add1~25_sumout\ & ( (\inst|Equal1~0_combout\ & (!\inst|v_cnt~3_combout\ & \inst|Equal1~1_combout\)) ) ) ) # ( !\inst|Add1~21_sumout\ & ( \inst|Add1~25_sumout\ & ( (\inst|Equal1~0_combout\ & 
-- (!\inst|v_cnt~3_combout\ & \inst|Equal1~1_combout\)) ) ) ) # ( \inst|Add1~21_sumout\ & ( !\inst|Add1~25_sumout\ & ( (\inst|Equal1~0_combout\ & (!\inst|v_cnt~3_combout\ & \inst|Equal1~1_combout\)) ) ) ) # ( !\inst|Add1~21_sumout\ & ( !\inst|Add1~25_sumout\ 
-- & ( (\inst|Equal1~0_combout\ & (\inst|Equal1~1_combout\ & ((!\inst|Add1~17_sumout\) # (!\inst|v_cnt~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010100000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Add1~17_sumout\,
	datac => \inst|ALT_INV_v_cnt~3_combout\,
	datad => \inst|ALT_INV_Equal1~1_combout\,
	datae => \inst|ALT_INV_Add1~21_sumout\,
	dataf => \inst|ALT_INV_Add1~25_sumout\,
	combout => \inst|Equal1~2_combout\);

-- Location: LABCELL_X31_Y80_N51
\inst|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = ( \inst|Add1~29_sumout\ & ( (!\inst|v_cnt~0_combout\ & ((!\inst|LessThan0~2_combout\) # (\inst|main_process:v_cnt[2]~q\))) ) ) # ( !\inst|Add1~29_sumout\ & ( (!\inst|v_cnt~0_combout\ & ((!\inst|LessThan0~2_combout\ & 
-- ((\inst|Add1~33_sumout\))) # (\inst|LessThan0~2_combout\ & (\inst|main_process:v_cnt[2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_v_cnt~0_combout\,
	datab => \inst|ALT_INV_LessThan0~2_combout\,
	datac => \inst|ALT_INV_main_process:v_cnt[2]~q\,
	datad => \inst|ALT_INV_Add1~33_sumout\,
	dataf => \inst|ALT_INV_Add1~29_sumout\,
	combout => \inst|Equal1~3_combout\);

-- Location: LABCELL_X29_Y80_N12
\inst|main_process~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|main_process~3_combout\ = ( \inst|LessThan0~1_combout\ & ( \inst|Add1~5_sumout\ & ( (!\inst|main_process:v_cnt[0]~q\ & (!\inst|main_process:v_cnt[1]~q\ & \inst|LessThan0~0_combout\)) ) ) ) # ( !\inst|LessThan0~1_combout\ & ( \inst|Add1~5_sumout\ & ( 
-- (!\inst|main_process:v_cnt[0]~q\ & !\inst|main_process:v_cnt[1]~q\) ) ) ) # ( \inst|LessThan0~1_combout\ & ( !\inst|Add1~5_sumout\ & ( (!\inst|LessThan0~0_combout\ & (((!\inst|Add1~1_sumout\)))) # (\inst|LessThan0~0_combout\ & 
-- (!\inst|main_process:v_cnt[0]~q\ & ((!\inst|main_process:v_cnt[1]~q\)))) ) ) ) # ( !\inst|LessThan0~1_combout\ & ( !\inst|Add1~5_sumout\ & ( (!\inst|main_process:v_cnt[0]~q\ & !\inst|main_process:v_cnt[1]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000110011001010000010100000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_main_process:v_cnt[0]~q\,
	datab => \inst|ALT_INV_Add1~1_sumout\,
	datac => \inst|ALT_INV_main_process:v_cnt[1]~q\,
	datad => \inst|ALT_INV_LessThan0~0_combout\,
	datae => \inst|ALT_INV_LessThan0~1_combout\,
	dataf => \inst|ALT_INV_Add1~5_sumout\,
	combout => \inst|main_process~3_combout\);

-- Location: LABCELL_X29_Y80_N51
\inst|v_cnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|v_cnt~1_combout\ = ( !\inst|v_cnt~0_combout\ & ( (!\inst|LessThan0~2_combout\ & ((\inst|Add1~9_sumout\))) # (\inst|LessThan0~2_combout\ & (\inst|main_process:v_cnt[5]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_main_process:v_cnt[5]~q\,
	datab => \inst|ALT_INV_Add1~9_sumout\,
	datac => \inst|ALT_INV_LessThan0~2_combout\,
	dataf => \inst|ALT_INV_v_cnt~0_combout\,
	combout => \inst|v_cnt~1_combout\);

-- Location: LABCELL_X31_Y80_N48
\inst|v_cnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|v_cnt~2_combout\ = ( \inst|LessThan0~2_combout\ & ( (!\inst|v_cnt~0_combout\ & \inst|main_process:v_cnt[4]~q\) ) ) # ( !\inst|LessThan0~2_combout\ & ( (!\inst|v_cnt~0_combout\ & \inst|Add1~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_v_cnt~0_combout\,
	datac => \inst|ALT_INV_main_process:v_cnt[4]~q\,
	datad => \inst|ALT_INV_Add1~13_sumout\,
	dataf => \inst|ALT_INV_LessThan0~2_combout\,
	combout => \inst|v_cnt~2_combout\);

-- Location: LABCELL_X31_Y80_N30
\inst|main_process~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|main_process~5_combout\ = ( \inst|v_cnt~1_combout\ & ( \inst|v_cnt~2_combout\ ) ) # ( !\inst|v_cnt~1_combout\ & ( \inst|v_cnt~2_combout\ ) ) # ( \inst|v_cnt~1_combout\ & ( !\inst|v_cnt~2_combout\ ) ) # ( !\inst|v_cnt~1_combout\ & ( 
-- !\inst|v_cnt~2_combout\ & ( ((!\inst|Equal1~2_combout\) # ((\inst|main_process~3_combout\) # (\inst|Equal1~3_combout\))) # (\inst|main_process~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_main_process~4_combout\,
	datab => \inst|ALT_INV_Equal1~2_combout\,
	datac => \inst|ALT_INV_Equal1~3_combout\,
	datad => \inst|ALT_INV_main_process~3_combout\,
	datae => \inst|ALT_INV_v_cnt~1_combout\,
	dataf => \inst|ALT_INV_v_cnt~2_combout\,
	combout => \inst|main_process~5_combout\);

-- Location: FF_X31_Y80_N31
\inst|V_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|main_process~5_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|V_sync~q\);

-- Location: LABCELL_X29_Y80_N36
\inst|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~6_combout\ = ( !\inst|main_process:v_cnt[0]~q\ & ( \inst|Add1~5_sumout\ & ( (\inst|main_process:v_cnt[1]~q\ & ((!\inst|LessThan0~1_combout\) # (\inst|LessThan0~0_combout\))) ) ) ) # ( \inst|main_process:v_cnt[0]~q\ & ( !\inst|Add1~5_sumout\ & 
-- ( (\inst|LessThan0~1_combout\ & (\inst|Add1~1_sumout\ & !\inst|LessThan0~0_combout\)) ) ) ) # ( !\inst|main_process:v_cnt[0]~q\ & ( !\inst|Add1~5_sumout\ & ( (!\inst|LessThan0~1_combout\ & (((\inst|main_process:v_cnt[1]~q\)))) # 
-- (\inst|LessThan0~1_combout\ & ((!\inst|LessThan0~0_combout\ & (\inst|Add1~1_sumout\)) # (\inst|LessThan0~0_combout\ & ((\inst|main_process:v_cnt[1]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001111000100010000000000001010000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~1_combout\,
	datab => \inst|ALT_INV_Add1~1_sumout\,
	datac => \inst|ALT_INV_main_process:v_cnt[1]~q\,
	datad => \inst|ALT_INV_LessThan0~0_combout\,
	datae => \inst|ALT_INV_main_process:v_cnt[0]~q\,
	dataf => \inst|ALT_INV_Add1~5_sumout\,
	combout => \inst|Equal1~6_combout\);

-- Location: LABCELL_X29_Y80_N42
\inst|Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~7_combout\ = ( \inst|Add1~9_sumout\ & ( (!\inst|v_cnt~0_combout\ & (\inst|Equal1~6_combout\ & ((!\inst|LessThan0~2_combout\) # (\inst|main_process:v_cnt[5]~q\)))) ) ) # ( !\inst|Add1~9_sumout\ & ( (\inst|main_process:v_cnt[5]~q\ & 
-- (\inst|LessThan0~2_combout\ & (!\inst|v_cnt~0_combout\ & \inst|Equal1~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000110100000000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_main_process:v_cnt[5]~q\,
	datab => \inst|ALT_INV_LessThan0~2_combout\,
	datac => \inst|ALT_INV_v_cnt~0_combout\,
	datad => \inst|ALT_INV_Equal1~6_combout\,
	dataf => \inst|ALT_INV_Add1~9_sumout\,
	combout => \inst|Equal1~7_combout\);

-- Location: MLABCELL_X28_Y80_N36
\inst|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = ( \inst|Add0~1_sumout\ & ( \inst|LessThan0~0_combout\ & ( (!\inst|Add0~9_sumout\ & (!\inst|Add0~13_sumout\ & !\inst|Add0~5_sumout\)) ) ) ) # ( \inst|Add0~1_sumout\ & ( !\inst|LessThan0~0_combout\ & ( ((!\inst|Add0~9_sumout\ & 
-- (!\inst|Add0~13_sumout\ & !\inst|Add0~5_sumout\))) # (\inst|LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110101010101010100000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~1_combout\,
	datab => \inst|ALT_INV_Add0~9_sumout\,
	datac => \inst|ALT_INV_Add0~13_sumout\,
	datad => \inst|ALT_INV_Add0~5_sumout\,
	datae => \inst|ALT_INV_Add0~1_sumout\,
	dataf => \inst|ALT_INV_LessThan0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: MLABCELL_X28_Y80_N42
\inst|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = ( !\inst|Add0~17_sumout\ & ( \inst|Add0~29_sumout\ & ( (\inst|LessThan0~2_combout\ & (!\inst|Add0~25_sumout\ & (\inst|Equal0~4_combout\ & !\inst|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~2_combout\,
	datab => \inst|ALT_INV_Add0~25_sumout\,
	datac => \inst|ALT_INV_Equal0~4_combout\,
	datad => \inst|ALT_INV_Add0~21_sumout\,
	datae => \inst|ALT_INV_Add0~17_sumout\,
	dataf => \inst|ALT_INV_Add0~29_sumout\,
	combout => \inst|Equal0~5_combout\);

-- Location: LABCELL_X29_Y80_N0
\inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = ( \inst|Add0~37_sumout\ & ( (!\inst|LessThan0~2_combout\ & \inst|Add0~33_sumout\) ) ) # ( !\inst|Add0~37_sumout\ & ( (\inst|Add0~33_sumout\ & ((!\inst|LessThan0~2_combout\) # (!\inst|Add0~41_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_LessThan0~2_combout\,
	datac => \inst|ALT_INV_Add0~33_sumout\,
	datad => \inst|ALT_INV_Add0~41_sumout\,
	dataf => \inst|ALT_INV_Add0~37_sumout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LABCELL_X30_Y80_N42
\inst|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~5_combout\ = ( \inst|Add1~41_sumout\ & ( \inst|LessThan0~2_combout\ & ( (\inst|main_process:v_cnt[9]~q\ & (\inst|main_process:v_cnt[3]~q\ & !\inst|v_cnt~0_combout\)) ) ) ) # ( !\inst|Add1~41_sumout\ & ( \inst|LessThan0~2_combout\ & ( 
-- (\inst|main_process:v_cnt[9]~q\ & (\inst|main_process:v_cnt[3]~q\ & !\inst|v_cnt~0_combout\)) ) ) ) # ( \inst|Add1~41_sumout\ & ( !\inst|LessThan0~2_combout\ & ( (!\inst|v_cnt~0_combout\ & \inst|Add1~37_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_main_process:v_cnt[9]~q\,
	datab => \inst|ALT_INV_main_process:v_cnt[3]~q\,
	datac => \inst|ALT_INV_v_cnt~0_combout\,
	datad => \inst|ALT_INV_Add1~37_sumout\,
	datae => \inst|ALT_INV_Add1~41_sumout\,
	dataf => \inst|ALT_INV_LessThan0~2_combout\,
	combout => \inst|Equal1~5_combout\);

-- Location: LABCELL_X30_Y80_N48
\inst|v_cnt~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|v_cnt~4_combout\ = ( \inst|main_process:v_cnt[2]~q\ & ( ((!\inst|LessThan0~1_combout\) # (\inst|Add1~33_sumout\)) # (\inst|LessThan0~0_combout\) ) ) # ( !\inst|main_process:v_cnt[2]~q\ & ( (!\inst|LessThan0~0_combout\ & (\inst|LessThan0~1_combout\ & 
-- \inst|Add1~33_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~0_combout\,
	datab => \inst|ALT_INV_LessThan0~1_combout\,
	datac => \inst|ALT_INV_Add1~33_sumout\,
	dataf => \inst|ALT_INV_main_process:v_cnt[2]~q\,
	combout => \inst|v_cnt~4_combout\);

-- Location: LABCELL_X30_Y80_N54
\inst|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~4_combout\ = ( \inst|main_process:v_cnt[4]~q\ & ( \inst|Add1~29_sumout\ & ( !\inst|v_cnt~0_combout\ ) ) ) # ( !\inst|main_process:v_cnt[4]~q\ & ( \inst|Add1~29_sumout\ & ( (!\inst|v_cnt~0_combout\ & ((!\inst|LessThan0~2_combout\) # 
-- (\inst|v_cnt~4_combout\))) ) ) ) # ( \inst|main_process:v_cnt[4]~q\ & ( !\inst|Add1~29_sumout\ & ( (!\inst|v_cnt~0_combout\ & (((\inst|v_cnt~4_combout\) # (\inst|Add1~13_sumout\)) # (\inst|LessThan0~2_combout\))) ) ) ) # ( !\inst|main_process:v_cnt[4]~q\ 
-- & ( !\inst|Add1~29_sumout\ & ( (!\inst|v_cnt~0_combout\ & (((!\inst|LessThan0~2_combout\ & \inst|Add1~13_sumout\)) # (\inst|v_cnt~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011110000011100001111000010100000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~2_combout\,
	datab => \inst|ALT_INV_Add1~13_sumout\,
	datac => \inst|ALT_INV_v_cnt~0_combout\,
	datad => \inst|ALT_INV_v_cnt~4_combout\,
	datae => \inst|ALT_INV_main_process:v_cnt[4]~q\,
	dataf => \inst|ALT_INV_Add1~29_sumout\,
	combout => \inst|Equal1~4_combout\);

-- Location: LABCELL_X31_Y80_N0
\inst|main_process~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|main_process~6_combout\ = ( \inst|Equal1~5_combout\ & ( \inst|Equal1~4_combout\ & ( (\inst|Equal0~5_combout\ & \inst|Equal0~3_combout\) ) ) ) # ( !\inst|Equal1~5_combout\ & ( \inst|Equal1~4_combout\ & ( (\inst|Equal0~5_combout\ & 
-- \inst|Equal0~3_combout\) ) ) ) # ( \inst|Equal1~5_combout\ & ( !\inst|Equal1~4_combout\ & ( (!\inst|Equal1~7_combout\ & (((\inst|Equal0~5_combout\ & \inst|Equal0~3_combout\)))) # (\inst|Equal1~7_combout\ & (((\inst|Equal0~5_combout\ & 
-- \inst|Equal0~3_combout\)) # (\inst|Equal1~2_combout\))) ) ) ) # ( !\inst|Equal1~5_combout\ & ( !\inst|Equal1~4_combout\ & ( (\inst|Equal0~5_combout\ & \inst|Equal0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000100010001111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~7_combout\,
	datab => \inst|ALT_INV_Equal1~2_combout\,
	datac => \inst|ALT_INV_Equal0~5_combout\,
	datad => \inst|ALT_INV_Equal0~3_combout\,
	datae => \inst|ALT_INV_Equal1~5_combout\,
	dataf => \inst|ALT_INV_Equal1~4_combout\,
	combout => \inst|main_process~6_combout\);

-- Location: FF_X30_Y80_N34
\inst|B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(7));

-- Location: FF_X28_Y80_N40
\inst|B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(6));

-- Location: FF_X30_Y80_N40
\inst|B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(5));

-- Location: FF_X28_Y80_N34
\inst|B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(4));

-- Location: FF_X31_Y80_N7
\inst|B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(3));

-- Location: FF_X16_Y80_N5
\inst|B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(2));

-- Location: FF_X29_Y80_N41
\inst|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(1));

-- Location: FF_X29_Y80_N16
\inst|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B\(0));

-- Location: FF_X16_Y80_N10
\inst|G[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G\(7));

-- Location: FF_X16_Y80_N43
\inst|G[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G\(6));

-- Location: FF_X16_Y80_N20
\inst|G[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G\(5));

-- Location: FF_X16_Y80_N29
\inst|G[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G\(4));

-- Location: FF_X16_Y80_N31
\inst|G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G\(3));

-- Location: FF_X16_Y80_N38
\inst|G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G\(2));

-- Location: FF_X16_Y80_N16
\inst|G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G\(1));

-- Location: FF_X16_Y80_N50
\inst|G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G\(0));

-- Location: FF_X31_Y80_N17
\inst|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R\(7));

-- Location: FF_X16_Y80_N40
\inst|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R\(6));

-- Location: FF_X16_Y80_N55
\inst|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R\(5));

-- Location: FF_X29_Y80_N22
\inst|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R\(4));

-- Location: FF_X29_Y80_N28
\inst|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R\(3));

-- Location: FF_X29_Y80_N35
\inst|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R\(2));

-- Location: FF_X28_Y80_N46
\inst|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R\(1));

-- Location: FF_X30_Y80_N46
\inst|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll_vga_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|main_process~6_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R\(0));

-- Location: LABCELL_X10_Y13_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;



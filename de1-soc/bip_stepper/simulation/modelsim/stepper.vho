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

-- DATE "11/16/2016 20:11:45"

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

ENTITY 	stepper IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	GPIO_0 : OUT std_logic_vector(35 DOWNTO 0)
	);
END stepper;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[0]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[2]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[3]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[4]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[5]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[6]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[7]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[8]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[9]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[22]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[23]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[24]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[25]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[26]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[27]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[28]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[29]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[30]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[31]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[32]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[33]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[34]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[35]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stepper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_GPIO_0 : std_logic_vector(35 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \clk_div_cmp|Add0~9_sumout\ : std_logic;
SIGNAL \clk_div_cmp|count~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[0]~feeder_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[0]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~10\ : std_logic;
SIGNAL \clk_div_cmp|Add0~25_sumout\ : std_logic;
SIGNAL \clk_div_cmp|Add0~90\ : std_logic;
SIGNAL \clk_div_cmp|Add0~81_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[16]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~82\ : std_logic;
SIGNAL \clk_div_cmp|Add0~49_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[17]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~50\ : std_logic;
SIGNAL \clk_div_cmp|Add0~29_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[18]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~30\ : std_logic;
SIGNAL \clk_div_cmp|Add0~65_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[19]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~66\ : std_logic;
SIGNAL \clk_div_cmp|Add0~77_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[20]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~78\ : std_logic;
SIGNAL \clk_div_cmp|Add0~97_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[21]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~98\ : std_logic;
SIGNAL \clk_div_cmp|Add0~53_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[22]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~54\ : std_logic;
SIGNAL \clk_div_cmp|Add0~57_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[23]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~58\ : std_logic;
SIGNAL \clk_div_cmp|Add0~33_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[24]~q\ : std_logic;
SIGNAL \clk_div_cmp|Equal3~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal9~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal9~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal1~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal1~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal9~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal7~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal7~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal1~4_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal3~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal3~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal3~3_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal1~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal1~3_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal1~5_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal1~6_combout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[5]~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[5]~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[1]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~26\ : std_logic;
SIGNAL \clk_div_cmp|Add0~21_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[2]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~22\ : std_logic;
SIGNAL \clk_div_cmp|Add0~17_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[3]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~18\ : std_logic;
SIGNAL \clk_div_cmp|Add0~13_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[4]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~14\ : std_logic;
SIGNAL \clk_div_cmp|Add0~37_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[5]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~38\ : std_logic;
SIGNAL \clk_div_cmp|Add0~45_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[6]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~46\ : std_logic;
SIGNAL \clk_div_cmp|Add0~93_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[7]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~94\ : std_logic;
SIGNAL \clk_div_cmp|Add0~73_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[8]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~74\ : std_logic;
SIGNAL \clk_div_cmp|Add0~5_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[9]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~6\ : std_logic;
SIGNAL \clk_div_cmp|Add0~85_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[10]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~86\ : std_logic;
SIGNAL \clk_div_cmp|Add0~61_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[11]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~62\ : std_logic;
SIGNAL \clk_div_cmp|Add0~69_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[12]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~70\ : std_logic;
SIGNAL \clk_div_cmp|Add0~1_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[13]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~2\ : std_logic;
SIGNAL \clk_div_cmp|Add0~41_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[14]~q\ : std_logic;
SIGNAL \clk_div_cmp|Add0~42\ : std_logic;
SIGNAL \clk_div_cmp|Add0~89_sumout\ : std_logic;
SIGNAL \clk_div_cmp|cnt_process:count[15]~q\ : std_logic;
SIGNAL \clk_div_cmp|Equal5~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal5~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|Equal5~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|s_count~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|s_count~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|s_count~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|s_count~3_combout\ : std_logic;
SIGNAL \clk_div_cmp|s_count~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ctrl_cmp|state~15_combout\ : std_logic;
SIGNAL \ctrl_cmp|state.st_4~q\ : std_logic;
SIGNAL \ctrl_cmp|state.Idle~q\ : std_logic;
SIGNAL \ctrl_cmp|state~16_combout\ : std_logic;
SIGNAL \ctrl_cmp|state.st_1~q\ : std_logic;
SIGNAL \ctrl_cmp|state~17_combout\ : std_logic;
SIGNAL \ctrl_cmp|state.st_2~q\ : std_logic;
SIGNAL \ctrl_cmp|state~14_combout\ : std_logic;
SIGNAL \ctrl_cmp|state.st_3~q\ : std_logic;
SIGNAL \ctrl_cmp|odata~0_combout\ : std_logic;
SIGNAL \ctrl_cmp|odata~1_combout\ : std_logic;
SIGNAL \ctrl_cmp|odata~2_combout\ : std_logic;
SIGNAL \ctrl_cmp|odata~3_combout\ : std_logic;
SIGNAL \ctrl_cmp|odata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_count~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[5]~0_combout\ : std_logic;
SIGNAL \ctrl_cmp|ALT_INV_state.Idle~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_s_count~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal9~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_s_count~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_s_count~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[0]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ctrl_cmp|ALT_INV_state.st_2~q\ : std_logic;
SIGNAL \ctrl_cmp|ALT_INV_state.st_1~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_s_count~q\ : std_logic;
SIGNAL \ctrl_cmp|ALT_INV_state.st_4~q\ : std_logic;
SIGNAL \ctrl_cmp|ALT_INV_state.st_3~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[21]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[7]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[15]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[10]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[16]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[20]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[8]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[12]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[19]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[11]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[23]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[22]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[17]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[6]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[14]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[5]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[24]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[18]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[1]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[2]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[3]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[4]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[9]~q\ : std_logic;
SIGNAL \clk_div_cmp|ALT_INV_cnt_process:count[13]~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
GPIO_0 <= ww_GPIO_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\clk_div_cmp|ALT_INV_count~0_combout\ <= NOT \clk_div_cmp|count~0_combout\;
\clk_div_cmp|ALT_INV_cnt_process:count[5]~0_combout\ <= NOT \clk_div_cmp|cnt_process:count[5]~0_combout\;
\ctrl_cmp|ALT_INV_state.Idle~q\ <= NOT \ctrl_cmp|state.Idle~q\;
\clk_div_cmp|ALT_INV_s_count~2_combout\ <= NOT \clk_div_cmp|s_count~2_combout\;
\clk_div_cmp|ALT_INV_Equal9~2_combout\ <= NOT \clk_div_cmp|Equal9~2_combout\;
\clk_div_cmp|ALT_INV_Equal9~1_combout\ <= NOT \clk_div_cmp|Equal9~1_combout\;
\clk_div_cmp|ALT_INV_Equal3~3_combout\ <= NOT \clk_div_cmp|Equal3~3_combout\;
\clk_div_cmp|ALT_INV_Equal3~2_combout\ <= NOT \clk_div_cmp|Equal3~2_combout\;
\clk_div_cmp|ALT_INV_Equal3~1_combout\ <= NOT \clk_div_cmp|Equal3~1_combout\;
\clk_div_cmp|ALT_INV_s_count~1_combout\ <= NOT \clk_div_cmp|s_count~1_combout\;
\clk_div_cmp|ALT_INV_Equal5~2_combout\ <= NOT \clk_div_cmp|Equal5~2_combout\;
\clk_div_cmp|ALT_INV_Equal5~1_combout\ <= NOT \clk_div_cmp|Equal5~1_combout\;
\clk_div_cmp|ALT_INV_Equal5~0_combout\ <= NOT \clk_div_cmp|Equal5~0_combout\;
\clk_div_cmp|ALT_INV_Equal1~6_combout\ <= NOT \clk_div_cmp|Equal1~6_combout\;
\clk_div_cmp|ALT_INV_Equal1~5_combout\ <= NOT \clk_div_cmp|Equal1~5_combout\;
\clk_div_cmp|ALT_INV_Equal1~4_combout\ <= NOT \clk_div_cmp|Equal1~4_combout\;
\clk_div_cmp|ALT_INV_Equal1~3_combout\ <= NOT \clk_div_cmp|Equal1~3_combout\;
\clk_div_cmp|ALT_INV_Equal1~2_combout\ <= NOT \clk_div_cmp|Equal1~2_combout\;
\clk_div_cmp|ALT_INV_s_count~0_combout\ <= NOT \clk_div_cmp|s_count~0_combout\;
\clk_div_cmp|ALT_INV_Equal7~1_combout\ <= NOT \clk_div_cmp|Equal7~1_combout\;
\clk_div_cmp|ALT_INV_Equal7~0_combout\ <= NOT \clk_div_cmp|Equal7~0_combout\;
\clk_div_cmp|ALT_INV_Equal9~0_combout\ <= NOT \clk_div_cmp|Equal9~0_combout\;
\clk_div_cmp|ALT_INV_Equal3~0_combout\ <= NOT \clk_div_cmp|Equal3~0_combout\;
\clk_div_cmp|ALT_INV_Equal1~1_combout\ <= NOT \clk_div_cmp|Equal1~1_combout\;
\clk_div_cmp|ALT_INV_cnt_process:count[0]~q\ <= NOT \clk_div_cmp|cnt_process:count[0]~q\;
\clk_div_cmp|ALT_INV_Equal1~0_combout\ <= NOT \clk_div_cmp|Equal1~0_combout\;
\ctrl_cmp|ALT_INV_state.st_2~q\ <= NOT \ctrl_cmp|state.st_2~q\;
\ctrl_cmp|ALT_INV_state.st_1~q\ <= NOT \ctrl_cmp|state.st_1~q\;
\clk_div_cmp|ALT_INV_s_count~q\ <= NOT \clk_div_cmp|s_count~q\;
\ctrl_cmp|ALT_INV_state.st_4~q\ <= NOT \ctrl_cmp|state.st_4~q\;
\ctrl_cmp|ALT_INV_state.st_3~q\ <= NOT \ctrl_cmp|state.st_3~q\;
\clk_div_cmp|ALT_INV_Add0~9_sumout\ <= NOT \clk_div_cmp|Add0~9_sumout\;
\clk_div_cmp|ALT_INV_cnt_process:count[21]~q\ <= NOT \clk_div_cmp|cnt_process:count[21]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[7]~q\ <= NOT \clk_div_cmp|cnt_process:count[7]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[15]~q\ <= NOT \clk_div_cmp|cnt_process:count[15]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[10]~q\ <= NOT \clk_div_cmp|cnt_process:count[10]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[16]~q\ <= NOT \clk_div_cmp|cnt_process:count[16]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[20]~q\ <= NOT \clk_div_cmp|cnt_process:count[20]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[8]~q\ <= NOT \clk_div_cmp|cnt_process:count[8]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[12]~q\ <= NOT \clk_div_cmp|cnt_process:count[12]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[19]~q\ <= NOT \clk_div_cmp|cnt_process:count[19]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[11]~q\ <= NOT \clk_div_cmp|cnt_process:count[11]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[23]~q\ <= NOT \clk_div_cmp|cnt_process:count[23]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[22]~q\ <= NOT \clk_div_cmp|cnt_process:count[22]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[17]~q\ <= NOT \clk_div_cmp|cnt_process:count[17]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[6]~q\ <= NOT \clk_div_cmp|cnt_process:count[6]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[14]~q\ <= NOT \clk_div_cmp|cnt_process:count[14]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[5]~q\ <= NOT \clk_div_cmp|cnt_process:count[5]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[24]~q\ <= NOT \clk_div_cmp|cnt_process:count[24]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[18]~q\ <= NOT \clk_div_cmp|cnt_process:count[18]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[1]~q\ <= NOT \clk_div_cmp|cnt_process:count[1]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[2]~q\ <= NOT \clk_div_cmp|cnt_process:count[2]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[3]~q\ <= NOT \clk_div_cmp|cnt_process:count[3]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[4]~q\ <= NOT \clk_div_cmp|cnt_process:count[4]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[9]~q\ <= NOT \clk_div_cmp|cnt_process:count[9]~q\;
\clk_div_cmp|ALT_INV_cnt_process:count[13]~q\ <= NOT \clk_div_cmp|cnt_process:count[13]~q\;

-- Location: IOOBUF_X64_Y0_N2
\GPIO_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(0));

-- Location: IOOBUF_X68_Y0_N2
\GPIO_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(1));

-- Location: IOOBUF_X64_Y0_N19
\GPIO_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(2));

-- Location: IOOBUF_X72_Y0_N2
\GPIO_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(3));

-- Location: IOOBUF_X54_Y0_N53
\GPIO_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(4));

-- Location: IOOBUF_X58_Y0_N59
\GPIO_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(5));

-- Location: IOOBUF_X60_Y0_N53
\GPIO_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_cmp|odata\(0),
	devoe => ww_devoe,
	o => ww_GPIO_0(6));

-- Location: IOOBUF_X60_Y0_N36
\GPIO_0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_cmp|odata\(1),
	devoe => ww_devoe,
	o => ww_GPIO_0(7));

-- Location: IOOBUF_X58_Y0_N42
\GPIO_0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_cmp|odata\(2),
	devoe => ww_devoe,
	o => ww_GPIO_0(8));

-- Location: IOOBUF_X54_Y0_N36
\GPIO_0[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl_cmp|odata\(3),
	devoe => ww_devoe,
	o => ww_GPIO_0(9));

-- Location: IOOBUF_X56_Y0_N53
\GPIO_0[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(10));

-- Location: IOOBUF_X56_Y0_N36
\GPIO_0[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(11));

-- Location: IOOBUF_X50_Y0_N76
\GPIO_0[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(12));

-- Location: IOOBUF_X52_Y0_N36
\GPIO_0[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(13));

-- Location: IOOBUF_X52_Y0_N53
\GPIO_0[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(14));

-- Location: IOOBUF_X50_Y0_N93
\GPIO_0[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(15));

-- Location: IOOBUF_X68_Y0_N19
\GPIO_0[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(16));

-- Location: IOOBUF_X72_Y0_N19
\GPIO_0[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(17));

-- Location: IOOBUF_X50_Y0_N42
\GPIO_0[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(18));

-- Location: IOOBUF_X76_Y0_N2
\GPIO_0[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(19));

-- Location: IOOBUF_X58_Y0_N93
\GPIO_0[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(20));

-- Location: IOOBUF_X62_Y0_N36
\GPIO_0[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(21));

-- Location: IOOBUF_X54_Y0_N19
\GPIO_0[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(22));

-- Location: IOOBUF_X68_Y0_N36
\GPIO_0[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(23));

-- Location: IOOBUF_X76_Y0_N19
\GPIO_0[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(24));

-- Location: IOOBUF_X82_Y0_N42
\GPIO_0[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(25));

-- Location: IOOBUF_X66_Y0_N42
\GPIO_0[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(26));

-- Location: IOOBUF_X66_Y0_N59
\GPIO_0[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(27));

-- Location: IOOBUF_X70_Y0_N2
\GPIO_0[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(28));

-- Location: IOOBUF_X70_Y0_N19
\GPIO_0[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(29));

-- Location: IOOBUF_X62_Y0_N2
\GPIO_0[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(30));

-- Location: IOOBUF_X54_Y0_N2
\GPIO_0[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(31));

-- Location: IOOBUF_X50_Y0_N59
\GPIO_0[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(32));

-- Location: IOOBUF_X62_Y0_N19
\GPIO_0[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(33));

-- Location: IOOBUF_X58_Y0_N76
\GPIO_0[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(34));

-- Location: IOOBUF_X62_Y0_N53
\GPIO_0[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_GPIO_0(35));

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

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X16_Y2_N30
\clk_div_cmp|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~9_sumout\ = SUM(( !\clk_div_cmp|cnt_process:count[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \clk_div_cmp|Add0~10\ = CARRY(( !\clk_div_cmp|cnt_process:count[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[0]~q\,
	cin => GND,
	sumout => \clk_div_cmp|Add0~9_sumout\,
	cout => \clk_div_cmp|Add0~10\);

-- Location: LABCELL_X17_Y2_N18
\clk_div_cmp|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|count~0_combout\ = ( \SW[7]~input_o\ & ( !\clk_div_cmp|Add0~9_sumout\ & ( !\SW[9]~input_o\ ) ) ) # ( !\SW[7]~input_o\ & ( !\clk_div_cmp|Add0~9_sumout\ & ( (!\SW[8]~input_o\) # (!\SW[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \clk_div_cmp|ALT_INV_Add0~9_sumout\,
	combout => \clk_div_cmp|count~0_combout\);

-- Location: LABCELL_X16_Y2_N24
\clk_div_cmp|cnt_process:count[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|cnt_process:count[0]~feeder_combout\ = ( \clk_div_cmp|count~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clk_div_cmp|ALT_INV_count~0_combout\,
	combout => \clk_div_cmp|cnt_process:count[0]~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X16_Y2_N26
\clk_div_cmp|cnt_process:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|cnt_process:count[0]~feeder_combout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[0]~q\);

-- Location: LABCELL_X16_Y2_N33
\clk_div_cmp|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~25_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[1]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~10\ ))
-- \clk_div_cmp|Add0~26\ = CARRY(( \clk_div_cmp|cnt_process:count[1]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[1]~q\,
	cin => \clk_div_cmp|Add0~10\,
	sumout => \clk_div_cmp|Add0~25_sumout\,
	cout => \clk_div_cmp|Add0~26\);

-- Location: LABCELL_X16_Y1_N15
\clk_div_cmp|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~89_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[15]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~42\ ))
-- \clk_div_cmp|Add0~90\ = CARRY(( \clk_div_cmp|cnt_process:count[15]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[15]~q\,
	cin => \clk_div_cmp|Add0~42\,
	sumout => \clk_div_cmp|Add0~89_sumout\,
	cout => \clk_div_cmp|Add0~90\);

-- Location: LABCELL_X16_Y1_N18
\clk_div_cmp|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~81_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[16]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~90\ ))
-- \clk_div_cmp|Add0~82\ = CARRY(( \clk_div_cmp|cnt_process:count[16]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[16]~q\,
	cin => \clk_div_cmp|Add0~90\,
	sumout => \clk_div_cmp|Add0~81_sumout\,
	cout => \clk_div_cmp|Add0~82\);

-- Location: FF_X16_Y1_N20
\clk_div_cmp|cnt_process:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~81_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[16]~q\);

-- Location: LABCELL_X16_Y1_N21
\clk_div_cmp|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~49_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[17]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~82\ ))
-- \clk_div_cmp|Add0~50\ = CARRY(( \clk_div_cmp|cnt_process:count[17]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[17]~q\,
	cin => \clk_div_cmp|Add0~82\,
	sumout => \clk_div_cmp|Add0~49_sumout\,
	cout => \clk_div_cmp|Add0~50\);

-- Location: FF_X16_Y1_N23
\clk_div_cmp|cnt_process:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~49_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[17]~q\);

-- Location: LABCELL_X16_Y1_N24
\clk_div_cmp|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~29_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[18]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~50\ ))
-- \clk_div_cmp|Add0~30\ = CARRY(( \clk_div_cmp|cnt_process:count[18]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[18]~q\,
	cin => \clk_div_cmp|Add0~50\,
	sumout => \clk_div_cmp|Add0~29_sumout\,
	cout => \clk_div_cmp|Add0~30\);

-- Location: FF_X16_Y1_N26
\clk_div_cmp|cnt_process:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~29_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[18]~q\);

-- Location: LABCELL_X16_Y1_N27
\clk_div_cmp|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~65_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[19]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~30\ ))
-- \clk_div_cmp|Add0~66\ = CARRY(( \clk_div_cmp|cnt_process:count[19]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[19]~q\,
	cin => \clk_div_cmp|Add0~30\,
	sumout => \clk_div_cmp|Add0~65_sumout\,
	cout => \clk_div_cmp|Add0~66\);

-- Location: FF_X16_Y1_N29
\clk_div_cmp|cnt_process:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~65_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[19]~q\);

-- Location: LABCELL_X16_Y1_N30
\clk_div_cmp|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~77_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[20]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~66\ ))
-- \clk_div_cmp|Add0~78\ = CARRY(( \clk_div_cmp|cnt_process:count[20]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[20]~q\,
	cin => \clk_div_cmp|Add0~66\,
	sumout => \clk_div_cmp|Add0~77_sumout\,
	cout => \clk_div_cmp|Add0~78\);

-- Location: FF_X16_Y1_N32
\clk_div_cmp|cnt_process:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~77_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[20]~q\);

-- Location: LABCELL_X16_Y1_N33
\clk_div_cmp|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~97_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[21]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~78\ ))
-- \clk_div_cmp|Add0~98\ = CARRY(( \clk_div_cmp|cnt_process:count[21]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[21]~q\,
	cin => \clk_div_cmp|Add0~78\,
	sumout => \clk_div_cmp|Add0~97_sumout\,
	cout => \clk_div_cmp|Add0~98\);

-- Location: FF_X16_Y1_N35
\clk_div_cmp|cnt_process:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~97_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[21]~q\);

-- Location: LABCELL_X16_Y1_N36
\clk_div_cmp|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~53_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[22]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~98\ ))
-- \clk_div_cmp|Add0~54\ = CARRY(( \clk_div_cmp|cnt_process:count[22]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[22]~q\,
	cin => \clk_div_cmp|Add0~98\,
	sumout => \clk_div_cmp|Add0~53_sumout\,
	cout => \clk_div_cmp|Add0~54\);

-- Location: FF_X16_Y1_N38
\clk_div_cmp|cnt_process:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~53_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[22]~q\);

-- Location: LABCELL_X16_Y1_N39
\clk_div_cmp|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~57_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[23]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~54\ ))
-- \clk_div_cmp|Add0~58\ = CARRY(( \clk_div_cmp|cnt_process:count[23]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[23]~q\,
	cin => \clk_div_cmp|Add0~54\,
	sumout => \clk_div_cmp|Add0~57_sumout\,
	cout => \clk_div_cmp|Add0~58\);

-- Location: FF_X16_Y1_N41
\clk_div_cmp|cnt_process:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~57_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[23]~q\);

-- Location: LABCELL_X16_Y1_N42
\clk_div_cmp|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~33_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[24]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[24]~q\,
	cin => \clk_div_cmp|Add0~58\,
	sumout => \clk_div_cmp|Add0~33_sumout\);

-- Location: FF_X16_Y1_N44
\clk_div_cmp|cnt_process:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~33_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[24]~q\);

-- Location: LABCELL_X17_Y1_N54
\clk_div_cmp|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal3~0_combout\ = ( !\clk_div_cmp|cnt_process:count[6]~q\ & ( \clk_div_cmp|cnt_process:count[5]~q\ & ( (!\clk_div_cmp|cnt_process:count[24]~q\ & (!\clk_div_cmp|cnt_process:count[22]~q\ & (\clk_div_cmp|cnt_process:count[17]~q\ & 
-- !\clk_div_cmp|cnt_process:count[14]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[24]~q\,
	datab => \clk_div_cmp|ALT_INV_cnt_process:count[22]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[17]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[14]~q\,
	datae => \clk_div_cmp|ALT_INV_cnt_process:count[6]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[5]~q\,
	combout => \clk_div_cmp|Equal3~0_combout\);

-- Location: LABCELL_X18_Y1_N12
\clk_div_cmp|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal9~0_combout\ = ( !\clk_div_cmp|cnt_process:count[11]~q\ & ( !\clk_div_cmp|cnt_process:count[20]~q\ & ( (\clk_div_cmp|cnt_process:count[8]~q\ & (!\clk_div_cmp|cnt_process:count[19]~q\ & (!\clk_div_cmp|cnt_process:count[23]~q\ & 
-- !\clk_div_cmp|cnt_process:count[12]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[8]~q\,
	datab => \clk_div_cmp|ALT_INV_cnt_process:count[19]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[23]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[12]~q\,
	datae => \clk_div_cmp|ALT_INV_cnt_process:count[11]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[20]~q\,
	combout => \clk_div_cmp|Equal9~0_combout\);

-- Location: LABCELL_X17_Y1_N30
\clk_div_cmp|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal9~1_combout\ = ( !\clk_div_cmp|cnt_process:count[7]~q\ & ( (\clk_div_cmp|cnt_process:count[15]~q\ & (!\clk_div_cmp|cnt_process:count[21]~q\ & (\clk_div_cmp|cnt_process:count[16]~q\ & !\clk_div_cmp|cnt_process:count[10]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[15]~q\,
	datab => \clk_div_cmp|ALT_INV_cnt_process:count[21]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[16]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[10]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[7]~q\,
	combout => \clk_div_cmp|Equal9~1_combout\);

-- Location: LABCELL_X17_Y1_N3
\clk_div_cmp|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal1~0_combout\ = ( !\clk_div_cmp|cnt_process:count[9]~q\ & ( \clk_div_cmp|cnt_process:count[13]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[13]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[9]~q\,
	combout => \clk_div_cmp|Equal1~0_combout\);

-- Location: LABCELL_X16_Y2_N12
\clk_div_cmp|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal1~1_combout\ = ( \clk_div_cmp|cnt_process:count[18]~q\ & ( !\clk_div_cmp|cnt_process:count[1]~q\ & ( (\clk_div_cmp|cnt_process:count[0]~q\ & (!\clk_div_cmp|cnt_process:count[3]~q\ & (!\clk_div_cmp|cnt_process:count[2]~q\ & 
-- !\clk_div_cmp|cnt_process:count[4]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[0]~q\,
	datab => \clk_div_cmp|ALT_INV_cnt_process:count[3]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[2]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[4]~q\,
	datae => \clk_div_cmp|ALT_INV_cnt_process:count[18]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[1]~q\,
	combout => \clk_div_cmp|Equal1~1_combout\);

-- Location: LABCELL_X17_Y1_N9
\clk_div_cmp|Equal9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal9~2_combout\ = ( \clk_div_cmp|Equal1~1_combout\ & ( (\clk_div_cmp|Equal3~0_combout\ & (\clk_div_cmp|Equal9~0_combout\ & (\clk_div_cmp|Equal9~1_combout\ & \clk_div_cmp|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_Equal3~0_combout\,
	datab => \clk_div_cmp|ALT_INV_Equal9~0_combout\,
	datac => \clk_div_cmp|ALT_INV_Equal9~1_combout\,
	datad => \clk_div_cmp|ALT_INV_Equal1~0_combout\,
	dataf => \clk_div_cmp|ALT_INV_Equal1~1_combout\,
	combout => \clk_div_cmp|Equal9~2_combout\);

-- Location: LABCELL_X18_Y1_N51
\clk_div_cmp|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal7~0_combout\ = ( \clk_div_cmp|cnt_process:count[7]~q\ & ( (\clk_div_cmp|cnt_process:count[21]~q\ & (!\clk_div_cmp|cnt_process:count[15]~q\ & (!\clk_div_cmp|cnt_process:count[16]~q\ & \clk_div_cmp|cnt_process:count[10]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[21]~q\,
	datab => \clk_div_cmp|ALT_INV_cnt_process:count[15]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[16]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[10]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[7]~q\,
	combout => \clk_div_cmp|Equal7~0_combout\);

-- Location: LABCELL_X17_Y1_N6
\clk_div_cmp|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal7~1_combout\ = ( \clk_div_cmp|Equal7~0_combout\ & ( (\clk_div_cmp|Equal3~0_combout\ & (\clk_div_cmp|Equal9~0_combout\ & (\clk_div_cmp|Equal1~1_combout\ & \clk_div_cmp|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_Equal3~0_combout\,
	datab => \clk_div_cmp|ALT_INV_Equal9~0_combout\,
	datac => \clk_div_cmp|ALT_INV_Equal1~1_combout\,
	datad => \clk_div_cmp|ALT_INV_Equal1~0_combout\,
	dataf => \clk_div_cmp|ALT_INV_Equal7~0_combout\,
	combout => \clk_div_cmp|Equal7~1_combout\);

-- Location: LABCELL_X17_Y1_N33
\clk_div_cmp|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal1~4_combout\ = ( !\clk_div_cmp|cnt_process:count[8]~q\ & ( (\clk_div_cmp|cnt_process:count[21]~q\ & (\clk_div_cmp|cnt_process:count[20]~q\ & \clk_div_cmp|cnt_process:count[12]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_cmp|ALT_INV_cnt_process:count[21]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[20]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[12]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[8]~q\,
	combout => \clk_div_cmp|Equal1~4_combout\);

-- Location: LABCELL_X16_Y1_N51
\clk_div_cmp|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal3~2_combout\ = ( !\clk_div_cmp|cnt_process:count[16]~q\ & ( (\clk_div_cmp|cnt_process:count[23]~q\ & (\clk_div_cmp|cnt_process:count[15]~q\ & \clk_div_cmp|cnt_process:count[10]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_cmp|ALT_INV_cnt_process:count[23]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[15]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[10]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[16]~q\,
	combout => \clk_div_cmp|Equal3~2_combout\);

-- Location: LABCELL_X17_Y1_N15
\clk_div_cmp|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal3~1_combout\ = ( !\clk_div_cmp|cnt_process:count[7]~q\ & ( (\clk_div_cmp|cnt_process:count[11]~q\ & \clk_div_cmp|cnt_process:count[19]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[11]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[19]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[7]~q\,
	combout => \clk_div_cmp|Equal3~1_combout\);

-- Location: LABCELL_X17_Y1_N45
\clk_div_cmp|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal3~3_combout\ = ( \clk_div_cmp|Equal3~0_combout\ & ( \clk_div_cmp|Equal1~1_combout\ & ( (\clk_div_cmp|Equal1~4_combout\ & (\clk_div_cmp|Equal3~2_combout\ & (\clk_div_cmp|Equal3~1_combout\ & \clk_div_cmp|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_Equal1~4_combout\,
	datab => \clk_div_cmp|ALT_INV_Equal3~2_combout\,
	datac => \clk_div_cmp|ALT_INV_Equal3~1_combout\,
	datad => \clk_div_cmp|ALT_INV_Equal1~0_combout\,
	datae => \clk_div_cmp|ALT_INV_Equal3~0_combout\,
	dataf => \clk_div_cmp|ALT_INV_Equal1~1_combout\,
	combout => \clk_div_cmp|Equal3~3_combout\);

-- Location: LABCELL_X17_Y1_N12
\clk_div_cmp|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal1~2_combout\ = ( \clk_div_cmp|cnt_process:count[6]~q\ & ( (!\clk_div_cmp|cnt_process:count[17]~q\ & (\clk_div_cmp|cnt_process:count[14]~q\ & (!\clk_div_cmp|cnt_process:count[10]~q\ & !\clk_div_cmp|cnt_process:count[5]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[17]~q\,
	datab => \clk_div_cmp|ALT_INV_cnt_process:count[14]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[10]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[5]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[6]~q\,
	combout => \clk_div_cmp|Equal1~2_combout\);

-- Location: LABCELL_X16_Y1_N48
\clk_div_cmp|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal1~3_combout\ = ( !\clk_div_cmp|cnt_process:count[7]~q\ & ( (\clk_div_cmp|cnt_process:count[19]~q\ & (!\clk_div_cmp|cnt_process:count[23]~q\ & (\clk_div_cmp|cnt_process:count[22]~q\ & \clk_div_cmp|cnt_process:count[11]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[19]~q\,
	datab => \clk_div_cmp|ALT_INV_cnt_process:count[23]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[22]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[11]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[7]~q\,
	combout => \clk_div_cmp|Equal1~3_combout\);

-- Location: LABCELL_X18_Y1_N21
\clk_div_cmp|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal1~5_combout\ = ( \clk_div_cmp|cnt_process:count[24]~q\ & ( \clk_div_cmp|cnt_process:count[16]~q\ & ( (\clk_div_cmp|cnt_process:count[13]~q\ & !\clk_div_cmp|cnt_process:count[9]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[13]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[9]~q\,
	datae => \clk_div_cmp|ALT_INV_cnt_process:count[24]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[16]~q\,
	combout => \clk_div_cmp|Equal1~5_combout\);

-- Location: LABCELL_X17_Y1_N51
\clk_div_cmp|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal1~6_combout\ = ( \clk_div_cmp|Equal1~5_combout\ & ( \clk_div_cmp|Equal1~4_combout\ & ( (!\clk_div_cmp|cnt_process:count[15]~q\ & (\clk_div_cmp|Equal1~2_combout\ & (\clk_div_cmp|Equal1~3_combout\ & \clk_div_cmp|Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[15]~q\,
	datab => \clk_div_cmp|ALT_INV_Equal1~2_combout\,
	datac => \clk_div_cmp|ALT_INV_Equal1~3_combout\,
	datad => \clk_div_cmp|ALT_INV_Equal1~1_combout\,
	datae => \clk_div_cmp|ALT_INV_Equal1~5_combout\,
	dataf => \clk_div_cmp|ALT_INV_Equal1~4_combout\,
	combout => \clk_div_cmp|Equal1~6_combout\);

-- Location: LABCELL_X17_Y1_N18
\clk_div_cmp|cnt_process:count[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|cnt_process:count[5]~0_combout\ = ( \clk_div_cmp|Equal1~6_combout\ & ( \clk_div_cmp|Equal5~2_combout\ & ( (!\SW[9]~input_o\ & (\SW[7]~input_o\ & ((!\clk_div_cmp|Equal3~3_combout\) # (\SW[8]~input_o\)))) # (\SW[9]~input_o\ & 
-- (((!\SW[7]~input_o\ & !\SW[8]~input_o\)))) ) ) ) # ( !\clk_div_cmp|Equal1~6_combout\ & ( \clk_div_cmp|Equal5~2_combout\ & ( (!\SW[7]~input_o\ & (((!\SW[8]~input_o\)))) # (\SW[7]~input_o\ & (!\SW[9]~input_o\ & ((!\clk_div_cmp|Equal3~3_combout\) # 
-- (\SW[8]~input_o\)))) ) ) ) # ( \clk_div_cmp|Equal1~6_combout\ & ( !\clk_div_cmp|Equal5~2_combout\ & ( (!\SW[9]~input_o\ & (((!\clk_div_cmp|Equal3~3_combout\ & \SW[7]~input_o\)) # (\SW[8]~input_o\))) # (\SW[9]~input_o\ & (((!\SW[7]~input_o\ & 
-- !\SW[8]~input_o\)))) ) ) ) # ( !\clk_div_cmp|Equal1~6_combout\ & ( !\clk_div_cmp|Equal5~2_combout\ & ( (!\SW[8]~input_o\ & ((!\SW[7]~input_o\) # ((!\SW[9]~input_o\ & !\clk_div_cmp|Equal3~3_combout\)))) # (\SW[8]~input_o\ & (!\SW[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010101010010110001010101011111000000010100101100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \clk_div_cmp|ALT_INV_Equal3~3_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \clk_div_cmp|ALT_INV_Equal1~6_combout\,
	dataf => \clk_div_cmp|ALT_INV_Equal5~2_combout\,
	combout => \clk_div_cmp|cnt_process:count[5]~0_combout\);

-- Location: LABCELL_X16_Y1_N54
\clk_div_cmp|cnt_process:count[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|cnt_process:count[5]~1_combout\ = ( \clk_div_cmp|Equal7~1_combout\ & ( \clk_div_cmp|cnt_process:count[5]~0_combout\ & ( (!\SW[9]~input_o\ & (\SW[7]~input_o\ & (\SW[8]~input_o\))) # (\SW[9]~input_o\ & (((\clk_div_cmp|Equal9~2_combout\)))) ) ) 
-- ) # ( !\clk_div_cmp|Equal7~1_combout\ & ( \clk_div_cmp|cnt_process:count[5]~0_combout\ & ( (\clk_div_cmp|Equal9~2_combout\ & \SW[9]~input_o\) ) ) ) # ( \clk_div_cmp|Equal7~1_combout\ & ( !\clk_div_cmp|cnt_process:count[5]~0_combout\ ) ) # ( 
-- !\clk_div_cmp|Equal7~1_combout\ & ( !\clk_div_cmp|cnt_process:count[5]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000011110001000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \clk_div_cmp|ALT_INV_Equal9~2_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \clk_div_cmp|ALT_INV_Equal7~1_combout\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[5]~0_combout\,
	combout => \clk_div_cmp|cnt_process:count[5]~1_combout\);

-- Location: FF_X16_Y2_N35
\clk_div_cmp|cnt_process:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~25_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[1]~q\);

-- Location: LABCELL_X16_Y2_N36
\clk_div_cmp|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~21_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[2]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~26\ ))
-- \clk_div_cmp|Add0~22\ = CARRY(( \clk_div_cmp|cnt_process:count[2]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[2]~q\,
	cin => \clk_div_cmp|Add0~26\,
	sumout => \clk_div_cmp|Add0~21_sumout\,
	cout => \clk_div_cmp|Add0~22\);

-- Location: FF_X16_Y2_N38
\clk_div_cmp|cnt_process:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~21_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[2]~q\);

-- Location: LABCELL_X16_Y2_N39
\clk_div_cmp|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~17_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[3]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~22\ ))
-- \clk_div_cmp|Add0~18\ = CARRY(( \clk_div_cmp|cnt_process:count[3]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[3]~q\,
	cin => \clk_div_cmp|Add0~22\,
	sumout => \clk_div_cmp|Add0~17_sumout\,
	cout => \clk_div_cmp|Add0~18\);

-- Location: FF_X16_Y2_N41
\clk_div_cmp|cnt_process:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~17_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[3]~q\);

-- Location: LABCELL_X16_Y2_N42
\clk_div_cmp|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~13_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[4]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~18\ ))
-- \clk_div_cmp|Add0~14\ = CARRY(( \clk_div_cmp|cnt_process:count[4]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[4]~q\,
	cin => \clk_div_cmp|Add0~18\,
	sumout => \clk_div_cmp|Add0~13_sumout\,
	cout => \clk_div_cmp|Add0~14\);

-- Location: FF_X16_Y2_N44
\clk_div_cmp|cnt_process:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~13_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[4]~q\);

-- Location: LABCELL_X16_Y2_N45
\clk_div_cmp|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~37_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[5]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~14\ ))
-- \clk_div_cmp|Add0~38\ = CARRY(( \clk_div_cmp|cnt_process:count[5]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[5]~q\,
	cin => \clk_div_cmp|Add0~14\,
	sumout => \clk_div_cmp|Add0~37_sumout\,
	cout => \clk_div_cmp|Add0~38\);

-- Location: FF_X16_Y2_N47
\clk_div_cmp|cnt_process:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~37_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[5]~q\);

-- Location: LABCELL_X16_Y2_N48
\clk_div_cmp|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~45_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[6]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~38\ ))
-- \clk_div_cmp|Add0~46\ = CARRY(( \clk_div_cmp|cnt_process:count[6]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[6]~q\,
	cin => \clk_div_cmp|Add0~38\,
	sumout => \clk_div_cmp|Add0~45_sumout\,
	cout => \clk_div_cmp|Add0~46\);

-- Location: FF_X16_Y2_N50
\clk_div_cmp|cnt_process:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~45_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[6]~q\);

-- Location: LABCELL_X16_Y2_N51
\clk_div_cmp|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~93_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[7]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~46\ ))
-- \clk_div_cmp|Add0~94\ = CARRY(( \clk_div_cmp|cnt_process:count[7]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[7]~q\,
	cin => \clk_div_cmp|Add0~46\,
	sumout => \clk_div_cmp|Add0~93_sumout\,
	cout => \clk_div_cmp|Add0~94\);

-- Location: FF_X16_Y2_N53
\clk_div_cmp|cnt_process:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~93_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[7]~q\);

-- Location: LABCELL_X16_Y2_N54
\clk_div_cmp|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~73_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[8]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~94\ ))
-- \clk_div_cmp|Add0~74\ = CARRY(( \clk_div_cmp|cnt_process:count[8]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[8]~q\,
	cin => \clk_div_cmp|Add0~94\,
	sumout => \clk_div_cmp|Add0~73_sumout\,
	cout => \clk_div_cmp|Add0~74\);

-- Location: FF_X16_Y2_N56
\clk_div_cmp|cnt_process:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~73_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[8]~q\);

-- Location: LABCELL_X16_Y2_N57
\clk_div_cmp|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~5_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[9]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~74\ ))
-- \clk_div_cmp|Add0~6\ = CARRY(( \clk_div_cmp|cnt_process:count[9]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[9]~q\,
	cin => \clk_div_cmp|Add0~74\,
	sumout => \clk_div_cmp|Add0~5_sumout\,
	cout => \clk_div_cmp|Add0~6\);

-- Location: FF_X16_Y2_N59
\clk_div_cmp|cnt_process:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~5_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[9]~q\);

-- Location: LABCELL_X16_Y1_N0
\clk_div_cmp|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~85_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[10]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~6\ ))
-- \clk_div_cmp|Add0~86\ = CARRY(( \clk_div_cmp|cnt_process:count[10]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[10]~q\,
	cin => \clk_div_cmp|Add0~6\,
	sumout => \clk_div_cmp|Add0~85_sumout\,
	cout => \clk_div_cmp|Add0~86\);

-- Location: FF_X16_Y1_N2
\clk_div_cmp|cnt_process:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~85_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[10]~q\);

-- Location: LABCELL_X16_Y1_N3
\clk_div_cmp|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~61_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[11]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~86\ ))
-- \clk_div_cmp|Add0~62\ = CARRY(( \clk_div_cmp|cnt_process:count[11]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[11]~q\,
	cin => \clk_div_cmp|Add0~86\,
	sumout => \clk_div_cmp|Add0~61_sumout\,
	cout => \clk_div_cmp|Add0~62\);

-- Location: FF_X16_Y1_N5
\clk_div_cmp|cnt_process:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~61_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[11]~q\);

-- Location: LABCELL_X16_Y1_N6
\clk_div_cmp|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~69_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[12]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~62\ ))
-- \clk_div_cmp|Add0~70\ = CARRY(( \clk_div_cmp|cnt_process:count[12]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[12]~q\,
	cin => \clk_div_cmp|Add0~62\,
	sumout => \clk_div_cmp|Add0~69_sumout\,
	cout => \clk_div_cmp|Add0~70\);

-- Location: FF_X16_Y1_N8
\clk_div_cmp|cnt_process:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~69_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[12]~q\);

-- Location: LABCELL_X16_Y1_N9
\clk_div_cmp|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~1_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[13]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~70\ ))
-- \clk_div_cmp|Add0~2\ = CARRY(( \clk_div_cmp|cnt_process:count[13]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[13]~q\,
	cin => \clk_div_cmp|Add0~70\,
	sumout => \clk_div_cmp|Add0~1_sumout\,
	cout => \clk_div_cmp|Add0~2\);

-- Location: FF_X16_Y1_N11
\clk_div_cmp|cnt_process:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~1_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[13]~q\);

-- Location: LABCELL_X16_Y1_N12
\clk_div_cmp|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Add0~41_sumout\ = SUM(( \clk_div_cmp|cnt_process:count[14]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~2\ ))
-- \clk_div_cmp|Add0~42\ = CARRY(( \clk_div_cmp|cnt_process:count[14]~q\ ) + ( GND ) + ( \clk_div_cmp|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[14]~q\,
	cin => \clk_div_cmp|Add0~2\,
	sumout => \clk_div_cmp|Add0~41_sumout\,
	cout => \clk_div_cmp|Add0~42\);

-- Location: FF_X16_Y1_N14
\clk_div_cmp|cnt_process:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~41_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[14]~q\);

-- Location: FF_X16_Y1_N17
\clk_div_cmp|cnt_process:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_cmp|Add0~89_sumout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sclr => \clk_div_cmp|cnt_process:count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|cnt_process:count[15]~q\);

-- Location: LABCELL_X18_Y1_N3
\clk_div_cmp|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal5~0_combout\ = ( \clk_div_cmp|cnt_process:count[8]~q\ & ( !\clk_div_cmp|cnt_process:count[12]~q\ & ( !\clk_div_cmp|cnt_process:count[20]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[20]~q\,
	datae => \clk_div_cmp|ALT_INV_cnt_process:count[8]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[12]~q\,
	combout => \clk_div_cmp|Equal5~0_combout\);

-- Location: LABCELL_X18_Y1_N30
\clk_div_cmp|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal5~1_combout\ = ( !\clk_div_cmp|cnt_process:count[24]~q\ & ( !\clk_div_cmp|cnt_process:count[16]~q\ & ( (!\clk_div_cmp|cnt_process:count[21]~q\ & (\clk_div_cmp|cnt_process:count[9]~q\ & !\clk_div_cmp|cnt_process:count[13]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[21]~q\,
	datac => \clk_div_cmp|ALT_INV_cnt_process:count[9]~q\,
	datad => \clk_div_cmp|ALT_INV_cnt_process:count[13]~q\,
	datae => \clk_div_cmp|ALT_INV_cnt_process:count[24]~q\,
	dataf => \clk_div_cmp|ALT_INV_cnt_process:count[16]~q\,
	combout => \clk_div_cmp|Equal5~1_combout\);

-- Location: LABCELL_X17_Y1_N48
\clk_div_cmp|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|Equal5~2_combout\ = ( \clk_div_cmp|Equal5~0_combout\ & ( \clk_div_cmp|Equal5~1_combout\ & ( (!\clk_div_cmp|cnt_process:count[15]~q\ & (\clk_div_cmp|Equal1~2_combout\ & (\clk_div_cmp|Equal1~1_combout\ & \clk_div_cmp|Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_cnt_process:count[15]~q\,
	datab => \clk_div_cmp|ALT_INV_Equal1~2_combout\,
	datac => \clk_div_cmp|ALT_INV_Equal1~1_combout\,
	datad => \clk_div_cmp|ALT_INV_Equal1~3_combout\,
	datae => \clk_div_cmp|ALT_INV_Equal5~0_combout\,
	dataf => \clk_div_cmp|ALT_INV_Equal5~1_combout\,
	combout => \clk_div_cmp|Equal5~2_combout\);

-- Location: LABCELL_X17_Y1_N24
\clk_div_cmp|s_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|s_count~1_combout\ = ( \clk_div_cmp|Equal1~6_combout\ & ( \clk_div_cmp|s_count~q\ & ( (!\SW[7]~input_o\ & (!\SW[9]~input_o\ & (!\clk_div_cmp|Equal5~2_combout\ & \SW[8]~input_o\))) ) ) ) # ( !\clk_div_cmp|Equal1~6_combout\ & ( 
-- \clk_div_cmp|s_count~q\ & ( (!\SW[7]~input_o\ & (!\SW[9]~input_o\ & ((!\clk_div_cmp|Equal5~2_combout\) # (!\SW[8]~input_o\)))) ) ) ) # ( \clk_div_cmp|Equal1~6_combout\ & ( !\clk_div_cmp|s_count~q\ & ( (!\SW[7]~input_o\ & (!\SW[9]~input_o\ & 
-- ((!\SW[8]~input_o\) # (\clk_div_cmp|Equal5~2_combout\)))) ) ) ) # ( !\clk_div_cmp|Equal1~6_combout\ & ( !\clk_div_cmp|s_count~q\ & ( (!\SW[7]~input_o\ & (!\SW[9]~input_o\ & (\clk_div_cmp|Equal5~2_combout\ & \SW[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000100010000000100010001000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \clk_div_cmp|ALT_INV_Equal5~2_combout\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \clk_div_cmp|ALT_INV_Equal1~6_combout\,
	dataf => \clk_div_cmp|ALT_INV_s_count~q\,
	combout => \clk_div_cmp|s_count~1_combout\);

-- Location: LABCELL_X17_Y1_N36
\clk_div_cmp|s_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|s_count~2_combout\ = ( \clk_div_cmp|Equal3~3_combout\ & ( \clk_div_cmp|s_count~q\ & ( (\SW[9]~input_o\ & (((!\clk_div_cmp|Equal9~2_combout\) # (\SW[7]~input_o\)) # (\SW[8]~input_o\))) ) ) ) # ( !\clk_div_cmp|Equal3~3_combout\ & ( 
-- \clk_div_cmp|s_count~q\ & ( (!\SW[8]~input_o\ & (((\SW[9]~input_o\ & !\clk_div_cmp|Equal9~2_combout\)) # (\SW[7]~input_o\))) # (\SW[8]~input_o\ & (\SW[9]~input_o\)) ) ) ) # ( \clk_div_cmp|Equal3~3_combout\ & ( !\clk_div_cmp|s_count~q\ & ( 
-- (!\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\SW[7]~input_o\)) # (\SW[9]~input_o\ & (!\SW[7]~input_o\ & \clk_div_cmp|Equal9~2_combout\)))) ) ) ) # ( !\clk_div_cmp|Equal3~3_combout\ & ( !\clk_div_cmp|s_count~q\ & ( (!\SW[8]~input_o\ & (\SW[9]~input_o\ & 
-- (!\SW[7]~input_o\ & \clk_div_cmp|Equal9~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000010000010100000111011000110110011001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \clk_div_cmp|ALT_INV_Equal9~2_combout\,
	datae => \clk_div_cmp|ALT_INV_Equal3~3_combout\,
	dataf => \clk_div_cmp|ALT_INV_s_count~q\,
	combout => \clk_div_cmp|s_count~2_combout\);

-- Location: LABCELL_X17_Y2_N12
\clk_div_cmp|s_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|s_count~0_combout\ = ( \SW[7]~input_o\ & ( \SW[8]~input_o\ & ( !\SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \clk_div_cmp|s_count~0_combout\);

-- Location: LABCELL_X17_Y1_N0
\clk_div_cmp|s_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_cmp|s_count~3_combout\ = ( \clk_div_cmp|s_count~q\ & ( (((!\clk_div_cmp|Equal7~1_combout\ & \clk_div_cmp|s_count~0_combout\)) # (\clk_div_cmp|s_count~2_combout\)) # (\clk_div_cmp|s_count~1_combout\) ) ) # ( !\clk_div_cmp|s_count~q\ & ( 
-- (((\clk_div_cmp|Equal7~1_combout\ & \clk_div_cmp|s_count~0_combout\)) # (\clk_div_cmp|s_count~2_combout\)) # (\clk_div_cmp|s_count~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111010111110111111101011111110111110101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_cmp|ALT_INV_s_count~1_combout\,
	datab => \clk_div_cmp|ALT_INV_Equal7~1_combout\,
	datac => \clk_div_cmp|ALT_INV_s_count~2_combout\,
	datad => \clk_div_cmp|ALT_INV_s_count~0_combout\,
	dataf => \clk_div_cmp|ALT_INV_s_count~q\,
	combout => \clk_div_cmp|s_count~3_combout\);

-- Location: FF_X17_Y1_N23
\clk_div_cmp|s_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \clk_div_cmp|s_count~3_combout\,
	sload => VCC,
	ena => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_cmp|s_count~q\);

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

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X18_Y1_N24
\ctrl_cmp|state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_cmp|state~15_combout\ = (\SW[0]~input_o\ & ((!\SW[1]~input_o\ & (\ctrl_cmp|state.st_1~q\)) # (\SW[1]~input_o\ & ((\ctrl_cmp|state.st_3~q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000010100110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_cmp|ALT_INV_state.st_1~q\,
	datab => \ctrl_cmp|ALT_INV_state.st_3~q\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	combout => \ctrl_cmp|state~15_combout\);

-- Location: FF_X18_Y1_N26
\ctrl_cmp|state.st_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_cmp|s_count~q\,
	d => \ctrl_cmp|state~15_combout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_cmp|state.st_4~q\);

-- Location: FF_X17_Y1_N43
\ctrl_cmp|state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_cmp|s_count~q\,
	asdata => \SW[0]~input_o\,
	clrn => \ALT_INV_SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_cmp|state.Idle~q\);

-- Location: LABCELL_X18_Y1_N54
\ctrl_cmp|state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_cmp|state~16_combout\ = ( \SW[0]~input_o\ & ( \ctrl_cmp|state.Idle~q\ & ( (!\SW[1]~input_o\ & (\ctrl_cmp|state.st_2~q\)) # (\SW[1]~input_o\ & ((\ctrl_cmp|state.st_4~q\))) ) ) ) # ( \SW[0]~input_o\ & ( !\ctrl_cmp|state.Idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_cmp|ALT_INV_state.st_2~q\,
	datab => \ctrl_cmp|ALT_INV_state.st_4~q\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ctrl_cmp|ALT_INV_state.Idle~q\,
	combout => \ctrl_cmp|state~16_combout\);

-- Location: FF_X18_Y1_N56
\ctrl_cmp|state.st_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_cmp|s_count~q\,
	d => \ctrl_cmp|state~16_combout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_cmp|state.st_1~q\);

-- Location: LABCELL_X18_Y1_N39
\ctrl_cmp|state~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_cmp|state~17_combout\ = ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & ((\ctrl_cmp|state.st_3~q\))) # (\SW[1]~input_o\ & (\ctrl_cmp|state.st_1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_cmp|ALT_INV_state.st_1~q\,
	datab => \ctrl_cmp|ALT_INV_state.st_3~q\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \ctrl_cmp|state~17_combout\);

-- Location: FF_X18_Y1_N41
\ctrl_cmp|state.st_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_cmp|s_count~q\,
	d => \ctrl_cmp|state~17_combout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_cmp|state.st_2~q\);

-- Location: LABCELL_X18_Y1_N9
\ctrl_cmp|state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_cmp|state~14_combout\ = ( \SW[1]~input_o\ & ( (\ctrl_cmp|state.st_2~q\ & \SW[0]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( (\ctrl_cmp|state.st_4~q\ & \SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000101010100000000001100110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_cmp|ALT_INV_state.st_2~q\,
	datab => \ctrl_cmp|ALT_INV_state.st_4~q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	combout => \ctrl_cmp|state~14_combout\);

-- Location: FF_X18_Y1_N11
\ctrl_cmp|state.st_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_cmp|s_count~q\,
	d => \ctrl_cmp|state~14_combout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_cmp|state.st_3~q\);

-- Location: LABCELL_X18_Y1_N36
\ctrl_cmp|odata~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_cmp|odata~0_combout\ = ( \SW[0]~input_o\ & ( (\ctrl_cmp|state.st_4~q\) # (\ctrl_cmp|state.st_3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_cmp|ALT_INV_state.st_3~q\,
	datac => \ctrl_cmp|ALT_INV_state.st_4~q\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \ctrl_cmp|odata~0_combout\);

-- Location: FF_X18_Y1_N37
\ctrl_cmp|odata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_cmp|s_count~q\,
	d => \ctrl_cmp|odata~0_combout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_cmp|odata\(0));

-- Location: LABCELL_X18_Y1_N45
\ctrl_cmp|odata~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_cmp|odata~1_combout\ = ( \SW[0]~input_o\ & ( (\ctrl_cmp|state.st_1~q\) # (\ctrl_cmp|state.st_2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_cmp|ALT_INV_state.st_2~q\,
	datac => \ctrl_cmp|ALT_INV_state.st_1~q\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \ctrl_cmp|odata~1_combout\);

-- Location: FF_X18_Y1_N46
\ctrl_cmp|odata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_cmp|s_count~q\,
	d => \ctrl_cmp|odata~1_combout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_cmp|odata\(1));

-- Location: LABCELL_X18_Y1_N42
\ctrl_cmp|odata~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_cmp|odata~2_combout\ = (\SW[0]~input_o\ & ((\ctrl_cmp|state.st_3~q\) # (\ctrl_cmp|state.st_2~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_cmp|ALT_INV_state.st_2~q\,
	datab => \ctrl_cmp|ALT_INV_state.st_3~q\,
	datac => \ALT_INV_SW[0]~input_o\,
	combout => \ctrl_cmp|odata~2_combout\);

-- Location: FF_X18_Y1_N43
\ctrl_cmp|odata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_cmp|s_count~q\,
	d => \ctrl_cmp|odata~2_combout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_cmp|odata\(2));

-- Location: LABCELL_X18_Y1_N27
\ctrl_cmp|odata~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl_cmp|odata~3_combout\ = (\SW[0]~input_o\ & ((\ctrl_cmp|state.st_4~q\) # (\ctrl_cmp|state.st_1~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_cmp|ALT_INV_state.st_1~q\,
	datac => \ctrl_cmp|ALT_INV_state.st_4~q\,
	datad => \ALT_INV_SW[0]~input_o\,
	combout => \ctrl_cmp|odata~3_combout\);

-- Location: FF_X18_Y1_N28
\ctrl_cmp|odata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_cmp|s_count~q\,
	d => \ctrl_cmp|odata~3_combout\,
	clrn => \ALT_INV_SW[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_cmp|odata\(3));

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X24_Y27_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



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

-- DATE "11/08/2016 16:52:06"

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

ENTITY 	j_cnt IS
    PORT (
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0)
	);
END j_cnt;

-- Design Ports Information
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF j_cnt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst6|Add0~2\ : std_logic;
SIGNAL \inst6|Add0~5_sumout\ : std_logic;
SIGNAL \inst6|Add0~105_sumout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|Equal0~9_combout\ : std_logic;
SIGNAL \inst6|Equal0~4_combout\ : std_logic;
SIGNAL \inst6|count~0_combout\ : std_logic;
SIGNAL \inst6|Add0~106\ : std_logic;
SIGNAL \inst6|Add0~109_sumout\ : std_logic;
SIGNAL \inst6|Add0~110\ : std_logic;
SIGNAL \inst6|Add0~113_sumout\ : std_logic;
SIGNAL \inst6|Add0~114\ : std_logic;
SIGNAL \inst6|Add0~117_sumout\ : std_logic;
SIGNAL \inst6|Add0~118\ : std_logic;
SIGNAL \inst6|Add0~121_sumout\ : std_logic;
SIGNAL \inst6|Add0~122\ : std_logic;
SIGNAL \inst6|Add0~125_sumout\ : std_logic;
SIGNAL \inst6|Add0~126\ : std_logic;
SIGNAL \inst6|Add0~53_sumout\ : std_logic;
SIGNAL \inst6|Add0~54\ : std_logic;
SIGNAL \inst6|Add0~57_sumout\ : std_logic;
SIGNAL \inst6|Add0~58\ : std_logic;
SIGNAL \inst6|Add0~61_sumout\ : std_logic;
SIGNAL \inst6|Add0~62\ : std_logic;
SIGNAL \inst6|Add0~33_sumout\ : std_logic;
SIGNAL \inst6|Add0~34\ : std_logic;
SIGNAL \inst6|Add0~37_sumout\ : std_logic;
SIGNAL \inst6|Add0~38\ : std_logic;
SIGNAL \inst6|Add0~85_sumout\ : std_logic;
SIGNAL \inst6|Add0~86\ : std_logic;
SIGNAL \inst6|Add0~89_sumout\ : std_logic;
SIGNAL \inst6|Add0~90\ : std_logic;
SIGNAL \inst6|Add0~93_sumout\ : std_logic;
SIGNAL \inst6|Add0~94\ : std_logic;
SIGNAL \inst6|Add0~97_sumout\ : std_logic;
SIGNAL \inst6|Add0~98\ : std_logic;
SIGNAL \inst6|Add0~41_sumout\ : std_logic;
SIGNAL \inst6|Add0~42\ : std_logic;
SIGNAL \inst6|Add0~101_sumout\ : std_logic;
SIGNAL \inst6|Add0~102\ : std_logic;
SIGNAL \inst6|Add0~45_sumout\ : std_logic;
SIGNAL \inst6|Add0~46\ : std_logic;
SIGNAL \inst6|Add0~49_sumout\ : std_logic;
SIGNAL \inst6|Add0~50\ : std_logic;
SIGNAL \inst6|Add0~13_sumout\ : std_logic;
SIGNAL \inst6|Add0~14\ : std_logic;
SIGNAL \inst6|Add0~17_sumout\ : std_logic;
SIGNAL \inst6|Add0~18\ : std_logic;
SIGNAL \inst6|Add0~65_sumout\ : std_logic;
SIGNAL \inst6|Add0~66\ : std_logic;
SIGNAL \inst6|Add0~69_sumout\ : std_logic;
SIGNAL \inst6|Add0~70\ : std_logic;
SIGNAL \inst6|Add0~73_sumout\ : std_logic;
SIGNAL \inst6|Add0~74\ : std_logic;
SIGNAL \inst6|Add0~77_sumout\ : std_logic;
SIGNAL \inst6|Add0~78\ : std_logic;
SIGNAL \inst6|Add0~21_sumout\ : std_logic;
SIGNAL \inst6|Add0~22\ : std_logic;
SIGNAL \inst6|Add0~81_sumout\ : std_logic;
SIGNAL \inst6|Add0~82\ : std_logic;
SIGNAL \inst6|Add0~25_sumout\ : std_logic;
SIGNAL \inst6|Add0~26\ : std_logic;
SIGNAL \inst6|Add0~29_sumout\ : std_logic;
SIGNAL \inst6|Add0~30\ : std_logic;
SIGNAL \inst6|Add0~1_sumout\ : std_logic;
SIGNAL \inst6|Equal0~7_combout\ : std_logic;
SIGNAL \inst6|Equal0~8_combout\ : std_logic;
SIGNAL \inst6|Equal0~5_combout\ : std_logic;
SIGNAL \inst6|Equal0~6_combout\ : std_logic;
SIGNAL \inst6|Add0~6\ : std_logic;
SIGNAL \inst6|Add0~9_sumout\ : std_logic;
SIGNAL \inst6|clk~0_combout\ : std_logic;
SIGNAL \inst6|clk~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|s_count[0]~0_combout\ : std_logic;
SIGNAL \inst|s_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|s_count[2]~feeder_combout\ : std_logic;
SIGNAL \inst|s_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|s_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|s_count[4]~feeder_combout\ : std_logic;
SIGNAL \inst|s_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|s_count[6]~feeder_combout\ : std_logic;
SIGNAL \inst|s_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|s_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|s_count[8]~feeder_combout\ : std_logic;
SIGNAL \inst|s_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|s_count[9]~feeder_combout\ : std_logic;
SIGNAL \inst|s_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ALT_INV_s_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_s_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_s_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_s_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_s_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_clk~q\ : std_logic;
SIGNAL \inst|ALT_INV_s_count\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst6|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst6|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_s_count[3]~DUPLICATE_q\ <= NOT \inst|s_count[3]~DUPLICATE_q\;
\inst|ALT_INV_s_count[5]~DUPLICATE_q\ <= NOT \inst|s_count[5]~DUPLICATE_q\;
\inst|ALT_INV_s_count[7]~DUPLICATE_q\ <= NOT \inst|s_count[7]~DUPLICATE_q\;
\inst|ALT_INV_s_count[8]~DUPLICATE_q\ <= NOT \inst|s_count[8]~DUPLICATE_q\;
\inst|ALT_INV_s_count[9]~DUPLICATE_q\ <= NOT \inst|s_count[9]~DUPLICATE_q\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\inst6|ALT_INV_Equal0~9_combout\ <= NOT \inst6|Equal0~9_combout\;
\inst6|ALT_INV_Equal0~8_combout\ <= NOT \inst6|Equal0~8_combout\;
\inst6|ALT_INV_Equal0~7_combout\ <= NOT \inst6|Equal0~7_combout\;
\inst6|ALT_INV_Equal0~5_combout\ <= NOT \inst6|Equal0~5_combout\;
\inst6|ALT_INV_count\(0) <= NOT \inst6|count\(0);
\inst6|ALT_INV_Equal0~4_combout\ <= NOT \inst6|Equal0~4_combout\;
\inst6|ALT_INV_Equal0~3_combout\ <= NOT \inst6|Equal0~3_combout\;
\inst6|ALT_INV_Equal0~2_combout\ <= NOT \inst6|Equal0~2_combout\;
\inst6|ALT_INV_Equal0~1_combout\ <= NOT \inst6|Equal0~1_combout\;
\inst6|ALT_INV_Equal0~0_combout\ <= NOT \inst6|Equal0~0_combout\;
\inst6|ALT_INV_clk~q\ <= NOT \inst6|clk~q\;
\inst|ALT_INV_s_count\(1) <= NOT \inst|s_count\(1);
\inst6|ALT_INV_count\(5) <= NOT \inst6|count\(5);
\inst6|ALT_INV_count\(4) <= NOT \inst6|count\(4);
\inst6|ALT_INV_count\(3) <= NOT \inst6|count\(3);
\inst6|ALT_INV_count\(2) <= NOT \inst6|count\(2);
\inst6|ALT_INV_count\(1) <= NOT \inst6|count\(1);
\inst6|ALT_INV_count\(16) <= NOT \inst6|count\(16);
\inst6|ALT_INV_count\(14) <= NOT \inst6|count\(14);
\inst6|ALT_INV_count\(13) <= NOT \inst6|count\(13);
\inst6|ALT_INV_count\(12) <= NOT \inst6|count\(12);
\inst6|ALT_INV_count\(11) <= NOT \inst6|count\(11);
\inst6|ALT_INV_count\(26) <= NOT \inst6|count\(26);
\inst6|ALT_INV_count\(24) <= NOT \inst6|count\(24);
\inst6|ALT_INV_count\(23) <= NOT \inst6|count\(23);
\inst6|ALT_INV_count\(22) <= NOT \inst6|count\(22);
\inst6|ALT_INV_count\(21) <= NOT \inst6|count\(21);
\inst6|ALT_INV_count\(8) <= NOT \inst6|count\(8);
\inst6|ALT_INV_count\(7) <= NOT \inst6|count\(7);
\inst6|ALT_INV_count\(6) <= NOT \inst6|count\(6);
\inst6|ALT_INV_count\(18) <= NOT \inst6|count\(18);
\inst6|ALT_INV_count\(17) <= NOT \inst6|count\(17);
\inst6|ALT_INV_count\(15) <= NOT \inst6|count\(15);
\inst6|ALT_INV_count\(10) <= NOT \inst6|count\(10);
\inst6|ALT_INV_count\(9) <= NOT \inst6|count\(9);
\inst6|ALT_INV_count\(28) <= NOT \inst6|count\(28);
\inst6|ALT_INV_count\(27) <= NOT \inst6|count\(27);
\inst6|ALT_INV_count\(25) <= NOT \inst6|count\(25);
\inst6|ALT_INV_count\(20) <= NOT \inst6|count\(20);
\inst6|ALT_INV_count\(19) <= NOT \inst6|count\(19);
\inst6|ALT_INV_count\(31) <= NOT \inst6|count\(31);
\inst6|ALT_INV_count\(30) <= NOT \inst6|count\(30);
\inst6|ALT_INV_count\(29) <= NOT \inst6|count\(29);
\inst6|ALT_INV_Add0~125_sumout\ <= NOT \inst6|Add0~125_sumout\;
\inst6|ALT_INV_Add0~121_sumout\ <= NOT \inst6|Add0~121_sumout\;
\inst6|ALT_INV_Add0~117_sumout\ <= NOT \inst6|Add0~117_sumout\;
\inst6|ALT_INV_Add0~113_sumout\ <= NOT \inst6|Add0~113_sumout\;
\inst6|ALT_INV_Add0~109_sumout\ <= NOT \inst6|Add0~109_sumout\;
\inst6|ALT_INV_Add0~105_sumout\ <= NOT \inst6|Add0~105_sumout\;
\inst6|ALT_INV_Add0~101_sumout\ <= NOT \inst6|Add0~101_sumout\;
\inst6|ALT_INV_Add0~97_sumout\ <= NOT \inst6|Add0~97_sumout\;
\inst6|ALT_INV_Add0~93_sumout\ <= NOT \inst6|Add0~93_sumout\;
\inst6|ALT_INV_Add0~89_sumout\ <= NOT \inst6|Add0~89_sumout\;
\inst6|ALT_INV_Add0~85_sumout\ <= NOT \inst6|Add0~85_sumout\;
\inst6|ALT_INV_Add0~81_sumout\ <= NOT \inst6|Add0~81_sumout\;
\inst6|ALT_INV_Add0~77_sumout\ <= NOT \inst6|Add0~77_sumout\;
\inst6|ALT_INV_Add0~73_sumout\ <= NOT \inst6|Add0~73_sumout\;
\inst6|ALT_INV_Add0~69_sumout\ <= NOT \inst6|Add0~69_sumout\;
\inst6|ALT_INV_Add0~65_sumout\ <= NOT \inst6|Add0~65_sumout\;
\inst6|ALT_INV_Add0~61_sumout\ <= NOT \inst6|Add0~61_sumout\;
\inst6|ALT_INV_Add0~57_sumout\ <= NOT \inst6|Add0~57_sumout\;
\inst6|ALT_INV_Add0~53_sumout\ <= NOT \inst6|Add0~53_sumout\;
\inst6|ALT_INV_Add0~49_sumout\ <= NOT \inst6|Add0~49_sumout\;
\inst6|ALT_INV_Add0~45_sumout\ <= NOT \inst6|Add0~45_sumout\;
\inst6|ALT_INV_Add0~41_sumout\ <= NOT \inst6|Add0~41_sumout\;
\inst6|ALT_INV_Add0~37_sumout\ <= NOT \inst6|Add0~37_sumout\;
\inst6|ALT_INV_Add0~33_sumout\ <= NOT \inst6|Add0~33_sumout\;
\inst6|ALT_INV_Add0~29_sumout\ <= NOT \inst6|Add0~29_sumout\;
\inst6|ALT_INV_Add0~25_sumout\ <= NOT \inst6|Add0~25_sumout\;
\inst6|ALT_INV_Add0~21_sumout\ <= NOT \inst6|Add0~21_sumout\;
\inst6|ALT_INV_Add0~17_sumout\ <= NOT \inst6|Add0~17_sumout\;
\inst6|ALT_INV_Add0~13_sumout\ <= NOT \inst6|Add0~13_sumout\;
\inst6|ALT_INV_Add0~9_sumout\ <= NOT \inst6|Add0~9_sumout\;
\inst6|ALT_INV_Add0~5_sumout\ <= NOT \inst6|Add0~5_sumout\;
\inst6|ALT_INV_Add0~1_sumout\ <= NOT \inst6|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

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

-- Location: FF_X45_Y5_N26
\inst6|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~1_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(29));

-- Location: FF_X45_Y5_N19
\inst6|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~5_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(30));

-- Location: LABCELL_X45_Y5_N27
\inst6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_sumout\ = SUM(( \inst6|count\(29) ) + ( GND ) + ( \inst6|Add0~30\ ))
-- \inst6|Add0~2\ = CARRY(( \inst6|count\(29) ) + ( GND ) + ( \inst6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(29),
	cin => \inst6|Add0~30\,
	sumout => \inst6|Add0~1_sumout\,
	cout => \inst6|Add0~2\);

-- Location: LABCELL_X45_Y5_N30
\inst6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~5_sumout\ = SUM(( \inst6|count\(30) ) + ( GND ) + ( \inst6|Add0~2\ ))
-- \inst6|Add0~6\ = CARRY(( \inst6|count\(30) ) + ( GND ) + ( \inst6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst6|ALT_INV_count\(30),
	cin => \inst6|Add0~2\,
	sumout => \inst6|Add0~5_sumout\,
	cout => \inst6|Add0~6\);

-- Location: LABCELL_X45_Y6_N0
\inst6|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~105_sumout\ = SUM(( !\inst6|count\(0) ) + ( VCC ) + ( !VCC ))
-- \inst6|Add0~106\ = CARRY(( !\inst6|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(0),
	cin => GND,
	sumout => \inst6|Add0~105_sumout\,
	cout => \inst6|Add0~106\);

-- Location: LABCELL_X46_Y5_N0
\inst6|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = ( !\inst6|Add0~57_sumout\ & ( \inst6|Add0~53_sumout\ & ( !\inst6|Add0~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_Add0~61_sumout\,
	datae => \inst6|ALT_INV_Add0~57_sumout\,
	dataf => \inst6|ALT_INV_Add0~53_sumout\,
	combout => \inst6|Equal0~0_combout\);

-- Location: LABCELL_X46_Y5_N6
\inst6|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~1_combout\ = ( \inst6|Add0~49_sumout\ & ( !\inst6|Add0~45_sumout\ & ( (\inst6|Equal0~0_combout\ & (!\inst6|Add0~33_sumout\ & (!\inst6|Add0~41_sumout\ & !\inst6|Add0~37_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal0~0_combout\,
	datab => \inst6|ALT_INV_Add0~33_sumout\,
	datac => \inst6|ALT_INV_Add0~41_sumout\,
	datad => \inst6|ALT_INV_Add0~37_sumout\,
	datae => \inst6|ALT_INV_Add0~49_sumout\,
	dataf => \inst6|ALT_INV_Add0~45_sumout\,
	combout => \inst6|Equal0~1_combout\);

-- Location: LABCELL_X46_Y5_N30
\inst6|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~2_combout\ = ( !\inst6|Add0~25_sumout\ & ( \inst6|Equal0~1_combout\ & ( (\inst6|Add0~17_sumout\ & (!\inst6|Add0~21_sumout\ & (\inst6|Add0~13_sumout\ & !\inst6|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~17_sumout\,
	datab => \inst6|ALT_INV_Add0~21_sumout\,
	datac => \inst6|ALT_INV_Add0~13_sumout\,
	datad => \inst6|ALT_INV_Add0~29_sumout\,
	datae => \inst6|ALT_INV_Add0~25_sumout\,
	dataf => \inst6|ALT_INV_Equal0~1_combout\,
	combout => \inst6|Equal0~2_combout\);

-- Location: LABCELL_X46_Y6_N12
\inst6|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~3_combout\ = ( !\inst6|Add0~121_sumout\ & ( !\inst6|Add0~125_sumout\ & ( (!\inst6|Add0~105_sumout\ & (!\inst6|Add0~117_sumout\ & (!\inst6|Add0~113_sumout\ & !\inst6|Add0~109_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~105_sumout\,
	datab => \inst6|ALT_INV_Add0~117_sumout\,
	datac => \inst6|ALT_INV_Add0~113_sumout\,
	datad => \inst6|ALT_INV_Add0~109_sumout\,
	datae => \inst6|ALT_INV_Add0~121_sumout\,
	dataf => \inst6|ALT_INV_Add0~125_sumout\,
	combout => \inst6|Equal0~3_combout\);

-- Location: LABCELL_X45_Y5_N42
\inst6|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~9_combout\ = ( \inst6|Add0~101_sumout\ & ( !\inst6|Add0~81_sumout\ & ( (\inst6|Add0~85_sumout\ & (\inst6|Add0~97_sumout\ & (\inst6|Add0~89_sumout\ & \inst6|Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~85_sumout\,
	datab => \inst6|ALT_INV_Add0~97_sumout\,
	datac => \inst6|ALT_INV_Add0~89_sumout\,
	datad => \inst6|ALT_INV_Add0~93_sumout\,
	datae => \inst6|ALT_INV_Add0~101_sumout\,
	dataf => \inst6|ALT_INV_Add0~81_sumout\,
	combout => \inst6|Equal0~9_combout\);

-- Location: LABCELL_X45_Y5_N39
\inst6|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~4_combout\ = ( \inst6|Add0~77_sumout\ & ( \inst6|Equal0~9_combout\ & ( (\inst6|Equal0~3_combout\ & (!\inst6|Add0~73_sumout\ & (\inst6|Add0~69_sumout\ & \inst6|Add0~65_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal0~3_combout\,
	datab => \inst6|ALT_INV_Add0~73_sumout\,
	datac => \inst6|ALT_INV_Add0~69_sumout\,
	datad => \inst6|ALT_INV_Add0~65_sumout\,
	datae => \inst6|ALT_INV_Add0~77_sumout\,
	dataf => \inst6|ALT_INV_Equal0~9_combout\,
	combout => \inst6|Equal0~4_combout\);

-- Location: LABCELL_X46_Y5_N18
\inst6|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|count~0_combout\ = ( \inst6|Add0~1_sumout\ & ( \inst6|Equal0~4_combout\ & ( !\inst6|Add0~105_sumout\ ) ) ) # ( !\inst6|Add0~1_sumout\ & ( \inst6|Equal0~4_combout\ & ( !\inst6|Add0~105_sumout\ $ (((!\inst6|Add0~5_sumout\ & (!\inst6|Add0~9_sumout\ & 
-- \inst6|Equal0~2_combout\)))) ) ) ) # ( \inst6|Add0~1_sumout\ & ( !\inst6|Equal0~4_combout\ & ( !\inst6|Add0~105_sumout\ ) ) ) # ( !\inst6|Add0~1_sumout\ & ( !\inst6|Equal0~4_combout\ & ( !\inst6|Add0~105_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000011110001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~5_sumout\,
	datab => \inst6|ALT_INV_Add0~9_sumout\,
	datac => \inst6|ALT_INV_Add0~105_sumout\,
	datad => \inst6|ALT_INV_Equal0~2_combout\,
	datae => \inst6|ALT_INV_Add0~1_sumout\,
	dataf => \inst6|ALT_INV_Equal0~4_combout\,
	combout => \inst6|count~0_combout\);

-- Location: FF_X46_Y5_N20
\inst6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(0));

-- Location: LABCELL_X45_Y6_N3
\inst6|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~109_sumout\ = SUM(( \inst6|count\(1) ) + ( GND ) + ( \inst6|Add0~106\ ))
-- \inst6|Add0~110\ = CARRY(( \inst6|count\(1) ) + ( GND ) + ( \inst6|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(1),
	cin => \inst6|Add0~106\,
	sumout => \inst6|Add0~109_sumout\,
	cout => \inst6|Add0~110\);

-- Location: FF_X45_Y6_N5
\inst6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~109_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(1));

-- Location: LABCELL_X45_Y6_N6
\inst6|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~113_sumout\ = SUM(( \inst6|count\(2) ) + ( GND ) + ( \inst6|Add0~110\ ))
-- \inst6|Add0~114\ = CARRY(( \inst6|count\(2) ) + ( GND ) + ( \inst6|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(2),
	cin => \inst6|Add0~110\,
	sumout => \inst6|Add0~113_sumout\,
	cout => \inst6|Add0~114\);

-- Location: FF_X45_Y6_N8
\inst6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~113_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(2));

-- Location: LABCELL_X45_Y6_N9
\inst6|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~117_sumout\ = SUM(( \inst6|count\(3) ) + ( GND ) + ( \inst6|Add0~114\ ))
-- \inst6|Add0~118\ = CARRY(( \inst6|count\(3) ) + ( GND ) + ( \inst6|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(3),
	cin => \inst6|Add0~114\,
	sumout => \inst6|Add0~117_sumout\,
	cout => \inst6|Add0~118\);

-- Location: FF_X45_Y6_N11
\inst6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~117_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(3));

-- Location: LABCELL_X45_Y6_N12
\inst6|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~121_sumout\ = SUM(( \inst6|count\(4) ) + ( GND ) + ( \inst6|Add0~118\ ))
-- \inst6|Add0~122\ = CARRY(( \inst6|count\(4) ) + ( GND ) + ( \inst6|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(4),
	cin => \inst6|Add0~118\,
	sumout => \inst6|Add0~121_sumout\,
	cout => \inst6|Add0~122\);

-- Location: FF_X45_Y6_N14
\inst6|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~121_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(4));

-- Location: LABCELL_X45_Y6_N15
\inst6|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~125_sumout\ = SUM(( \inst6|count\(5) ) + ( GND ) + ( \inst6|Add0~122\ ))
-- \inst6|Add0~126\ = CARRY(( \inst6|count\(5) ) + ( GND ) + ( \inst6|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(5),
	cin => \inst6|Add0~122\,
	sumout => \inst6|Add0~125_sumout\,
	cout => \inst6|Add0~126\);

-- Location: FF_X45_Y6_N17
\inst6|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~125_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(5));

-- Location: LABCELL_X45_Y6_N18
\inst6|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~53_sumout\ = SUM(( \inst6|count\(6) ) + ( GND ) + ( \inst6|Add0~126\ ))
-- \inst6|Add0~54\ = CARRY(( \inst6|count\(6) ) + ( GND ) + ( \inst6|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(6),
	cin => \inst6|Add0~126\,
	sumout => \inst6|Add0~53_sumout\,
	cout => \inst6|Add0~54\);

-- Location: FF_X45_Y6_N20
\inst6|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~53_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(6));

-- Location: LABCELL_X45_Y6_N21
\inst6|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~57_sumout\ = SUM(( \inst6|count\(7) ) + ( GND ) + ( \inst6|Add0~54\ ))
-- \inst6|Add0~58\ = CARRY(( \inst6|count\(7) ) + ( GND ) + ( \inst6|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(7),
	cin => \inst6|Add0~54\,
	sumout => \inst6|Add0~57_sumout\,
	cout => \inst6|Add0~58\);

-- Location: FF_X45_Y6_N23
\inst6|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~57_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(7));

-- Location: LABCELL_X45_Y6_N24
\inst6|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~61_sumout\ = SUM(( \inst6|count\(8) ) + ( GND ) + ( \inst6|Add0~58\ ))
-- \inst6|Add0~62\ = CARRY(( \inst6|count\(8) ) + ( GND ) + ( \inst6|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(8),
	cin => \inst6|Add0~58\,
	sumout => \inst6|Add0~61_sumout\,
	cout => \inst6|Add0~62\);

-- Location: FF_X45_Y6_N26
\inst6|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~61_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(8));

-- Location: LABCELL_X45_Y6_N27
\inst6|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~33_sumout\ = SUM(( \inst6|count\(9) ) + ( GND ) + ( \inst6|Add0~62\ ))
-- \inst6|Add0~34\ = CARRY(( \inst6|count\(9) ) + ( GND ) + ( \inst6|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(9),
	cin => \inst6|Add0~62\,
	sumout => \inst6|Add0~33_sumout\,
	cout => \inst6|Add0~34\);

-- Location: FF_X45_Y6_N29
\inst6|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~33_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(9));

-- Location: LABCELL_X45_Y6_N30
\inst6|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~37_sumout\ = SUM(( \inst6|count\(10) ) + ( GND ) + ( \inst6|Add0~34\ ))
-- \inst6|Add0~38\ = CARRY(( \inst6|count\(10) ) + ( GND ) + ( \inst6|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(10),
	cin => \inst6|Add0~34\,
	sumout => \inst6|Add0~37_sumout\,
	cout => \inst6|Add0~38\);

-- Location: FF_X45_Y6_N32
\inst6|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~37_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(10));

-- Location: LABCELL_X45_Y6_N33
\inst6|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~85_sumout\ = SUM(( \inst6|count\(11) ) + ( GND ) + ( \inst6|Add0~38\ ))
-- \inst6|Add0~86\ = CARRY(( \inst6|count\(11) ) + ( GND ) + ( \inst6|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(11),
	cin => \inst6|Add0~38\,
	sumout => \inst6|Add0~85_sumout\,
	cout => \inst6|Add0~86\);

-- Location: FF_X45_Y6_N35
\inst6|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~85_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(11));

-- Location: LABCELL_X45_Y6_N36
\inst6|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~89_sumout\ = SUM(( \inst6|count\(12) ) + ( GND ) + ( \inst6|Add0~86\ ))
-- \inst6|Add0~90\ = CARRY(( \inst6|count\(12) ) + ( GND ) + ( \inst6|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(12),
	cin => \inst6|Add0~86\,
	sumout => \inst6|Add0~89_sumout\,
	cout => \inst6|Add0~90\);

-- Location: FF_X45_Y6_N38
\inst6|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~89_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(12));

-- Location: LABCELL_X45_Y6_N39
\inst6|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~93_sumout\ = SUM(( \inst6|count\(13) ) + ( GND ) + ( \inst6|Add0~90\ ))
-- \inst6|Add0~94\ = CARRY(( \inst6|count\(13) ) + ( GND ) + ( \inst6|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(13),
	cin => \inst6|Add0~90\,
	sumout => \inst6|Add0~93_sumout\,
	cout => \inst6|Add0~94\);

-- Location: FF_X45_Y6_N41
\inst6|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~93_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(13));

-- Location: LABCELL_X45_Y6_N42
\inst6|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~97_sumout\ = SUM(( \inst6|count\(14) ) + ( GND ) + ( \inst6|Add0~94\ ))
-- \inst6|Add0~98\ = CARRY(( \inst6|count\(14) ) + ( GND ) + ( \inst6|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(14),
	cin => \inst6|Add0~94\,
	sumout => \inst6|Add0~97_sumout\,
	cout => \inst6|Add0~98\);

-- Location: FF_X45_Y6_N44
\inst6|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~97_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(14));

-- Location: LABCELL_X45_Y6_N45
\inst6|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~41_sumout\ = SUM(( \inst6|count\(15) ) + ( GND ) + ( \inst6|Add0~98\ ))
-- \inst6|Add0~42\ = CARRY(( \inst6|count\(15) ) + ( GND ) + ( \inst6|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(15),
	cin => \inst6|Add0~98\,
	sumout => \inst6|Add0~41_sumout\,
	cout => \inst6|Add0~42\);

-- Location: FF_X45_Y6_N47
\inst6|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~41_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(15));

-- Location: LABCELL_X45_Y6_N48
\inst6|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~101_sumout\ = SUM(( \inst6|count\(16) ) + ( GND ) + ( \inst6|Add0~42\ ))
-- \inst6|Add0~102\ = CARRY(( \inst6|count\(16) ) + ( GND ) + ( \inst6|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(16),
	cin => \inst6|Add0~42\,
	sumout => \inst6|Add0~101_sumout\,
	cout => \inst6|Add0~102\);

-- Location: FF_X45_Y6_N50
\inst6|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~101_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(16));

-- Location: LABCELL_X45_Y6_N51
\inst6|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~45_sumout\ = SUM(( \inst6|count\(17) ) + ( GND ) + ( \inst6|Add0~102\ ))
-- \inst6|Add0~46\ = CARRY(( \inst6|count\(17) ) + ( GND ) + ( \inst6|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(17),
	cin => \inst6|Add0~102\,
	sumout => \inst6|Add0~45_sumout\,
	cout => \inst6|Add0~46\);

-- Location: FF_X45_Y6_N53
\inst6|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~45_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(17));

-- Location: LABCELL_X45_Y6_N54
\inst6|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~49_sumout\ = SUM(( \inst6|count\(18) ) + ( GND ) + ( \inst6|Add0~46\ ))
-- \inst6|Add0~50\ = CARRY(( \inst6|count\(18) ) + ( GND ) + ( \inst6|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(18),
	cin => \inst6|Add0~46\,
	sumout => \inst6|Add0~49_sumout\,
	cout => \inst6|Add0~50\);

-- Location: FF_X45_Y6_N56
\inst6|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~49_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(18));

-- Location: LABCELL_X45_Y6_N57
\inst6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~13_sumout\ = SUM(( \inst6|count\(19) ) + ( GND ) + ( \inst6|Add0~50\ ))
-- \inst6|Add0~14\ = CARRY(( \inst6|count\(19) ) + ( GND ) + ( \inst6|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(19),
	cin => \inst6|Add0~50\,
	sumout => \inst6|Add0~13_sumout\,
	cout => \inst6|Add0~14\);

-- Location: FF_X45_Y6_N59
\inst6|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst6|Add0~13_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(19));

-- Location: LABCELL_X45_Y5_N0
\inst6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~17_sumout\ = SUM(( \inst6|count\(20) ) + ( GND ) + ( \inst6|Add0~14\ ))
-- \inst6|Add0~18\ = CARRY(( \inst6|count\(20) ) + ( GND ) + ( \inst6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_count\(20),
	cin => \inst6|Add0~14\,
	sumout => \inst6|Add0~17_sumout\,
	cout => \inst6|Add0~18\);

-- Location: FF_X45_Y5_N50
\inst6|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~17_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(20));

-- Location: LABCELL_X45_Y5_N3
\inst6|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~65_sumout\ = SUM(( \inst6|count\(21) ) + ( GND ) + ( \inst6|Add0~18\ ))
-- \inst6|Add0~66\ = CARRY(( \inst6|count\(21) ) + ( GND ) + ( \inst6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(21),
	cin => \inst6|Add0~18\,
	sumout => \inst6|Add0~65_sumout\,
	cout => \inst6|Add0~66\);

-- Location: FF_X45_Y5_N38
\inst6|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~65_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(21));

-- Location: LABCELL_X45_Y5_N6
\inst6|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~69_sumout\ = SUM(( \inst6|count\(22) ) + ( GND ) + ( \inst6|Add0~66\ ))
-- \inst6|Add0~70\ = CARRY(( \inst6|count\(22) ) + ( GND ) + ( \inst6|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_count\(22),
	cin => \inst6|Add0~66\,
	sumout => \inst6|Add0~69_sumout\,
	cout => \inst6|Add0~70\);

-- Location: FF_X45_Y5_N56
\inst6|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~69_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(22));

-- Location: LABCELL_X45_Y5_N9
\inst6|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~73_sumout\ = SUM(( \inst6|count\(23) ) + ( GND ) + ( \inst6|Add0~70\ ))
-- \inst6|Add0~74\ = CARRY(( \inst6|count\(23) ) + ( GND ) + ( \inst6|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_count\(23),
	cin => \inst6|Add0~70\,
	sumout => \inst6|Add0~73_sumout\,
	cout => \inst6|Add0~74\);

-- Location: FF_X45_Y5_N52
\inst6|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~73_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(23));

-- Location: LABCELL_X45_Y5_N12
\inst6|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~77_sumout\ = SUM(( \inst6|count\(24) ) + ( GND ) + ( \inst6|Add0~74\ ))
-- \inst6|Add0~78\ = CARRY(( \inst6|count\(24) ) + ( GND ) + ( \inst6|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_count\(24),
	cin => \inst6|Add0~74\,
	sumout => \inst6|Add0~77_sumout\,
	cout => \inst6|Add0~78\);

-- Location: FF_X45_Y5_N41
\inst6|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~77_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(24));

-- Location: LABCELL_X45_Y5_N15
\inst6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~21_sumout\ = SUM(( \inst6|count\(25) ) + ( GND ) + ( \inst6|Add0~78\ ))
-- \inst6|Add0~22\ = CARRY(( \inst6|count\(25) ) + ( GND ) + ( \inst6|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_count\(25),
	cin => \inst6|Add0~78\,
	sumout => \inst6|Add0~21_sumout\,
	cout => \inst6|Add0~22\);

-- Location: FF_X45_Y5_N59
\inst6|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~21_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(25));

-- Location: LABCELL_X45_Y5_N18
\inst6|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~81_sumout\ = SUM(( \inst6|count\(26) ) + ( GND ) + ( \inst6|Add0~22\ ))
-- \inst6|Add0~82\ = CARRY(( \inst6|count\(26) ) + ( GND ) + ( \inst6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_count\(26),
	cin => \inst6|Add0~22\,
	sumout => \inst6|Add0~81_sumout\,
	cout => \inst6|Add0~82\);

-- Location: FF_X45_Y5_N17
\inst6|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~81_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(26));

-- Location: LABCELL_X45_Y5_N21
\inst6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~25_sumout\ = SUM(( \inst6|count\(27) ) + ( GND ) + ( \inst6|Add0~82\ ))
-- \inst6|Add0~26\ = CARRY(( \inst6|count\(27) ) + ( GND ) + ( \inst6|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst6|ALT_INV_count\(27),
	cin => \inst6|Add0~82\,
	sumout => \inst6|Add0~25_sumout\,
	cout => \inst6|Add0~26\);

-- Location: FF_X45_Y5_N10
\inst6|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~25_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(27));

-- Location: LABCELL_X45_Y5_N24
\inst6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~29_sumout\ = SUM(( \inst6|count\(28) ) + ( GND ) + ( \inst6|Add0~26\ ))
-- \inst6|Add0~30\ = CARRY(( \inst6|count\(28) ) + ( GND ) + ( \inst6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_count\(28),
	cin => \inst6|Add0~26\,
	sumout => \inst6|Add0~29_sumout\,
	cout => \inst6|Add0~30\);

-- Location: FF_X45_Y5_N23
\inst6|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~29_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(28));

-- Location: LABCELL_X46_Y5_N24
\inst6|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~7_combout\ = ( !\inst6|Add0~37_sumout\ & ( !\inst6|Add0~45_sumout\ & ( (\inst6|Add0~53_sumout\ & (!\inst6|Add0~57_sumout\ & (!\inst6|Add0~61_sumout\ & !\inst6|Add0~33_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~53_sumout\,
	datab => \inst6|ALT_INV_Add0~57_sumout\,
	datac => \inst6|ALT_INV_Add0~61_sumout\,
	datad => \inst6|ALT_INV_Add0~33_sumout\,
	datae => \inst6|ALT_INV_Add0~37_sumout\,
	dataf => \inst6|ALT_INV_Add0~45_sumout\,
	combout => \inst6|Equal0~7_combout\);

-- Location: LABCELL_X46_Y5_N51
\inst6|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~8_combout\ = ( \inst6|Add0~49_sumout\ & ( !\inst6|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst6|ALT_INV_Add0~49_sumout\,
	dataf => \inst6|ALT_INV_Add0~41_sumout\,
	combout => \inst6|Equal0~8_combout\);

-- Location: LABCELL_X46_Y5_N54
\inst6|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~5_combout\ = ( !\inst6|Add0~25_sumout\ & ( \inst6|Equal0~8_combout\ & ( (\inst6|Equal0~7_combout\ & (\inst6|Add0~17_sumout\ & (\inst6|Add0~13_sumout\ & !\inst6|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal0~7_combout\,
	datab => \inst6|ALT_INV_Add0~17_sumout\,
	datac => \inst6|ALT_INV_Add0~13_sumout\,
	datad => \inst6|ALT_INV_Add0~21_sumout\,
	datae => \inst6|ALT_INV_Add0~25_sumout\,
	dataf => \inst6|ALT_INV_Equal0~8_combout\,
	combout => \inst6|Equal0~5_combout\);

-- Location: LABCELL_X45_Y5_N51
\inst6|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal0~6_combout\ = ( \inst6|Equal0~5_combout\ & ( \inst6|Equal0~4_combout\ & ( (!\inst6|Add0~1_sumout\ & (!\inst6|Add0~29_sumout\ & (!\inst6|Add0~5_sumout\ & !\inst6|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~1_sumout\,
	datab => \inst6|ALT_INV_Add0~29_sumout\,
	datac => \inst6|ALT_INV_Add0~5_sumout\,
	datad => \inst6|ALT_INV_Add0~9_sumout\,
	datae => \inst6|ALT_INV_Equal0~5_combout\,
	dataf => \inst6|ALT_INV_Equal0~4_combout\,
	combout => \inst6|Equal0~6_combout\);

-- Location: FF_X45_Y5_N4
\inst6|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst6|Add0~9_sumout\,
	sclr => \inst6|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(31));

-- Location: LABCELL_X45_Y5_N33
\inst6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Add0~9_sumout\ = SUM(( \inst6|count\(31) ) + ( GND ) + ( \inst6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ALT_INV_count\(31),
	cin => \inst6|Add0~6\,
	sumout => \inst6|Add0~9_sumout\);

-- Location: LABCELL_X45_Y5_N57
\inst6|clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|clk~0_combout\ = ( \inst6|Equal0~4_combout\ & ( \inst6|Equal0~2_combout\ & ( !\inst6|clk~q\ $ ((((\inst6|Add0~1_sumout\) # (\inst6|Add0~5_sumout\)) # (\inst6|Add0~9_sumout\))) ) ) ) # ( !\inst6|Equal0~4_combout\ & ( \inst6|Equal0~2_combout\ & ( 
-- \inst6|clk~q\ ) ) ) # ( \inst6|Equal0~4_combout\ & ( !\inst6|Equal0~2_combout\ & ( \inst6|clk~q\ ) ) ) # ( !\inst6|Equal0~4_combout\ & ( !\inst6|Equal0~2_combout\ & ( \inst6|clk~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100111001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Add0~9_sumout\,
	datab => \inst6|ALT_INV_clk~q\,
	datac => \inst6|ALT_INV_Add0~5_sumout\,
	datad => \inst6|ALT_INV_Add0~1_sumout\,
	datae => \inst6|ALT_INV_Equal0~4_combout\,
	dataf => \inst6|ALT_INV_Equal0~2_combout\,
	combout => \inst6|clk~0_combout\);

-- Location: FF_X45_Y5_N47
\inst6|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \inst6|clk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|clk~q\);

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

-- Location: FF_X46_Y4_N26
\inst|s_count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[9]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count[9]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y4_N33
\inst|s_count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~0_combout\ = !\inst|s_count[9]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_count[9]~DUPLICATE_q\,
	combout => \inst|s_count[0]~0_combout\);

-- Location: FF_X46_Y4_N34
\inst|s_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[0]~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count[0]~DUPLICATE_q\);

-- Location: FF_X46_Y4_N14
\inst|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	asdata => \inst|s_count[0]~DUPLICATE_q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(1));

-- Location: LABCELL_X46_Y4_N0
\inst|s_count[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_count[2]~feeder_combout\ = \inst|s_count\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_count\(1),
	combout => \inst|s_count[2]~feeder_combout\);

-- Location: FF_X46_Y4_N1
\inst|s_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[2]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count[2]~DUPLICATE_q\);

-- Location: FF_X46_Y4_N10
\inst|s_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	asdata => \inst|s_count[2]~DUPLICATE_q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count[3]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y4_N48
\inst|s_count[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_count[4]~feeder_combout\ = \inst|s_count[3]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_count[3]~DUPLICATE_q\,
	combout => \inst|s_count[4]~feeder_combout\);

-- Location: FF_X46_Y4_N50
\inst|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[4]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(4));

-- Location: FF_X46_Y4_N40
\inst|s_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	asdata => \inst|s_count\(4),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count[5]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y4_N45
\inst|s_count[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_count[6]~feeder_combout\ = \inst|s_count[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_count[5]~DUPLICATE_q\,
	combout => \inst|s_count[6]~feeder_combout\);

-- Location: FF_X46_Y4_N46
\inst|s_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[6]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count[6]~DUPLICATE_q\);

-- Location: FF_X46_Y4_N22
\inst|s_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	asdata => \inst|s_count[6]~DUPLICATE_q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count[7]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y4_N54
\inst|s_count[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_count[8]~feeder_combout\ = \inst|s_count[7]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_count[7]~DUPLICATE_q\,
	combout => \inst|s_count[8]~feeder_combout\);

-- Location: FF_X46_Y4_N55
\inst|s_count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[8]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count[8]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y4_N24
\inst|s_count[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_count[9]~feeder_combout\ = \inst|s_count[8]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_count[8]~DUPLICATE_q\,
	combout => \inst|s_count[9]~feeder_combout\);

-- Location: FF_X46_Y4_N25
\inst|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[9]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(9));

-- Location: FF_X46_Y4_N56
\inst|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[8]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(8));

-- Location: FF_X46_Y4_N23
\inst|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	asdata => \inst|s_count[6]~DUPLICATE_q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(7));

-- Location: FF_X46_Y4_N47
\inst|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[6]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(6));

-- Location: FF_X46_Y4_N41
\inst|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	asdata => \inst|s_count\(4),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(5));

-- Location: FF_X46_Y4_N11
\inst|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	asdata => \inst|s_count[2]~DUPLICATE_q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(3));

-- Location: FF_X46_Y4_N2
\inst|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[2]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(2));

-- Location: FF_X46_Y4_N35
\inst|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|clk~q\,
	d => \inst|s_count[0]~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(0));

-- Location: LABCELL_X50_Y32_N3
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



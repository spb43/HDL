----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 26.10.2016 
-- Module Name: VGA 
-- Project Name: VGA
-- Target Devices: 
-- HDL: VHDL
-- Tool Versions: ModelSim Altera starter edition
-- Description: VGA module
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY VGA is
-- Current resolution 1280x1024
GENERIC(h_pixels	:INTEGER	:= 1280; -- horizontal display width in px;
	v_pixels	:INTEGER	:= 1024; -- vertical display width in px;
	h_fp		:INTEGER	:= 48; -- horizontal front porch in px
	v_fp		:INTEGER	:= 1; -- vertical front porch in px;
	h_bp		:INTEGER	:= 248; -- horizontal back porch in px;
	v_bp		:INTEGER	:= 38; -- vertical back porch in px;
 	h_sync_pulse	:INTEGER	:= 112; -- horizontal sync pulse;
	v_sync_pulse	:INTEGER	:= 3); -- vertical sync pulse;
PORT(clk_50	:in std_logic; -- main clock;
	--OUTPUTS:
	R,G,B	:out std_logic_vector(7 downto 0); -- RED, GREEN, BLUE output colors;
	VGA_SYNC, VGA_BLANK	:out std_logic := '1';
	H_sync, V_sync	:out std_logic); 
END ENTITY VGA;

ARCHITECTURE dataflow OF VGA IS
--Controll signals declaration
CONSTANT h_pos: INTEGER := h_pixels+h_fp+h_bp+h_sync_pulse; -- total number of px in row;
CONSTANT v_pos: INTEGER := v_pixels+v_fp+v_bp+v_sync_pulse; -- total number of px in colum;

BEGIN

main_process:PROCESS(clk_50)
	VARIABLE h_cnt:		INTEGER RANGE 0 TO h_pos := 0; -- horizontal counter
	VARIABLE v_cnt:		INTEGER RANGE 0 TO v_pos := 0; -- vertical counter
		begin
		IF (rising_edge(clk_50)) THEN
			-- counter declaration
			IF(h_cnt < h_pos ) THEN -- horizontal counter
				h_cnt := h_cnt+1;
			ELSE
				h_cnt := 0;
				IF(v_cnt < v_pos) THEN -- vertical counter
					v_cnt := v_cnt+1;
				ELSE
					v_cnt := 0;
				END IF;
			END IF;
			
			-- Horizontal syncronization
			IF(h_cnt>h_fp AND h_cnt<h_fp+h_sync_pulse) THEN
				H_sync <= '0';
			ELSE
				H_sync <= '1';
			END IF;
		
			-- Vertical syncronization
			IF(v_cnt>0 AND v_cnt<v_fp+v_sync_pulse) THEN
				V_sync <= '0';
			ELSE
				V_sync <= '1';
			END IF;
			
			-- Set LOW state of RGB signals;
			IF((h_cnt>0 AND h_cnt<h_fp+h_sync_pulse+h_bp)OR(v_cnt>0 AND v_cnt<v_fp+v_sync_pulse+v_bp)) THEN
				R <= (OTHERS => '0');
				G <= (OTHERS => '0');
				B <= (OTHERS => '0');
			END IF;

			
			-- Write a line
			IF(h_cnt=1042) THEN 
				R <= (OTHERS => '1');
				G <= (OTHERS => '1');
				B <= (OTHERS => '1');
			ELSE
				R <= (OTHERS => '0');
				G <= (OTHERS => '0');
				B <= (OTHERS => '0');
			END IF;
		END IF; 
END PROCESS main_process;
END ARCHITECTURE dataflow;
/*----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: D-flipflop - Behavioral
-- Project Name: D-flipflop
-- Target Devices: 
-- HDL: SystemVerilog
-- Tool Versions: ModelSim Altera starter edition
-- Description: D-flipflop
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------*/

module dff(input logic d_in,clk,
		output logic q);

always_ff @ (posedge clk)
	q <= d_in;
endmodule

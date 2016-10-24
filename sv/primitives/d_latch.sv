/*----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: D-latch - Behavioral
-- Project Name: D-latch
-- Target Devices: 
-- HDL: SystemVerilog
-- Tool Versions: ModelSim Altera starter edition
-- Description: D-latch
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------*/

module d_latch(input logic clk, 
		input logic  [7:0] d_in,
		output logic [7:0] q);
always_latch
	if(clk) q <= d_in;
/*
always @ (clk, d_in)
	if(clk) q <= d_in;
*/
endmodule

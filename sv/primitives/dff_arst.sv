/*----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: dff_arst - Behavioral
-- Project Name: D-flipflop
-- Target Devices: 
-- HDL: SystemVerilog
-- Tool Versions: ModelSim Altera starter edition
-- Description: D-flipflop with asynchronous reset
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------*/

module dff_arst(input logic clk,rst,
		input logic [7:0] d_in,
		output logic [7:0] q);

always_ff @ (posedge clk, posedge rst)
	if(rst) q <= 8'b0;
	else q <= d_in;
endmodule

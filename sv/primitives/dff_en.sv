/*----------------------------------------------------------------------------------
-- Company: University
-- Engineer: student
-- Create Date: 24.10.2016 
-- Module Name: D-flipflop - Behavioral
-- Project Name: D-flipflop
-- Target Devices: 
-- HDL: SystemVerilog
-- Tool Versions: ModelSim Altera starter edition
-- Description: D-flipflop with asynchronous reset and enable signal
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------*/

module dff(input logic clk,
		input logic rst,
		input logic en,
		input logic [7:0] d_in,
		output logic q);
//asynchronous rst
always_ff @ (posedge clk, posedge rst)
	if(rst) q <= 8'b0;
	else if(en) q <= d_in;
endmodule

//----------------------------------------------------------------------------------
//-- Company: University
//-- Engineer: student
//-- Create Date: 01.11.2016 
//-- Module Name: counter_4bit - Behavioral
//-- Project Name: counter_4bit
//-- Target Devices: 
//-- HDL: SystemVerilog
//-- Tool Versions: ModelSim Altera starter edition
//-- Description: 4-bit counter 
//-- Revision 0.01 - File Created
//----------------------------------------------------------------------------------

parameter n = 4;
module counter_4bit(input logic clk,
			input logic rst,
			output logic [n-1:0] q);

always_ff @ (posedge clk, posedge rst)
	if(rst) q <= 4'b0;
	else if(clk) q <= q + 1;
endmodule
		

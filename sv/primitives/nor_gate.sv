//----------------------------------------------------------------------------------
//-- Company: University
//-- Engineer: student
//-- Create Date: 24.10.2016 
//-- Module Name: nor_gate - Behavioral
//-- Project Name: nor_gate
//-- Target Devices: 
//-- HDL: SystemVerilog
//-- Tool Versions: ModelSim Altera starter edition
//-- Description: N input nor gate

//-- Revision 0.01 - File Created

//----------------------------------------------------------------------------------

parameter data_width = 8;

module nor_gate(input logic [data_width-1:0] a,
		input logic [data_width-1:0] b,
		output logic [data_width-1:0] y);
	assign y = ~(a | b);
endmodule

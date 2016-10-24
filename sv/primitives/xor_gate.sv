//----------------------------------------------------------------------------------
//-- Company: University
//-- Engineer: student
//-- Create Date: 24.10.2016 
//-- Module Name: xor_gate - Behavioral
//-- Project Name:xor_gate
//-- Target Devices: 
//-- HDL: SystemVerilog
//-- Tool Versions: ModelSim Altera starter edition
//-- Description: N input xor gate

//-- Revision 0.01 - File Created

//----------------------------------------------------------------------------------

parameter data_width = 8;

module xor_gate(input logic [data_width-1:0] a,
		input logic [data_width-1:0] b,
		output logic [data_width-1:0] y);
	assign y = a ^ b;
endmodule

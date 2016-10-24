//-----------------------------------------------------------------------------------------
//-- Company: University
//-- Engineer: student
//-- Create Date: 24.10.2016 
//-- Module Name: not_gate - Behavioral
//-- Project Name:adder 
//-- Target Devices: Zybo
//-- Tool Versions: ModelSim Altera starter edition
//-- Description: Inverter

//-- Revision 0.01 - File Created

//----------------------------------------------------------------------------------
parameter data_width = 8;

module not_gate(input logic [7:0] a,
		output logic [data_width-1:0] y);
	assign y = ~a;
endmodule


//----------------------------------------------------------------------------------
//-- Company: University
//-- Engineer: student
//-- Create Date: 24.10.2016 
//-- Module Name: mux4_1 - Dataflow
//-- Project Name:mux4_1
//-- Target Devices: 
//-- HDL: SystemVerilog
//-- Tool Versions: ModelSim Altera starter edition
//-- Description: multiplexer 4 in 1
//-- Revision 0.01 - File Created
//----------------------------------------------------------------------------------
parameter data_width = 8;
module mux2_1(input logic [data_width-1:0] d_in0,d_in1,d_in2,d_in3,
		input logic [1:0] sel,
		output logic y);
assign y = sel[1] ? (sel[0] ? d_in3 : d_in2) : (sel[0] ? d_in1 : d_in0);
endmodule 

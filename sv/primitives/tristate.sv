//----------------------------------------------------------------------------------
//-- Company: University
//-- Engineer: student
//-- Create Date: 24.10.2016 
//-- Module Name: tristate_buffer - Behavioral
//-- Project Name:tristate
//-- Target Devices: 
//-- HDL: SystemVerilog
//-- Tool Versions: ModelSim Altera starter edition
//-- Description: tristate_buffer

//-- Revision 0.01 - File Created

//----------------------------------------------------------------------------------

module tristate(input logic [3:0] d_in,
		input logic en,
		output logic [3:0] d_out);

	assign d_out = en ? d_in : 4'bz;
endmodule

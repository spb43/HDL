//----------------------------------------------------------------------------------
//-- Company: University
//-- Engineer: student
//-- Create Date: 23.10.2016 
//-- Module Name: seg_decoder - Behavioral
//-- Project Name:seg_decoder
//-- Target Devices: 
//-- HDL: SystemVerilog
//-- Tool Versions: ModelSim Altera starter edition
//-- Description: 7 segment display decoder
//-- Revision 0.01 - File Created
//----------------------------------------------------------------------------------

module seg_decoder(input logic [3:0] data_in,
			output logic [6:0] segments);
always_comb
	case(data_in)
		//segments:	abcdefg		
		0: segments = 7'b1111110;
		1: segments = 7'b0110000;
		2: segments = 7'b1101101;
		3: segments = 7'b1111011;
		4: segments = 7'b0110011;
		5: segments = 7'b1011011;
		6: segments = 7'b1011111;
		7: segments = 7'b1110000;
		8: segments = 7'b1111111;
		9: segments = 7'b1110011;
		default: segments = 7'b0000000;
	endcase
endmodule

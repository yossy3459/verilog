`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:27 05/24/2017 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


module ALU(A, B, out, mode);
	
	input	[7:0]		A, B;
	output [7:0] 	out;
	input	[2:0]		mode;
	
	assign out = ALU_func(A, B, mode);

	function [7:0] ALU_func;

		input [7:0]		A;
		input [7:0]		B;
		input	[2:0]		mode;
	
		reg	[7:0] 	temp;
	
		begin
			case(mode)
				3'b000: 	temp = A + B; 
				3'b001: 	temp = A - B; 
				3'b010: 	temp = A + 1; 
				3'b011: 	temp = A - 1; 
				3'b100: 	temp = A & B; 
				3'b101: 	temp = A | B; 
				3'b110: 	temp = A ^ B; 
				3'b111: 	temp = ~A; 
			endcase
		
			ALU_func = temp;
		end
	endfunction

endmodule

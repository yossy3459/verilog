`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/20 17:35:43
// Design Name: 
// Module Name: counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module counter(clock, res, count);
	input 			clock, res;
	output [3:0]	count;
	
	reg	 [3:0]	count;
	
	always @(posedge clock or negedge res) begin
	
		if (!res)	begin
			count <= 4'b0;
		end
		else begin
			count <= count + 1;
		end
	end
	
endmodule

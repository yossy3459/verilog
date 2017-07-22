`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/20 19:37:14
// Design Name: 
// Module Name: led
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


module led(CLK, RST, OUT);
	input 			CLK, RST;
	output [7:0]	OUT;
	reg	 [7:0]	O;
	reg    [26:0]  TEMP;
	
	always @(posedge CLK or negedge RST) begin
		if (!RST)	begin
			O <= 8'b0;
			TEMP <= 27'b0;
		end
		else  begin
			if ( TEMP != 100000000 ) begin
			//if ( TEMP != 32 ) begin
				TEMP <= TEMP + 1;
			end
			else 	begin
				O <= O + 1;
				TEMP <= 27'b0;
			end
		end
	end
	
	assign OUT = O;
	
endmodule

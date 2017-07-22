`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/04 19:18:26
// Design Name: 
// Module Name: vga
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
module vga(
    input clock,
    input res,
	output[3:0] red,
	output[3:0] green,
	output[3:0] blue
);

    wire[3:0] red;
	wire[3:0] green;
	wire[3:0] blue;


    assign red = 4'b1111;
    assign green = 4'b1111;
    assign blue = 4'b1111;
    
endmodule

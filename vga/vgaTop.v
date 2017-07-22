`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/07/10 23:39:18
// Design Name:
// Module Name: vgaTop
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


module vgaTop(
    input      clock,
	  input      res,
    output     horizontalSync,
    output     verticalSync,
    output [3:0] red,
    output [3:0] green,
    output [3:0] blue
);

    wire clock,res;
    wire horizontalSyncWire, verticalSyncWire;
    wire [3:0] redWire, greenWire, blueWire;

    vga vgaGenelator(.clock(clock), .res(res), .red(redWire), .green(greenWire), .blue(blueWire));
    horizontal_counter horizontalCounter(.clock(clock), .res(res), .out(horizontalSync));
    vertical_counter verticalCounter(.clock(clock), .res(res), .horizontal_clock(horizontalSync), .out(verticalSync));

endmodule

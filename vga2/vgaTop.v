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
    output     horizontalSync,
    output     verticalSync,
    output [3:0] red,
    output [3:0] green,
    output [3:0] blue
);

    wire horizontalSyncWire, verticalSyncWire;

    color vgaGenelator(.clock(clock), .red(red), .green(green), .blue(blue));
    horizontalCounter horizontalCounter(.clock(clock), .out(horizontalSync));
    verticalCounter verticalCounter(.clock(clock), .horizontal_clock(horizontalSync), .out(verticalSync));

endmodule

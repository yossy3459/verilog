`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/13 18:42:08
// Design Name: 
// Module Name: adder
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


module adder(
    input [3:0] in_data1,
    input [3:0] in_data2,
    output [3:0] out_data,
    output cy
    );
    
    wire 		[4:0]		rslt;
            
    assign rslt = in_data1 + in_data2;
    assign cy = rslt[4];
    assign out_data = rslt[3:0];
        
endmodule

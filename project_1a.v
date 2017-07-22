`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/20 17:28:51
// Design Name: 
// Module Name: project_1a
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


module project_1a(
    input [3:0] A,
    input [3:0] B,
    input [1:0] Fsel,
    input Clk,
    input Rst,
    output [7:0] O
    );
    
    reg [7:0] O_temp;
    
    always @(posedge Clk or negedge Rst) begin
        if (!Rst) begin
            O_temp <= 8'b00000000;
        end
        else begin
            case ( Fsel )
                2'b00: O_temp <= A+B; 
                2'b01: O_temp <= A-B; 
                2'b10: O_temp <= A*B; 
                2'b11: O_temp <= A^B; 
            endcase                  
        end
    end
    assign O = O_temp;
                               
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/04 20:13:52
// Design Name: 
// Module Name: vertical_counter
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


module vertical_counter(
    input      clock,
    input      horizontal_clock,
    input      res,
    output     out
);

    reg       out;
    reg[9:0]  count;


    always @(negedge horizontal_clock or negedge res) begin
        if (!res)    begin
            out <= 1;
            count <= 0;
        end
        else begin
            count <= count + 1;
        end
        if ( count == 490 ) begin
            out <= 0;
        end
        if ( count == 492 ) begin
            out <= 1;
        end
        if ( count == 521 ) begin
            count <= 0;
        end
    end

endmodule

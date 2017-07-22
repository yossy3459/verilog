`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/04 19:19:27
// Design Name: 
// Module Name: vga_test
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


module vga_test(

    );
    // Inputs
        reg clock;
        reg res;

        // Outputs
        wire out;
        wire [2:0] vga_clock;
        wire [9:0] count;

        // Instantiate the Unit Under Test (UUT)
        vga uut (
            .clock(clock),
            .res(res),
            .out(out),
            .vga_clock(vga_clock),
            .count(count)
        );

        initial begin
            // Initialize Inputs
            clock <= 0;
            res <= 1;

            // Add stimulus here
            #10    res<=0;
            #10    res<=1;
            end

            always #1 begin
                clock <= ~clock;


        end

endmodule


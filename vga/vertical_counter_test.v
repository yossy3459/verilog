`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/04 20:18:17
// Design Name: 
// Module Name: vertical_counter_test
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


module vertical_counter_test(

    );
    // Inputs
        reg clock;
        reg res;

        // Outputs
        wire out;
        wire [2:0] vertical_clock;
        wire [9:0] count;

        // Instantiate the Unit Under Test (UUT)
        horizontal_counter uut (
            .clock(clock),
            .res(res),
            .out(out),
            .vertical_clock(vertical_clock),
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

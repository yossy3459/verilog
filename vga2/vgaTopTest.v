`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/11 02:27:40
// Design Name: 
// Module Name: vgaTop_test
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


module vgaTopTest(

    );
    
      // Inputs
          reg clock;
  
          // Outputs
          wire [3:0] red;
          wire [3:0] green;
          wire [3:0] blue;
          wire       horizontalSync;
          wire       verticalSync;
  
          // Instantiate the Unit Under Test (UUT)
          vgaTop uut (
              .clock(clock),
              .red(red),
              .green(green),
              .blue(blue),
              .horizontalSync(horizontalSync),
              .verticalSync(verticalSync)
          );
  
          initial begin
              // Initialize Inputs
              clock <= 0;
          end
  
          always #5 begin
              clock <= ~clock;
          end
endmodule

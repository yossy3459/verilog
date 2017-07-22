`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:46:28 05/24/2017
// Design Name:   ALU
// Module Name:   Z:/verilog/kadai1/ALU_test.v
// Project Name:  kadai1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [2:0] mode;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.out(out), 
		.mode(mode)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		mode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A=8'b00000010; B=8'b00000001;
		
				mode=000;
		#10;	mode=001;
		#10;	mode=010;
		#10;	mode=011;
		#10;	mode=100;
		#10;	mode=101;
		#10;	mode=110;
		#10;	mode=111;
		
		
	end
      
endmodule


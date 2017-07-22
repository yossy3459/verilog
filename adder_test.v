`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/13 18:56:57
// Design Name: 
// Module Name: adder_test
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


module adder_test;

	// Inputs
	reg [3:0] in_data1;
	reg [3:0] in_data2;

	// Outputs
	wire [3:0] out_data;
	wire cy;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.in_data1(in_data1), 
		.in_data2(in_data2), 
		.out_data(out_data), 
		.cy(cy)
	);

	initial begin
		// Initialize Inputs
		in_data1 = 0;
		in_data2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
			in_data1 = 4'b0000;	 in_data2 = 4'b0001;
		#10	in_data1 = 4'b0001; in_data2 = 4'b0001;
		#10	in_data1 = 4'b0001;	 in_data2 = 4'b0011;
		#10	in_data1 = 4'b1111;	 in_data2 = 4'b0001;
		#10	in_data1 = 4'b1110;	 in_data2 = 4'b0001;
		
	end
      
endmodule



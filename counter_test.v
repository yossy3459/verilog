`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/20 17:37:40
// Design Name: 
// Module Name: counter_test
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


module counter_test;

	// Inputs
	reg clock;
	reg res;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clock(clock), 
		.res(res), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clock <= 0;
		res <= 1;

		// Add stimulus here
		#25	res<=0;
		#20 	res<=1;
		end
	
		always #10 begin
			clock <= ~clock;
		

	end
      
endmodule



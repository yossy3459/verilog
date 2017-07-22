`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/04 20:13:52
// Design Name: 
// Module Name: horizontal_counter
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


module horizontal_counter(
    input      clock,
	input      res,
	output     out
);

    reg       out;
	reg[2:0]  horizontal_clock;
    reg[9:0]  count;


	always @(posedge clock or negedge res) begin
		if (!res)	begin
			out <= 1;
			horizontal_clock <= 0;
			count <= 0;
		end
		else begin
			horizontal_clock <= horizontal_clock + 1;
		end
		if ( horizontal_clock == 3 ) begin
			horizontal_clock <= 0;
			count <= count + 1;
		end
		if ( count == 656 ) begin
		    out <= 0;
		end
		if ( count == 752 ) begin
		    out <= 1;
		end
		if ( count == 800 ) begin
		    count <= 0;
		end
	end

endmodule

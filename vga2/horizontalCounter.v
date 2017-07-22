module horizontalCounter(
    input      clock,
	output     out
);
    wire      res;
    reg       out;
	reg[2:0]  horizontal_clock;
    reg[9:0]  count;
    assign res = 1;


	always @(negedge clock) begin
		if (!res)	begin
			out <= 1;
			horizontal_clock <= 0;
			count <= 0;
		end
		else begin
			horizontal_clock <= horizontal_clock + 1;
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
	end

endmodule

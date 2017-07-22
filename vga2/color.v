module color(
    input clock,
	output[3:0] red,
	output[3:0] green,
	output[3:0] blue
);

    wire res;
    reg[3:0] red;
	reg[3:0] green;
	reg[3:0] blue;
	reg[2:0]  horizontal_clock;
    reg[9:0]  count;
    
    assign res = 1;

    always @(negedge clock) begin
        if (!res)    begin
            horizontal_clock <= 0;
            red <= 4'b0000;
            green <= 4'b0000;
            blue <= 4'b0000;
        end
        else begin
            horizontal_clock <= horizontal_clock + 1;
          if ( horizontal_clock == 3 ) begin
             horizontal_clock <= 0;
             count <= count + 1;
          end
          if ( count == 320 ) begin
             red <= 4'b0111;
             green <= 4'b0100;
             blue <= 4'b0000;
          end
          if ( count == 640 ) begin
            red <= 4'b0;
            green <= 4'b0;
            blue <= 4'b0;
          end
          if ( count == 800 ) begin
            count <= 0;
          end
        end
    end
    
endmodule
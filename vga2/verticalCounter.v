module verticalCounter(
    input      clock,
    input      horizontal_clock,
    output     out
);
    wire      res;
    reg       out;
    reg[9:0]  count;

    assign res = 1;

    always @(negedge horizontal_clock) begin
        if (!res)    begin
            out <= 1;
            count <= 0;
        end
        else begin
            count <= count + 1; 
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
    end

endmodule
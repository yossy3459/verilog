`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/20 17:32:10
// Design Name: 
// Module Name: project_1a_test
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


module project_1a_test(

    );
    
        
    // Inputs              
    reg [3:0] A; 
    reg [3:0] B;    
    reg [1:0] Fsel; 
    reg Clk;        
    reg Rst;     
    
    // Outputs
    wire [7:0] O;   
    
    // Instantiate the Unit Under Test (UUT)
    project_1a uut(
        .A(A),
        .B(B),
        .Fsel(Fsel),
        .Clk(Clk),
        .Rst(Rst),
        .O(O)
    );
    
    initial begin
        // Initialize Inputs
        Clk = 1'b0;
        Rst = 1'b0;
        A = 4'b0100;
        B = 4'b0010;
    
        // Add stimulus here    
        #100 Rst = 1'b1;
        #100 Fsel = 2'b00;
        #100 Fsel = 2'b01;
        #100 Fsel = 2'b10;
        #100 Fsel = 2'b11;
     end
     
     always #10 begin
        Clk = ~Clk;
     end
     
endmodule

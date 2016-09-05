`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/05 14:46:30
// Design Name: 
// Module Name: test_switch2
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


module test_switch2(    );
    reg a, b;
    wire f;
    switch2 s0(.A(a), .B(b), .F(f));
    initial begin
        a = 1'b0;   b = 1'b0;   #20;
        a = 1'b0;   b = 1'b1;   #20;
        a = 1'b1;   b = 1'b0;   #20;
        a = 1'b1;   b = 1'b1;   #20;
        a = 1'b0;   b = 1'b0;   #20;
        end
endmodule

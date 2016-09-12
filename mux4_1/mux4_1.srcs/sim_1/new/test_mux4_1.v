`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/12 14:00:23
// Design Name: 
// Module Name: test_mux4_1
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


module test_mux4_1();
    reg [3:0] a;
    reg [1:0] s;
    wire y;
    mux4_1 i1(
        .a(a),
        .s(s),
        .y(y)
    );
    initial begin
        s = 2'b00; a = 4'b1110; #10;
        a = 4'b0001; #10;
        s = 2'b01; a = 4'b1110; #10;
        a = 4'b0010; #10;
        s = 2'b10; a = 4'b1010; #10;
        a = 4'b0100; #10;
        s = 2'b11; a = 4'b0111; #10;
        a = 4'b1001; #10;
    end
endmodule

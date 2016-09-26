`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/26 13:14:17
// Design Name: 
// Module Name: alu2
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

module adder8 (
    input CIN, 
    input [7:0] A,  
    input [7:0] B, 
    output [7:0] S, 
    output CF, 
    output OF,
    output ZF
);
     assign {CF, S} = A + B + CIN;
     assign OF = (A[7] == B[7]) && (S[7] != A[7]);
     assign ZF = (S == 0);
endmodule

module alu2(
    input SELECT,
    input [7:0] A,
    input [7:0] B,
    output [7:0] S, 
    output CF,
    output OF,
    output ZF
);
    wire [7:0] tmp;
    assign tmp = {8{SELECT}} ^ B;
    adder8 adder(
        .CIN(SELECT),
        .A(A),
        .B(tmp),
        .S(S),
        .CF(CF),
        .OF(OF),
        .ZF(ZF)
    );
endmodule

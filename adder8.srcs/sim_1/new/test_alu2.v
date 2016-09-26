`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/26 14:06:06
// Design Name: 
// Module Name: test_alu2
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


module test_alu2();
    integer N;
    reg SELECT;
    reg [7:0] A;
    reg [7:0] B;
    wire [7:0] S;
    wire CF;
    wire OF;
    wire ZF;

    reg CORRECT;

    alu2 alu2_i (
        .SELECT(SELECT),
        .A(A),
        .B(B),
        .S(S),
        .CF(CF),
        .OF(OF),
        .ZF(ZF)
    );

    initial begin
        SELECT = 0;
        CIN = 0;
        A = 0;
        B = 0;
    end

    initial begin
        for(N = 0; N < 2**17 - 1; N = N+1)
        begin
            #10 {SELECT, A, B} = {SELECT, A, B} + 1;
            #1
            if(SELECT == 0)
            begin
                if(S == A+B)
                    CORRECT = 1;
                else
                    CORRECT = 0;
            end
            else
            begin
                if(S == A-B)
                    CORRECT = 1;
                else
                    CORRECT = 0;
            end
        #10;
        end
    end
endmodule

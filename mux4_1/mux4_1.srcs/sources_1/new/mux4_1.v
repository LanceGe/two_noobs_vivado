`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/12 13:42:29
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(a, s, y);
    input [3:0] a;
    input [1:0] s;
    output reg y;
    always @(s or a)
        if(s==0)
            y = a[0];
        else
            begin
                if(s==1)
                    y = a[1];
                else
                    begin
                        if(s==2)
                            y = a[2];
                        else
                            y = a[3];
                    end
            end
endmodule

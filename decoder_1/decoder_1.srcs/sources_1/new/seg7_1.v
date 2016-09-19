`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/19 13:38:20
// Design Name: 
// Module Name: seg7_1
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
module decoder1(
x, 
en, 
y
    );
    input [3:0] x;
    input en;
    output reg[15:0] y;
    integer i;
    
    always@(x or en)
        if(en)
            begin
              for(i = 0; i <= 15; i = i+1)
                if(x == i)
                    y[i] = 1;
                else
                    y[i] = 0;
            end
        else
            y = 16'b0000000000000000; 
endmodule


module seg7_1(
    input btnD,
    input[15:0] sw,
    output reg[3:0] led,
    output [7:0] sel_seg,
    output reg[6:0] seg
    );
    assign sel_seg = 8'b11111110;
    always@(*)
        if(btnD)
            begin
                case(sw)
                    16'h0001:
                        begin
                            led = 4'b0000;
                            seg = 7'b1000000;
                        end
                    16'h0002:
                        begin
                            led = 4'b0001;
                            seg = 7'b1111001;
                        end
                    16'h0004:
                        begin
                            led = 4'b0010;
                            seg = 7'b0100100;
                        end
                    16'h0008:
                        begin
                            led = 4'b0011;
                            seg = 7'b0110000;
                        end
                    16'h0010:
                            begin
                                led = 4'b0100;
                                seg = 7'b0011001;
                            end
                    16'h0020:
                        begin
                            led = 4'b0101;
                            seg = 7'b0010010;
                        end
                    16'h0040:
                        begin
                            led = 4'b0110;
                            seg = 7'b0000010;
                        end
                    16'h0080:
                        begin
                            led = 4'b0111;
                            seg = 7'b1111000;
                        end
                    16'h0100:
                        begin
                            led = 4'b1000;
                            seg = 7'b0000000;
                        end
                    16'h0200:
                        begin
                            led = 4'b1001;
                            seg = 7'b0010000;
                        end
                    16'h0400:
                        begin
                            led = 4'b1010;
                            seg = 7'b0001000;
                        end
                    16'h0800:
                        begin
                            led = 4'b1011;
                            seg = 7'b0000011;
                        end
                    16'h1000:
                        begin
                            led = 4'b1100;
                            seg = 7'b1000110;
                        end
                    16'h2000:
                        begin
                            led = 4'b1101;
                            seg = 7'b0100001;
                        end
                    16'h4000:
                        begin
                            led = 4'b1110;
                            seg = 7'b0000110;
                        end
                    16'h8000:
                        begin
                            led = 4'b1111;
                            seg = 7'b0001110;
                        end
                    default:
                        begin
                            led = 4'b1111;
                            seg = 7'b1111111;
                        end
                endcase
            end
        else
            begin
                led = 4'b0000;
                seg = 7'b1111111;
            end
endmodule

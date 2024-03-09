`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 04:25:39 PM
// Design Name: 
// Module Name: Mux
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




//Behavioral Mux

//module m41 ( a, b, c, d, s0, s1, out);

//input wire a, b, c, d;
//input wire s0, s1;
//output reg out;

//always @ (a or b or c or d or s0, s1)
//begin

//case (s0 | s1)
//2'b00 : out <= a;
//2'b01 : out <= b;
//2'b10 : out <= c;
//2'b11 : out <= d;
//endcase

//end

//endmodule


//Structual Mux
module Mux(out, a, b, c, d, sel);
    output out;
    input a, b, c, d;
    input [1:0] sel;  // 2-bit select signal
    wire s0 = sel[0], s1 = sel[1];  // Individual bits of the select signal
    wire s0bar, s1bar, T1, T2, T3, T4;

    not_gate u1(s1bar, s1);
    not_gate u2(s0bar, s0);

    and3_gate u3(T1, a, s0bar, s1bar);
    and3_gate u4(T2, b, s0, s1bar);
    and3_gate u5(T3, c, s0bar, s1);
    and3_gate u6(T4, d, s0, s1);

    or4_gate u7(out, T1, T2, T3, T4);
endmodule
module and3_gate(output out, input in1, in2, in3);
    assign out = in1 & in2 & in3;
endmodule
module not_gate(output out, input in);
    assign out = ~in;
endmodule

module or4_gate(output out, input in1, in2, in3, in4);
    assign out = in1 | in2 | in3 | in4;
endmodule
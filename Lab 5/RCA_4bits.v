`timescale 1ns / 1ps

module RCA_4bits(
    input clk,
    input enable,
    input [3:0] A,B, 
    input Cin,
    output [4:0] Q //load registers, should contain the 4 sum bits and Cout
    );
    
    wire [4:0] Data;
    wire c0, c1, c2;
    
    full_adder add0 (.A(A[0]), .B(B[0]), .Cin(Cin), .S(Data[0]), .Cout(c0));
    full_adder add1 (.A(A[1]), .B(B[1]), .Cin(c0), .S(Data[1]), .Cout(c1));
    full_adder add2 (.A(A[2]), .B(B[2]), .Cin(c1), .S(Data[2]), .Cout(c2));
    full_adder add3 (.A(A[3]), .B(B[3]), .Cin(c2), .S(Data[3]), .Cout(Data[4]));
    
    //Module Instantiation of the register_logic
    register_logic RL(.clk(clk), .enable(enable), .Data(Data), .Q(Q));
    
endmodule

`timescale 1ns / 1ps

module full_adder(
    input A,B,Cin,
    output S,Cout
    );
    
    assign Cout = ((B&Cin) | (B&A) | (A&Cin));
    assign S = (A ^B ^ Cin);
endmodule

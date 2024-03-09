`timescale 1ns / 1ps

module tb_RCA_4bits;

reg clk;
reg enable;
reg [3:0] A;
reg [3:0] B;
reg Cin;

// Output //
wire [4:0] Q;

RCA_4bits uut (
.clk(clk),
.enable(enable),
.A(A),
.B(B),
.Cin(Cin),
.Q(Q)
);

initial
begin

clk = 0;
enable = 0;
A = 0;
B = 0;
Cin = 0;
#10;

enable = 1;
A[3:0] = 4'b0001;
B[3:0] = 4'b0101;
Cin = 0;
#10;
enable = 0;
#10;

enable = 1;
A[3:0] = 4'b0111;
B[3:0] = 4'b0111;
Cin = 0;
#10;
enable = 0;
#10;

enable = 1;
A[3:0] = 4'b1000;
B[3:0] = 4'b0111;
Cin = 1;
#10;
enable = 0;
#10;

enable = 1;
A[3:0] = 4'b1100;
B[3:0] = 4'b0100;
Cin = 0;
#10;
enable = 0;
#10;



enable = 1;
A[3:0] = 4'b1000;
B[3:0] = 4'b1000;
Cin = 1;
#10;
enable = 0;
#10;

enable = 1;
A[3:0] = 4'b1001;
B[3:0] = 4'b1010;
Cin = 1;
#10;
enable = 0;
#10;

enable = 1;
A[3:0] = 4'b1111;
B[3:0] = 4'b1111;
Cin = 0;
#10;
enable = 0;
#10;
end
        always
begin



#5;
clk = ~clk;
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2023 11:20:13 AM
// Design Name: 
// Module Name: tb_mux
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

module tb_mux();
reg a,b,c,d; 
reg[1:0] sel;
wire out;

Mux dut(.a(a), .b(b), .c(c), .d(d), .sel(sel), .out(out)); 

initial begin 
 $dumpfile("mx4x1.vcd");
 $dumpfile(1); 
 end
initial begin 
 sel=2'b00; a=0;b=1;c=0;d=1;
 #5;
 sel=2'b01; a=0;b=1;c=0;d=1;
 #5;
 sel=2'b10; a=0;b=1;c=0;d=1;
 #5;
 sel=2'b11; a=0;b=1;c=0;d=1;
 #5;
 
 sel=2'b00; a=0;b=1;c=1;d=0;
 #5;
 sel=2'b01; a=0;b=1;c=1;d=0;
 #5;
 sel=2'b10; a=0;b=1;c=1;d=0;
 #5;
 sel=2'b11; a=0;b=1;c=1;d=0;
 #5;
 
 sel=2'b00; a=1;b=0;c=0;d=1;
 #5;
 sel=2'b01; a=1;b=0;c=0;d=1;
 #5;
 sel=2'b10; a=1;b=0;c=0;d=1;
 #5;
 sel=2'b11; a=1;b=0;c=0;d=1;
 #5;
 
 $finish();
 end 
  
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2023 11:08:20 AM
// Design Name: 
// Module Name: tb_SevSeg
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

module tb_SevSeg;

 
    reg i3;
    reg i2;
    reg i1;
    reg i0;
  

    wire a,b,c,d,e,f,g, an0, an1, an2, an3, dp;
    
   
    SevSeg uut(
        .i3(i3),
        .i2(i2),
        .i1(i1),
        .i0(i0),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .an0 (an0),
        .an1 (an1),
        .an2 (an2),
        .an3 (an3),
        .dp (dp)
    );
    
    initial begin
        

        i3 = 0;
        i2 = 0;
        i1 = 0;
        i0 = 0;
        
        #50

        i3 = 0;
        i2 = 0;
        i1 = 0;
        i0 = 0;
        
                
        i3 = 0;
        i2 = 0;
        i1 = 0;
        i0 = 1;
        #50
        
        i3 = 0;
        i2 = 0;
        i1 = 1;
        i0 = 0;
        #50
        
        i3 = 0;
        i2 = 0;
        i1 = 1;
        i0 = 1;
        #50
        
        i3 = 0;
        i2 = 1;
        i1 = 0;
        i0 = 0;
        #50
        
        i3 = 0;
        i2 = 1;
        i1 = 0;
        i0 = 1;
        #50
        
        i3 = 0;
        i2 = 1;
        i1 = 1;
        i0 = 0;
        #50
        
        i3 = 0;
        i2 = 1;
        i1 = 1;
        i0 = 1;
        #50
        
        i3 = 1;
        i2 = 0;
        i1 = 0;
        i0 = 0;
        #50
        
        i3 = 1;
        i2 = 0;
        i1 = 0;
        i0 = 1;
        #50
        
        i3 = 1;
        i2 = 0;
        i1 = 1;
        i0 = 0;
        #50
        
        i3 = 1;
        i2 = 0;
        i1 = 1;
        i0 = 1;
        #50
        
        i3 = 1;
        i2 = 1;
        i1 = 0;
        i0 = 0;
        #50
        
        i3 = 1;
        i2 = 1;
        i1 = 0;
        i0 = 1;
        #50
        
        i3 = 1;
        i2 = 1;
        i1 = 1;
        i0 = 0;
        #50
        
        i3 = 1;
        i2= 1;
        i1 = 1;
        i0 = 1;
        #50;
        
        end
       
endmodule
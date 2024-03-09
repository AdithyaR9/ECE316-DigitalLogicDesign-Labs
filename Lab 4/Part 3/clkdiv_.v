`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 07:29:01 AM
// Design Name: 
// Module Name: clkdiv_
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


module clkdiv_(
    
    input clk,
    input reset,
    output clk_out
    
    );
    
    reg [25:0] COUNT;
    
    initial begin
    COUNT = 0;
    end 
    
        assign clk_out = COUNT[25];
        always @(posedge clk)
        begin 
        if (reset) 
            COUNT = COUNT + 1; 
        else
            COUNT = COUNT + 1;
        end
        
endmodule

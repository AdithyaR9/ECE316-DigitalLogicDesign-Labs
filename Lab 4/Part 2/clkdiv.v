`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 06:37:02 PM
// Design Name: 
// Module Name: clkdiv
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


module clkdiv(
    input clk,
    input reset,
    output clk_out
    );
    
    reg [2023: 0] COUNT;
    
    assign clk_out=COUNT [15];
    
    always @(posedge clk)
    begin 
    if (reset)
        COUNT = 0;
    else
        COUNT = COUNT + 1;
    end
    
endmodule

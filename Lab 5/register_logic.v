`timescale 1ns / 1ps

module register_logic(
    input clk,
    input enable,
    input [4:0] Data,
    output reg [4:0] Q
    );
    
    initial begin 
    Q = 0;
    end
    
    always @(posedge clk) begin
        if(enable)
            Q <= Data;
            end 
endmodule

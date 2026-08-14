`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 13:03:45
// Design Name: 
// Module Name: Johnson_Counter
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


module Johnson_Counter(clk,rst,count);
    input clk,rst;
    output reg[3:0] count;
    always@(posedge clk)
    begin
        if(rst==1)
            count<=4'b0;
        else
            begin
                count<={!count[0],count[3:1]}; // complementing the last bit and shifting the remaining bits 
                                               //to the right, concatenation of the bits have been done
            end
    end
endmodule

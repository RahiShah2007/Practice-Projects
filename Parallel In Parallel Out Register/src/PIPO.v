`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 12:05:11
// Design Name: 
// Module Name: PIPO
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


module PIPO(clk,rst,d_in,d_out);
input clk,rst;
input [3:0] d_in;
output reg[3:0] d_out;
always@(posedge clk or posedge rst)begin
    if(rst)
        d_out<=4'b0000;
    else
        d_out<=d_in;
end
endmodule

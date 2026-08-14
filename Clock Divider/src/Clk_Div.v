`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 00:45:50
// Design Name: 
// Module Name: Clk_Div
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


module Clk_Div(clk,rst,clk_d);
input clk,rst;
output clk_d;
reg[28:0] div_counter;
always@(posedge clk)
begin
    if(rst)
        div_counter<=29'd0;
    else
        div_counter<=div_counter+1;
end
assign clk_d=div_counter[2];
endmodule

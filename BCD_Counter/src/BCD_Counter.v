`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 16:47:04
// Design Name: 
// Module Name: BCD_Counter
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


module BCD_Counter(clk,rst,BCD);
input clk,rst;
output reg[3:0]BCD;
always@(posedge clk)
begin
    if(rst)
        BCD<=4'b0000;
    else if(BCD==4'b1001)
        BCD<=4'b0000;
    else
        BCD<=BCD+4'b0001;
end
endmodule

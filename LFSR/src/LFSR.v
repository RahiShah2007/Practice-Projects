`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 20:48:18
// Design Name: 
// Module Name: LFSR
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


module LFSR(clk,rst,random);
input clk,rst;
output [4:0] random;
reg[4:0] in_data = 5'b00001;
always@(posedge clk,negedge rst) 
begin
    if(!rst)
        in_data<=5'b00001;
    else
        in_data<={in_data[3:0],in_data[4]^in_data[2]};
end
assign random = in_data;
endmodule

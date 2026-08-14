`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 23:41:34
// Design Name: 
// Module Name: Pulse_Width_Modulation
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


module Pulse_Width_Modulation(clk,rst,op);
input clk,rst;
output op;
reg [7:0]counter;
always@(posedge clk)
begin
    if(rst)
        counter <= 0;
    else if(counter < 100)
        counter <= counter + 1;
    else
        counter <= 0;
end
assign op=(counter<20)?1:0;//assign op to 1 if counter value is less than 20

endmodule

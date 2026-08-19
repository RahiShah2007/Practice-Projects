`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 22:01:36
// Design Name: 
// Module Name: Demux_1x2
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


module Demux_1x2(in,en,D0,D1);
input in,en;
output D0,D1;
assign D0= in & ~en;
assign D1= in & en;

endmodule

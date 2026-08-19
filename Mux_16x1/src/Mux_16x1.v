`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 21:25:16
// Design Name: 
// Module Name: Mux_16x1
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

module Mux_16x1(in,sel,out);

input [15:0] in;
input [3:0] sel;
output out;

wire y1,y2,y3,y4;

Mux_4x1 M0(in[3:0],sel[1:0],y1);
Mux_4x1 M1(in[7:4],sel[1:0],y2);
Mux_4x1 M2(in[11:8],sel[1:0],y3);
Mux_4x1 M3(in[15:12],sel[1:0],y4);

Mux_4x1 M4({y4,y3,y2,y1}, sel[3:2], out);

endmodule
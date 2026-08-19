`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 21:54:06
// Design Name: 
// Module Name: Demux_1x4
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


module Demux_1x4(in,en,D0,D1,D2,D3);

input in;
input [1:0] en;
output D0,D1,D2,D3;

wire w0,w1;

Demux_1x2 M0(in,en[1],w0,w1);

Demux_1x2 M1(w0,en[0],D0,D1);
Demux_1x2 M2(w1,en[0],D2,D3);

endmodule
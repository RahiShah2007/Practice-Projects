`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 17:19:38
// Design Name: 
// Module Name: Comparator_1bit
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


module Comparator_1bit(A,B,G,E,L);
input A,B;
output G,E,L;
wire y1,y2;
xnor a(E,A,B);
not n1(y1,B);
and an1(G,A,y1);
not n2(y2,A);
and an2(L,y2,B);
endmodule

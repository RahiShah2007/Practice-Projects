`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 17:49:02
// Design Name: 
// Module Name: Comparator_4bit
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


module Comparator_4bit(A,B,G,L,E);

input [3:0] A,B;
output G,L,E;

wire G0,G1,G2,G3;
wire E0,E1,E2,E3;
wire L0,L1,L2,L3;

wire y1,y2,y3;

Comparator_1bit C0(
    .A(A[0]),
    .B(B[0]),
    .G(G0),
    .E(E0),
    .L(L0)
);

Comparator_1bit C1(
    .A(A[1]),
    .B(B[1]),
    .G(G1),
    .E(E1),
    .L(L1)
);

Comparator_1bit C2(
    .A(A[2]),
    .B(B[2]),
    .G(G2),
    .E(E2),
    .L(L2)
);

Comparator_1bit C3(
    .A(A[3]),
    .B(B[3]),
    .G(G3),
    .E(E3),
    .L(L3)
);

assign y1 = E3 & E2;
assign y2 = y1 & E1;
assign y3 = y2 & E0;

assign E = E3 & E2 & E1 & E0;

assign G = G3 |
           (E3 & G2) |
           (y1 & G1) |
           (y2 & G0);

assign L = L3 |
           (E3 & L2) |
           (y1 & L1) |
           (y2 & L0);

endmodule
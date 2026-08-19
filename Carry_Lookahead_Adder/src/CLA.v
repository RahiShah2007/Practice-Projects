`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 22:52:05
// Design Name: 
// Module Name: CLA
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


module CLA(A,B,Cin,Sum,Cout);

input [3:0] A,B;
input Cin;
output [3:0] Sum;
output Cout;

wire [3:0] P,G;
wire C1,C2,C3,C4;

assign P = A ^ B;
assign G = A & B;

assign C1 = G[0] | (P[0] & Cin);

assign C2 = G[1] | (P[1] & G[0]) |
                  (P[1] & P[0] & Cin);

assign C3 = G[2] | (P[2] & G[1]) |
                  (P[2] & P[1] & G[0]) |
                  (P[2] & P[1] & P[0] & Cin);

assign C4 = G[3] | (P[3] & G[2]) |
                  (P[3] & P[2] & G[1]) |
                  (P[3] & P[2] & P[1] & G[0]) |
                  (P[3] & P[2] & P[1] & P[0] & Cin);

assign Sum[0] = P[0] ^ Cin;
assign Sum[1] = P[1] ^ C1;
assign Sum[2] = P[2] ^ C2;
assign Sum[3] = P[3] ^ C3;

assign Cout = C4;

endmodule

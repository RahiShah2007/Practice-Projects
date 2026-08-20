`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 11:37:12
// Design Name: 
// Module Name: FA
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


module FA(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;
assign Sum=A^B^Cin;
assign Cout=(A&B)|(A^B)&Cin;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 11:15:40
// Design Name: 
// Module Name: Gray2Bin
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


module Gray2Bin(G1,G2,G3,G4,B1,B2,B3,B4);
input G1,G2,G3,G4;
output B1,B2,B3,B4;
assign B4=G4;
assign B3=G4^G3;
assign B2=G4^G3^G2;
assign B1=G4^G3^G2^G1;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 18:07:04
// Design Name: 
// Module Name: Decoder_5to32
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


module Decoder_5to32(A,Y);
input [4:0] A;
output reg[31:0] Y;

always@(*) begin
    Y = 32'b0;
    Y[A] = 1'b1;
end
endmodule

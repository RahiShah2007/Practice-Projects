`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 18:10:23
// Design Name: 
// Module Name: Tb_Decoder_5to32
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


module Tb_Decoder_5to32();

reg [4:0] A;
wire [31:0] Y;

Decoder_5to32 DUT(A,Y);

initial begin

    A = 5'b00000; #10;
    $display("A=%b | Y=%b", A, Y);

    A = 5'b00001; #10;
    $display("A=%b | Y=%b", A, Y);

    A = 5'b00010; #10;
    $display("A=%b | Y=%b", A, Y);

    A = 5'b00100; #10;
    $display("A=%b | Y=%b", A, Y);

    A = 5'b01000; #10;
    $display("A=%b | Y=%b", A, Y);

    A = 5'b10000; #10;
    $display("A=%b | Y=%b", A, Y);

    A = 5'b11111; #10;
    $display("A=%b | Y=%b", A, Y);

    $finish;

end
endmodule

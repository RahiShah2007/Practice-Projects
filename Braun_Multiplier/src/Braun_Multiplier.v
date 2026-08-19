`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 22:24:29
// Design Name: 
// Module Name: Braun_Multiplier
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


module Braun_Multiplier(
    input [7:0] A,  B,
    output [15:0] P
);
    wire [15:0] sum0, sum1, sum2, sum3, sum4, sum5, sum6, sum7;
    wire [7:0] partial_product[7:0];

    genvar i, j;
    generate
        for (i = 0; i < 8; i = i + 1) begin
            for (j = 0; j < 8; j = j + 1) begin
                assign partial_product[i][j] = A[i] & B[j];  // Generating partial products
            end
        end
    endgenerate

    assign sum0 = {8'b0, partial_product[0]};
    assign sum1 = {partial_product[1], 1'b0} + sum0;
    assign sum2 = {partial_product[2], 2'b0} + sum1;
    assign sum3 = {partial_product[3], 3'b0} + sum2;
    assign sum4 = {partial_product[4], 4'b0} + sum3;
    assign sum5 = {partial_product[5], 5'b0} + sum4;
    assign sum6 = {partial_product[6], 6'b0} + sum5;
    assign sum7 = {partial_product[7], 7'b0} + sum6;

    assign P = sum7;
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 21:35:31
// Design Name: 
// Module Name: Tb_Mux_16x1
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


module Tb_Mux_16x1();
reg[15:0] in;
reg[3:0] sel;
wire out;

Mux_16x1 DUT(in,sel,out);
initial begin
    in=16'b1010101010101010;
    sel=4'b0000;
    #10;
    
    sel=4'b0001;
    #10;
    
    sel=4'b0010;
    #10;
    
    sel=4'b0011;
    #10;
    
    sel=4'b0100;
    #10;
    
    sel=4'b0101;
    #10;
    
    sel=4'b0110;
    #10;
    
    sel=4'b0111;
    #10;
    
    sel=4'b1000;
    #10;
    
    sel=4'b1001;
    #10;
    
    sel=4'b1010;
    #10;
    
    sel=4'b1011;
    #10;
    
    sel=4'b1100;
    #10;
    
    sel=4'b1101;
    #10;
    
    sel=4'b1110;
    #10;
    
    sel=4'b1111;
    #10;
    
    $finish;
    
end
endmodule

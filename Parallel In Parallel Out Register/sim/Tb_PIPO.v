`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 12:09:52
// Design Name: 
// Module Name: Tb_PIPO
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


module Tb_PIPO();
reg clk,rst,d_in;
wire d_out;
PIPO DUT(clk,rst,d_in,d_out);
initial clk=0;
always #5 clk=~clk;
initial begin

    rst=1;
    d_in=4'b0000;
    #10;

    rst=0;
    d_in=4'b1010;
    #10;

    d_in=4'b1100;
    #10;

    d_in=4'b0011;
    #10;

    d_in=4'b1111;
    #10;

    $finish;

end
endmodule

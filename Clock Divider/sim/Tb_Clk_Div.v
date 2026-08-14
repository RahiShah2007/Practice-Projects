`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 01:11:37
// Design Name: 
// Module Name: Tb_Clk_Div
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

module Tb_Clk_Div();
reg clk;
reg rst;
wire clk_d;

Clk_Div DUT (
    .clk(clk),
    .rst(rst),
    .clk_d(clk_d)
);
initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
end
initial begin
    rst = 1'b1;
    #50;
    rst = 1'b0;
end
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, Tb_Clk_Div);

    #2000;
    $finish;
end
endmodule

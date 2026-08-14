`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 13:11:36
// Design Name: 
// Module Name: Tb_Johnson_Counter
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


module Tb_Johnson_Counter();
reg clk,rst;
wire [3:0]count;
Johnson_Counter DUT(clk,rst,count);
always #5 clk=!clk;
initial
begin
    clk=0;
    rst=1;
    @(negedge clk);
    rst=0;
end
initial
begin
    $dumpfile("dump.vcd");
    $dumpvars();
    repeat(20)
    @(negedge clk);
    $finish();
end
endmodule

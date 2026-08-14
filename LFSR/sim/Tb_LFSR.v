`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 21:03:45
// Design Name: 
// Module Name: Tb_LFSR
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


module Tb_LFSR();
reg clk,rst;
wire [4:0]random;
LFSR DUT(clk,rst,random);
initial clk=0;
always #10 clk=!clk;
initial begin
rst=0;
#55;
rst=1;
end
initial begin
$dumpfile("dump.vcd");
$dumpvars();
repeat(40)
@(posedge clk or negedge rst);
$finish;
end
endmodule

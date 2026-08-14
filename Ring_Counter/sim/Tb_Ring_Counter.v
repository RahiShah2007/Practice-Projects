`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 15:46:55
// Design Name: 
// Module Name: Tb_Ring_Counter
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


module Tb_Ring_Counter();
reg clk,rst;
wire [3:0]Q;
Ring_Counter DUT(clk,rst,Q);
initial clk=0;
always #10 clk = ~clk;
initial
begin
    rst=1;
    #55;
    rst=0;
end
initial
begin
$dumpfile("dump.vcd");
$dumpvars();
repeat(20)
@(posedge clk);
$finish;
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2026 23:04:38
// Design Name: 
// Module Name: Tb_Round_Robin_Arbiter
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


module Tb_Round_Robin_Arbiter();
reg clk,rst;
reg [3:0] req;
wire[3:0] sel;
Round_Robin_Arbiter DUT(clk,rst,req,sel);
always #5 clk=~clk;
initial begin
clk=0;
rst=0;
req=4'b0;
#5 rst=1;
@(negedge clk) req = 4'b1111;
@(negedge clk) req = 4'b1111;
@(negedge clk) req = 4'b1111;
@(negedge clk) req = 4'b1111;
@(negedge clk) req = 4'b1111;
@(negedge clk) req = 4'b1110;
@(negedge clk) req = 4'b0100;
@(negedge clk) req = 4'b1010;
@(negedge clk) req = 4'b0111;
@(negedge clk) req = 4'b1010;
@(negedge clk) req = 4'b0111;
@(negedge clk) req = 4'b1010;
@(negedge clk) req = 4'b0100;
#5 rst=0;
#100 $finish;
end
initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
end
endmodule

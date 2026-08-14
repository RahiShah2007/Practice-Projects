`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 00:01:58
// Design Name: 
// Module Name: Tb_Pulse_Width_Modulation
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


module Tb_Pulse_Width_Modulation();
reg clk,rst;
wire op;
Pulse_Width_Modulation DUT(clk,rst,op);
initial clk=0;
always #5 clk=!clk;
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
repeat(120)
@(posedge clk);
$finish;
end
endmodule

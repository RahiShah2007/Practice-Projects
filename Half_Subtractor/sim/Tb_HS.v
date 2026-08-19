`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 23:09:49
// Design Name: 
// Module Name: Tb_HS
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


module Tb_HS();
reg A,B;
wire D,Bout;
HS DUT(A,B,D,Bout);
initial begin
    A=0;B=0; #10;
    A=0;B=1; #10;
    A=1;B=0; #10;
    A=1;B=1; #10;
    $finish;
end
endmodule

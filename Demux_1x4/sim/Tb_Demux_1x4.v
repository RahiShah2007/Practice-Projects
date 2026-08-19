`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 22:13:23
// Design Name: 
// Module Name: Tb_Demux_1x4
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


module Tb_Demux_1x4();
reg in;
reg[1:0] en;
wire D0,D1,D2,D3;
Demux_1x4 DUT(in,en,D0,D1,D2,D3);
initial begin
    in=1;
    en=2'b00; #10;
    en=2'b01; #10;
    en=2'b10; #10;
    en=2'b11; #10;
    $finish;
end
endmodule

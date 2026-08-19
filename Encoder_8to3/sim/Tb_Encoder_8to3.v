`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 21:13:54
// Design Name: 
// Module Name: Tb_Encoder_8to3
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


module Tb_Encoder_8to3();
reg [7:0] D;
wire [2:0] Y;
integer i;
Encoder_8to3 DUT(D,Y);
initial begin
    for(i=0;i<8;i=i+1)begin
        D=8'b00000001<<i;
        #10;
        $display("D=%b|Y=%b",D,Y);
    end
        $finish;
end
endmodule

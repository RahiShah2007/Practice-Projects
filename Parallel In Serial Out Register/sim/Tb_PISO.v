`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 13:57:20
// Design Name: 
// Module Name: Tb_PISO
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


module Tb_PISO();
reg clk,rst,load;
reg [3:0] data_in;
wire serial_out;

PISO DUT(clk,rst,load,data_in,serial_out);

initial clk=0;
always #5 clk=~clk;

initial begin

    rst=1;
    load=0;
    data_in=4'b0000;
    #10;

    rst=0;
    data_in=4'b1011;
    load=1;
    #10;

    load=0;
    #10;
    #10;
    #10;
    #10;

    $finish;

end
endmodule

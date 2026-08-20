`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 14:04:36
// Design Name: 
// Module Name: Tb_SIPO
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


module Tb_SIPO();

reg clk,rst,serial_in;
wire [3:0] parallel_out;

SIPO DUT(clk,rst,serial_in,parallel_out);

initial clk=0;
always #5 clk=~clk;

initial begin

    rst=1;
    serial_in=0;
    #10;

    rst=0;

    serial_in=1; #10;
    serial_in=0; #10;
    serial_in=1; #10;
    serial_in=1; #10;

    $finish;

end

endmodule

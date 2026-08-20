`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 12:17:13
// Design Name: 
// Module Name: Tb_SISO
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


module Tb_SISO();

reg clk,rst,serial_in;
wire serial_out;

SISO DUT(clk,rst,serial_in,serial_out);

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
    serial_in=0; #10;
    serial_in=1; #10;

    $finish;

end

endmodule

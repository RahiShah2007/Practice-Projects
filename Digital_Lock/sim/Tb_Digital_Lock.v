`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2026 14:22:33
// Design Name: 
// Module Name: Tb_Digital_Lock
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


module Tb_Digital_Lock();
reg clk,rst,data_in,submit;
wire locked,unlocked;
Digital_Lock DUT(clk,rst,data_in,submit,locked,unlocked);
always #5clk=~clk;
initial begin

    clk = 0;
    rst = 1;
    data_in = 0;
    submit = 0;

    #10;
    rst = 0;

    // Correct password: 1010
    data_in = 1; #10;
    data_in = 0; #10;
    data_in = 1; #10;
    data_in = 0; #10;

    // Submit after unlock
    submit=1;#10;
    submit=0;#10;

    // Wrong attempt 1
    data_in=0;#10;
    submit=1;#10;
    submit=0;#10;

    // Wrong attempt 2
    data_in=0;#10;
    submit=1;#10;
    submit=0;#10;

    // Wrong attempt 3 ? permanent lock
    data_in=0;#10;
    submit=1;#10;
    submit=0;#10;

    // Try correct password after lock
    data_in=1;#10;
    data_in=0;#10;
    data_in=1;#10;
    data_in=0;#10;
    #20;
    $finish;
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 13:45:50
// Design Name: 
// Module Name: tb_up_down_counter
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


module tb_up_down_counter;
reg clk;
reg rst;
reg mode;//1=up 0=down
wire[3:0]counter;
up_down_counter uut(
.clk(clk),.rst(rst),.mode(mode),.counter(counter));
initial begin
clk=0;
forever #5clk=~clk;
end
initial begin
    // Initial values
    rst = 1;
    mode = 1;  // start with UP

    // Apply reset
    #20;
    rst = 0;

    // UP counting
    #200;

    // Switch to DOWN
    mode = 0;
    #200;

    // Switch back to UP
    mode = 1;
    #200;

    // Apply reset again
    rst = 1;
    #20;
    rst = 0;

    // Final run
    #200;

    $finish;
end

// Monitor output (very useful)
initial begin
    $monitor("Time=%0t | rst=%b | mode=%b | counter=%d",
              $time, rst, mode, counter);
end
endmodule

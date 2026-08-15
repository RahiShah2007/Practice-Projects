`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 17:59:46
// Design Name: 
// Module Name: Tb_Vending_Machine
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


module Tb_Vending_Machine();
reg clk,rst,cncl;
reg [1:0] coin,sel;
wire A,B,C,change;

Vending_Machine DUT(clk,rst,cncl,coin,sel,A,B,C,change);

initial clk=0;
always #5 clk=~clk;

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars();

    rst=1;
    cncl=0;
    coin=2'b00;
    sel=2'b00;

    @(negedge clk);
    rst=0;

    // ?5 -> A
    @(negedge clk);
    sel=2'b00;
    coin=2'b01;

    @(negedge clk);
    coin=2'b00;

    // ?10 -> B
    @(negedge clk);
    sel=2'b01;
    coin=2'b10;

    @(negedge clk);
    coin=2'b00;

    // ?10 -> A + change
    @(negedge clk);
    sel=2'b00;
    coin=2'b10;

    @(negedge clk);
    coin=2'b00;

    // ?20 -> C
    @(negedge clk);
    sel=2'b11;
    coin=2'b11;

    @(negedge clk);
    coin=2'b00;

    // ?5 + ?5 -> B
    @(negedge clk);
    sel=2'b01;
    coin=2'b01;

    @(negedge clk);
    coin=2'b00;

    @(negedge clk);
    coin=2'b01;

    @(negedge clk);
    coin=2'b00;

    // ?5 + ?10 -> C
    @(negedge clk);
    sel=2'b11;
    coin=2'b01;

    @(negedge clk);
    coin=2'b00;

    @(negedge clk);
    coin=2'b10;

    @(negedge clk);
    coin=2'b00;

    // ?10 + ?10 -> C
    @(negedge clk);
    sel=2'b11;
    coin=2'b10;

    @(negedge clk);
    coin=2'b00;

    @(negedge clk);
    coin=2'b10;

    @(negedge clk);
    coin=2'b00;

    // ?15 + ?5 -> C
    @(negedge clk);
    sel=2'b11;
    coin=2'b01;

    @(negedge clk);
    coin=2'b00;

    @(negedge clk);
    coin=2'b10;

    @(negedge clk);
    coin=2'b00;

    @(negedge clk);
    coin=2'b01;

    @(negedge clk);
    coin=2'b00;

    // Cancel
    @(negedge clk);
    cncl=1;

    @(negedge clk);
    cncl=0;

    repeat(2) @(negedge clk);

    $finish;
end

endmodule


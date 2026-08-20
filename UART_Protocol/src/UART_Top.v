`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 22:39:49
// Design Name: 
// Module Name: UART_Top
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


module UART_Top(rst,data_in,wr_en,clk,rx,rdy_clr,tx,rdy,busy,data_out);
input rst,wr_en,clk,rdy_clr,rx;
input[7:0] data_in;
output tx,rdy,busy;
output [7:0] data_out;
wire rx_clk_en;// for collection of baud rate rx_en signal
wire tx_clk_en;// for connection of baud rate tx_en signal
wire tx_temp;// connecting the output f the transmitter module

UART_Baud_Rate_Generator BRG(
    .clk(clk),
    .rst(rst),
    .tx_en(tx_clk_en),
    .rx_en(rx_clk_en)
    );
    
UART_Tx TX(
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .en(tx_clk_en),
        .data_in(data_in),
        .tx(tx),
        .busy(busy)
    );
    
UART_Rx RX(
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .rdy_clr(rdy_clr),
        .clk_en(rx_clk_en),
        .rdy(rdy),
        .data_out(data_out)
    );

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 20:39:57
// Design Name: 
// Module Name: UART_Baud_Rate_Generator
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
// 50MHz 9600 baud Rate Generator

module UART_Baud_Rate_Generator(clk,rst,tx_en,rx_en);
input clk,rst;
output tx_en,rx_en;
reg[12:0] tx_counter;
reg[9:0] rx_counter;
parameter Tx_counter=5208;
parameter Rx_counter=325;
always@(posedge clk) begin
    if(rst)
        tx_counter<=0;
    else if(tx_counter==Tx_counter-1)
        tx_counter<=0;
    else
        tx_counter<=tx_counter+1'b1;
end
always@(posedge clk)begin
    if(rst)
        rx_counter<=0;
    else if(rx_counter==Rx_counter-1)
        rx_counter<=0;
    else
        rx_counter<=rx_counter+1'b1;
end
assign tx_en=(tx_counter==0)? 1'b1:1'b0;
assign rx_en=(rx_counter==0)?1'b1:1'b0;
endmodule

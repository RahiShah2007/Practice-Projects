`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 23:10:20
// Design Name: 
// Module Name: Tb_UART
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


module Tb_UART();

reg clk,rst,wr_en,rdy_clr;
reg [7:0] data_in;
reg rx;

wire tx,busy,rdy;
wire [7:0] data_out;

UART_Top DUT(
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rdy_clr(rdy_clr),
    .data_in(data_in),
    .rx(rx),
    .tx(tx),
    .busy(busy),
    .rdy(rdy),
    .data_out(data_out)
);

initial clk=0;
always #10 clk=~clk;

initial begin

    rst=1;
    wr_en=0;
    rdy_clr=0;
    data_in=8'b0;
    rx=1;

    #100;
    rst=0;

    // Test TX
    data_in=8'b10101010;
    wr_en=1;
    #20;
    wr_en=0;

    wait(busy==0);

    // Test RX
    rx=1;
    #100;

    // Start bit
    rx=0;
    #104160;

    rx=0; #104160;   
    rx=1; #104160;   
    rx=0; #104160;   
    rx=1; #104160;  
    rx=0; #104160;   
    rx=1; #104160;   
    rx=0; #104160;   
    rx=1; #104160;   

    // Stop bit
    rx=1;
    #104160;

    if(rdy)
        $display("RX DATA = %b",data_out);
    else
        $display("RX FAILED");

    rdy_clr=1;
    #20;
    rdy_clr=0;

    #100;
    $finish;

end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 21:00:46
// Design Name: 
// Module Name: UART_Tx
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


module UART_Tx(clk,rst,wr_en,en,data_in,tx,busy);
input clk,rst,wr_en,en;
input [7:0] data_in;
output reg tx;
output busy;
parameter rest=2'b00;
parameter start=2'b01;
parameter data_st=2'b10;
parameter stop=2'b11;
reg[7:0] data;
reg[2:0] index;
reg[1:0] state; 
always@(posedge clk)begin
    if(rst)begin
        tx<=1'b1;
        state<=rest;
        data<=8'b0;
        index<=3'b000;
    end
    else begin
        case(state)
            rest:
                begin
                tx<=1'b1;
                    if(wr_en)
                    begin
                        state<=start;
                        data<=data_in;
                        index<=3'b000;
                    end
                    else begin
                        state<=rest;
                    end    
                end
            start:
                begin
                    if(en)
                    begin
                        tx<=1'b0;
                        state<=data_st;
                    end
                    else
                        state<=start;
                end
            data_st:
                begin
                    if(en)
                    begin
                        tx<=data[index];
                        if(index==3'b111)
                            state<=stop;
                        else
                            index<=index+3'h1;
                    end
                
            end 
            stop:
                begin
                    if(en)
                    begin
                        tx<=1'b1;
                        state<=rest;
                    end
                end
            default: begin
                tx<=1'b1;
                state<=rest;
            end
        endcase
     end
end
assign busy=(state!=rest);
endmodule

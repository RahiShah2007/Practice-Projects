`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2026 19:17:14
// Design Name: 
// Module Name: seq_det_mealy_overlap
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


module seq_det_mealy_overlap(rst,clk,ip,temp,op);
input clk,rst,ip;
output reg op,temp;
reg[1:0] CURRENT_STATE;
reg[1:0] next_state;
parameter A=2'b00,B=2'b01,C=2'b10,D=2'b11;
always@(posedge clk or posedge rst)begin
if (rst) begin
CURRENT_STATE=A;
op<=0;
end
else
    begin
    CURRENT_STATE<=next_state;
    op<=temp;
    end
end
always@(*)begin
temp=0;//default output 0 fixed
case(CURRENT_STATE)
    A:begin
        if(ip)
        next_state=B;
        else
        next_state=A;
        end
    B:begin
        if(ip)
        next_state=B;
        else
        next_state=C;
        end
    C:begin
        if(ip)
        next_state=D;
        else
        next_state=A;
        end
    D: begin
        if(ip)
            begin
            next_state=B;
            temp=1;
            end
        else
    next_state=C;
    end
endcase    
        end
endmodule

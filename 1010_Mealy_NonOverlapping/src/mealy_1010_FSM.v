`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2026 23:10:08
// Design Name: 
// Module Name: mealy_1010_FSM
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


module mealy_1010_FSM(clk,rst,ip,op);
input clk,rst,ip;
output op;
parameter A=2'b00,B=2'b01,C=2'b10,D=2'b11;
reg[1:0] CURRENT_STATE;
reg[1:0] next_state;
always@(posedge clk,negedge rst)begin
if(!rst)begin
CURRENT_STATE<=A;
end
else
CURRENT_STATE<=next_state;
end
always@(*)begin
case(CURRENT_STATE)
A:begin
if(ip==0)
next_state=A;
else
next_state=B;
end
B:begin
if(ip==0)
next_state=C;
else
next_state=B;
end
C:begin
if(ip==0)
next_state=A;
else
next_state=D;
end
D:begin
if(ip==0)
next_state=A;
else
next_state=B;
end
default:next_state=A;
endcase
end
assign op=(CURRENT_STATE==D)&&(ip==0);
endmodule

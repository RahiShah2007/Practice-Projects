`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 14:43:05
// Design Name: 
// Module Name: Ring_Counter
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


module Ring_Counter(clk,rst,Q);
input clk,rst;
output [3:0]Q;
reg [3:0]a;
always@(posedge clk)
begin
    if(rst)
        a<=4'b0001;
    else
        a={a[2:0],a[3]};
        
    end
    
assign 
  Q=a;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2026 16:11:20
// Design Name: 
// Module Name: Barrel_Shifter
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


module Barrel_Shifter(data_in,shift,y);
input [3:0] data_in;
input [1:0] shift;
output reg[3:0] y;
always@(*)
begin
   case(shift)
        2'b00: begin y=data_in; end
        
        2'b01: begin y={data_in[0],data_in[3:1]}; end
        
        2'b10: begin y={data_in[1:0],data_in[3:2]}; end
        
        2'b11: begin y={data_in[2:0],data_in[3]}; end
        
        default: y=data_in;
        endcase 
end
endmodule

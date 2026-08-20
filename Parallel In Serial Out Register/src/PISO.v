`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 13:53:31
// Design Name: 
// Module Name: PISO
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


module PISO(clk,rst,load,data_in,serial_out);

input clk,rst,load;
input [3:0] data_in;
output serial_out;

reg [3:0] temp;

always @(posedge clk or posedge rst) begin
    if(rst)
        temp <= 4'b0000;
    else if(load)
        temp <= data_in;
    else
        temp <= {temp[2:0],1'b0};
end

assign serial_out = temp[3];
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 12:16:02
// Design Name: 
// Module Name: SISO
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


module SISO(clk,rst,serial_in,serial_out);

input clk,rst,serial_in;
output serial_out;

reg [3:0] temp;

always @(posedge clk or posedge rst) begin
    if(rst)
        temp <= 4'b0000;
    else
        temp <= {temp[2:0],serial_in};
end

assign serial_out = temp[3];

endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 14:03:23
// Design Name: 
// Module Name: SIPO
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


module SIPO(clk,rst,serial_in,parallel_out);

input clk,rst,serial_in;
output reg [3:0] parallel_out;

always @(posedge clk or posedge rst) begin
    if(rst)
        parallel_out <= 4'b0000;
    else
        parallel_out <= {parallel_out[2:0],serial_in};
end

endmodule

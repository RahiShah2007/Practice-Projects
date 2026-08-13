`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 18:09:42
// Design Name: 
// Module Name: ram_16x4
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


module ram_16x4(
    input clk,
    input write_enable,
    input [3:0] address,
    input [3:0] data_in,
    output reg [3:0] data_out
    );
    reg[3:0]ram_block[0:15];
    always @(posedge clk) begin
        if(write_enable)
            ram_block[address] <= data_in;
        else
            data_out<= ram_block[address];

end
 
endmodule

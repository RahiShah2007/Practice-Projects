`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 13:12:09
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(clk, rst, mode, counter);

input clk, rst, mode;
output [3:0] counter;

reg [3:0] count;
reg [3:0] div_counter;

// clock divider
always @(posedge clk) begin
    if (rst)
        div_counter <= 0;
    else
        div_counter <= div_counter + 1;
end

// enable signal (slow pulse)
wire enable;
assign enable = (div_counter == 4'd10); // adjust speed

// counter logic
always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 4'd0;
    else if (enable) begin
        if (mode)
            count <= count + 1;
        else
            count <= count - 1;
    end
end

assign counter = count;

endmodule

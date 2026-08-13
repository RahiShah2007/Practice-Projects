`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 18:21:27
// Design Name: 
// Module Name: tb_ram
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


module tb_ram;
reg clk;
reg write_enable;
reg[3:0] address;
reg[3:0] data_in;
wire[3:0] data_out;
ram_16x4 uut(
clk,
write_enable,
address,
data_in,
data_out
);
initial begin
clk=1;
forever #10clk=~clk;
end
initial begin
write_enable=1;
address=10;
data_in=4'hA;
#40;

write_enable=1;
address=9;
data_in=4'h9;
#40;

write_enable=1;
address=8;
data_in=4'h8;
#40;

write_enable=1;
address=7;
data_in=4'h7;
#40;

write_enable=0;
address=10;
#40;

write_enable=0;
address=9;
#40;

write_enable=0;
address=8;
#40;

write_enable=0;
address=7;
#40;
end
           
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2026 19:43:29
// Design Name: 
// Module Name: tb_mealy_seq_det_overlapping
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


module tb_mealy_seq_det_overlapping;
reg rst;
reg clk;
reg ip;

wire op;
wire temp;
seq_det_mealy_overlap uut(
.rst(rst),
.clk(clk),
.ip(ip),
.temp(temp),
.op(op));

initial begin
clk=1;
forever #10 clk=~clk;
end

initial begin
rst=1;
#20;
rst=0;
#1000;

end

initial begin
ip=1;
#40;
ip=0;
#20;
ip=1;
#20;
ip=1;
#20;
ip=0;
#20;
ip=1;
#20;
ip=1;
#20;
ip=0;
#20;
ip=1;
#20;
ip=0;
#20;
ip=1;
#20;
ip=1;
#20;


#100;
$finish;
end

endmodule

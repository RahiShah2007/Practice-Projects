`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2026 23:23:52
// Design Name: 
// Module Name: tb_mealy_1010_FSM
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


module tb_mealy_1010_FSM;
reg clk,rst,ip;
wire op;
mealy_1010_FSM uut(.clk(clk),
.rst(rst),
.ip(ip),
.op(op));
initial begin clk=0;
forever #10clk=~clk;
end
initial begin
  rst = 0; ip = 0;
  #15 rst = 1;

  #20 ip = 1;
  #20 ip = 0;
  #20 ip = 1;
  #20 ip = 0; 

  #20 ip = 1;
  #20 ip = 0;
  #20 ip = 1;
  #20 ip = 0;

  #20 ip = 1;
  #20 ip = 1;
  #20 ip = 0;

  #100 $finish;
end
initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
end

endmodule

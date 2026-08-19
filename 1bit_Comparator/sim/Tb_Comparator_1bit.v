`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 17:25:49
// Design Name: 
// Module Name: Tb_Comparator_1bit
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


module Tb_Comparator_1bit();
reg A,B;
wire G,L,E;
Comparator_1bit DUT(A,B,G,E,L);
initial begin
    A=0; B=0; #10;
    $display("A=%b B=%b | E=%b G=%b L=%b",A,B,E,G,L);

    A=0; B=1; #10;
    $display("A=%b B=%b | E=%b G=%b L=%b",A,B,E,G,L);

    A=1; B=0; #10;
    $display("A=%b B=%b | E=%b G=%b L=%b",A,B,E,G,L);

    A=1; B=1; #10;
    $display("A=%b B=%b | E=%b G=%b L=%b",A,B,E,G,L);

    $finish;

end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 11:56:10
// Design Name: 
// Module Name: Tb_FS
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


module Tb_FS();
reg A,B,Bin;
wire D,Bout;
FS DUT(A,B,Bin,D,Bout);
initial begin
    A=0; B=0; Bin=0; #10;
    $display("A=%b|B=%b|Bin=%b|D=%b|Bout=%b",A,B,Bin,D,Bout);
    A=0; B=0; Bin=1; #10;
    $display("A=%b|B=%b|Bin=%b|D=%b|Bout=%b",A,B,Bin,D,Bout);
    A=0; B=1; Bin=0; #10;
    $display("A=%b|B=%b|Bin=%b|D=%b|Bout=%b",A,B,Bin,D,Bout);
    A=0; B=1; Bin=1; #10;
    $display("A=%b|B=%b|Bin=%b|D=%b|Bout=%b",A,B,Bin,D,Bout);
    A=1; B=0; Bin=0; #10;
    $display("A=%b|B=%b|Bin=%b|D=%b|Bout=%b",A,B,Bin,D,Bout);
    A=1; B=0; Bin=1; #10;
    $display("A=%b|B=%b|Bin=%b|D=%b|Bout=%b",A,B,Bin,D,Bout);
    A=1; B=1; Bin=0; #10;
    $display("A=%b|B=%b|Bin=%b|D=%b|Bout=%b",A,B,Bin,D,Bout);
    A=1; B=1; Bin=1; #10;
    $display("A=%b|B=%b|Bin=%b|D=%b|Bout=%b",A,B,Bin,D,Bout);
    
    $finish;
end
endmodule

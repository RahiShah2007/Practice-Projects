`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 11:41:15
// Design Name: 
// Module Name: Tb_FA
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


module Tb_FA();
reg A,B,Cin;
wire Sum,Cout;
FA DUT(A,B,Cin,Sum,Cout);
initial begin
    A=0; B=0; Cin=0; #10;
    $display("A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b",A,B,Cin,Sum,Cout);
    A=0; B=0; Cin=1; #10;
    $display("A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b",A,B,Cin,Sum,Cout);
    A=0; B=1; Cin=0; #10;
    $display("A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b",A,B,Cin,Sum,Cout);
    A=0; B=1; Cin=1; #10;
    $display("A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b",A,B,Cin,Sum,Cout);
    A=1; B=0; Cin=0; #10;
    $display("A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b",A,B,Cin,Sum,Cout);
    A=1; B=0; Cin=1; #10;
    $display("A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b",A,B,Cin,Sum,Cout);
    A=1; B=1; Cin=0; #10;
    $display("A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b",A,B,Cin,Sum,Cout);
    A=1; B=1; Cin=1; #10;
    $display("A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b",A,B,Cin,Sum,Cout);
    
    $finish;
end
endmodule

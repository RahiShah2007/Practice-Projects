`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 22:56:52
// Design Name: 
// Module Name: Tb_CLA
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


module Tb_CLA();

reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;

CLA DUT(A,B,Cin,Sum,Cout);

initial begin

    A=4'b0001; B=4'b0010; Cin=0;
    #10;
    A=4'b0101; B=4'b0011; Cin=0;
    #10;
    A=4'b1111; B=4'b0001; Cin=0;
    #10;
    A=4'b1010; B=4'b0101; Cin=1;
    #10;
    A=4'b1111; B=4'b1111; Cin=1;
    #10;

    $finish;

end

endmodule

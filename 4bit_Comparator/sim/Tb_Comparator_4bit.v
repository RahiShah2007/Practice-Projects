`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 17:57:51
// Design Name: 
// Module Name: Tb_Comparator_4bit
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


module Tb_Comparator_4bit();

reg [3:0] A,B;
wire G,L,E;

integer i,j;

Comparator_4bit DUT(
    .A(A),
    .B(B),
    .G(G),
    .L(L),
    .E(E)
);

initial begin

    for(i=0; i<16; i=i+1)
    begin
        for(j=0; j<16; j=j+1)
        begin
            A=i;
            B=j;
            #1;

            $display("A=%b B=%b | G=%b L=%b E=%b",
                     A,B,G,L,E);
        end
    end

    $finish;

end
endmodule

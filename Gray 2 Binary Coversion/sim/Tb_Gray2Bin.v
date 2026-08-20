`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 11:30:04
// Design Name: 
// Module Name: Tb_Gray2Bin
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


module Tb_Gray2Bin();

reg G1,G2,G3,G4;
wire B1,B2,B3,B4;

Gray2Bin DUT(G1,G2,G3,G4,B1,B2,B3,B4);

initial begin

    G1=0; G2=0; G3=0; G4=0;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=1; G2=0; G3=0; G4=0;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=1; G2=1; G3=0; G4=0;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=0; G2=1; G3=0; G4=0;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=0; G2=1; G3=1; G4=0;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=1; G2=1; G3=1; G4=0;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=1; G2=0; G3=1; G4=0;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=0; G2=0; G3=1; G4=0;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=0; G2=0; G3=1; G4=1;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=1; G2=0; G3=1; G4=1;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=1; G2=1; G3=1; G4=1;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=0; G2=1; G3=1; G4=1;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=0; G2=1; G3=0; G4=1;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=1; G2=1; G3=0; G4=1;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=1; G2=0; G3=0; G4=1;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    G1=0; G2=0; G3=0; G4=1;
    #10;
    $display("G=%b%b%b%b | B=%b%b%b%b",G4,G3,G2,G1,B4,B3,B2,B1);

    $finish;

end
endmodule

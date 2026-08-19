`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 22:27:22
// Design Name: 
// Module Name: Tb_Braun_Multiplier
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


module Tb_Braun_Multiplier();
reg [7:0] A,B;
wire [15:0] P;

Braun_Multiplier DUT(A,B,P);

    initial 
        begin   
            
            {A,B} = 16'b0; #10;
            A = 10; B = 25; #10;
            A = 12; B = 29; #10;
            A = 17; B = 30; #10; 
            A = 111; B = 198; #10;
            A = 156; B = 0; #10;
            $finish;
        end    
endmodule

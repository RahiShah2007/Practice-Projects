`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 23:19:18
// Design Name: 
// Module Name: Tb_4_Bit_ALU
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


module Tb_4_Bit_ALU;
        reg[3:0] A ,B;
        reg[3:0] ALU_selection;
        //OUTPUT
        wire[3:0] ALU_Output;
        wire Cout;
        //integer i;
        ALU_4_Bit uut(
                   A,B,//input
                   ALU_selection,
                   ALU_Output,
                   Cout
                 );
        initial begin
        //hold rest for 100 ns
        A=4'b1010;         B=4'b0010;
        ALU_selection=4'b0000;   #100;
         ALU_selection=4'b0001;   #100;
          ALU_selection=4'b0010;   #100;
           ALU_selection=4'b0011;   #100;
            ALU_selection=4'b0100;   #100;
             ALU_selection=4'b0101;   #100;
              ALU_selection=4'b0110;   #100;
               ALU_selection=4'b0111;   #100;
                ALU_selection=4'b1000;   #100;
                 ALU_selection=4'b1001;   #100;
                  ALU_selection=4'b1010;   #100;
                   ALU_selection=4'b1011;   #100;
                    ALU_selection=4'b1100;   #100;
                     ALU_selection=4'b1101;   #100;
                      ALU_selection=4'b1110;   #100;
                       ALU_selection=4'b1111;   #100;
end                  
endmodule

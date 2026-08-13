`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 22:43:38
// Design Name: 
// Module Name: ALU_4_Bit
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


module ALU_4_Bit(
    input[3:0] A,B, //ALU input
    input[3:0] ALU_selection,//ALU Selection
    output[3:0] ALU_Output, //ALU 4-bit output
    output Cout//Carry out flag

    );
    reg[3:0] ALU_result;
    wire[4:0]temp;
    assign ALU_Output=ALU_result;
    assign temp={1'b0,A}+{1'b0,B};
    assign Cout=temp[4];
    always @(*)
    begin
        case(ALU_selection)
        4'b0000:
            ALU_result=A+B;
        4'b0001:
            ALU_result=A-B;
        4'b0010:
            ALU_result=A*B;
        4'b0011:
            ALU_result=A/B;
        4'b0100:
            ALU_result=A<<1;
        4'b0101:
            ALU_result=A>>1;
        4'b0110:
            ALU_result={A[2:0],A[3]};
        4'b0111:
            ALU_result={A[0],A[2:1]};
        4'b1000:
            ALU_result=A&B;
        4'b1001:
            ALU_result=A|B;
        4'b1010:
            ALU_result=A^B;
        4'b1011:
            ALU_result=~(A|B);
        4'b1100:
            ALU_result=~(A&B);
        4'b1101:
            ALU_result=~(A^B);
        4'b1110:
            ALU_result=(A>B)?4'd1:4'd0;
        4'b1111:
            ALU_result=(A==B)?4'd1:4'd0;
        default: ALU_result=A+B;
      endcase
    end
endmodule

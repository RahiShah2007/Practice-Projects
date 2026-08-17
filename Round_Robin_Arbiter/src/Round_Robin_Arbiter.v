`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2026 21:46:45
// Design Name: 
// Module Name: Round_Robin_Arbiter
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

//fixed time slices
module Round_Robin_Arbiter(clk,rst,req,sel);
input clk,rst;
input [3:0] req;
output reg[3:0] sel;
reg[2:0] present_st;
reg[2:0] next_st;
parameter [2:0] ideal=3'b000;
parameter [2:0] s0=3'b001;
parameter [2:0] s1=3'b010;
parameter [2:0] s2=3'b011;
parameter [2:0] s3=3'b100;
always@(posedge clk or negedge rst)
begin
    if(!rst)
        present_st<=ideal;
    else
        present_st<=next_st;
end
//next state combinational logic
always@(*)
begin
case(present_st)
    ideal:begin
        if(req[0])begin
            next_st=s0;
        end
        else if(req[1])begin
            next_st=s1;
        end
        else if(req[2])begin
            next_st=s2;
        end
        else if(req[3])begin
            next_st=s3;
        end
        else begin
            next_st=ideal;
        end 
        
    end
    s0:begin
           if(req[1])begin
               next_st=s1;
           end
           else if(req[2])begin
               next_st=s2;
           end
           else if(req[3])begin
               next_st=s3;
           end
           else if(req[0])begin
               next_st=s0; 
           end
           else begin
               next_st=ideal;
           end
    end
    s1:begin
        if(req[2])begin
             next_st=s2;
        end
        else if(req[3])begin
             next_st=s3;
        end
        else if(req[0])begin
             next_st=s0; 
        end
        else if(req[1])begin
            next_st=s1;
        end
        else begin
             next_st=ideal;
        end
    end
    s2:begin
        if(req[3])begin
            next_st=s3;
        end
        else if(req[0])begin
            next_st=s0; 
        end
        else if(req[1])begin
            next_st=s1;
        end
        else if(req[2])begin
            next_st=s2;
        end
        else begin
            next_st=ideal;
        end
    end
    s3:begin
        if(req[0])begin
            next_st=s0;
        end
        else if(req[1])begin
            next_st=s1;
        end
        else if(req[2])begin
            next_st=s2;
        end
        else if(req[3])begin
            next_st=s3;
        end
        else begin
            next_st=ideal;
        end
    end
   default:begin
        if(req[0])begin
             next_st=s0;
        end
        else if(req[1])begin
             next_st=s1;
        end
        else if(req[2])begin
             next_st=s2;
        end
        else if(req[3])begin
             next_st=s3;
        end
        else begin
             next_st=ideal;
        end
   end 
endcase 
end
//output logic
always@(*)
begin
    case(present_st)
    s0: begin sel=4'b0001;end
    s1: begin sel=4'b0010;end
    s2: begin sel=4'b0100;end
    s3: begin sel=4'b1000;end
    default: begin sel=4'b0000;end
    endcase
end
endmodule

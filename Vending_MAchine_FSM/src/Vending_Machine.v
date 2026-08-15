`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 15:49:06
// Design Name: 
// Module Name: Vending_Machine
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

module Vending_Machine(clk,rst,cncl,coin,sel,A,B,C,change);
input clk,rst,cncl;
input[1:0]coin,sel;
output reg A,B,C,change;
// Using parameters we will do state encoding
parameter s0=3'b000,s5=3'b001,
s10=3'b010,s15=3'b011,s20=3'b100;
reg[2:0] current_st,next_st;
//Sequential Block for transition
always@(posedge clk or posedge rst)
begin
    if(rst)
        current_st<=s0;
    else
        current_st<=next_st;
end

always@(*)
begin
  next_st=current_st;
  if(cncl)
          next_st = s0;
  
    else begin

    case(current_st)
    s0: begin
        if(coin == 2'b01) begin
            if(sel == 2'b00)
                next_st = s0;
            else
                next_st = s5;
        end
    
        else if(coin == 2'b10) begin
            if(sel == 2'b00 || sel == 2'b01)
                next_st = s0;
            else
                next_st = s10;
        end
    
        else if(coin == 2'b11)
            next_st = s0;
    
        else
            next_st = s0;
    end
    s5: begin
        if(sel == 2'b00)
            next_st = s0;
    
        else if(sel == 2'b01) begin
            if(coin == 2'b01)
                next_st = s0;
            else if(coin == 2'b10)
                next_st = s0;
            else if(coin == 2'b11)
                next_st = s0;
            else
                next_st = s5;
        end
    
        else if(sel == 2'b11) begin
            if(coin == 2'b01)
                next_st = s10;
            else if(coin == 2'b10)
                next_st = s15;
            else if(coin == 2'b11)
                next_st = s0;
            else
                next_st = s5;
        end
    
        else
            next_st = s5;
    end
    
    s10: begin
        if(sel == 2'b00)
            next_st = s0;
    
        else if(sel == 2'b01)
            next_st = s0;
    
        else if(sel == 2'b11) begin
            if(coin == 2'b01)
                next_st = s15;
            else if(coin == 2'b10)
                next_st = s0;
            else if(coin == 2'b11)
                next_st = s0;
            else
                next_st = s10;
        end
    
        else
            next_st = s10;
    end
    
    s15: begin
        if(sel == 2'b00)
            next_st = s0;
    
        else if(sel == 2'b01)
            next_st = s0;
    
        else if(sel == 2'b11) begin
            if(coin == 2'b01)
                next_st = s20;
            else if(coin == 2'b10)
                next_st = s0;
            else if(coin == 2'b11)
                next_st = s0;
            else
                next_st = s15;
        end
    
        else
            next_st = s15;
    end
    
    s20: begin
        next_st = s0;
    end
        default: next_st=s0;
    endcase
    end
end

always@(posedge clk or posedge rst)
begin
    if(rst)
    begin
        A<=0;
        B<=0;
        C<=0;
        change<=0;
    end
    else begin
            A<=0;
            B<=0;
            C<=0;
            change<=0;
            if(cncl)begin
                change<=1;
            end
            else
            begin
            case(current_st)
                s5:begin
                    if(sel==2'b00) begin
                        A<=1;//Product A 5 rs
                        change<=0;
                    end
                    else if(sel == 2'b01) begin
                        // Product B = 10
                          if(coin==2'b01 || coin==2'b10)
                                    B<=1;
                                else if(coin==2'b11) begin
                                    B<=1;
                                    change<=1;
                                end
                                 end
                   
                     else if(sel == 2'b11) begin
                        // Product C = 20
                                   if(coin==2'b11) begin
                                   C<=1;
                                   change<=1;
                               end
                                  end
                   end
                s10:begin
                       if(sel==2'b00) begin
                          A<=1;
                          change<=1; 
                    end 
                    else if(sel==2'b01)begin
                            B<=1;
                            change<=0;
                          end
                    else if(sel==2'b11)begin
                        if(coin==2'b10)begin
                                C<=1;
                                change<=0;
                        end
                        else if(coin==2'b11)begin
                            C<=1;
                            change<=1;
                        end
                        end
                    end           
                s15:begin
                       if(sel==2'b00) begin
                          A<=1;
                          change<=1; 
                          end 
                        else if(sel==2'b01)begin
                                B<=1;
                                change<=1;
                                 end
                         else if(sel==2'b11)begin
                              if(coin==2'b10||coin==2'b11)begin
                                 C<=1;
                                 change<=1;
                                 end
                                 end
                                
                                 
                    
                end  
                s20:begin
                       if(sel==2'b00) begin
                          A<=1;
                          change<=1; 
                          end 
                       else if(sel==2'b01)begin
                          B<=1;
                          change<=1;
                          end
                       else if(sel==2'b11)begin
                               C<=1;
                               change<=0;
                               end
                    end 
             endcase
        end
    end
end

endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 21:56:15
// Design Name: 
// Module Name: UART_Rx
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


module UART_Rx(clk,rst,rx,rdy_clr,clk_en,rdy,data_out);
input clk,rst,rx,rdy_clr,clk_en;
output reg rdy;
output reg[7:0] data_out;
parameter start=2'b00;
parameter Data_out=2'b01;
parameter stop=2'b10;
reg[1:0] state;
reg[3:0] sample;
reg[2:0] index;
reg[7:0] temp_reg=8'b0;
always@(posedge clk)begin
    if(rst) begin
        state <= start;
        sample <= 0;
        index <= 0;
        temp_reg <= 0;
        rdy<=0;
        data_out<=0;
    end
    else begin
        if(rdy_clr)
            rdy<=0;
        if(clk_en)begin
            case(state)
                start:begin
                    if(!rx)begin
                        if(sample==4'd7)begin
                            sample<=0;
                            state<=Data_out;
                            index<=0;
                        end
                        else 
                            sample<=sample+1'b1;
                        end
                        else begin
                            sample<=0;
                    end
                end
                Data_out: begin
                    if(sample == 4'd15) begin
                
                        sample <= 0;
                
                        if(index == 3'd7) begin
                            temp_reg[index] <= rx;
                            data_out <= {rx,temp_reg[6:0]};
                            state <= stop;
                        end
                        else begin
                            temp_reg[index] <= rx;
                            index <= index + 1'b1;
                        end
                
                    end
                    else begin
                        sample <= sample + 1'b1;
                    end
                end
                stop:begin
                    if(sample==4'd15)begin
                        sample<=0;
                        state<=start;
                        if(rx)begin
                            data_out<=temp_reg;
                            rdy<=1'b1;
                        end
                    end
                    else begin
                        sample<=sample+1'b1;
                    end
                end
                default:begin
                    state<=start;
                    sample<=0;
                    index<=0;
                end
            endcase
        end
    end
        
end
endmodule

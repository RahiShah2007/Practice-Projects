`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2026 14:08:14
// Design Name: 
// Module Name: Digital_Lock
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

module Digital_Lock(
    clk,rst,data_in,submit,
    locked,unlocked
);

input clk,rst,data_in,submit;
output reg locked,unlocked;

parameter rest = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter unlock_st = 3'b100;
parameter lock_st = 3'b101;
parameter error_st = 3'b110;

reg [2:0] present_st,next_st;
reg [1:0] error_count;

always @(posedge clk or posedge rst)
begin
    if(rst) begin
        present_st <= rest;
        error_count <= 2'd0;
    end
    else begin
        present_st <= next_st;

        if(present_st == error_st && submit) begin
            if(error_count < 2'd3)
                error_count <= error_count + 1'b1;
        end
        else if(present_st == unlock_st && submit)
            error_count <= 2'd0;
    end
end

always @(*)
begin
    next_st = present_st;

    case(present_st)

        rest:
        begin
            if(data_in == 1'b1)
                next_st = s1;
            else
                next_st = error_st;
        end

        s1:
        begin
            if(data_in == 1'b0)
                next_st = s2;
            else
                next_st = error_st;
        end

        s2:
        begin
            if(data_in == 1'b1)
                next_st = s3;
            else
                next_st = error_st;
        end

        s3:
        begin
            if(data_in == 1'b0)
                next_st = unlock_st;
            else
                next_st = error_st;
        end

        unlock_st:
        begin
            if(submit)
                next_st = rest;
            else
                next_st = unlock_st;
        end

        error_st:
        begin
            if(submit) begin
                if(error_count >= 2'd2)
                    next_st = lock_st;
                else
                    next_st = rest;
            end
            else
                next_st = error_st;
        end

        lock_st:
        begin
            next_st = lock_st;
        end

        default:
            next_st = rest;

    endcase
end

always @(*)
begin
    locked = 1'b1;
    unlocked = 1'b0;

    if(present_st == unlock_st) begin
        locked = 1'b0;
        unlocked = 1'b1;
    end
    else begin
        locked = 1'b1;
        unlocked = 1'b0;
    end
end

endmodule

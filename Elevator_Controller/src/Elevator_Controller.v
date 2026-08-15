`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 21:59:54
// Design Name: 
// Module Name: Elevator_Controller
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

module Elevator_Controller(
    clk,rst,floor,emergency_stop,
    move_up,move_down,motor_stop,current_floor
);

input clk,rst,emergency_stop;
input [3:0] floor;

output reg move_up,move_down,motor_stop;
output reg [1:0] current_floor;

parameter rest      = 2'b00;
parameter Move_up   = 2'b01;
parameter Move_down = 2'b10;
parameter emergency = 2'b11;

reg [1:0] current_state,next_state;
reg [1:0] target_floor;

always @(*)
begin
    target_floor = current_floor;

    if(floor[0])
        target_floor = 2'd0;
    else if(floor[1])
        target_floor = 2'd1;
    else if(floor[2])
        target_floor = 2'd2;
    else if(floor[3])
        target_floor = 2'd3;
end

always @(posedge clk or posedge rst)
begin
    if(rst)
        current_state <= rest;
    else
        current_state <= next_state;
end

always @(posedge clk or posedge rst)
begin
    if(rst)
        current_floor <= 2'd0;
    else if(emergency_stop)
        current_floor <= current_floor;
    else if(current_state == Move_up)
        current_floor <= current_floor + 1'b1;
    else if(current_state == Move_down)
        current_floor <= current_floor - 1'b1;
end

always @(*)
begin
    next_state = current_state;

    if(emergency_stop)
        next_state = emergency;

    else begin
        case(current_state)

            rest:
            begin
                if(target_floor > current_floor)
                    next_state = Move_up;
                else if(target_floor < current_floor)
                    next_state = Move_down;
                else
                    next_state = rest;
            end

            Move_up:
            begin
                if(current_floor == target_floor)
                    next_state = rest;
                else
                    next_state = Move_up;
            end

            Move_down:
            begin
                if(current_floor == target_floor)
                    next_state = rest;
                else
                    next_state = Move_down;
            end

            emergency:
            begin
                if(emergency_stop)
                    next_state = emergency;
                else
                    next_state = rest;
            end

            default:
                next_state = rest;

        endcase
    end
end

always @(*)
begin
    move_up = 1'b0;
    move_down = 1'b0;
    motor_stop = 1'b0;

    if(emergency_stop)
        motor_stop = 1'b1;
    else begin
        case(current_state)

            rest:
                motor_stop = 1'b1;

            Move_up:
                move_up = 1'b1;

            Move_down:
                move_down = 1'b1;

            emergency:
                motor_stop = 1'b1;

            default:
                motor_stop = 1'b1;

        endcase
    end
end

endmodule


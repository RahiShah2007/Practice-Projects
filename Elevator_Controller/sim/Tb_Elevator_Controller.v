`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 22:23:00
// Design Name: 
// Module Name: Tb_Elevator_Controller
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


`timescale 1ns/1ps

module Tb_Elevator_Controller();

reg clk;
reg rst;
reg [1:0] floor;
reg emergency_stop;

wire move_up;
wire move_down;
wire motor_stop;
wire [1:0] current_floor;

Elevator_Controller dut (
    .clk(clk),
    .rst(rst),
    .floor(floor),
    .emergency_stop(emergency_stop),
    .move_up(move_up),
    .move_down(move_down),
    .motor_stop(motor_stop),
    .current_floor(current_floor)
);

initial clk = 0;
always #5 clk = ~clk;

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars();

    rst = 1;
    floor = 2'b00;
    emergency_stop = 0;

    #20;
    rst = 0;

    #10;
    floor = 2'b10;

    #40;
    floor = 2'b00;

    #20;
    floor = 2'b01;

    #40;
    floor = 2'b00;

    #20;
    floor = 2'b11;

    #40;
    floor = 2'b00;

    #20;
    emergency_stop = 1;

    #30;
    emergency_stop = 0;

    #50;
    $finish;
end

initial
begin
    $monitor(
        "Time=%0t | Current Floor=%0d | Request=%b | UP=%b DOWN=%b STOP=%b EMG=%b",
        $time,
        current_floor,
        floor,
        move_up,
        move_down,
        motor_stop,
        emergency_stop
    );
end

endmodule

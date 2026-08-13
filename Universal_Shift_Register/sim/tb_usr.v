`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 22:56:19
// Design Name: 
// Module Name: tb_usr
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


module tb_usr;
reg clk,rst,load,shift,serial_in;
reg[1:0] mode;
reg[3:0] parallel_in;
wire serial_out;
wire[3:0]parallel_out;

USR uut( clk,rst,load,shift,serial_in,
mode,parallel_in,serial_out,parallel_out);
initial
    begin
        {clk,rst,load,shift,serial_in,mode,parallel_in}=0;
    end
    
    
initial begin
forever #5 clk=~clk;
end
initial begin
rst=1'b1;
#10;
rst=0;
#10;
mode=2'b00;
shift=1'b1;
serial_in=1'b1;
#10;
serial_in=1'b0;
#10;
serial_in=1'b1;
#10;
serial_in=1'b1;
#50;
shift=1'b0;

#10;
rst=1'b1;
#10;
rst=1'b0;
mode=2'b01;
shift=1'b1;
serial_in=1'b1;
#10;
serial_in=1'b0;
#10;
serial_in=1'b1;
#10;
serial_in=1'b1;
#10;
shift=1'b0;
#10;
rst=1'b1;
#10;
rst=1'b0;
#10;
   load=1'b1;
   mode=2'b11;
   parallel_in=4'b0101;
#10;
load=1'b0;

end 
endmodule

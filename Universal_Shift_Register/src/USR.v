`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 22:19:59
// Design Name: 
// Module Name: USR
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


module USR(
input clk,rst,load,shift,serial_in,
input [1:0] mode,
input[3:0] parallel_in,
output serial_out,
output [3:0] parallel_out);

reg[3:0] temp;
always@(posedge clk)
begin
    if(rst)
        temp<=4'b0000;
    case(mode)
    2'b00:
    begin
        if(shift)
            temp<={serial_in,temp[3:1]};
        else
            temp<=temp;
    end //siso
    
    2'b01: //sipo
    begin
        if(shift)
            temp<={serial_in,temp[3:1]};
        else
            temp<=temp;
    end
    
    2'b10: //piso
    begin
        if(load)
            temp<=parallel_in;
        else
            temp<={serial_in,temp[3:1]};
    end
    
    2'b11:
    begin
    if(load)
        temp<=parallel_in;
    else
        temp<=temp;
    end
    default:temp<=temp;
    endcase
end
assign serial_out=temp[0];
assign parallel_out=(shift==0&&load==0)? temp: 'bx;
endmodule

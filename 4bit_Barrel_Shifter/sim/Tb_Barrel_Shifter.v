`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2026 14:53:29
// Design Name: 
// Module Name: Tb_Barrel_Shifter
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


module Tb_Barrel_Shifter();
reg [3:0] data_in;
reg [1:0] shift;
wire [3:0] y;
Barrel_Shifter DUT(data_in,shift,y);
initial begin
    data_in=4'b0001;
    shift=2'b00;
    #10;
    $display("Input=%b Sel=%b Output=%b",data_in,shift,y);
    
     shift=2'b01;
     #10;
     $display("Input=%b Sel=%b Output=%b",data_in,shift,y);
     
      shift=2'b10;
      #10;
      $display("Input=%b Sel=%b Output=%b",data_in,shift,y);
      
       shift=2'b11;
       #10;
       $display("Input=%b Sel=%b Output=%b",data_in,shift,y);
       
       $finish;
end

endmodule

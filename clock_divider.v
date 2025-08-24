`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2025 07:55:13 PM
// Design Name: 
// Module Name: clock_divider
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


//module clock_divider #(
//    parameter N=800   // Must be even for 50% duty cycle
//)(
//    input  wire clk_in,
//    output reg  clk_out
//);
//    reg [$clog2(N/2)-1:0] counter;

//    always @(posedge clk_in) begin
//            if (counter == (N/2 - 1)) begin
//                clk_out <= ~clk_out;
//                counter <= 0;
//            end else begin
//                counter <= counter + 1;
//            end
       
//    end
//endmodule
module clock_divider #(parameter DIVISOR = 28'd8000000)(clk_in,clk_out);
input clk_in;
output clk_out;
reg clockk_out;
reg[27:0] counter=28'd1000;
always @(posedge clk_in)
begin
 counter <= counter + 28'd1;
 if(counter>=(DIVISOR-1))
  counter <= 28'd0;
 clockk_out <= (counter<DIVISOR/2)?1'b1:1'b0;
end
assign clk_out = clockk_out;
endmodule
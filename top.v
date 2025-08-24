`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2025 06:48:15 PM
// Design Name: 
// Module Name: top
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


module top(
input reset,
input clk,
output [2:0] count
    );
    wire int_clk1; //out from pll and input to clk divier
    wire int_clk2; //output from clk divider and input to design
    wire int_reset;
    
//    clk_wiz_0 U_PLL
//       (
//        .clk_out1(int_clk1),     
//        .reset(reset), 
//        .locked(int_reset),       
//        .clk_in1(clk)); 
      clk_wiz_0 U_PLL
   (
    // Clock out ports
    .clk_out1(int_clk1),     // output clk_out1
    // Status and control signals
    .resetn(reset), // input resetn
    .locked(int_reset),       // output locked
   // Clock in ports
    .clk_in1(clk));
      
      counter_FPGA U_count 
      (.clk(int_clk2),
      .reset(int_reset),
      .count(count)
      );
      
      clock_divider #(8000000) U_clk_divider(    //8000000 to divide 8MHZ to 1HZ 
      .clk_in(int_clk1),
      //.rst(int_reset),
      .clk_out(int_clk2));
      
      
endmodule

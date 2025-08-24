`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/20/2025 08:14:32 PM
// Design Name: 
// Module Name: counter_tb
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

module top_tb;
  reg clk;
  reg reset;
  wire [2:0] count;
  top U_TOP (
    .clk    (clk),
    .reset   (reset),
    .count    (count)
  );
  // 100 MHz clock: period = 10 ns
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    reset = 0;
    #20;        // hold reset for 25 ns
    reset = 1;
  end
    endmodule

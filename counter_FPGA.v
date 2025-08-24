//`timescale 1s/1ps
module counter_FPGA (
    input wire clk,          // Clock input
    input wire reset,        // Reset input
    output reg [2:0] count  // 32-bit counter output
);

    // Initialize the counter to zero on reset
    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            count <= 3'b0; // Reset the counter to zero
        end else begin
            count <= count + 1; // Increment the counter on each clock cycle
        end
    end
endmodule

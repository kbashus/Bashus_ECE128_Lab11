`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 05:17:47 PM
// Design Name: 
// Module Name: Multiplier_top_tb
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


module Multiplier_top_tb();
    reg clk, rst;
    reg [2:0] adr1_r, adr2_r,adr_ram;
    wire [7:0] result;
    wire [2:0] st_out;
    
    Multiplier_top uut1(clk, rst, adr1_r, adr2_r, adr_ram, result, st_out);

    always #5 clk = ~clk;
    
    initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0;
    adr1_r = 3'b001; adr2_r = 3'b010; adr_ram = 3'b000;

    #100 rst = 1;
    #15 $finish;
    
    end
endmodule

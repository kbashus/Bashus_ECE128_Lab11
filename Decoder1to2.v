`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 04:58:16 PM
// Design Name: 
// Module Name: RegisterNbit
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


module Decoder1to2(m, S, en);

    input S; // select
    input en; // enable (positive logic)
    output [1:0]m; // 32 minterms
             
    
    assign m[0] = ~S&en;
    assign m[1] = S&en;

endmodule
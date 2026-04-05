`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 13:01:06
// Design Name: 
// Module Name: mux3_1
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


module mux3_1(
    input x, y, z,
    input [1:0] s,
    output m
    );
    
    // Output from first mux, input to second mux
    wire mux1;
    
    mux2_1 s0 (.x(x), .y(y), .s(s[0]), .m(mux1));
    mux2_1 s1 (.x(mux1), .y(z), .s(s[1]), .m(m));
endmodule

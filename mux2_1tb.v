`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2026 12:14:36
// Design Name: 
// Module Name: mux2_1tb
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


module mux2_1tb();
    reg x, y, z;
	reg [1:0] s;
    wire m;
    
    mux3_1 DUT (.x(x), .y(y), .z(z), .s(s), .m(m));
    
 
    initial
    begin
      x = 0; y = 0; z = 0; s = 0;
      #10 x = 1;
      #10 y = 1;
      #10 z = 1;
      #10 x = 0; y = 0; z = 0; s = 1;
      #10 x = 1;
      #10 y = 1;
      #10 z = 1;
      #10 x = 0; y = 0; z = 0; s = 2;
      #10 x = 1;
      #10 y = 1;
      #10 z = 1;
      #10 x = 0; y = 0; z = 0; s = 3;
      #10 x = 1;
      #10 y = 1;
      #10 z = 1;
	#20;
    end
endmodule

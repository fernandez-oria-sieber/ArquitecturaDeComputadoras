`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 				FS Inc.
// Engineer: 				Luciano Fernandez
//						    Braian Sieber
// 
// Create Date:    		09:03:26 09/08/2018 
// Design Name: 			
// Module Name:   	 	Main 
// Project Name: 			
// Target Devices: 		
// Tool versions: 		xilinx
// Description: 			
//
// Dependencies: 			
//
// Revision: 				
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Main #(parameter size = 8)
	(
	input signed[size-1:0] valor,
	input b1,
	input b2,
	input b3,
	input clk,
	output signed[size-1:0] leds
    );
	 
	 reg signed[size-1:0] a, b; 
	 reg[5:0] op;
	 
	 always @(posedge clk)
	 begin
		if(b1 ==1) a = valor;
		if(b2 ==1) b = valor;
		if(b3 ==1) op = valor;
	 end
	 
	 ALU #(.size(size)) alu (.Op(op), .A(a), .B(b), .Leds(leds)); 

endmodule
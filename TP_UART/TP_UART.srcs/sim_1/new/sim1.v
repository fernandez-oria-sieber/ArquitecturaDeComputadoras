`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:42:32 10/18/2016
// Design Name:   Interface
// Module Name:   /media/Pedro/Elementary/Facultad/Arquitectura/workspace/TP2/interfaceTest.v
// Project Name:  TP2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Interface
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module interfaceTest;

	// Inputs
	reg [7:0] d_out;
	reg rx_done;
	reg rd;

	// Outputs
	wire [7:0] r_data;
	wire rx_empty;

	// Instantiate the Unit Under Test (UUT)
	Interface uut (
		.d_out(d_out), 
		.rx_done(rx_done), 
		.rd(rd), 
		.r_data(r_data), 
		.rx_empty(rx_empty)
	);

	initial begin
		// Initialize Inputs
		d_out = 0;
		rx_done = 0;
		rd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rx_done=1;
		#10;
		d_out=51;
		#50;
		d_out=55;
		#50;
		d_out=43;
		#25;
		rd=1;
		#25;
		rd=0;
		#25;
		d_out=56;
		#25;
		rd=1;
		#25;
		rd=0;
		#25;
		d_out=49;
		#25;
		d_out=10;
		#25;
		rd=1;
		#25;
		rd=0;
		
	end
endmodule
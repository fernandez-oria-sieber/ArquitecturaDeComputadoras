`timescale 1ns / 1ps

module TestALU;

	// Inputs
	reg [5:0] Op;
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [7:0] Leds;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.Op(Op), 
		.A(A), 
		.B(B), 
		.Leds(Leds)
	);

	initial begin
		// Initialize Inputs
		Op = 0;
		A = 0;
		B = 0;
		

		// Wait 100 ns for global reset to finish
		// Add stimulus here
		A=7;
		#25;
		B=2;
		#25;
		Op=32; //suma
		#50;
		Op=34; //resta
		#50;
		Op=36; //and
		#50;
		Op=37; //or
		#50;
		Op=38; //xor
		#50;
		A=128; 
		Op=3; //sra
		#50;
		Op=2; //srl
		#50;
		A=7; 
		Op=39; //nor
		#50;
		B=9;
		Op=34;
		#50;
		
		
	end
      
endmodule


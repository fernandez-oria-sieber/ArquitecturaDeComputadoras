`timescale 1ns / 1ps

module br_generator(
        input clock,
        output reg tick
	 );

	reg [7:0] ciclos=8'b0;
	
	/*initial 
		ciclos=0;*/

	always @(posedge clock)
		begin
			if(ciclos==163)
				begin
					tick=1;
					ciclos=0;
				end
			else
				begin
					ciclos=ciclos+1;
					tick=0;
				end
		end	
	
endmodule
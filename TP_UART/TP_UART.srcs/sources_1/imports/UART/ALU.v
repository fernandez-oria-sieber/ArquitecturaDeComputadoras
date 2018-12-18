`timescale 1ns / 1ps

module ALU #(parameter size = 8)
	(
		input[5:0] Op,
		input signed[size-1:0] A,
		input signed[size-1:0] B,
		output[size-1:0] Leds
	);	
	
	// signal declaration
	reg[size-1:0] aux;
	reg wr_aux, rd_aux, state_reg , state_next;
	
	assign Leds = aux; // Resultado de la ALU
//	wr = wr_aux, // Bandera para la interface de transmisión
//	rd = rd_aux; // Bandera para la interface de recepción
    

	always @(*)
	begin
        case (Op)
                6'b100000: 	aux = 	A 		+ 		B		; 		// ADD 	32
                6'b100010: 	aux = 	A 		- 		B		; 		// SUB 	34
                6'b100100: 	aux = 	A 		& 		B		; 		// AND 	36
                6'b100101: 	aux = 	A 		| 		B		; 		// OR 	37
                6'b100110: 	aux = 	A 		^ 		B		; 		// XOR 	38
                6'b000011: 	aux = 	A 		>>> 	        B[2:0]          ; 		// SRA 	3
                6'b000010: 	aux = 	A 		>> 	        B		; 		// SRL 	2
                6'b100111: 	aux = 	~(A 	        | 		B)		; 	  	// NOR 	39
                6'b000000: 	aux = 	A						; 		// A 		0
                6'b000001: 	aux = 					B		; 		// B 		1
                default: 	aux = 			-1				;
        endcase
    end
endmodule
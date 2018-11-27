module ALU #(parameter size = 8)
	(
		input[5:0] Op,
		input signed[size-1:0] A,
		input signed[size-1:0] B,
		input rx_empty, clk, 
		output[size-1:0] Leds,
		output wr, rd
	);	
	
	// signal declaration
	reg[size-1:0] aux;
	reg aux2, aux3, state_reg , state_next;
	assign Leds = aux,
	wr = aux2, 
	rd = aux3;
	
	// symbolic state declaration
    localparam 
    idle = 1'b0,
    operate = 1'b1;
    
    
    // body
    // FSMD state & data registers
    always @(posedge clk)
        begin
            state_reg <= state_next;
        end
    

	always @(*)
	begin
        case (state_reg)
                idle :
                    begin
                        if (aux2 == 1'b1)
                            begin
                                aux2 = 1'b0;
                                aux3 = 1'b0;
                            end
                        if (rx_empty)
                            begin
                                state_next = operate;
                                aux3 = 1'b1;
                            end
                    end
                operate :
                    begin
                        case (Op)
                                6'b100000: 	aux = 	A 		+ 		B		; 		// ADD 	32
                                6'b100010: 	aux = 	A 		- 		B		; 		// SUB 	34
                                6'b100100: 	aux = 	A 		& 		B		; 		// AND 	36
                                6'b100101: 	aux = 	A 		| 		B		; 		// OR 	37
                                6'b100110: 	aux = 	A 		^ 		B		; 		// XOR 	38
                                6'b000011: 	aux = 	A 		>>> 	B[2:0]  ; 		// SRA 	3
                                6'b000010: 	aux = 	A 		>> 	    B		; 		// SRL 	2
                                6'b100111: 	aux = 	~(A 	| 		B)		; 	  	// NOR 	39
                                6'b000000: 	aux = 	A						; 		// A 		0
                                6'b000001: 	aux = 					B		; 		// B 		1
                                default: 	aux = 			-1				;
                        endcase
                        aux2= 1'b1;
                        state_next = idle;
                    end 
        endcase
	end
endmodule
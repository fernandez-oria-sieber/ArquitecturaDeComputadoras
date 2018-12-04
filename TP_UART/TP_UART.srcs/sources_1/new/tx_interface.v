`timescale 1ns / 1ps

module tx_interface
	#(
	   parameter DBIT = 8			// # data bits
	   // SB_TICK = 16		// # ticks for stop bits
    )
	(
	   input wire clk, reset,tx_done_tick, wr,
	   input wire [7:0] leds,
	   output wire [7:0] d_in,
	   output wire tx_start, tx_full
	);
	
	// symbolic state declaration
	localparam [1:0]
	idle = 2'b00,
	operate = 2'b01,
	transmit = 2'b10;
	
	// signal declaration
	reg [1:0] state_reg , state_next ;
	reg [7:0] first_op, second_op,aux, aux1, aux2;
	reg [5:0] op;
	reg algo;
        
	// body
	// FSMD next-state logic
	always @(posedge clk , posedge reset)
	begin
        if (reset) // ¿va con posedge en el always?
            begin
                state_reg <= idle;
                
               
            end
        else
            begin
                state_next = state_reg ;
//                rx_empty = 1'b0;
            
                case (state_reg)
                    idle :
                            begin
                                aux <= 48;
                                aux1 <= 48;
                                aux2 <= 48;
                            end
                    operate :
                        case (algo)
                            102:                        //102: 'f' en ascii (first operand)
                                begin 
                                    first_op = (aux2-48)*100 + (aux1-48)*10 + aux-48; 
                                    aux  <= 48;
                                    aux1 <= 48;
                                    aux2 <= 48;
                                end
                            114:                        //114: 's' en ascii (second operand)
                                 begin
                                     second_op = (aux2-48)*100 + (aux1-48)*10 + aux-48;
                                     aux <= 48;
                                     aux1 <= 48;
                                     aux2 <= 48;
                                 end
                            111:                        //111: 'o' en ascii (operation)  
                                begin                  
                                    case (aux)
                                        43: op = 32;     // + (suma)
                                        45: op = 34;     // -  (resta)
                                        38: op = 36;     // & (and)
                                        124: op = 37;    // | (or)
                                        120: op = 38;    // 'x' (xor)
                                        97: op = 3;      // 'a' (sra)
                                        108: op = 2;     // 'l' (srl)
                                        110: op = 39;    // 'n' (nor)
                                        default: op = -1;
                                    endcase
                                    aux <= 48;
                                    aux1 <= 48;
                                    aux2 <= 48;
                                 end
                            100: state_next = transmit; //100: 'd' en ascii (done)
                            default: // Actualizo los numeros que voy ingresando
                                begin
                                    aux2 <= aux1;
                                    aux1 <= aux; 
                                    aux  <= algo;
                                end
                         endcase
                  transmit :
                      begin
                          state_next = 1'b1;
                          if (algo) state_next = idle ;
                      end 
		        endcase //end case (state_reg)
		    end //end else
	end
	// output
	assign A = first_op;
	assign B = second_op;
	assign Op = op;
	
endmodule

`timescale 1ns / 1ps

module rx_interface
	#(
	   parameter DBIT = 8			// # data bits
	   // SB_TICK = 16		// # ticks for stop bits
    )
	(
	   input wire clk, reset,rx_done_tick, rd,
	   input wire [7:0] dout,
	   output wire [7:0] A, B,
	   output wire [5:0] Op,
	   output reg rx_empty
	);
	
	// symbolic state declaration
	localparam [1:0]
	idle = 2'b00,
	receive = 2'b01,
	transmit = 2'b10,
	clean = 2'b11;
	
	// signal declaration
	reg [1:0] state_reg;
	reg [7:0] first_op, second_op,aux, aux1, aux2;
	reg [5:0] op;
        
	// body
	// FSMD next-state logic
	always @(posedge clk , posedge reset)
	begin
        if (reset) 
            begin
                state_reg <= idle;
                first_op <= 0;
                second_op <= 0;
                op <= 0;
                aux <= 48; // aux, aux1 y aux2 los inicializamos en 0 (ascii=48)
                aux1 <= 48;
                aux2 <= 48;
                rx_empty = 1'b0;
            end
        else
            begin
                case (state_reg)
                    idle :
                        if (rx_done_tick) state_reg = receive;
                    receive :
                      begin
                        case (dout)
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
                            100: state_reg = transmit; //100: 'd' en ascii (done)
                                
                            default: // Actualizo los numeros que voy ingresando
                                begin
                                    aux2 <= aux1;//se púede hacer mejor x10
                                    aux1 <= aux; 
                                    aux  <= dout;
                                end
                         endcase
                         if (dout!=100) state_reg = idle; // si no siempre vuelve a idle y nunca va a transmit
                       end
                  transmit :
                      begin
                          rx_empty = 1'b1;
                          if (rd) 
                            begin
                                state_reg = idle ;
                                rx_empty = 1'b0;
                            end
                      end 
		        endcase //end case (state_reg)
		    end //end else
	end
	// output
	assign A = first_op;
	assign B = second_op;
	assign Op = op;
	
endmodule

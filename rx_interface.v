`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: no one
// Engineer: nobody
// 
// Create Date: 10/12/2018 04:50:03 PM
// Design Name: 
// Module Name: rx_module
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

module rx_interface 
	#(
		parameter DBIT = 8			// # data bits 
			     // SB_TICK = 16		// # ticks for stop bits
   )
	(
	 input wire clk, reset,
	 input rx_done_tick, rd,
	 input wire [7:0] dout,
	 output wire [7:0] A, B,
	 output wire [5:0] Op
	 
	);
	
	// symbolic state declaration
	localparam [1:0]
	idle = 2'b00,
	receive = 2'b01,
	transmit = 2'b10,
	clean = 2'b11;
	
	// signal declaration
	reg [1:0] state_reg , state_next ;
	//reg [3:0] s_reg , s_next ;
	//reg [2:0] n_reg , n_next ;
	reg [7:0] first_op, second_op,aux, aux1, aux2;
	reg [5:0] op;
	
	// body
	// FSMD state & data registers
	always @( posedge clk , posedge reset)
	if (reset)
		begin
			state_reg <= idle;
			first_op <= 0;
			second_op <= 0;
			op <= 0;
			aux <= 48;
			aux1 <= 48;
			aux2 <= 48;
		end
	else
		begin
			state_reg <= state_next ;
		end
	
	// FSMD next-state logic
	always @*
	begin
		state_next = state_reg ;

		case (state_reg)
			idle :
				if (rx_done_tick)
					begin
						state_next = receive;
					end
			receive :
				case (dout)
				    102:
				        begin 
				            first_op = (aux2 - 48)*100+(aux1 - 48)*10+ aux - 48; //102: F en ascii (first operand)
				            aux  <= 48;
                            aux1 <= 48;
                            aux2 <= 48;
                        end
				    114:                        //114: S en ascii (second operand)
				         begin
                             second_op = (aux2 - 48)*100+(aux1 - 48)*10+ aux - 48;
                             aux <= 48;
                             aux1 <= 48;
                             aux2 <= 48;
                         end
				    111:                        //111: O en ascii (operation)  
				        begin                  
                            case (aux)
                                43: op= 32;     // + (suma)
                                45: op= 34;     // -  (resta)
                                38: op= 36;     // & (and)
                                124: op= 37;    // | (or)
                                120: op= 38;    // x (xor)
                                97: op= 3;      // a (sra)
                                108: op= 2;     // l (srl)
                                110: op= 39;    // n (nor)
                                default: op = -1;
                            endcase
                            aux <= 48;
                            aux1 <= 48;
                            aux2 <= 48;
                         end
				    100: state_next = transmit;
				    default:
				        begin
                            aux2= aux1;
                            aux1= aux; 
                            aux = dout;
				        end
				 endcase
		endcase
	end
	// output
	assign A = first_op;
	assign B = second_op;
	assign Op = op;
	
endmodule
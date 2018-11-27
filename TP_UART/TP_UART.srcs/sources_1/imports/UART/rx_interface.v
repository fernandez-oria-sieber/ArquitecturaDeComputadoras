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
	reg [1:0] state_reg , state_next ;
	//reg [3:0] s_reg , s_next ;
	//reg [2:0] n_reg , n_next ;
	reg [7:0] first_op, second_op,aux, aux1, aux2;
	reg [7:0] first_op_next, second_op_next,aux_next, aux1_next, aux2_next;
	reg [5:0] op;
    reg [5:0] op_next;
        
	
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
			state_reg <= state_next;
            first_op <= first_op_next;
            second_op <= second_op_next;
            op <= op_next;
            aux <= aux_next;
            aux1 <= aux2_next;
            aux2 <= aux_next;
		end
	
	// FSMD next-state logic
	always @*
	begin
		state_next = state_reg ;
		rx_empty = 1'b0;

		case (state_reg)
			idle :
				if (rx_done_tick)
					begin
						state_next = receive;
					end
			receive :
				case (dout)
				    102:                        //102: F en ascii (first operand)
				        begin 
				            first_op_next = (aux2 - 48)*100+(aux1 - 48)*10+ aux - 48; 
				            aux_next  <= 48;
                            aux1_next <= 48;
                            aux2_next <= 48;
                        end
				    114:                        //114: S en ascii (second operand)
				         begin
                             second_op_next = (aux2 - 48)*100+(aux1 - 48)*10+ aux - 48;
                             aux_next <= 48;
                             aux1_next <= 48;
                             aux2_next <= 48;
                         end
				    111:                        //111: O en ascii (operation)  
				        begin                  
                            case (aux)
                                43: op_next= 32;     // + (suma)
                                45: op_next= 34;     // -  (resta)
                                38: op_next= 36;     // & (and)
                                124: op_next= 37;    // | (or)
                                120: op_next= 38;    // x (xor)
                                97: op_next= 3;      // a (sra)
                                108: op_next= 2;     // l (srl)
                                110: op_next= 39;    // n (nor)
                                default: op_next = -1;
                            endcase
                            aux_next <= 48;
                            aux1_next <= 48;
                            aux2_next <= 48;
                         end
				    100: state_next = transmit; //100: D en ascii (done)
				    default:
				        begin
                            aux2_next= aux1;
                            aux1_next= aux; 
                            aux_next = dout;
				        end
				 endcase
		  transmit :
		      begin
		          rx_empty = 1'b1;
		          if (rd)
		              state_next = idle ;
              end 
		      
		endcase
	end
	// output
	assign A = first_op;
	assign B = second_op;
	assign Op = op;
	
endmodule

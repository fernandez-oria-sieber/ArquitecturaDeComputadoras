`timescale 1ns / 1ps

module interface
	#(
	   parameter DBIT = 8			// # data bits
    )
	(
	   input wire clk, reset, rx_done_tick, rd, finish_program, tx_done_tick,
	   input wire [7:0] dout,
	   input wire [31:0] out_Acc_Count,
	   output wire [7:0] din,
	   output wire BIP_enable, tx_start
	);
	
	// symbolic state declaration
	localparam [2:0]
	idle_rx = 3'b000,
	receive = 3'b001,
	idle_tx = 3'b010,
	operate = 3'b011,
	transmit = 3'b100;
	
	// signal declaration
	reg [1:0] state_reg;
	reg [31:0] aux_Acc_Count;//
	reg [15:0] aux_Acc, aux_Count; // solo usa 6 bits, da un warning si le ponemos 8 bits
	reg is_s, aux_BIP, z_flag, acc_sended, tx_start_aux;
	reg [13:0] div; //puede ser integer también, pero así no da warning;
	reg [7:0] dig, out;
	
	// body
	// FSMD next-state logic
	always @(posedge clk , posedge reset)
	begin
        if (reset) 
            begin
                state_reg <= idle_rx;
                aux_Acc_Count <= 0; // aux lo inicializamos en 0
                aux_Acc <= 0;
                aux_Count <= 0;
                is_s <= 0;
                acc_sended <= 0;
                out <= 0;
                z_flag <= 0;
                dig <= 0;
                aux_BIP <= 0;
            end
        else
            begin
                case (state_reg)
                    idle_rx :
                      if (rx_done_tick) state_reg = receive;
                    receive :
                      begin
                        case (dout)
                            115:           // 115: 's' en ascii (second operand)
                                is_s <= 1;
                            13:            // 13: 'Enter' en ascii (operation)  
                                begin
                                    if (is_s) 
                                        begin
                                            aux_BIP <= 1;
                                            is_s <= 0;
                                            state_reg = idle_tx;
                                        end
                                end
                            default: is_s <= 0; // Seteo en 0 el is_s
                        endcase //endcase (dout)
                         if (dout!=13) state_reg = idle_rx; // si no siempre vuelve a idle_rx y nunca va a idle_tx
                      end //end recive
                  idle_tx:
                    if(finish_program)  // Es 1 si termino el programa, else 0
                        begin
                            state_reg = transmit;
                            out = 65; // A en ascii
                            aux_BIP = 0;
                            aux_Count = out_Acc_Count[31:16];
                            aux_Acc_Count = out_Acc_Count[15:0];
                            div = 10000;
                        end
                  operate:
                    begin
                        dig = aux_Acc_Count / div;    // divido para obtener el digito a transmitir (ej, 123/100 - obtengo 1 en it. 1)
                        div = div / 10;     // Divido por 10 para en la sig iteración obtener el sig digito (100/10=10)
                        if(dig || z_flag == 1) state_reg = transmit; // Entro si dig != 0 ó zflag = 1 si ya transmiti un valor y tengo que mandar un 0
                        out = dig + 48; // Sumo 48 al digito enviado para transmitir en ascii
                    end
                  transmit :
                      begin
                         tx_start_aux = 1'b1;
                         if (tx_done_tick)
                           begin
                               if (out == 65 || out == 67) out = 58; // : en ascii
                               else if (out == 58) out = 13; // enter en ascii
                               else if (out == 13) state_reg = operate;
                               else
                                begin
                                   z_flag= 1'b1;
                                   state_reg = operate ;
                                   tx_start_aux = 1'b0;
                                   if (div == 0) // Resetamos todos los parametros
                                       begin
                                           z_flag = 1'b0;
                                           div = 10000;
                                           state_reg = transmit;
                                           if (acc_sended==1) state_reg = idle_rx;
                                           acc_sended = 1;
                                           aux_Acc_Count = aux_Count;
                                           out = 67; // C en ascii
                                       end // if (div == 0)
                                   else aux_Acc_Count = aux_Acc_Count % (div*10);
                                end // else
                           end// if (tx_done_tick)
                       end  // transmit
		        endcase //end case (state_reg)
		    end //end else
	end //end always

	// output
	assign BIP_enable = aux_BIP;
	assign din = out;
    assign tx_start = tx_start_aux;
	
endmodule

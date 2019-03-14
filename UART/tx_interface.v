`timescale 1ns / 1ps

module tx_interface
	#(
	   parameter DBIT = 8			// # data bits
	   // SB_TICK = 16		// # ticks for stop bits
    )
	(
	   input wire clk, reset,tx_done_tick, rx_empty,
<<<<<<< HEAD
	   input wire signed [7:0] leds,
=======
	   input wire [7:0] leds,
>>>>>>> origin/develop
	   output wire [7:0] d_in,
	   output wire tx_start, rd
	);
	
	// symbolic state declaration
<<<<<<< HEAD
	localparam [2:0]
	idle = 2'b000,
	operate = 2'b001,
	transmit = 2'b010,
	transmit_reset = 2'b011,
	transmit_init = 3'b100,
	negative = 3'b101;
	
	// signal declaration
	reg rd_aux, tx_start_aux, zflag;
	reg [2:0] state_reg;
	reg signed [7:0] aux;
	reg [7:0] dig, salida;
	reg [6:0] div,i; //puede ser integer también, pero así no da warning
	reg el_lucho_tristisimo;
=======
	localparam [1:0]
	idle = 2'b00,
	operate = 2'b01,
	transmit = 2'b10,
	transmit_reset = 2'b11;
	
	// signal declaration
	reg rd_aux, tx_start_aux, zflag;
	reg [1:0] state_reg;
	reg [7:0] aux, dig, salida;
	reg [6:0] div; //puede ser integer también, pero así no da warning
    
    
>>>>>>> origin/develop
	// body
	// FSMD next-state logic
	always @(posedge clk , posedge reset)
	begin
        if (reset)
            begin
<<<<<<< HEAD
                state_reg <= transmit_init;
                i = 1;
=======
                state_reg <= transmit_reset;
//                salida <= 0;
//                rd_aux <= 1'b0;
//                zflag <= 1'b0;
//                tx_start_aux <= 1'b0;
//                div <= 100;
//                dig <= 0;
//                aux <=0;
>>>>>>> origin/develop
            end
        else
            begin
                case (state_reg)
                    idle :
                        if (rx_empty )  // Es 1 si rx_interface recibio una 'd', else 0
                        begin
                            state_reg = operate;
                            aux = leds;
<<<<<<< HEAD
                            if (aux<0) state_reg=negative;
                            div = 100;
                            rd_aux = 1'b0; // Seteo en 0 para que rx_interface no vuelva a tomar datos
                        end
                    negative :
                        begin 
                            salida = "-";
                            tx_start_aux = 1'b1;
                            if (tx_done_tick)
                                begin
                                    state_reg = operate;
                                    tx_start_aux = 1'b0;
                                    aux = - aux;
                                end
                        end
=======
                            div = 100;
                            rd_aux = 1'b0; // Seteo en 0 para que rx_interface no vuelva a tomar datos
                        end
>>>>>>> origin/develop
                    operate :
                        begin
                            dig = aux / div;    // divido para obtener el digito a transmitir (ej, 123/100 - obtengo 1 en it. 1)
                            div = div / 10;     // Divido por 10 para en la sig iteración obtener el sig digito (100/10=10)
                            if(dig || zflag == 1) state_reg = transmit; // Entro si dig != 0 ó zflag = 1 si ya transmiti un valor y tengo que mandar un 0
<<<<<<< HEAD
                            salida = dig+48; // Sumo 48 al digito enviado para transmitir en ascii
                        end
                    transmit :
                       begin
=======
                        end
                    transmit :
                       begin
                          salida = dig+48; // Sumo 48 al digito enviado para transmitir en ascii
>>>>>>> origin/develop
                          tx_start_aux = 1'b1;
                          if (tx_done_tick)
                            begin
                                zflag= 1'b1;
                                state_reg = operate ;
                                tx_start_aux = 1'b0;
                                if (div == 0) // Resetamos todos los parametros y le decimos a rx_int que puede volver a recibir
                                    begin
                                        rd_aux = 1'b1; // rx_int puede recibir
                                        zflag = 1'b0;
                                        state_reg = transmit_reset;
                                        salida = 0;
                                        tx_start_aux = 1'b0;
                                        dig = 0;
                                        aux = 0;
                                    end
                                else aux = aux % (div*10);
                            end
                        end 
                    transmit_reset :
                       begin
<<<<<<< HEAD
                         if (salida != 10) salida = 13; // nueva linea en ascii
                         tx_start_aux = 1'b1; 
                         if (tx_done_tick) 
                           begin
                               if (salida == 13) 
                                   begin
                                       state_reg = transmit_reset;
                                       salida = 10; 
                                   end // if (salida == 13) 
                               else 
                                   begin
                                       salida = 0;
                                       rd_aux = 1'b0;
                                       zflag = 1'b0;
                                       tx_start_aux = 1'b0;
                                       dig = 0;
                                       aux = 0;
                                       state_reg = idle;
                                   end //else
                           end //if(tx_done_tick)
                       end // transmit_reset   
                    transmit_init :
                       begin
                          case (i)
                              1: salida = "T";
                              2: salida = "P";
                              3: salida = " ";
                              4: salida = "2";
                              default: salida = ":";    
                          endcase
                          tx_start_aux = 1'b1; 
                          if (tx_done_tick) 
                            begin
                                i = i+1;
                                if (salida == ":") state_reg = transmit_reset;
                                tx_start_aux = 1'b0;
                            end
                        end 
=======
                          salida = 13; // enter en ascii (reset)
                          
                          tx_start_aux = 1'b1; 
                          if (tx_done_tick) 
                            begin
                                salida = 0;
                                rd_aux = 1'b0;
                                zflag = 1'b0;
                                tx_start_aux = 1'b0;
                                dig = 0;
                                aux =0;
                                state_reg = idle;
                            end
                        end     
>>>>>>> origin/develop
		        endcase //end case (state_reg)
		    end //end else
	end //end always
    
	// output
	assign d_in = salida;
	assign rd = rd_aux;
	assign tx_start = tx_start_aux;
	
endmodule

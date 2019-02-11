`timescale 1ns / 1ps

module tx_interface
	#(
	   parameter DBIT = 8			// # data bits
	   // SB_TICK = 16		// # ticks for stop bits
    )
	(
	   input wire clk, reset,tx_done_tick, rx_empty,
	   input wire [7:0] leds,
	   output wire [7:0] d_in,
	   output wire tx_start, rd
	);
	
	// symbolic state declaration
	localparam [1:0]
	idle = 2'b00,
	operate = 2'b01,
	transmit = 2'b10;
	
	// signal declaration
	reg rd_aux, tx_start_aux, zflag;
	reg [1:0] state_reg;
	reg [7:0] aux, dig, salida;
	reg [6:0] div; //puede ser integer también, pero así no da warning
    
    
	// body
	// FSMD next-state logic
	always @(posedge clk , posedge reset)
	begin
        if (reset)
            begin
                state_reg <= idle;
                salida <= 0;
                rd_aux <= 1'b0;
                zflag <= 1'b0;
                tx_start_aux <= 1'b0;
                div <= 127;
                dig <= 0;
                aux <=0;
            end
        else
            begin
                case (state_reg)
                    idle :
                        if (rx_empty) 
                        begin
                            state_reg = operate;
                            aux = leds;
                            div = 100;
                        end
                    operate :
                        begin
                            dig = aux / div;
                            div = div / 10;
                            if(dig || zflag == 1) state_reg = transmit;
                        end      
                    transmit :
                       begin
                          salida = dig;
                          
                          tx_start_aux = 1'b1; 
                          if (tx_done_tick) 
                            begin
                                zflag= 1'b1;
                                state_reg = operate ;
                                tx_start_aux = 1'b0;
                                if (div == 0) 
                                    begin
                                        rd_aux = 1'b1;
                                        zflag = 1'b0;
                                        state_reg = idle;
                                    end
                                else aux = aux % (div*10);
                            end
                        end 
		        endcase //end case (state_reg)
		    end //end else
	end //end always
    
	// output
	assign d_in = salida;
	assign rd = rd_aux;
	assign tx_start = tx_start_aux;
	
endmodule

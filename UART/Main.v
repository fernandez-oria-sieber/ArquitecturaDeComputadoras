`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 				FS Inc.
// Engineer: 				Luciano Fernandez Oria
//					        Braian Sieber
// Create Date:    		09:03:26 09/11/2018 
//////////////////////////////////////////////////////////////////////////////////
module Main #(parameter size = 8)
    (
        input rx, clk, reset,
//        input b1, b2, b3, b4,
        output tx,
        output signed[size-1:0]show
    );
	 
	wire signed[size-1:0] a, b, d_in; 
	wire [size-1:0] dout, leds;
	wire [5:0] op;
	wire rx_empty, wr, s_tick, rx_done_tick, tx_done_tick;
	wire tx_start, rd;
//	reg [size-1:0] show_aux;
    
//    always @(posedge clk)
//     begin
//        if(b1 == 1) show_aux = a;
//        if(b2 == 1) show_aux = b;
//        if(b3 == 1) show_aux = d_in;
//        if(b4 == 1) show_aux = leds;
//     end

//    assign show = show_aux;
	br_generator br_g (clk, s_tick);

	rx_module #(size, 16) rx_mod (clk, reset, rx, s_tick, rx_done_tick, dout);

	rx_interface #(size) int_rx (clk, reset,rx_done_tick, rd, dout, a, b, op, rx_empty);

	ALU #(size) alu (op, a, b, leds);

	tx_interface #(size) int_tx (clk, reset, tx_done_tick, rx_empty, leds, d_in, tx_start, rd);

	tx_module #(size, 16) tx_mod (clk, reset, tx_start , s_tick, d_in, tx_done_tick , tx);
	 
endmodule
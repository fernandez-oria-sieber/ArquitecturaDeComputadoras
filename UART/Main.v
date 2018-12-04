`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 				FS Inc.
// Engineer: 				Luciano Fernandez Oria
//					         Braian Sieber
// Create Date:    		09:03:26 09/11/2018 
//////////////////////////////////////////////////////////////////////////////////
module Main #(parameter size = 8) //FALTA TODO
	(
	input rx, clk, reset,
	output tx
    );
	 
	 wire signed[size-1:0] a, b; 
	 wire [size-1:0] dout, leds, d_in;
	 wire [5:0] op;
	 wire rx_empty, wr, s_tick, rx_done_tick, rd, tx_done_tick, tx_start, tx_full;
	 
	 //always @(posedge clk)
	 //begin
		//a = valor;
	 //end
	 
	 br_generator br_g (clk, s_tick);
	 
	 rx_module #(.DBIT(size), .SB_TICK(16)) rx_mod (.clk(clk), .reset(reset), .rx(rx), .s_tick(s_tick), .rx_done_tick(rx_done_tick),.dout(dout));
	 
	 rx_interface #(.DBIT(size)) int_rx (clk, reset,rx_done_tick, rd, dout, a, b, op, rx_empty);
	 
	 ALU #(.size(size)) alu ( .clk(clk), .Op(op), .A(a), .B(b), .Leds(leds));
     
     tx_interface #(.DBIT(size)) int_tx (clk, reset, tx_done_tick, rx_empty, leds, d_in, tx_start);
     
     tx_module #(.DBIT(size), .SB_TICK(16)) tx_mod (clk, reset, tx_start , s_tick, d_in, tx_done_tick , tx);
	 
endmodule
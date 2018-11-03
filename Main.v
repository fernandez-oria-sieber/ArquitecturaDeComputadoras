`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 				FS Inc.
// Engineer: 				Luciano Fernandez Oria
//					         Braian Sieber
// Create Date:    		09:03:26 09/11/2018 
//////////////////////////////////////////////////////////////////////////////////
module Main #(parameter size = 8)
	(
	input rx, clk, reset,
	output tx
    );
	 
	 reg signed[size-1:0] a, b,dout, leds; 
	 reg [5:0] op;
	 reg rx_empty, tx_done_tick;
	 wire wr, s_tick, rx_done_tick, rd;
	 
	 always @(posedge clk)
	 begin
		//a = valor;
	 end
	 
	 br_generator br_g (clk, s_tick);
	 
	 rx_module #(.DBIT(size), .SB_TICK(16)) rx_mod (.clk(clk), .reset(reset), .rx(rx), .s_tick(s_tick), 
	 .rx_done_tick(rx_done_tick),.dout(dout));
	 
	 interface_rx #(.DBIT(size)) int_rx (clk, reset,rx_done_tick, rd, dout, A, B, Op, rx_empty);
	 
	 ALU #(.size(size)) alu (.Op(op), .A(a), .B(b), .Leds(leds), .rx_empty(rx_empty), .wr(wr));
     
     //interface_tx
     
     tx_module #(.DBIT(size), .SB_TICK(16)) tx_mod (clk, reset, wr , s_tick, leds, tx_done_tick , tx);
	 
endmodule
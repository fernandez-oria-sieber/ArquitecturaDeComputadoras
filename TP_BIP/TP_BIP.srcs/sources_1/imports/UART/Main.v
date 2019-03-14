`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 				FS Inc.
// Engineer: 				Luciano Fernandez Oria
//					        Braian Sieber
// Create Date:    		09:03:26 09/11/2018 
//////////////////////////////////////////////////////////////////////////////////
module UART #(parameter size = 8) //FALTA TODO
	(
	input rx, clk, reset, finish_program,
	input [31:0] out_Acc_Counter,
	output tx, BIP_enable
    );
	 
	 wire signed[size-1:0] din; 
	 wire [size-1:0] dout, d_in;
	 wire [5:0] op;
	 wire rx_empty, wr, s_tick, rx_done_tick, rd, tx_done_tick, tx_start;
	 
	 
	 br_generator br_g (clk, s_tick);
	 
	 rx_module #(.DBIT(size), .SB_TICK(16)) rx_mod (.clk(clk), .reset(reset), .rx(rx), .s_tick(s_tick),
	             .rx_done_tick(rx_done_tick),.dout(dout));
	 
	 tx_module #(.DBIT(size), .SB_TICK(16)) tx_mod (clk, reset, tx_start , s_tick, din, tx_done_tick , tx);
	 
	 interface #(.DBIT(size)) int (clk, reset,rx_done_tick, rd, finish_program, tx_done_tick, 
	                               dout, out_Acc_Counter, din, BIP_enable, tx_start);
     
     
	 
           
endmodule
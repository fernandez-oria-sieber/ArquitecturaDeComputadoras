`timescale 1ns / 1ps


module interfaceTestTx;

     wire signed[7:0] a, b; 
	 reg [7:0] dout, leds, d_in;
	 wire [5:0] op;
	 reg rx_empty;
	 reg wr, s_tick, rx_done_tick, rd, tx_done_tick, tx_start, tx_full, clk, reset;

    tx_interface int_rx (clk, reset,tx_done_tick, rx_empty, leds, d_in, tx_start, rd);

    always 
        begin
            #5 clk = ~clk;            
        end
     initial
        begin
            clk = 0;
            reset = 1;
            tx_done_tick = 0;
            leds = 213;
            rx_empty = 0;
            #20 reset = 0;          //#20
            
            #20 rx_empty = 1;          // 5 #40
            
            #20 tx_done_tick = 1;   // #60
            
        end

endmodule
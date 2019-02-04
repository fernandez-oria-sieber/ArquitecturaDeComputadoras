`timescale 1ns / 1ps

module Test_Top;

    wire signed[7:0] a, b, d_in; 
	wire [7:0] leds;
	wire [7:0] dout;
	wire [5:0] op;
	reg clk, reset;
	wire wr, rd, rx_done_tick, tx_done_tick, tx_start, tx_full, rx_empty;
	wire tx, s_tick;
	reg rx;
	
	Main main (rx, clk, reset, tx);
	
//    br_generator br_g (clk, s_tick);
//    rx_module rx_mod (clk, reset, rx, s_tick, rx_done_tick, dout);
//    rx_interface int_rx (clk, reset,rx_done_tick, rd, dout, a, b, op, rx_empty);
//    ALU alu (op, a, b, leds);
//    tx_interface int_tx (clk, reset,tx_done_tick, rx_empty, leds, d_in, tx_start, rd);
//    tx_module tx_mod (clk, reset, tx_start , s_tick, d_in, tx_done_tick , tx);
    
    always 
        begin
            #5 clk = ~clk;            
        end
     initial
        begin
            clk = 0;
            reset = 1;
            rx = 0;
            #20 reset = 0;                  // #20
            
            #20 rx = 53;          // 5    // #40
            #20 rx = 102;         // f    // #80
            #20 rx = 49;          // 1    // #120
            #20 rx = 48;          // 0    // #160
            #20 rx = 51;          // 3    // #200       
            #20 rx = 115;         // s    // #240
            #20 rx = 43;          // +    // #280
            #20 rx = 111;         // o    // #320340
            #20 rx = 100;         // d    // #360
        end
endmodule
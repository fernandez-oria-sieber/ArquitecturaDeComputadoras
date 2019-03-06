`timescale 1ns / 1ps

module allTest;

    wire signed[7:0] a, b, d_in; 
	wire [7:0] leds;
	reg [7:0] dout;
	wire [5:0] op;
	reg clk, reset, rx_done_tick, tx_done_tick;
	wire wr, rd, tx_start, tx_full, rx_empty;
	wire tx, s_tick;
	
    rx_interface int_rx (clk, reset,rx_done_tick, rd, dout, a, b, op, rx_empty);
    ALU alu (op, a, b, leds);
    tx_interface int_tx (clk, reset,tx_done_tick, rx_empty, leds, d_in, tx_start, rd);
    
    always 
        begin
            #5 clk = ~clk;            
        end
     initial
        begin
            clk = 0;
                    reset = 1;
                    rx_done_tick = 0;
                    dout = 0;
                    #20 reset = 0;                  // #20
                    
                    #20 dout = 53;          // 5    // #40
                    rx_done_tick = 1;
                    #20 rx_done_tick = 0;           // #60
                    #20 dout = 102;         // f    // #80
                    rx_done_tick = 1;
                    #20 rx_done_tick = 0;           // #100
                    #20 dout = 49;          // 1    // #120
                    rx_done_tick = 1;
                    #20 rx_done_tick = 0;           // #140
                    #20 dout = 48;          // 0    // #160
                    rx_done_tick = 1;
                    #20 rx_done_tick = 0;           // #180
                    #20 dout = 51;          // 3    // #200
                    rx_done_tick = 1;
                    #20 rx_done_tick = 0;           // #220            
                    #20 dout = 115;         // s    // #240
                    rx_done_tick = 1; 
                    #20 rx_done_tick = 0;           // #260
                    #20 dout = "-";          // -    // #280
                    rx_done_tick = 1;
                    #20 rx_done_tick = 0;           // #300
                    #20 dout = 111;         // o    // #320
                    rx_done_tick = 1;
                    #20 rx_done_tick = 0;           // #340
                    #20 dout = 100;         // d    // #360
                    rx_done_tick = 1;
                    #20 rx_done_tick = 0;           // #380
                    rx_done_tick = 1;
                    #20 rx_done_tick = 0;           // #430
                    //#20 rx_empty = 1;
                    #20 tx_done_tick = 1;
                    #20 tx_done_tick = 0;
                    #20 tx_done_tick = 1;
                    #20 tx_done_tick = 0;
                    #20 tx_done_tick = 1;
                    #20 tx_done_tick = 0;
                    #20 tx_done_tick = 1;
                    #20 tx_done_tick = 0;
                    #20 tx_done_tick = 1;
                    #20 tx_done_tick = 0;
                    #20 tx_done_tick = 1;
                    #20 tx_done_tick = 0;                    
        end
endmodule
`timescale 1ns / 1ps

module interfaceTest;

    wire signed[7:0] a, b, d_in; 
	reg [7:0] dout, leds;
	wire [5:0] op;
	reg wr, s_tick, rx_done_tick, rd, tx_done_tick, tx_start, tx_full, clk, reset, rx_empty;
	 

    rx_interface int_rx (clk, reset,rx_done_tick, rd, dout, a, b, op, rx_empty);

    always 
        begin
            #5 clk = ~clk;            
        end
     initial
        begin
            clk = 0;
            reset = 1;
            rx_done_tick = 0;
            rd = 0;
            dout = 0;
            #20 reset = 0;          //#20
            
            #20 dout = 53;          // 5 #40
            rx_done_tick = 1;
            #20 rx_done_tick = 0;   // #60
            #20 dout = 102; // f    // #80
            rx_done_tick = 1;
            #20 rx_done_tick = 0;   // # 100
            #20 dout = 49; // 1     // #120
            rx_done_tick = 1;
            #20 rx_done_tick = 0;   // #140
            #20 dout = 48; // 0     // #160
            rx_done_tick = 1;
            #20 rx_done_tick = 0;   // #180
            #20 dout = 51; // 3     // #200
            rx_done_tick = 1;
            #20 rx_done_tick = 0;   // #220            
            #20 dout = 114; // s    // #240
            rx_done_tick = 1; 
            #20 rx_done_tick = 0;   // #260
            #20 dout = 43; // +     // #280
            rx_done_tick = 1;
            #20 rx_done_tick = 0;   // #300
            #20 dout = 111; // o    // #320
            rx_done_tick = 1;
            #20 rx_done_tick = 0;   // #340
            #20 dout = 100; // d    // #360
            rx_done_tick = 1;
            #20 rx_done_tick = 0;   // #380
            #30 rd = 1;             // #410
            rx_done_tick = 1;
            #20 rx_done_tick = 0;   // #430
            
        end

endmodule
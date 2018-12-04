`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:42:32 10/18/2016
// Design Name:   Interface
// Module Name:   /media/Pedro/Elementary/Facultad/Arquitectura/workspace/TP2/interfaceTest.v
// Project Name:  TP2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Interface
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module interfaceTest;

	// Inputs
	//reg [7:0] d_out;
	//reg rx_done;
	//reg rd;

	// Outputs
	//wire [7:0] r_data;
	//wire rx_empty;


     wire signed[7:0] a, b; 
	 reg [7:0] dout, leds, d_in;
	 wire [5:0] op;
	 wire rx_empty;
	 reg wr, s_tick, rx_done_tick, rd, tx_done_tick, tx_start, tx_full, clk, reset;
	 

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
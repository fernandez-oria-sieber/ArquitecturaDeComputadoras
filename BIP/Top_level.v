`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2019 01:59:57 AM
// Design Name: 
// Module Name: Top_level
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top_level(
    input rx, clk, reset,
    output tx
    );

wire BIP_enable, finish_program, WrRAM, RdRAM;
wire[10:0] PC;
wire[15:0] Program_Data, In_Data, Out_Data;
wire[31:0] out_Acc_Counter;
   
UART uart(rx, clk, reset, finish_program, out_Acc_Counter, tx, BIP_enable);    
Memory Data_memory (.Rd(RdRAM), .Wr(WrRAM), .Addr(Program_Data), .In_Data(In_Data), .Out_Data(Out_Data));
Memory Program_memory (1, 0, PC, 0, Program_Data);
CPU bip(BIP_enable, clk, reset, Program_Data, Out_Data, In_Data, PC, WrRAM, RdRAM);


endmodule

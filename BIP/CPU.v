`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2019 12:21:00 AM
// Design Name: 
// Module Name: CPU
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


module CPU(
    input BIP_enable, clk, reset,
    input [15:0] Data, Out_Data,
    output [15:0] In_Data,
    output [10:0] PC,
    output WrRAM, RdRAM
    );
    
    wire[4:0] Opcode;
    wire [10:0] Data_Val;
    wire[1:0] SetA;
    wire SetB, WrAcc, Op;
    
    
    ControlUnit control(BIP_enable, clk, reset, Opcode, SetA, SetB,
                        WrAcc,Op, WrRAM, RdRAM, PC);
                        
    Datapath datapath(clk, reset, Data_Val, Out_Data, SetA, SetB, WrAcc,
                      Op, In_Data);
    
    assign Opcode = Data[15:11];
    assign Data_Val = Data[10:0];
 
endmodule

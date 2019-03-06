`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 				FS Inc.
// Engineer: 				Luciano Fernandez Oria
//					        Braian Sieber
// Create Date:    	    	febrero 2019 
//////////////////////////////////////////////////////////////////////////////////
module ControlUnit
	(
	input BIP_enable, clk, reset,
	input [4:0] Opcode,
    output [1:0] SetA,
    output SetB,
    output WrAcc,
    output Op,
    output WrRAM,
    output RdRAM,
    output [10:0] PC
    );
	 
     wire WrPc; //registro para auemntar en uno el program counter, que se pone en uno cada vez que se ejecuta una innstruccion
     reg [10:0] aux_PC = 0;
     
     Decoder deco(Opcode,WrPc,SetA,SetB,WrAcc,Op,WrRAM,RdRAM);
     
     always @(posedge clk , posedge reset)
         begin
             if (BIP_enable) aux_PC = aux_PC + WrPc; 
         end
     
     
     assign PC = aux_PC;
endmodule
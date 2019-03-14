`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 				FS Inc.
// Engineer: 				Luciano Fernandez Oria
//					        Braian Sieber
// Create Date:    	    	febrero 2019 
//////////////////////////////////////////////////////////////////////////////////
module ControlUnit
	(
	input clk, reset, BIP_enable,
	input [4:0] Opcode,
    output [1:0] SetA,
    output SetB,
    output WrAcc,
    output Op,
    output WrRAM,
    output RdRAM,
    output [10:0] PC,
    output finish_program
    );
	 
     wire WrPc; //registro para auemntar en uno el program counter, que se pone en uno cada vez que se ejecuta una innstruccion
     reg [10:0] aux_PC = 0;
     reg aux_finish_program;
     
     Decoder deco(Opcode,WrPc,SetA,SetB,WrAcc,Op,WrRAM,RdRAM);
     
     always @(posedge clk, posedge reset)
         begin
             if (Opcode == 0 && aux_PC!=0) aux_finish_program=1;
             if (BIP_enable) aux_PC = aux_PC + WrPc; 
             else aux_PC = aux_PC;
             if (reset) aux_PC = 0;
         end
     
     
     assign PC = aux_PC;
     assign finish_program = aux_finish_program;
endmodule
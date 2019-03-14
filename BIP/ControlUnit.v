`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 				FS Inc.
// Engineer: 				Luciano Fernandez Oria
//					        Braian Sieber
// Create Date:    	    	febrero 2019 
//////////////////////////////////////////////////////////////////////////////////
module ControlUnit
	(
<<<<<<< HEAD
	input clk, reset, BIP_enable,
=======
	input BIP_enable, clk, reset,
>>>>>>> origin/develop
	input [4:0] Opcode,
    output [1:0] SetA,
    output SetB,
    output WrAcc,
    output Op,
    output WrRAM,
    output RdRAM,
<<<<<<< HEAD
    output [10:0] PC,
    output finish_program
=======
    output [10:0] PC
>>>>>>> origin/develop
    );
	 
     wire WrPc; //registro para auemntar en uno el program counter, que se pone en uno cada vez que se ejecuta una innstruccion
     reg [10:0] aux_PC = 0;
<<<<<<< HEAD
     reg aux_finish_program;
     
     Decoder deco(Opcode,WrPc,SetA,SetB,WrAcc,Op,WrRAM,RdRAM);
     
     always @(posedge clk, posedge reset)
         begin
             if (Opcode == 0 && aux_PC!=0) aux_finish_program=1;
             if (BIP_enable) aux_PC = aux_PC + WrPc; 
             else aux_PC = aux_PC;
             if (reset) aux_PC = 0;
=======
     
     Decoder deco(Opcode,WrPc,SetA,SetB,WrAcc,Op,WrRAM,RdRAM);
     
     always @(posedge clk , posedge reset)
         begin
             if (BIP_enable) aux_PC = aux_PC + WrPc; 
>>>>>>> origin/develop
         end
     
     
     assign PC = aux_PC;
<<<<<<< HEAD
     assign finish_program = aux_finish_program;
=======
>>>>>>> origin/develop
endmodule
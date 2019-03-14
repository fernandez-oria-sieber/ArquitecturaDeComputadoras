`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 				FS Inc.
// Engineer: 				Fernandez Oria, Luciano
//						    Sieber, Braian
// 
// Create Date:			febrero 2019 
// Design Name:			Circuito combinacional
// Module Name:   		Decodificador de instrucciones
// Project Name: 	    BIP I
// Target Devices:	    basys 3
// Tool versions: 	    Vivado
// Description: 	    Modulo parte de la unidad de control de un CPU BIP
//
// Dependencies: 			
//
// Revision: 				
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module Decoder
	(
		input [4:0] Opcode,
		output WrPc,
		output [1:0] SetA,
		output SetB,
		output WrAcc,
		output Op,
		output WrRAM,
		output RdRAM
	);	
	
	reg[7:0] Output;          // registro auxiliar que asignadmos a las salidas
	assign WrPc = Output[7];  // entrada al PC para aumentar su valor en 1
    assign SetA= Output[6:5]; // selector para la entrada al acumulador, entre dato directo, inmediato ó salida de la ALU
    assign SetB= Output[4];   // selector entre dato inmediato o directo para la entrada a la alu
    assign WrAcc= Output[3];  // entrada al acumulador para permitir escritura
    assign Op= Output[2];     // entrada a la alu para seleccionar entre operacion de suma y resta
    assign WrRAM= Output[1];  // entrada a la mamoria de datos para permitir escritura 
    assign RdRAM= Output[0];  // entrada a la memoria para permitir lectura
	
	always @(*)
	begin                                                //                  |
		case (Opcode)                                    // Operation        | WrPc  | SetA | SetB | WrAcc | Op | WrRAM | RdRAM |
		                                                 //---------------------------------------------------------------------
                3'b000: 	Output = 	00000000; 		 // HALT             |   1   |  00  |  0   |   0   | 0  |   0   |   0   |
				3'b001: 	Output = 	10000010; 	     // STORE VARIABLE   |   1   |  xx  |  x   |   0   | x  |   1   |   0   |
				3'b010: 	Output = 	10001001;        // LOAD VARIABLE    |   1   |  00  |  x   |   1   | x  |   0   |   1   |
				3'b011: 	Output = 	10101000;        // LOAD INMEDIATE   |   1   |  01  |  x   |   1   | x  |   x   |   x   |
				3'b100: 	Output = 	11001101;        // ADD VARIABLE     |   1   |  10  |  0   |   1   | 1  |   0   |   1   |
				3'b101: 	Output = 	11011100;        // ADD INMEDIATE    |   1   |  10  |  1   |   1   | 1  |   0   |   0   |
				3'b110: 	Output = 	11001001;        // SUB VARIABLE     |   1   |  10  |  0   |   1   | 0  |   0   |   1   |
				3'b111: 	Output = 	11011000;        // SUB INMEDIATE    |   1   |  10  |  1   |   1   | 0  |   0   |   0   |
 				default: 	Output = 	00000000;		 
		endcase
	end
endmodule
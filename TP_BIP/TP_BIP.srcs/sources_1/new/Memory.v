`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2019 01:28:25 AM
// Design Name: 
// Module Name: Memory
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


module Memory(
    input Rd, Wr,
    input [10:0] Addr,
    input [15:0] In_Data,
    output [15:0] Out_Data
    );
    
    reg[15:0] Output;
    reg [15:0] bloques[63:0];
    always @(*)
        begin
            case (Addr)

                        11'b0000:  if(Wr) bloques[0] = In_Data;
                                  else Output = bloques[0];
                        11'b0001:  if(Wr) bloques[1] = In_Data;
                                  else Output = bloques[1];
                        11'b0010:  if(Wr) bloques[2] = In_Data;
                                  else Output = bloques[2];
                        11'b0011:  if(Wr) bloques[3] = In_Data;
                                  else Output = bloques[3];
                        11'b0100:  if(Wr) bloques[4] = In_Data;
                                  else Output = bloques[4];
                        11'b0101:  if(Wr) bloques[5] = In_Data;
                                  else Output = bloques[5];
                        11'b0110:  if(Wr) bloques[6] = In_Data;
                                  else Output = bloques[6];
                        11'b0111:  if(Wr) bloques[7] = In_Data;
                                  else Output = bloques[7];  
                        11'b1000:  if(Wr) bloques[8] = In_Data;
                                  else Output = bloques[8];
                        11'b1001:  if(Wr) bloques[9] = In_Data;
                                  else Output = bloques[9];
                        11'b1010:  if(Wr) bloques[10] = In_Data;
                                  else Output = bloques[10];
                        11'b1011:  if(Wr) bloques[11] = In_Data;
                                  else Output = bloques[11];
                        11'b1100:  if(Wr) bloques[12] = In_Data;
                                  else Output = bloques[12];
                        11'b1101:  if(Wr) bloques[13] = In_Data;
                                  else Output = bloques[13];
                        11'b1110:  if(Wr) bloques[14] = In_Data;
                                  else Output = bloques[14];
                        11'b1111:  if(Wr) bloques[15] = In_Data;
                                  else Output = bloques[15];  
                            
            endcase
       end
        
    assign Out_Data = Output;    
        
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2019 01:19:05 PM
// Design Name: 
// Module Name: sinc_memory
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


module sinc_memory
#(
parameter RAM_WIDTH = 16,                  // Specify RAM data width
parameter RAM_DEPTH = 2048,
//parameter ADDR_NB = $clog2(RAM_DEPTH),                  // Specify RAM depth (number of entries) 
parameter INIT_FILE = ""                       // Specify name/location of RAM initialization file if using one (leave blank if not)

)
(
input Rd, Wr, clk, ena,
input [10:0] Addr,
input [15:0] In_Data,
output [15:0] Out_Data
  );


  //  Xilinx Single Port Read First RAM
  //  This code implements a parameterizable single-port read-first memory where when data
  //  is written to the memory, the output reflects the prior contents of the memory location.
  //  If the output data is not needed during writes or the last read value is desired to be
  //  retained, it is suggested to set WRITE_MODE to NO_CHANGE as it is more power efficient.
  //  If a reset or enable is not necessary, it may be tied off or removed from the code.
  //  Modify the parameters for the desired RAM characteristics.

    
  //reg [ADDR_NB-1:0] addra;  // Address bus, width determined from RAM_DEPTH
  //reg [RAM_WIDTH-1:0] dina;           // RAM input data
  //reg clka;                           // Clock
  //reg wea;                            // Write enable
  //reg ena;                            // RAM Enable, for additional power savings, disable port when not in use
  //reg rsta;                           // Output reset (does not affect memory contents)
  //reg regcea;                         // Output register enable
  //wire [RAM_WIDTH-1:0] douta;                   // RAM output data

  reg [RAM_WIDTH-1:0] ram_name [RAM_DEPTH-1:0];
  reg [RAM_WIDTH-1:0] ram_data = {RAM_WIDTH{1'b0}};

  // The following code either initializes the memory values to a specified file or to all zeros to match hardware
  generate
    if (INIT_FILE != "") begin: use_init_file
      initial
        $readmemh(INIT_FILE, ram_name, 0, RAM_DEPTH-1);
    end else begin: init_bram_to_zero
      integer ram_index;
      initial
        for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1)
          ram_name[ram_index] = {RAM_WIDTH{1'b0}};
    end
  endgenerate

  always @(posedge clk)
    if (ena) begin
      if (Wr) ram_name[Addr] <= In_Data;
      ram_data <= ram_name[Addr];
    end

assign Out_Data= ram_data;

endmodule


`timescale 1ns / 1ps

module RegFile#(
      // Parameters
      parameter DATA_WIDTH   = 32,  // number of bits in each register
      parameter ADDRESS_WIDTH = 5,  // address line width
      parameter NUM_REGS = 32		// number of registers = 2^ADDRESS_WIDTH
   )
   (
   // Inputs 
   input  clk, //clock
   input  rst,//synchronous reset; if it is asserted (rst=1), all registers are reseted to 0
   input  rg_wrt_en, //write enable signal
   input  [ADDRESS_WIDTH-1:0] rg_wrt_dest, //address of the register that supposed to written into
   input  [ADDRESS_WIDTH-1:0] rg_rd_addr1, //first address to be read from
   input  [ADDRESS_WIDTH-1:0] rg_rd_addr2, //second address to be read from
   input  [DATA_WIDTH-1:0] rg_wrt_data, // data that supposed to be written into the register file
         
   // Outputs
   output logic [DATA_WIDTH-1:0] rg_rd_data1, //content of reg_file[rg_rd_addr1] is loaded into
   output logic [DATA_WIDTH-1:0] rg_rd_data2 //content of reg_file[rg_rd_addr2] is loaded into
   );


integer i;

logic [DATA_WIDTH-1:0] register_file [NUM_REGS-1:0];

always @(posedge clk) begin

	if(rst==1'b1)
		for (i = 0; i < NUM_REGS-1; i = i + 1)
		    register_file[i] <= 0;

    else if(rg_wrt_en==1'b1)
        register_file[rg_wrt_dest] <=rg_wrt_data;
  
end

assign rg_rd_data1 = register_file[rg_rd_addr1];
assign rg_rd_data2 = register_file[rg_rd_addr2];


endmodule

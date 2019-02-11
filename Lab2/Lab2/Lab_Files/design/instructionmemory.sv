`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2018 10:20:16 PM
// Design Name: 
// Module Name: instructionmemory
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


module instructionmemory#(
    parameter INS_ADDRESS = 9,
    parameter INS_W = 32
     )(
    input logic [ INS_ADDRESS -1:0] ra , // Read address of the instruction memory , comes from PC
    output logic [ INS_W -1:0] rd // Read Data
    );
    

logic [INS_W-1 :0] Inst_mem [(2**(INS_ADDRESS-2))-1:0];
    
 


assign rd =  Inst_mem [ra[INS_ADDRESS-1:2]];  

//      genvar i;
//      generate
//          for (i = 15; i < 127; i++) begin
//              assign Inst_mem[i] = 32'h00007033;
//          end
//      endgenerate

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2018 10:22:44 PM
// Design Name: 
// Module Name: imm_Gen
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


module imm_Gen(
    input logic [31:0] inst_code,
    output logic [31:0] Imm_out);


always_comb
    case(inst_code[6:0])

        7'b0000011 /*I-type load*/     : 
            Imm_out = {inst_code[31]? 20'b1:20'b0 , inst_code[31:20]};
        7'b0010011 /*I-type addi*/     : 
            Imm_out = {inst_code[31]? 20'b1:20'b0 , inst_code[31:20]};
        7'b0100011 /*S-type*/    : 
            Imm_out = {inst_code[31]? 20'b1:20'b0 , inst_code[31:25], inst_code[11:7]};
        default                    : 
            Imm_out = {32'b0};
    endcase
    
endmodule

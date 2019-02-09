`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2018 10:23:43 PM
// Design Name: 
// Module Name: alu
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


module alu#(
        parameter DATA_WIDTH = 32,
        parameter OPCODE_LENGTH = 4
        )(
        input logic [DATA_WIDTH-1:0]    SrcA,
        input logic [DATA_WIDTH-1:0]    SrcB,

        input logic [OPCODE_LENGTH-1:0]    Operation,
        output logic[DATA_WIDTH-1:0] ALUResult
        );
    
        always_comb
        begin
            ALUResult = 'd0;
            case(Operation)
            4'b0000:        // AND
                    ALUResult = SrcA & SrcB;
            4'b0001:        //OR
                    ALUResult = SrcA | SrcB;
            4'b0010:        //ADD
                    ALUResult = SrcA + SrcB;
	    4'b0011:        //XOR
	            ALUResult=SrcA^SrcB;
            4'b0110:        //Subtract
                    ALUResult = $signed(SrcA) - $signed(SrcB);
            default:
                    ALUResult = 'b0;
            endcase
        end
endmodule


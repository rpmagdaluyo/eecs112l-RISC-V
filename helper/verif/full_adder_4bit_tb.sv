 //module full_adder_4bit_tb;
 module tb_top;

    logic         cin ;
    logic [4-1:0] in_a;
    logic [4-1:0] in_b;
    logic [4-1:0] sum ;
    logic         cout;
    
    
    full_adder_4bit dut
    (
        .carry_in  (cin ),
        .data_a    (in_a),
        .data_b    (in_b),
        .sum       (sum ),
        .carry_out (cout)
    );
    
    initial begin
        #10;
        cin  <= 1'b1;
        in_a <= 4'b0001;
        in_b <= 4'b0011;
        #10;
    end
    
endmodule

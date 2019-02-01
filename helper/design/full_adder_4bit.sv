   module   full_adder_4bit (
      carry_in,
      data_a,
      data_b,
      sum,
      carry_out

    );

    parameter   reg_size = 4;

    input   logic                carry_in;
    input   logic [reg_size-1:0] data_a;
    input   logic [reg_size-1:0] data_b;
    output  logic [reg_size-1:0] sum;
    output  logic                carry_out;

    assign {carry_out,sum} = data_a + data_b + carry_in;

  endmodule
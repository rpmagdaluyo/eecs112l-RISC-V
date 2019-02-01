
//module example_1();
module tb_top();

    logic        [5:0] udata;;
    logic signed [5:0] sdata;;


   initial begin
      $system("clear; echo; echo");
      udata = 6'b111000; 
      sdata = 6'b111000;

      $display("Unsigned data: Original %d, Shifted %d", udata, udata>>2 );
      $display("signed   data: Original %d, Shifted %d", sdata, sdata>>2 );
      $display("signed   data: Original %d, Shifted %d", sdata, sdata>>>2 );
      #100;
      $system("echo; echo; echo");
      $finish;
 
   end


endmodule

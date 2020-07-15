module Adder(input [15:0] in, pluser, output reg[15:0] out);
    initial begin
      out = 0;
    end
    always @(*) begin
      out <= in + pluser;
    end
     
endmodule

////////&
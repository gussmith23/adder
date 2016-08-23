program test(
  output logic [1:0] a,
  output logic [1:0] b,
  input [1:0] y);

  logic [1:0] z;

  initial begin 
    for (int i = 0; i < 4; i++) begin
      for (int j = 0; j < 4; j++) begin
        a = i;
        b = j;
        z = i + j;
        #5
        assert(y == z);
        $display("%b + %b == %b", a, b, y);
      end
    end
    $finish;
  end
endprogram

module testbench();
  logic [1:0] a, b, y;
  adder adder(a, b, y);
  test test_program(a, b, y);
endmodule

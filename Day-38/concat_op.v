module concat_op();

  reg a;
  reg [2:0] b, c;
  reg [7:0] x, y, z, p;

  task inputs(input a_in, input [2:0] b_in, c_in);
  begin
    a = a_in;
    b = b_in;
    c = c_in;

    x = {a, b, c};                 // 1 + 3 + 3 = 7 bits (MSB zero-padded)
    y = {b, 2'b01, a};             // 3 + 2 + 1 = 6 bits (MSB zero-padded)
    z = {x[1:0], b[2:1], c};       // 2 + 2 + 3 = 7 bits
    p = {{2{a}}, b, {2{c}}};       // 2 + 3 + 6 = 11 bits (truncated to 8 bits)

    #5;
    $display("a=%b b=%b c=%b =>", a, b, c);
    $display("x=%b y=%b z=%b p=%b", x, y, z, p);
  end
  endtask

  initial begin
    inputs(1'b1, 3'b100, 3'b110);
    #5;
    inputs(1'b0, 3'b001, 3'b111);
    #5;
    inputs(1'b1, 3'b010, 3'b000);
    #5;
    inputs(1'b0, 3'b111, 3'b101);
    #5;

    $finish;
  end

endmodule

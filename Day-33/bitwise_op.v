module bitwise_op();

  reg [3:0] a, b, c;
  reg [3:0] p, q, r, s, t, u, v, w, x, y, z, m, n, o;

  task inputs(input [3:0] ain, bin, cin);
  begin
    a = ain;
    b = bin;
    c = cin;

    p = a & b;
    q = b & c;
    r = a & c;
    s = a | b;
    t = a | c;
    u = b | c;
    v = a ^ b;
    w = b ^ c;
    x = a ^ c;
    y = ~b;
    z = ~c;
    m = a ~^ b;
    n = a ~^ c;
    o = b ~^ c;

    #5;
    $display("a=%b b=%b c=%b =>", a, b, c);
    $display("p=%b q=%b r=%b s=%b t=%b u=%b", p, q, r, s, t, u);
    $display("v=%b w=%b x=%b y=%b z=%b", v, w, x, y, z);
    $display("m=%b n=%b o=%b", m, n, o);
  end
  endtask

  initial begin
    inputs(4'b0011, 4'b0110, 4'b1x01);
    #5;
    inputs(4'bxxxx, 4'b1111, 4'b0000);
    #5;
    inputs(4'b1010, 4'b0101, 4'b1100);
    #5;
    inputs(4'b1001, 4'b0001, 4'b0110);
    #5;

    $finish;
  end

endmodule

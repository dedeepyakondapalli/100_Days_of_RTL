module reduction_op();

  reg [3:0] a, b;
  reg p, q, r, s, t, u, v, w, x, y, z, m;

  task inputs(input [3:0] ain, bin);
  begin
    a = ain;
    b = bin;
    p = &a;     // AND reduction
    q = &b;
    r = |a;     // OR reduction
    s = |b;
    t = ^a;     // XOR reduction
    u = ^b;
    v = ~^a;    // XNOR reduction
    w = ~^b;
    x = ~&a;    // NAND reduction
    y = ~&b;
    z = ~|a;    // NOR reduction
    m = ~|b;
    #5;
    $display("a=%b b=%b =>", a, b);
    $display("p=&a=%b q=&b=%b r=|a=%b s=|b=%b", p, q, r, s);
    $display("t=^a=%b u=^b=%b v=~^a=%b w=~^b=%b", t, u, v, w);
    $display("x=~&a=%b y=~&b=%b z=~|a=%b m=~|b=%b", x, y, z, m);
  end
  endtask

  initial begin
    inputs(4'b0100, 4'b0111);
    #5;
    inputs(4'b0000, 4'b1111);
    #5;
    inputs(4'b1010, 4'b1100);
    #5;
    inputs(4'b1111, 4'b0001);
    #5;
    $finish;
  end
endmodule

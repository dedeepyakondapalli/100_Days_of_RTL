module relational_op();

  reg [3:0] a, b, x, y, z;
  reg p, q, r, s, t;

  task inputs(input [3:0] ain, bin, xin, yin, zin);
  begin
    a = ain;
    b = bin;
    x = xin;
    y = yin;
    z = zin;
    p = (a < b);
    q = (a > b);
    r = (x >= y);
    s = (x <= y);
    t = (x >= z);  // Note: comparisons with x/z bits may be unknown (x)

    #5;
    $display("a=%b b=%b x=%b y=%b z=%b =>", a, b, x, y, z);
    $display("p=a<b=%b q=a>b=%b r=x>=y=%b s=x<=y=%b t=x>=z=%b", p, q, r, s, t);
  end
  endtask

  initial begin
    inputs(4'd4, 4'd3, 4'b0000, 4'b1100, 4'b1x1x);
    #5;
    inputs(4'd5, 4'd5, 4'b0111, 4'b0111, 4'bxxxx);
    #5;
    inputs(4'd2, 4'd7, 4'b1111, 4'b0011, 4'b1101);
    #5;
    inputs(4'd0, 4'd1, 4'b1010, 4'b1011, 4'b10x0);
    #5;

    $finish;
  end

endmodule

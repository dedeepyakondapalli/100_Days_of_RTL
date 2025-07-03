module arithmetic_op();

  reg [3:0] a, b, c;
  reg [7:0] p, q, r, u; // Wider for multiplication and subtraction
  integer d, e, s, t;

  task inputs(input [3:0] ain, bin, cin, input integer din, ein);
  begin
    a = ain;
    b = bin;
    c = cin;
    d = din;
    e = ein;
    p = a * b;        // Multiplication
    q = a + b;        // Addition
    r = b - a;        // Subtraction
    s = e / d;        // Integer division
    t = e % d;        // Modulo
    u = c * a;        // Multiplication with unknowns
    #5;
    $display("a=%b b=%b c=%b d=%0d e=%0d =>", a, b, c, d, e);
    $display("p=a*b=%b q=a+b=%b r=b-a=%b s=e/d=%0d t=e%%d=%0d u=c*a=%b", 
              p, q, r, s, t, u);
  end
  endtask

  initial begin
    inputs(4'b0010, 4'b0011, 4'b1010, 3, 8);      // Simple case
    #5;
    inputs(4'b0101, 4'b0110, 4'b11x0, 2, 9);      // Includes unknowns
    #5;
    inputs(4'b0001, 4'b1111, 4'b0001, 4, 16);     // Edge values
    #5;
    inputs(4'b1001, 4'b0010, 4'b1x1x, 5, 23);     // Unknowns in `c`
    #5;
    $finish;
  end

endmodule

module equality_op();

  reg [3:0] a, b;
  reg p, q, r, s;

  task inputs(input [3:0] ain, bin);
  begin
    a = ain;
    b = bin;
    p = (a == b);   // Logical equality (x/z treated as don't care)
    q = (a != b);   // Logical inequality
    r = (a === b);  // Case equality (x/z must match exactly)
    s = (a !== b);  // Case inequality
    #5;
    $display("a=%b b=%b => p=a==b=%b q=a!=b=%b r=a===b=%b s=a!==b=%b", 
              a, b, p, q, r, s);
  end
  endtask

  initial begin
    inputs(4'b1x0z, 4'b1x0z);    // Expected: p=1, q=0, r=1, s=0
    #5;
    inputs(4'b1010, 4'b1010);    // All true equality
    #5;
    inputs(4'b1111, 4'b1100);    // Inequality
    #5;
    inputs(4'b1x0z, 4'b1x01);    // Mismatch in Z
    #5;
    $finish;
  end

endmodule

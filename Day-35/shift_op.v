module shift_op();

  reg [3:0] a, b;
  reg [3:0] w, x, y, z, m;

  task inputs(input [3:0] ain, bin);
  begin
    a = ain;
    b = bin;
    w = a >> 1;    // Logical right shift by 1
    x = a >> 2;    // Logical right shift by 2
    y = b << 1;    // Logical left shift by 1
    z = a >>> 2;   // Arithmetic right shift by 2 (signed behavior)
    m = a <<< 2;   // Arithmetic left shift by 2 (same as << for unsigned)
    #5;
    $display("a=%b b=%b => w=a>>1=%b x=a>>2=%b y=b<<1=%b z=a>>>2=%b m=a<<<2=%b", 
              a, b, w, x, y, z, m);
  end
  endtask

  initial
  begin
    inputs(4'b0110, 4'b1111);
    #5;
    inputs(4'b1001, 4'b0011);
    #5;
    inputs(4'b1111, 4'b0001);
    #5;
    inputs(4'b0011, 4'b1010);
    #5;
    $finish;
  end
endmodule

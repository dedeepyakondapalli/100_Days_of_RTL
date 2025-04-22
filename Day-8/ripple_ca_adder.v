module ripple_ca_adder(a,b,cin,sum,carry);

  input [7:0] a,b;
  input cin;
  output [7:0] sum;
  output carry;

  wire [7:0] w;

  assign w[0] = cin;

  genvar i;
    generate
        for(i=0;i<8;i=i+1)
            begin
              full_adder FA(.a(a[i]),.b(b[i]),.c(c[i]),.sum(sum[i]),.carry(w[i+1]));
            end
    endgenerate

  assign carry = w[8];

endmodule

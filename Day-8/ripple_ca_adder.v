module ripple_ca_adder(a,b,cin,sum,carry);

  input [5:0] a,b;
  input cin;
  output [5:0] sum;
  output carry;

  wire [4:0] w;

  full_adder fa0(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.carry(w[0]));
  full_adder fa1(.a(a[1]),.b(b[1]),.c(w[0]),.sum(sum[1]),.carry(w[1]));
  full_adder fa2(.a(a[2]),.b(b[2]),.c(w[1]),.sum(sum[2]),.carry(w[2]));
  full_adder fa3(.a(a[3]),.b(b[3]),.c(w[2]),.sum(sum[3]),.carry(w[3]));
  full_adder fa4(.a(a[4]),.b(b[4]),.c(w[3]),.sum(sum[4]),.carry(w[4]));
  full_adder fa5(.a(a[5]),.b(b[5]),.c(w[4]),.sum(sum[5]),.carry(carry));

endmodule

module adder_subtract(a,bin,ctrl,sum,carry);

    input [3:0] a,bin;
	input ctrl;
	output [3:0] sum;
	output carry;
	
	wire [3:0] c;
	wire [3:0] b;
	wire cin;
	
	assign cin = ctrl;
	
	xor x1(b[0],bin[0],ctrl);
	xor x2(b[1],bin[1],ctrl);
	xor x3(b[2],bin[2],ctrl);
	xor x4(b[3],bin[3],ctrl);
	
	full_adder fa0(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.carry(c[0]));
	full_adder fa1(.a(a[1]),.b(b[1]),.c(c[0]),.sum(sum[1]),.carry(c[1]));
	full_adder fa2(.a(a[2]),.b(b[2]),.c(c[1]),.sum(sum[2]),.carry(c[2]));
	full_adder fa3(.a(a[3]),.b(b[3]),.c(c[2]),.sum(sum[3]),.carry(c[3]));
	
	assign carry = c[3];
	
	
endmodule

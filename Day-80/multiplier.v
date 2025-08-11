module multiplier(a,b,out);

	input [3:0] a;
	input [3:0] b;
	output [7:0] out;
	
	wire [7:0] temp [3:0];
	
	assign temp[0] = a[0] * b;
	assign temp[1] = a[1] * b << 1;
	assign temp[2] = a[2] * b << 2;
	assign temp[3] = a[3] * b << 3;
	
	assign out = {temp[0] + temp[1] + temp[2] + temp[3]};
	
endmodule	

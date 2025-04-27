module decoder3_8(d,y);

    input [2:0] d;
	output wire [7:0] y;
	wire w1;
	
	decoder_24 D1(.d(d[1:0]),.en(d[2]),.y(y[7:4]));
	not n1(w1,d[2]);
	decoder_24 D2(.d(d[1:0]),.en(w1),.y(y[3:0]));
	
endmodule	

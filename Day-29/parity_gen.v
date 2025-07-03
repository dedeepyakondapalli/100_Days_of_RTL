module parity_gen(d,even,odd);

    input [3:0] d;
	output even,odd;
	
	assign even = ( d[3] ^ d[2] ^ d[1] ^ d[0] );
	assign odd = ~(d[3] ^ d[2] ^ d[1] ^ d[0] );
	
endmodule	

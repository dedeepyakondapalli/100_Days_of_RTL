module mux_k1 #(parameter k = 64)(a,sel,y);

    input [k-1:0] a;
	input [6:0] sel;
	output y;
	
	assign y = a[sel];
	
endmodule	

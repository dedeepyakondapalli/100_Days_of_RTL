module cnc_ff(clk,rst,c,n,q,qb);

	input clk,rst;
	input c,n;
	output q,qb;
	
	wire cn, n_bar,d_wire;
	
	mux_21 MUX1(n,1'b0,c,cn);
	mux_21 MUX2(n,1'b1,1'b0,n_bar);
	mux_21 MUX3(q,cn,n_bar,d_wire);
	d_ff DFF(.clk(clk),.rst(rst),.d(d_wire),.q(q));
	
	assign qb = ~q;
	
endmodule	

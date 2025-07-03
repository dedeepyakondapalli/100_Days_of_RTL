module sr_to_dff(clk,rst,d,q,qb);

	input clk,rst;
	input d;
	output q;
	output qb;
	sr_ff SR(.clk(clk),.rst(rst),.s(d),.r(~d),.q(q),.qb(qb));
	
endmodule	

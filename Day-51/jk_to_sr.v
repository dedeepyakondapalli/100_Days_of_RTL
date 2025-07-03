module jk_to_sr(clk,rst,s,r,q,qb);

	input clk,rst;
	input s,r;
	output q;
	output qb;
	
	jk_ff dut(.clk(clk),.rst(rst),.j(s),.k(r),.q(q),.qb(qb));
	
endmodule	

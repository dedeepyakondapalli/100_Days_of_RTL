module t_ff(clk,rst,t,q,qb);

    input clk,rst;
	input t;
	output reg q;
	output qb;
	
	always@(posedge clk or negedge rst)
	begin
	
	   if(~rst)
	   q <= 0;
	   else if (t == 1)
	    q <= ~q;
		
	end
	
	assign qb = ~q;
	
endmodule	

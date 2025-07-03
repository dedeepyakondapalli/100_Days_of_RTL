module asyn_updown(clk,rst,up_down,q,qb);

	input clk,rst,up_down;
	output [3:0] q;
	output [3:0] qb;
	
	wire t;
	wire clk1,clk2,clk3;
	
	assign t = 1;
	
	assign clk1 = up_down ? ~q[0] : q[0];
    assign clk2 = up_down ? ~q[1] : q[1];
    assign clk3 = up_down ? ~q[2] : q[2];
	
	tfflop t0(clk,rst,t,q[0],qb[0]);
	tfflop t1(clk1,rst,t,q[1],qb[1]);
	tfflop t2(clk2,rst,t,q[2],qb[2]);
	tfflop t3(clk3,rst,t,q[3],qb[3]);
	
endmodule 	

module tfflop(clk,rst,t,q,qb);

	input clk,rst;
	input t;
	output reg q;
	output qb;
	
	always @(posedge clk or negedge rst)
	begin
	
		if(~rst)
			q <= 0;
		else if(t)
			q <= ~q;
		else
			q <= q;
			
	end

	assign qb = ~q;

endmodule	

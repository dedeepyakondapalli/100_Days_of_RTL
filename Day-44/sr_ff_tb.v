module sr_ff_tb;

    reg clk,rst;
	reg s,r;
	wire q;
	wire qb;
	
	sr_ff DUT(.clk(clk),.rst(rst),.s(s),.r(r),.q(q),.qb(qb));
	
	initial clk = 0;
	always #5 clk = ~clk;
	
	initial
	begin
	
	    $monitor("Time = %0t | s = %b | r = %b | q = %b | qb = %b",$time,s,r,q,qb);
		rst = 1;
		#10;
		rst = 0;
		s = 1'b0; r = 1'b0;
		#10;
		s = 1'b0; r = 1'b1;
		#10;
		s = 1'b1; r = 1'b0;
		#10;
		s = 1'b1; r = 1'b1;
		#20;
		$finish;
		
	end

endmodule	

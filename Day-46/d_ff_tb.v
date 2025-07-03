module d_ff_tb;

  reg clk,rst;
	reg d;
	wire q,qb;
	
	d_ff DUT (.clk(clk),.rst(rst),.d(d),.q(q),.qb(qb));
	
	initial clk = 0;
	always #5 clk = ~clk;
	
	initial
	begin
	
	   $monitor("Time = %0t | d = %b |q = %b | qb = %b",$time,d,q,qb);
	   rst = 1; d = 0;
	   #10; rst = 0;
	   #10; rst = 1;
	   #10; d = 1;
	   #10; d = 1;
	   #10; d = 0;
	   #20;
	   $finish;
	   
	end

endmodule	

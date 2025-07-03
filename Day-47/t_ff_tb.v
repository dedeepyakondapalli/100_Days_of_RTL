module t_ff_tb;

  reg clk,rst;
	reg t;
	wire q;
	wire qb;
	
	t_ff DUT(clk,rst,t,q,qb);
	
	initial clk = 0;
	always #5 clk = ~clk;
	
	initial
	begin
	
	   $monitor("time = %0t | t = %b | q = %b | qb = %b",$time,t,q,qb);
	   t=0;rst = 1;
	   #10 rst = 0;
	   #10 rst = 1;
	   t = 1;
	   #10 ; 
	   t = 0;
	   #10; t = 0;
	   #10; t = 1;
	   #10;
	   $finish;
	   
	end

endmodule	

module jk_to_sr_tb;

	reg clk,rst;
	reg s,r;
	wire q,qb;
	
	jk_to_sr DUT(clk,rst,s,r,q,qb);
	
	always #5 clk = ~clk;
	
	initial
	begin
	
	   $monitor("Time = %0t | s = %b | r = %b | q = %b | qb = %b",$time,s,r,q,qb);
	   clk = 0;rst = 1; s = 0; r = 0;
	   #10;
	   rst = 0;
	   #10; s = 0; r = 1;
	   #10; s = 1; r = 0;
	   #10; s = 1; r = 1;
	   #10; s = 1; r = 0;
	   #10; s = 0; r = 1;
	   #20;
	   $finish;
	   
	end

endmodule	

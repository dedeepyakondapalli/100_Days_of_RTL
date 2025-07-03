module mod_count_tb();

	reg clk,rst;
	wire [3:0]count;
  
	mod_count DUT(clk,rst,count);
  
    always #5 clk = ~clk;
 
	initial
	begin
	
		$monitor("Time = %0t | count = %b",$time,count);
		clk = 0; rst = 0;
		#10 rst = 1;
		#10 rst = 0;
		#200;
		$finish;
  
	end

endmodule

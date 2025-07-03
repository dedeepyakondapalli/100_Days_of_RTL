module ring_count_tb;

	reg clk,rst;
	wire [3:0] count;
	
	ring_count DUT(clk,rst,count);
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | count = %b",$time,count);
		clk = 0;rst = 0;
		#10 rst = 1;
		#10 rst = 0;
		#100;
		$finish;
		
	end

endmodule	

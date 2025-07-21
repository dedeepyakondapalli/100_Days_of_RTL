module freq_divider_tb;

	reg clk,rst;
	wire out;
	wire div_2,div_4,div_8;
	
	freq_divider DUT(.clk(clk),.rst(rst),.out(out),.div_2(div_2),.div_4(div_4),.div_8(div_8));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | out = %b | div_2 = %b | div_4 = %b | div_8 = %b",$time,out,div_2,div_4,div_8);
		
		clk = 0; rst = 1;
		@(negedge clk) rst = 0;
		@(negedge clk) rst = 1;
		#1000;
		$finish;
		
	end

endmodule	

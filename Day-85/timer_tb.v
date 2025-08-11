module timer_tb;

	reg clk,rst;
	wire [5:0] sec;
	wire [5:0] min;
	wire [4:0] hour;
	
	timer DUT(.clk(clk),.rst(rst),.min(min),.hour(hour),.sec(sec));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		clk = 0; rst = 0;
		#10 rst = 1;
		#10 rst = 0;
		#10000;
		$finish;
		
	end

endmodule	

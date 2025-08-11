module generator_tb;

	reg clk,rst;
	wire [7:0] rand;
	
	generator DUT(.clk(clk),.rst(rst),.rand(rand));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | rst = %b | rand = %b",$time,rst,rand);
		clk = 0;rst = 0;
		#10 rst = 1;
		#10 rst = 0;
		#100;
		$finish;
	
	end
	
endmodule	

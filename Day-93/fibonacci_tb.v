module fibonacci_tb;

	reg clk,rst;
	wire [31:0] current;
	wire [31:0] next;
	
	fibonacci DUT(.clk(clk),.rst(rst),.current(current),.next(next));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | Current = %d | Next = %d",$time,current,next);
		clk = 0; rst = 1;
		#10 rst = 0;
		#150;
		$finish;
		
	end
	
endmodule		

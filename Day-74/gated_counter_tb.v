module gated_counter_tb;

	reg clk,rst;
	reg enable;
	wire [3:0] count;
	
	gated_counter DUT(.clk(clk),.rst(rst),.enable(enable),.count(count));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | rst = %b | enable = %b | count = %b",$time,rst,enable,count);
		
		clk = 0;rst = 0;enable = 1;
		#10 rst = 1;
		#10 rst = 0;
		#50;
		enable = 0;
		#50;
		enable = 1;
		#50;
		$finish;
		
	end

endmodule 	

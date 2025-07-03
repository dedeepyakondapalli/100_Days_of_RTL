module sipo_tb;

	reg clk,rst;
	reg din;
	wire [3:0] dout;
	
	sipo DUT(clk,rst,din,dout);
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | din = %b | dout = %b",$time,din,dout);
		clk = 0; rst = 0; din = 0;
		#10 rst = 1;
		#10 rst = 0; din = 1;
		#10 din = 1;
		#10 din = 0;
		#10 din = 1;
		#70;
		$finish;
		
	end

endmodule	

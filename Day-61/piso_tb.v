module piso_tb();

	reg clk,rst;
	reg load;
	reg [3:0] din;
	wire dout;
	
	piso DUT (clk,rst,load,din,dout);
	
	always #5 clk = ~clk;
	
	initial 
	begin
	
		$monitor("Time = %0t | din = %b | dout = %b",$time,din,dout);
		clk = 0; rst = 0; load = 0; din = 1111;
		#10 rst = 1;
		#10 rst = 0;
		#10 load = 1; din = 1010;
		#10 load = 0;
		#70;
		$finish;
		
	end

endmodule	

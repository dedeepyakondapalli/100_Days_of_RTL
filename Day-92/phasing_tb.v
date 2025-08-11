module phasing_tb;

	reg clk,rst;
	wire clk_out;
	
	phasing DUT(.clk(clk),.rst(rst),.clk_out(clk_out));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | Clk = %b | clk_out = %b",$time,clk,clk_out);
		clk = 0; rst =0; 
		#10 rst = 1;
		#10 rst = 0;
		#200;
		$finish;
		
	end

endmodule	

module ayn_rst_reg_tb;

	reg clk,rst;
	reg [3:0] d;
	wire [3:0] q;
	
	ayn_rst_reg DUT(clk,rst,d,q);
	
	always #5 clk = ~clk;
	
	initial
	begin
	
	    $monitor("Time = %0t | rst = %b |  d = %b | q = %b ",$time,rst,d,q);
		clk = 0; rst = 0; d = 4'b1010;
		#10 rst = 1;
		@(posedge clk);
		rst = 0;
		//d = 4'b1100;
		#10 d = 4'b0011;
		#5 rst = 1;
		@(posedge clk);
		rst = 0;
		#10 d = 4'b1111;
		#10;
		$finish;
		
	end

endmodule	

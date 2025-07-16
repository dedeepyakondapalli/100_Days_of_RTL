module bcd_counter_tb;

	reg clk,rst;
	wire [3:0] tens;
	wire [3:0] units;
	
	bcd_counter DUT (.clk(clk),.rst(rst),.tens(tens),.units(units));
	
	always #5 clk = ~ clk;
	
	task reset;
	begin
	
		@(negedge clk)
		rst = 0;
		@(negedge clk);
		rst = 1;
		
	end
    endtask

	initial
	begin
	
		$monitor("Time = %0t | Tens = %d | Units = %d ",$time,tens,units);
		clk = 0;
		rst = 1;
		reset;
		#600;
		$finish;
		
	end	
endmodule		

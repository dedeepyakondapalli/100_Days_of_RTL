module siso_tb();
		
	reg clk,rst,si;
	wire so;

	siso dut(clk,rst,si,so);

	always #5 clk = ~clk;
	
	task din(input i);
	begin

		@(negedge clk)
		si = i;
	end
	endtask

	initial
	begin

		$monitor("Time = %0t | si = %b | so = %b",$time,si,so);
		clk = 0; rst = 0; si = 0;
		@(negedge clk)
		rst = 1;
		@(negedge clk)
		rst = 0;
		din(1);
		#10; din(0);
		#10; din(1);
		#10; din(0);
		#50;
		$finish();

	end

endmodule

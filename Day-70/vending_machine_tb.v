module vending_machine_tb();

	reg clk,rst;
	reg [1:0] coin;
	wire p,ch;

	vending_machine dut(clk,rst,coin,p,ch);

	always #5 clk = ~clk;
	
	task reset;
	begin
		@(negedge clk)
		rst=1'b1;
		@(negedge clk)
		rst=1'b0;
	end
	endtask
	
	task inputs(input[1:0] i);
	begin
		{coin}=i;
	end
	endtask
	
	initial
	begin
	$monitor("clk=%b,rst=%b,coin=%b,p=%b,ch=%b",clk,rst,coin,p,ch);
	clk = 0; rst = 0; coin = 0;	
	reset;
	inputs(2'b00);
	#5 inputs(2'b10);
	#5 inputs(2'b10);
	#5 inputs(2'b10);
	#5 inputs(2'b11);
	#5 inputs(2'b11);
	#5 inputs(2'b10);
	#5 inputs(2'b11);
	#100 $finish;
	end

endmodule

module updown_count_tb();
	
	reg clk,rst,load,mode;
	reg [3:0] data;
	wire [3:0] count;

	updown_count dut(clk,rst,data,load,mode,count);

	always #5 clk=~clk;

	initial 
	begin
	
		$monitor("Time = %0t | load = %b | mode = %b | data = %b | count = %b",$time,load,mode,data,count);
		clk = 0;
		rst = 1; load = 0; data = 4'b0000; mode = 1'b0;
		#10 rst = 0;
		load = 1; data = 4'b1000;
		#10;
		load = 0; mode = 1;
		#50;
		mode = 0;
		#50;
		$finish;
		
	end
	
endmodule

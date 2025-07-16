module elevator_tb;

	reg clk,rst;
	reg [1:0] req_floor;
	reg [1:0] in_floor;
	
	wire dir;
	wire complete;
	wire [1:0] out_floor;
	
	elevator DUT (.clk(clk),.rst(rst),.req_floor(req_floor),.in_floor(in_floor),.dir(dir),.complete(complete),.out_floor(out_floor));
	
	always #5 clk = ~clk;
	
	task reset;
	begin
	
		@(negedge clk)
		rst = 1'b1;
		@(negedge clk)
		rst = 1'b0;
		
	end
	endtask

	initial
	begin
	
		$monitor("Time = %0t | current_floor = %d | req_floor = %d | dir = %b | complete = %b",$time, out_floor, req_floor, dir, complete);
		clk = 0;
		rst = 0;
		in_floor = 2'b10;
		reset;
		#10 req_floor = 2'b11; // Move up from 2 to 3
		#50;
		req_floor = 2'b01; // Move down to floor 1
		#50;
		req_floor = 2'b01; // Same floor, should complete immediately
		#50;
		$finish;
	end

endmodule	

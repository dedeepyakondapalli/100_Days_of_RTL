module rr_arbiter_tb;

	reg clk,rst;
	reg [3:0] req;
	wire [3:0] gnt;
	
	rr_arbiter DUT(.clk(clk),.rst(rst),.req(req),.gnt(gnt));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | REQ = %b | GNT = %b",$time,req,gnt);
		clk = 0; rst = 1; req = 4'b0000;
		@(negedge clk) rst = 0;
		@(negedge clk) rst = 1;
		@(negedge clk) req = 4'b1000;    
		@(negedge clk) req = 4'b1010;
        @(negedge clk) req = 4'b0010;
        @(negedge clk) req = 4'b0110;
        @(negedge clk) req = 4'b1110;
        @(negedge clk) req = 4'b1111;
        @(negedge clk) req = 4'b0100;
        @(negedge clk) req = 4'b0010;
		@(negedge clk) rst = 1;
		#10;
		$finish;
		
	end

endmodule	

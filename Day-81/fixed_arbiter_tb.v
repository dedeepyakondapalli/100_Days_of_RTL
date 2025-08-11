module fixed_arbiter_tb;

	reg clk,rst;
	reg [3:0] req;
	wire [3:0] gnt;
	
	fixed_arbiter DUT(.clk(clk),.rst(rst),.gnt(gnt),.req(req));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | req = %b | gnt = %b",$time,req,gnt);
		clk = 0; rst = 1; req = 4'b0000;
		#10 rst = 0; 
		#10 rst = 1;
		#10 req = 4'b1000;
		#10 req = 4'b0001;
		#10 req = 4'b0100;
		#10 req = 4'b0000;
		#10 req = 4'b0010;
		#10 req = 4'b0011;
		$finish;
		
	end

endmodule	

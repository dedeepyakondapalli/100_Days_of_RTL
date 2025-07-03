module sr_to_dff_tb;

	reg clk,rst;
	reg d;
	wire q,qb;
	
	sr_to_dff DUT(clk,rst,d,q,qb);
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | d = %b | q = %b | qb = %b",$time,d,q,qb);
		clk = 0;d = 0;rst = 1;    
        #10; rst = 0;    
        #10;    
        #10; d = 1;
		#10; d = 1;
		#10; d = 0;
		#20; d = 1;
		#20;
		$finish;
		
	end

endmodule	

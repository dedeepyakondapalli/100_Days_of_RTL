module asyn_updown_tb;

	reg clk,rst,up_down;
	wire [3:0] q;
	wire [3:0] qb;
	
	asyn_updown DUT(clk,rst,up_down,q,qb);
	
	always #5 clk = ~clk;
	
	initial
	begin
	
	$monitor("Time = %0t | up_down = %b | q = %b | qb = %b",$time,up_down,q,qb);
    clk = 0;
    rst = 1;
    up_down = 1;   // Count up
    #10 rst = 0;
    #10 rst = 1;
    #100 up_down = 0;  // Switch to down count
    #100;
    $finish;
	
	end
	
endmodule	

module GCD_tb;

    reg [7:0] a;
    reg [7:0] b;
    reg clk;
    reg start;
    wire [7:0] gcd;
    wire done;

	GCD DUT (.clk(clk),.a(a),.b(b),.start(start),.gcd(gcd),.done(done));
	
    always #5 clk = ~clk;

    initial
	  begin
	
		$monitor("Time = %0t | a = %d | b = %d | gcd = %d | done = %b",$time,a,b,gcd,done);
		clk = 0;
    a = 8'd56; b = 8'd98; start = 1; #10; start = 0;
    wait(done);
    #10;
    a = 8'd20; b = 8'd30; start = 1; #10; start = 0;
    wait(done);
    #10;
		a = 8'd25; b = 8'd25; start = 1; #10; start = 0;
		wait(done);
		#10;
		a = 8'd110; b = 8'd95; start = 1; #10; start = 0;
		wait(done);
		#10;
    $finish;
		
    end
	
endmodule

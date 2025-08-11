module stop_watch_tb;

    reg clk,rst;
    reg start;
    wire [5:0] sec;
    wire [5:0] min;
    wire [3:0] hour;

    stop_watch DUT(.clk(clk),.rst(rst),.start(start),.sec(sec),.min(min),.hour(hour));
	
    always #5 clk = ~clk;

    initial
	begin
	
        $monitor("Time: %d:%d:%d", hour, min, sec);
        clk = 0;rst = 1;start = 0;
		#10 rst = 0;

		start = 1;
		#10;
		start = 0;
		#200;

		start = 1;
		#10; 
		start = 0;
		#100;

		start = 1;
		#10;
		start = 0;
		#150;
          
        $finish;
		
    end

endmodule

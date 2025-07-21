module edge_detector_tb;

    reg clk;
    reg sig_in;
    wire rising_edge, falling_edge;

    edge_detector DUT (.clk(clk),.sig_in(sig_in),.rising_edge(rising_edge),.falling_edge(falling_edge));

    always #5 clk = ~clk;

    initial
	begin
	
        $monitor("Time = %0t | sig_in = %b | Rising = %b | Falling = %b",$time,sig_in,rising_edge,falling_edge);
		clk = 0; sig_in = 0;
        #10 sig_in = 1;  // Rising edge
        #20 sig_in = 0;  // Falling edge
        #20 sig_in = 1;  // Rising
        #10 sig_in = 0;  // Falling
        #10 sig_in = 1;  // Rising
        #10;
        $finish;
		
    end

endmodule

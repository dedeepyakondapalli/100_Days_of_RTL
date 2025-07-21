module edge_detector (clk,sig_in,rising_edge,falling_edge);

    input clk;
    input sig_in;
    output reg rising_edge;
	output reg falling_edge;

    reg prev;

    always @(posedge clk)
	begin
	
        prev <= sig_in;
        rising_edge <= (~prev) & sig_in;  // detect 0 → 1
		falling_edge <= prev & ~sig_in;  // detect 1 → 0

    end

endmodule

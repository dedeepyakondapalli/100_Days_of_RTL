module clock_gating_tb;

    reg clk,reset;
    reg enable;
    wire gated_clk;

    clock_gating DUT(.clk(clk),.enable(enable),.reset(reset),.gated_clk(gated_clk));

	  always #5 clk = ~clk;

    initial
	  begin
	
		    $monitor("Time = %0t | enable = %d | clk = %b | Gated_clk = %b",$time,enable,clk,gated_clk);
        clk = 0;reset = 1; enable = 0;
		    #10 reset = 0;
        enable = 1; #50;
        enable = 0; #50;
        enable = 1; #50;
        enable = 0; #50;
        $finish;
		
    end
endmodule

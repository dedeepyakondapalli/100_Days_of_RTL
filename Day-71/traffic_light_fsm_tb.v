module traffic_light_fsm_tb;
    
	reg clk, reset;
    wire [1:0] light1, light2;

    traffic_light_fsm uut (.clk(clk),.reset(reset),.light1(light1),.light2(light2));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | State = %b | Light1 = %b | Light2 = %b", $time, uut.state, light1, light2);
		clk = 0;reset = 0;
		#10 reset = 1;
		#10 reset = 0;
		#100 $finish;
		
	end

endmodule	

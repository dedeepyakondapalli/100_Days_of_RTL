module multiplier_tb;

	reg [3:0] a;
	reg [3:0] b;
	wire [7:0] out;
	
	multiplier DUT (.a(a),.b(b),.out(out));	
	
	initial
	begin
	
		$monitor("Time = %0t | A = %d | B = %d | Out = %d",$time,a,b,out);
		a = 4'd15; b = 4'd15;
		#10;
		
		a = 4'd7; b = 4'd15;
		#10;
		
		a = 4'd8; b = 4'd12;
		#10;
		
		a = 4'd3; b = 4'd10;
		#10;
		
		$finish;
		
	end

endmodule	

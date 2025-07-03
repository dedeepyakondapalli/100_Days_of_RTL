module comp_tb;

    reg [3:0] a;
	reg [3:0] b;
	wire less;
	wire greater;
	wire equal;
	
	comp DUT(a,b,less,greater,equal);
	
	initial
	begin
	
	    $monitor("time = %t | a = %b | b = %b | less = %b | greater = %b | equal = %b",$time,a,b,less,greater,equal);
		
		a=4'b0000;b=4'b0000;#5;
		a=4'b1111;b=4'b0010;#5;
		a=4'b0110;b=4'b1110;#5;
		a=4'b1001;b=4'b0101;#5;
		a=4'b1100;b=4'b1100;#5;
		a=4'b0011;b=4'b1010;#5;
		
	end	

endmodule	

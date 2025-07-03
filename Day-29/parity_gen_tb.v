module parity_gen_tb;

    reg [3:0] d;
	wire even,odd;
	
	parity_gen DUT(d,even,odd);
	
	initial
	begin
	
	   $monitor("Even = %b | Odd = %b for the data %d",even,odd,d);
	   
	   d=4'b0000; #5;
	   d=4'b1111; #5;
	   d=4'b0101; #5;
	   d=4'b0111; #5;
	   d=4'b1001; #5;
	   d=4'b0001; #5;
	   d=4'b0110; #5;
	   
	   #10;
	   $finish;
	   
	end

endmodule	

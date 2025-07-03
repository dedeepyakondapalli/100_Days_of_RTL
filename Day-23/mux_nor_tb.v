module mux_nor_tb;

    reg a,b;
	wire out;
	
	mux_nor DUT(a,b,out);
	
	initial
	begin
	
	   b = $random;
	   a = 0;
	   #5;
	   $display("Time = %t | out = %b",$time,out);
	   
	   a = 1;
	   #5;
	   $display("Time = %t | out = %b",$time,out);
	   
	   a=0;
	   #5;
	   $display("Time = %t | out = %b",$time,out);
	   
	   a=1;
	   #5;
	   $display("Time = %t | out = %b",$time,out);
	   
	   #5;
	   $finish;
	   
	end

endmodule	

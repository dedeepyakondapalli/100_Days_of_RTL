module mux_21_tb();

    reg sel;
	reg a,b;
	wire y;
	
	mux_21 DUT(sel,a,b,y);
	
	initial
	begin
	
	   a=0;b=0;sel=0;
	   #10;
	   $display("Time = %0t | a = %b | b = %b | y = %b",$time,a,b,sel);
	   
	   a=0;b=1;sel=1;
	   #10;
	   $display("Time = %0t | a = %b | b = %b | y = %b",$time,a,b,sel);
	   
	   a=1;b=0;sel=0;
	   #10;
	   $display("Time = %0t | a = %b | b = %b | y = %b",$time,a,b,sel);
	   
	   a=1;b=1;sel=0;
	   #10;
	   $display("Time = %0t | a = %b | b = %b | y = %b",$time,a,b,sel);
	   
	   #10;
	   $finish;
	   
	end
	
endmodule	

module basic_gates_tb();

   reg a,b;
   wire out_and,out_or,out_not;
   
   basic_gates DUT (a,b,out_and,out_or,out_not);
   
   initial 
      begin
	  
	    a=0;b=0;
		$display("a=%b,b=%b,out_and=%b,out_or=%b,out_not=%b",a,b,out_and,out_or,out_not);
		
		#5;
		a=0;a=1;
		$display("a=%b,b=%b,out_and=%b,out_or=%b,out_not=%b",a,b,out_and,out_or,out_not);
		
		#5;
		a=1;b=0;
		$display("a=%b,b=%b,out_and=%b,out_or=%b,out_not=%b",a,b,out_and,out_or,out_not);
		
		#5;
		a=1;b=1;
		$display("a=%b,b=%b,out_and=%b,out_or=%b,out_not=%b",a,b,out_and,out_or,out_not);
		
		#20;
		$finish();
		
	  end
	  
endmodule	  
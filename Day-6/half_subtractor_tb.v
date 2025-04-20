module half_subtractor_tb();

   reg a,b;
   wire diff,borrow;
   
   integer i;
   
   half_subtractor DUT (a,b,diff,borrow);
   
   initial
     begin
	 
	   for(i=0;i<=4;i=i+1)
	       begin
		      {a,b} = i[1:0];
			  #10;
			  $display("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
			end
	 end

endmodule	 

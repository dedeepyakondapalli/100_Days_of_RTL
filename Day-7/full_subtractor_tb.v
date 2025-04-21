module full_subtractor_tb();

   reg a,b,c;
   wire diff,borrow;
   
   integer i;
   
   full_subtractor DUT (a,b,c,diff,borrow);
   
   initial
      begin
	  
	    for(i=0;i<9;i=i+1)
		   begin
		      {a,b,c} = i[2:0];
			  $display("a=%b,b=%b,c=%b,diff=%b,borrow=%b",a,b,c,diff,borrow);
			  #10;
			end
	  end

endmodule	

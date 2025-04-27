module decoder3_8_tb();

   reg [2:0] d;
   wire [7:0] y;
   
   decoder3_8 DUT(d,y);
   
   integer i;
   
   initial
   begin
      
	  for(i=0;i<8;i=i+1)
	      begin
		     d = i;
			 #5;
			 $display("Time = %0t, d = %b, y = %b",$time,d,y);
		  end
	end

endmodule	

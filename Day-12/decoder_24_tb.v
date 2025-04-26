module decoder_24_tb();

   reg [1:0] d;
   wire [3:0] y;
   
   decoder_24 DUT(d,y);
   
   integer i;
   
   initial
   begin
      
	  for(i=0;i<4;i=i+1)
	      begin
		  
		     {d[1:0]} = i[1:0];
			 $display("Time = %0t, d[0] = %b,d[1] = %b, y[0] = %b, y[1] = %b, y[2] = %b, y[3] = %b",$time,d[0],d[1],y[0],y[1],y[2],y[3]);
			 #5;
		  end
	end

endmodule	

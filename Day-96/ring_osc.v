module ring_osc(out);

   output reg out;

   reg[4:0] level;
   
   initial
   begin 
		level = 5'b00001;
		out = 0;
   end
  
   always
   begin 
   
		#5 level[0] <= ~level[4];
		#5 level[1] <= ~level[0];
		#5 level[2] <= ~level[1];
		#5 level[3] <= ~level[2];
		#5 level[4] <= ~level[3];
      
		out <= level[4];
	  
    end 
	
endmodule

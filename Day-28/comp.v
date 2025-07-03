module comp(a,b,less,greater,equal);

   input [3:0] a;
   input [3:0] b;
   output reg less;
   output reg greater;
   output reg equal;
   
   always@(*)
   begin
      
      less = 1'b0;
	  greater = 1'b0;
	  equal = 1'b0;
	  
      if(a>b)
	  begin
	     greater = 1'b1;
	     less = 1'b0;
	     equal = 1'b0;
		end 
	  else if (a<b)
	  begin
	     less = 1'b1;
	     greater = 1'b0;
	     equal = 1'b0;
		end 
	  else
	  begin
	     equal = 1'b1;
	     less = 1'b0;
	     greater = 1'b0;
	  end
	end

endmodule	

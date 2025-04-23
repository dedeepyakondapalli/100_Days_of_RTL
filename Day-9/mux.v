module mux(a,b,sel,y);

   input a,b,sel;
   output reg y;
   
   always@(*)
      begin
           if(sel==1)
               y=a;
          else 
               y=b;
      end
	  
endmodule 

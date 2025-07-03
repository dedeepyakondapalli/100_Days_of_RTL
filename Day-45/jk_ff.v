module jk_ff(clk,rst,j,k,q,qb);

     input clk,rst;
	 input j,k;
	 output reg q;
	 output qb;
	 
	 always@(posedge clk)
	 begin
	 
	     if(rst)
		    q <= 1'b0;
		 else if( j == 1'b0 && k == 1'b0)
		    q <= q;
	     else if ( j == 1'b0 && k == 1'b1)
            q <= 0;
         else if ( j == 1'b1 && k == 1'b0)
            q <= 1;
         else
            q <= ~q;
     end

     assign qb = ~q;

endmodule	 

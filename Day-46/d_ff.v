module d_ff(clk,rst,d,q,qb);

    input clk,rst;
	input d;
	output reg q;
	output qb;
	
	always@(posedge clk or negedge rst)
	begin
	
	   if(~rst)
	      q <= 0;
	   else
          q <= d;
   
    end

    assign qb = ~q;

endmodule	

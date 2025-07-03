module register(clk,rst,en,a,q);

    input clk,rst,en;
	input [7:0] a;
	output reg [7:0] q;
	
	always@(posedge clk or posedge rst)
	begin
	
	   if(rst)
	      q<=0;
		else if (en==0)
          q<=0;
		else
          q<=a;		
    end

endmodule	

module mod_count(clk,rst,count);

	input clk,rst;
	output reg [3:0] count;
	
	always @(posedge clk)
	begin
	
		if(rst)
			count <= 0;
		else if(count == 9)
			count <= 0;
		else
			count <= count + 1;
			
	end

endmodule	

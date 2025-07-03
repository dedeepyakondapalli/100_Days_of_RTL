module ring_count(clk,rst,count);

	input clk,rst;
	output reg [3:0] count;
	
	always@(posedge clk or posedge rst)
	begin
	
		if(rst)
			count <= 4'b1000;
		else
		begin
		
			count[3] <= count[2];
			count[2] <= count[1];
			count[1] <= count[0];
			count[0] <= count[3];
			
		end

    end

endmodule	

module fixed_arbiter(clk,rst,req,gnt);

	input clk,rst;
	input [3:0] req;
	output reg [3:0] gnt;
	
	always @(posedge clk or negedge rst)
	begin
	
		if(!rst)
			gnt <= 4'b0000;
		else if(req[2])
			gnt <= 4'b0100;
		else if(req[1])
			gnt <= 4'b0010;
		else if(req[0])
			gnt <= 4'b0001;
		else if(req[3])
			gnt <= 4'b1000;
		else
			gnt <= 4'b0000;
			
	end

endmodule	

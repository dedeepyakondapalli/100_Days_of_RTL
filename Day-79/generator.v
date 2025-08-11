module generator(clk,rst,rand);

	input clk,rst;
	output [7:0] rand ;
	
	reg [7:0] temp;
	
	always @(posedge clk)
	begin
		if(rst)
			temp <= 8'b00000001;
		else
			temp <= {temp[6:0],temp[7]^temp[5]};
	end

	assign rand = temp;
	
endmodule	

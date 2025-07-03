module up_counter(clk,rst,load,data,count);

	input clk,rst,load;
	input [7:0] data;
	output  reg [7:0] count;
	
	always @ (posedge clk)
	begin
	
		if(rst==1'b1)
			count<=8'd0;
		else if (load==1'b1)
			count<=data;
		else
			count<=count+1'b1;
	end

endmodule

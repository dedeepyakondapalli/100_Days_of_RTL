module gated_counter(clk,rst,enable,count);

	input clk,rst;
	input enable;
	output reg [3:0] count;
	
	wire gated_clock;
	
	assign gated_clock = clk & enable;
	
	always@(posedge gated_clock)
	begin
	
		count <= 4'b0000;
		if(rst)
			count <= 4'b0000;
		else if (enable)
			count <= count + 1;
	
	end
	
endmodule	

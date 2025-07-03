module pipo(clk,rst,din,dout);

	input clk,rst;
	input [3:0] din;
	output reg [3:0] dout;
	
	always@(posedge clk)
	begin
	
		if(rst)
			dout <= 4'b0000;
		else
			dout <= din;
			
	end

endmodule	

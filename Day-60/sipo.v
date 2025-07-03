module sipo(clk,rst,din,dout);

	input clk,rst;
	input din;
	output [3:0] dout;
	
	reg [3:0] q;
	
	always@(posedge clk)
	begin
	
		if(rst)
			q <= 4'b0000;
		else
			begin
			q[3] <= din;
			q[2] <= q[3];
			q[1] <= q[2];
			q[0] <= q[1];
			end
			
	end

	assign dout = q;
	
endmodule	

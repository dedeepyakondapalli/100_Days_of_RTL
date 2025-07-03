module siso(clk,rst,si,so);

	input clk,rst,si;
	output reg so;

	reg [2:0] q;

	always @(posedge clk)
	begin

		if (rst)
			q <= 3'b000;
		else
			q[0]<=si;
			q[1]<=q[0];
			q[2]<=q[1];

	end
	
	always @(posedge clk)
	begin
	
		if(rst)
			so <= 1'b0;
		else
			so <= q[2];
	
	end
	
endmodule

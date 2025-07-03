module piso(clk,rst,load,din,dout);

	input clk,rst;
	input load;
	input [3:0] din;
	output reg dout;
	
	reg [3:0] q;
	
	always@(posedge clk)
	begin
	
		if(rst)
			q <= 4'b0000;
		else if(load == 1)
			q <= din;
		else 
		begin
			dout <= q[3];
			q <= {q[2:0],1'b0};
		end

    end

endmodule	

module updown_count(clk,rst,data,load,mode,count);

	input clk,rst,load,mode;
	input [3:0] data;
	output reg [3:0] count;

	always @ (posedge clk)
	begin

		if ( rst==1'b1)
			count<=4'b000;
		else if (load==1'b1)
			count<=data;
		else if (mode==1'b1)
			count<=count+1'b1;
		else 
		count<=count-1'b1;

	end

endmodule

module single_ram(clk,rst,we,din,dout,addr);

	input clk,rst;
	input we;
	input [15:0] din;
	input [4:0] addr;
	output reg [15:0] dout;
	
	reg [15:0] mem [31:0];
	
	always @(posedge clk)
	begin

		if(rst)
			dout <= 0;
		else
		begin
			if(we)
				mem[addr] <= din;
			else
				dout <= mem[addr];
		end	
	end

endmodule	

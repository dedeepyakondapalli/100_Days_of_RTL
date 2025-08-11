module dual_ram(clk,rst,we,re,w_din,w_dout,r_din,r_dout,w_addr,r_addr);

	input clk,rst;
	input we;
	input [15:0] w_din;
	input [4:0] w_addr;
	output reg [15:0] w_dout;
	
	input re;
	input [15:0] r_din;
	input [4:0] r_addr;
	output reg [15:0] r_dout;
	
	reg [15:0] mem [31:0];
	
	always @(posedge clk)
	begin
		if(rst)
		begin
			w_dout <= 0;
			r_dout <= 0;
		end
		else
		begin
			if(we)
				mem[w_addr] <= w_din;
			else
				w_dout <= mem[w_addr];	
				
			if(re)
				mem[r_addr] <= r_din;
			else
				r_dout <= mem[r_addr];
		end		
	end

endmodule	

module pipo_tb();

	reg clk,rst;
	reg [3:0] din;
	wire [3:0] dout;
	
	pipo DUT (.clk(clk),.rst(rst),.din(din),.dout(dout));
	
	always #5 clk = ~clk;
	
	initial
	begin
	
		$monitor("Time = %0t | rst = %b | din = %b | dout = %b",$time,rst,din,dout);
		clk = 0; rst = 0; din = 0;
		#10 rst = 1; din = 4'b1010;
		#10 rst = 0;
		#40 din = 4'b1111;
		#10 din = 4'b1100;
		#10 din = 4'b0110;
		#40;
		$finish;
		
	end	
		
endmodule		

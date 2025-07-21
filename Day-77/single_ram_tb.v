module single_ram_tb;

	reg clk,rst;
	reg we;
	reg [15:0] din;
	reg [4:0] addr;
	wire [15:0] dout;
	
	single_ram DUT(.clk(clk),.rst(rst),.we(we),.din(din),.addr(addr),.dout(dout));
	
	always #5 clk = ~clk;
	
	task reset;
	begin
		@(negedge clk)
		rst = 1;
		@(negedge clk)
		rst = 0;
	end
	endtask 

	task write(input [15:0] in,input [4:0] loc);
    begin
		@(negedge clk)
		we = 1;
		din = in;
		addr = loc;
		@(negedge clk)
		we = 0;
		$display("At Time = %0t Writing %h into %d",$time,din,addr);
	end
	endtask
	
	task read(input [4:0] loc);
	begin
		@(negedge clk);
		we = 0;
		addr = loc;
		@(posedge clk);			//waits to update dout
		#5;
		$display("At Time = %0t data read from %d is %h",$time,addr,DUT.dout);
	end
	endtask
	
	initial
	begin
	
		clk = 0;rst = 0;we = 1;din = 0;addr = 0;
		reset;
		write(16'hCAFE,5'd30);
		write(16'hBEAD,5'd26);
		write(16'hBABA,5'd13);
		read(5'd30);
		read(5'd13);
		read(5'd26);
		read(5'd20);
		#10;
		$finish;
		
	end

endmodule	

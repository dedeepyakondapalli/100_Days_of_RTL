module syn_cnt_tb;

	reg clk,rst,mode;
	wire [2:0] out;
	
	syn_cnt DUT(.clk(clk),.rst(rst),.mode(mode),.out(out));
	
	always #5 clk = ~clk;
	
	task reset;
	begin
	
		#10 rst = 1;
		#10 rst = 0;
		
	end
    endtask

	task display(input integer cycles);
	    integer i;
		begin
		
			for(i=0;i<cycles;i=i+1)
			begin
			@(posedge clk)
			$display("Time = %0t | out = %b",$time,out);
			end
			
		end
    endtask

	initial
	begin
	
		clk = 0;
		rst = 1;
		reset;
		mode = 1;
		display(10);
		mode = 0;
		display(10);
		$finish;
		
	end

endmodule	

module mealy_1010_tb;

	reg clk,rst,in;
	wire out;
	
	mealy_1010 DUT(.clk(clk),.rst(rst),.in(in),.out(out));
	
	always #5 clk = ~clk;
	
	task reset;
	begin
	
		#10 rst = 1;
		#10 rst = 0;
		
	end
	endtask
	
	task inputs(input data);
	begin
	
		in = data;
	
	end
	endtask 
	
	initial
	begin
	
		$monitor("Time = %0t | out = %b",$time,out);
		clk = 0;rst = 0;
		reset;
		#10 inputs(0);
		#10 inputs(0);
		#10 inputs(1);
		#10 inputs(0);
		#10 inputs(1);
		#10 inputs(1);
		#10 inputs(0);
		#10 inputs(1);
		#10 inputs(0);
		#10 inputs(1);
		#10 inputs(1);
		#10 inputs(1);
		$finish;
		
	end

endmodule	

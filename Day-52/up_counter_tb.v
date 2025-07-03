module up_counter_tb();

	reg clk,rst,load;
	reg [7:0] data;
	wire [7:0] count;
	
	up_counter dut (clk,rst,load,data,count);
	
	always #5 clk=~clk;
	
	task t1;
	begin
		rst=1'b1;
		#5;
		rst=1'b0;
	end
	endtask
	
	task t2(input [7:0] i);
	begin
		load=1'b1;
		data=i;
		#10;
		load=1'b0;
	end
	endtask
	
	task t3(input[7:0]i);
	begin
		data=i;
		end
	endtask
	
	initial begin
		
		clk = 0;rst = 0;load = 0;data = 8'd0;
		$monitor("Time=%0t | clk=%b rst=%b load=%b data=%b count=%b",$time, clk, rst, load, data, count);
		t1;                
		t2(8'b0000_1010);  // Load value 10
		#150;               // Wait to see counting
		$finish;
	end

endmodule

module bidir_shift_reg_tb;

	reg clk,rst;
	reg load;
	reg shift;
	reg [7:0] data_in;
	wire [7:0] data_out;
	
	bidir_shift_reg DUT(rst,clk,load,shift,data_in,data_out);
	
	initial clk = 0;
	always #5 clk = ~clk;
	
	initial
	begin
	
	   $monitor("Time = %0t | load = %b | shift = %b | data_in = %b | data_out = %b",$time,load,shift,data_in,data_out);
	   
	   rst = 1; load = 0; shift = 0; data_in = 8'b11001101;
	   #10 rst = 0;
	   #10 load = 1; 	//loads data;
	   #10 load = 0;
	   #10 shift = 1;   //right shift = 01100110
	   #10 shift = 0;   //left shift = 11001100
	   #10 shift = 0;   //left shift = 10011000
	   #10 shift = 1;	//right shift = 01001100
	   #10;
	   $finish;
	   
	end

endmodule	

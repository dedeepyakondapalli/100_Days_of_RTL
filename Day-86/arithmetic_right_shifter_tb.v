`timescale 1ns/1ps
module arithmetic_right_shifter_tb;

	reg clk, rst;
	reg [3:0] data_in;
	reg [1:0] shift_amt;
	wire [3:0] data_out;

	arithmetic_right_shifter DUT(.clk(clk),.rst(rst),.data_in(data_in),.shift_amt(shift_amt),.data_out(data_out));

	always #5 clk = ~clk;

	initial
	begin

		$monitor("Time = %0t | data_in = %b | shift_amt = %d | data_out = %b",$time,data_in,shift_amt,data_out);
		clk = 0;rst = 1;data_in = 4'b0000;shift_amt = 2'b00;
		#10 rst = 0;
		#10 data_in = 4'b1000; // -8 in signed
        shift_amt = 2'b00;
		#10 shift_amt = 2'b01;
		#10 shift_amt = 2'b10;
		#10 data_in = 4'b1101;
        shift_amt = 2'b01;
		#10 rst = 1;
		#10 rst = 0;
		#10 data_in = 4'b0011; // 3
        shift_amt = 2'b01;
		#20 $finish;
    
  end

endmodule

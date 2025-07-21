module barrel_shifter_tb;

	reg clk;
	reg [3:0] data;
	reg [1:0] shift;
	reg dir;
	wire [3:0] result;

	barrel_shifter DUT(.clk(clk),.data(data),.shift(shift),.dir(dir),.result(result));

	always #5 clk = ~clk; 

	task apply_test;
		input [3:0] data_in;
		input [1:0] shift_in;
		input dir_in;
		begin
			@(posedge clk);
			data = data_in;
			shift = shift_in;
			dir = dir_in;
			@(posedge clk); 
			#5; 
			$display("Time: %0t | Data: %b | Shift: %b | Dir: %b | Result: %b", $time, data_in, shift_in, dir_in, result);
		end
	endtask

	initial
	begin
	
		clk = 0;data = 0; shift = 0; dir = 0;

		// Left shift tests
		apply_test(4'b1101, 2'b00, 1'b0);
		apply_test(4'b1101, 2'b01, 1'b0);
		apply_test(4'b1101, 2'b10, 1'b0);
		apply_test(4'b1101, 2'b11, 1'b0);

		// Right shift tests
		apply_test(4'b1101, 2'b00, 1'b1);
		apply_test(4'b1101, 2'b01, 1'b1);
		apply_test(4'b1101, 2'b10, 1'b1);
		apply_test(4'b1101, 2'b11, 1'b1);

		$stop;
	end

endmodule

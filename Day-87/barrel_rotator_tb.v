module barrel_rotator_tb;

	reg [3:0] data_in;
	reg [1:0] rotate_amt;
	reg dir;
	wire [3:0] data_out;
	
	barrel_rotator DUT(.data_in(data_in),.data_out(data_out),.dir(dir),.rotate_amt(rotate_amt));
	
	initial
	begin
    
		$monitor("Time = %0t | Data = %b | Rotate = %d | Data_Out = %b",$time,data_in,rotate_amt,data_out);

		// Test Left Rotation
		dir = 0;
		data_in = 4'b1101;

		rotate_amt = 2'b00; #10;
		rotate_amt = 2'b01; #10;
		rotate_amt = 2'b10; #10;
		rotate_amt = 2'b11; #10;

		// Test Right Rotation
		dir = 1;
		data_in = 4'b1101;

		rotate_amt = 2'b00; #10;
		rotate_amt = 2'b01; #10;
		rotate_amt = 2'b10; #10;
		rotate_amt = 2'b11; #10;

		$finish;
		
	end

endmodule

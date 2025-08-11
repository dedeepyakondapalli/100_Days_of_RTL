module barrel_rotator(data_in,data_out,rotate_amt,dir);

    input [3:0] data_in;
    input [1:0] rotate_amt;
    input dir ;  // 0 for left, 1 for right
    output reg [3:0] data_out;

	always @(*) 
	begin
		case (dir)
			1'b0: // Left rotate
				data_out = (data_in << rotate_amt) | (data_in >> (4 - rotate_amt));
			1'b1: // Right rotate
				data_out = (data_in >> rotate_amt) | (data_in << (4 - rotate_amt));
		endcase
	end

endmodule

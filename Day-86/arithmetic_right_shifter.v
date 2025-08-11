module arithmetic_right_shifter (clk,rst,data_in,shift_amt,data_out);

    input clk,rst;
    input [3:0] data_in;
    input [1:0] shift_amt;
    output reg [3:0] data_out;

	always @(posedge clk or posedge rst)
	begin
	
		if (rst)
			data_out <= 4'b0000;
		else
			data_out <= $signed(data_in) >>> shift_amt; 
			
	end

endmodule

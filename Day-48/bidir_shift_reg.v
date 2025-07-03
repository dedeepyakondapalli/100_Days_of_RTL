module bidir_shift_reg(rst,clk,load,shift,data_in,data_out);

	input clk,rst;
	input load;
	input shift;
	input [7:0] data_in;
	output reg [7:0] data_out;
	
	always@(posedge clk)
	begin
	
	   if(rst)
	      data_out <= 8'b0;
		else if (load)
			data_out <= data_in;
		else
			begin
			   case(shift)
			   1'b1 : data_out <= {data_out[0],data_out[7:1]};  //right shift
			   1'b0 : data_out <= {data_out[6:0],data_out [7]}; //left shift
			   endcase
			end
	end

endmodule	

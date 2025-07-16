module mealy_overlap_1010(input clk,rst,in,output reg out);

	reg [1:0] present,next;
	parameter s0 = 2'b00,s1 = 2'b01,s2 = 2'b10, s3 = 2'b11;
	always @(posedge clk)
	begin
		if(rst)
		present <= s0;
		else
		present <= next;
	end

	always @(*)
	begin
		case(present)
		s0: if(in)
			begin
			next <= s1;
			out <= 1'b0;
			end
			else 
			begin
			next <= s0;
			out = 1'b0;
			end
		
		s1 : if(in)
			 begin
			 next <= s1;
			 out <= 1'b0;
			 end
			 else
			 begin
			 next <= s2;
			 out <= 1'b0;
			 end
			 
		s2 : if(in)
			 begin
			 next <= s3;
			 out <= 1'b0;
			 end
			 else
			 begin
			 next <= s0;
			 out <= 1'b0;
			 end
			 
		s3 : if(in)
			 begin
			 next <= s1;
			 out <= 1'b0;
			 end
			 else
			 begin
			 next <= s2;
			 out <= 1'b1;
			 end
			 
		default : next <= s0;
		endcase
	end
endmodule	

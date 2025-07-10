module moore_overlap_1010(clk,rst,in,out);

	input clk,rst;
	input in;
	output out;
	
	reg [2:0] present,next;
	
	parameter s0 = 3'b000,s1 = 3'b001,s2 = 3'b010, s3 = 3'b011, s4 = 3'b100;
	
	//present state logic
	always @(posedge clk)
	begin
	
		if(rst)
		present <= s0;
		else
		present <= next;
		
	end

	//next state logic
	always @(*)
	begin
	
		case(present)
		
		s0: if(in)
			next <= s1;
			else 
			next <= s0;
		
		s1 : if(in)
			 next <= s1;
			 else
			 next <= s2;
			 
		s2 : if(in)
			 next <= s3;
			 else 
			 next <= s0;
			 
		s3 : if(in)
			 next <= s1;
			 else
			 next <= s4;
			 
		s4 : if(in)
			 next <= s3;
			 else
			 next <= s0;
			 
		default : next <= s0;

		endcase
		
	end

	assign out = (present == s4) ? 1'b1 : 1'b0;
	
endmodule	

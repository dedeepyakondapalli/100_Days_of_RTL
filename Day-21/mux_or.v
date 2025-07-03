module mux_or(a,b,out);

    input a,b;
	output reg out;
	
	always@(*)
	begin
	
	   case(a)
	   1'b0 : out = b;
	   1'b1 : out = 1'b1;
	   endcase
	   
	end

endmodule	

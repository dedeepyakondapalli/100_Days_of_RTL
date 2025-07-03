module mux_nor(a,b,out);

    input a,b;
	output reg out;
	
	always@(*)
	begin
	
	   case(a)
	   1'b0 : out = ~b;
	   1'b1 : out = 1'b0;
	   endcase
	   
	end

endmodule	

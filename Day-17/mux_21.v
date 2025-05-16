module mux_21(sel,a,b,y);

    input sel;
	input a,b;
	output reg y;
	
	always @(*)
	begin
	
	   case(sel)
	   1'b0 : y = a;
	   1'b1 : y = b;
	   default : y = 0;
	   endcase
	
    end

endmodule	

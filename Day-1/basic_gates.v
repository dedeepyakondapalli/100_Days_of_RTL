module basic_gates(a,b,out_and,out_or,out_not);

    input a,b;
	output  reg out_and,out_or,out_not;
	
	always @(*) 
	  begin
	  
	    out_and = a & b;
		out_or = a | b;
		out_not = ~a;
		
	  end

endmodule	  

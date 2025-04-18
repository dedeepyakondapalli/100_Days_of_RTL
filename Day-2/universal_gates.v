module universal_gates(a,b,out_nand,out_nor,out_xor,out_xnor);

    input a,b;
	output reg out_nand,out_nor,out_xor,out_xnor;
	
	always @(*)
	   begin
	   
	        out_nand = ~(a & b);
			out_nor = ~(a | b);
			out_xor = a ^ b;
			out_xnor = ~(a ^ b);
			
		end
		
endmodule
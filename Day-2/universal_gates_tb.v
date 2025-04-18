module universal_gates_tb();

     reg a,b;
	 wire out_nand,out_nor,out_xor,out_xnor;
	 
	 universal_gates DUT (.a(a),.b(b),.out_nand(out_nand),.out_nor(out_nor),.out_xor(out_xor),.out_xnor(out_xnor));
	 
	 initial
	   begin
	   
	    a=0;b=0;
		$display("a=%b,b=%b,out_nand=%b,out_nor=%b,out_xor=%b,out_xnor=%b",a,b,out_nand,out_nor,out_xor,out_xnor);
		#5;
		
		a=0;b=1;
		$display("a=%b,b=%b,out_nand=%b,out_nor=%b,out_xor=%b,out_xnor=%b",a,b,out_nand,out_nor,out_xor,out_xnor);
		#10;
		
		a=1;b=0;
		$display("a=%b,b=%b,out_nand=%b,out_nor=%b,out_xor=%b,out_xnor=%b",a,b,out_nand,out_nor,out_xor,out_xnor);
		#15;
		
		a=1;b=1;
		$display("a=%b,b=%b,out_nand=%b,out_nor=%b,out_xor=%b,out_xnor=%b",a,b,out_nand,out_nor,out_xor,out_xnor);
		#20;
		
		$display($time);
		$finish();
		
	end

endmodule	
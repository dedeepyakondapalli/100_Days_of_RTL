module expr_tb();

    reg a,b,c,d;
	wire z;
	
	expr DUT(.a(a),.b(b),.c(c),.d(d),.z(z));
	
	initial
	begin
	
	     #5;
		 a=1;b=0;c=1;d=0;
		 $display("a=%b,b=%b,c=%b,d=%b,z=%b",a,b,c,d,z);
		 
		 #5;
		 a=1;b=0;c=1;d=1;
		 $display("a=%b,b=%b,c=%b,d=%b,z=%b",a,b,c,d,z);
		 
		 #10;
		 a=1;b=1;c=0;d=0;
		 $display("a=%b,b=%b,c=%b,d=%b,z=%b",a,b,c,d,z);
		 
		 #10;
		 a=1;b=1;c=0;d=1;
		 $display("a=%b,b=%b,c=%b,d=%b,z=%b",a,b,c,d,z);
		 
		 #15;
		 a=1;b=1;c=1;d=0;
		 $display("a=%b,b=%b,c=%b,d=%b,z=%b",a,b,c,d,z);
		 
		 #15;
		 a=1;b=1;c=1;d=1;
		 $display("a=%b,b=%b,c=%b,d=%b,z=%b",a,b,c,d,z);
		 
		 $display($time);
		 $finish;
		 
	end

endmodule	
module cnc_ff_tb;

	reg c;
	reg n;
	reg clk,rst;
	wire q,qb;

	cnc_ff DUT (.c(c),.n(n),.clk(clk),.q(q),.qb(qb),.rst(rst));
	
	always #5 clk=~clk;

	initial
	begin
	
		c = 0;
		n = 0;
		clk = 0;
		#10 c=0;n=1;
		#10 c=1;n=0;
		#10 c=1;n=1;
		
	end

	initial
	begin
	
		$monitor("C=%b | N=%b | Q=%b | Qbar=%b",c,n,q,qb);
		#100 $finish;
		
	end
      
endmodule

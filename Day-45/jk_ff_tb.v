module jk_ff_tb;

   reg clk,rst;
   reg j,k;
   wire q;
   wire qb;
   
   jk_ff DUT (.clk(clk),.rst(rst),.j(j),.k(k),.q(q),.qb(qb));
   
   initial clk = 0;
   always #5 clk = ~clk;
   
   initial
   begin
   
      $monitor("Time = %0t | j = %b | k = %b | q = %b | qb = %b",$time,j,k,q,qb);
	  rst = 0; j = 0; k = 0; 
	  #10;
	  rst = 1;
	  #10;
	  rst = 0;
	  j = 1'b0; k = 1'b0;
	  #10;
	  j = 1'b0; k = 1'b1;
	  #10;
	  j = 1'b1; k = 1'b0;
	  #10;
	  j = 1'b1; k = 1'b1;
	  #10;
	  j = 1'b1; k = 1'b1;
	  #10;
	  j = 1'b0; k = 1'b1;
	  #10;
	  j = 1'b1; k = 1'b0;
	  #20;
	  $finish;
	end

endmodule	

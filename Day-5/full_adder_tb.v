module full_adder_tb();
   reg a,b,c;
   wire sum,carry;
     full_adder DUT(a,b,c,sum,carry);
    initial
    begin
      a=0;b=0;c=0;
	  $display("Sum is %b,carry is %b",sum,carry);
	  
	  #5;
	  a=0;b=0;c=1;
	  $display("Sum is %b,carry is %b",sum,carry);
	
	  #5;
	  a=0;b=1;c=0;
	  $display("Sum is %b,carry is %b",sum,carry);
	
	  #5;
	  a=0;b=1;c=1;
	  $display("Sum is %b,carry is %b",sum,carry);
	
	  #5;
	  a=1;b=0;c=0;
	  $display("Sum is %b,carry is %b",sum,carry);
	
	  #5;
	  a=1;b=0;c=1;
	  $display("Sum is %b,carry is %b",sum,carry);
	
	  #5;
	  a=1;b=1;c=0;
	  $display("Sum is %b,carry is %b",sum,carry);
	
	  #5;
	  a=1;b=1;c=1;
	  $display("Sum is %b,carry is %b",sum,carry);
	  $display($time);
	  #10;
	  $finish();	
	end
endmodule	
	

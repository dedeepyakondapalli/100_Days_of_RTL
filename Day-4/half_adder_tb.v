module half_adder_tb();

    reg a,b;
	wire sum,carry;
	
	half_adder DUT (a,b,sum,carry);
	
	initial 
	   begin
	   
	       #5;
		   a=0;b=0;
		   $display($time,"Sum is %b , Carry is %b",sum,carry);
		   
		   #10;
		   a=0;b=1;
		   $display($time,"Sum is %b, Carry is %b",sum,carry);
		   
		   #15;
		   a=1;b=0;
		   $display($time,"Sum is %b, Carry is %b",sum,carry);
		   
		   #20;
		   a=1;b=1;
		   $display($time,"Sum is %b , Carry is %b",sum,carry);
		   
		   #50;
		   $finish();
		end

endmodule		

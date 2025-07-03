module logical_op();

  reg [3:0] a,b,c;
  reg p,q,r,s,t,u,v,w,x;
  
  task inputs(input [3:0] ain,bin,cin);
  begin
  
        a = ain;
		b = bin;
		c = cin;
        p = a && b;
		q = a && c;
		r = b && 0;
		s = a || b;
		t = a || c;
		u = b || c;
		v = !a;
		w = !c;
		x = !b;
		#5;
		$display ("p=%b,q=%b,r=%b,s=%b,t=%b,u=%b,v=%b,w=%b,x=%b",p,q,r,s,t,u,v,w,x);
		
	end
  endtask
  
  initial
  begin
  
    inputs(4'b0000,4'b0000,4'b0000);
    #5;
    inputs(4'bxxxx,4'b1111,4'b0000);
    #5;
    inputs(4'b0011,4'b0100,4'b0101);
    #5;
    inputs(4'b1001,4'b0001,4'b0110);
    #5;
	inputs(4'b1111,4'b1111,4'b1111);
	#10;
	$finish;
end
endmodule

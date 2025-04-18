module expr(a,b,c,d,z);

   input a,b,c,d;
   output z;
   
   wire w1,w2,w3,w4;
   
	    assign w1 = a & b & ~c;
		 assign w2 = ~a & c & d;
		 assign w3 = b & ~c & d;
		 assign w4 = a & ~b & ~d;
		 
		 assign z = w1 | w2 | w3 | w4;

endmodule	
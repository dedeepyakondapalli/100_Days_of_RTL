module full_adder(a,b,c,sum,carry);

   input a,b,c;
   output sum,carry;
   
   wire w1,w2,w3;
   
   half_adder h1(a,b,w1,w2);
   half_adder h2(w1,c,sum,w3);
   or o1 (carry,w3,w2);
   
endmodule   
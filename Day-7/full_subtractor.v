module full_subtractor(a,b,c,diff,borrow);

   input a,b,c;
   output diff,borrow;
   
   wire w1,w2,w3,w4,w5;
   
   xor x1(w1,a,b);
   xor x2(diff,w1,c);
   
   not n1(w2,a);
   not n2(w3,w1);
   
   and a1(w4,w2,b);
   and a2(w5,w3,c);
   
   or o1(borrow,w4,w5);
   
endmodule   

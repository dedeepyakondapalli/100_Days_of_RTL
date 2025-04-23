module carryskipadder(a,b,cin,sum,cout);

    input [3:0]a,b;
	input cin;
	output [3:0] sum;
	output cout;
	
    wire [3:0] p;
    wire w1,w2;
    wire [3:0] c;

       full_adder m1(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.carry(c[0]));
       full_adder m2(.a(a[1]),.b(b[1]),.c(c[0]),.sum(sum[1]),.carry(c[1]));    
       full_adder m3(.a(a[2]),.b(b[2]),.c(c[1]),.sum(sum[2]),.carry(c[2]));
       full_adder m4(.a(a[3]),.b(b[3]),.c(c[2]),.sum(sum[3]),.carry(c[3]));

       assign p[0] = a[0]^b[0];
       assign p[1] = a[1]^b[1];
       assign p[2] = a[2]^b[2];
       assign p[3] = a[3]^b[3];

       assign w1 = p[0]&p[1]&p[2]&p[3];

       mux m5(.a(cin),.b(c[3]),.sel(w1),.y(cout));
	   
endmodule

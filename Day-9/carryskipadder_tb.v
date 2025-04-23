module carryskipadder_tb();

    reg [3:0]a,b;
    reg cin;
    wire cout;
    wire[3:0]sum;

    carryskipadder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
	
    initial
	  begin 
	  
           a=4'b0000;b=4'b0000;cin=0;
           #10;
           $display("a=%d,b=%d,cin=%d,sum=%d,cout=%b",a,b,cin,sum,cout);
		   
           a=4'b0001;b=4'b0010;cin=1;
           #10;
           $display("a=%d,b=%d,cin=%d,sum=%d,cout=%b",a,b,cin,sum,cout);
		   
           a=4'b0011;b=4'b1000;cin=0;
           #10;
           $display("a=%d,b=%d,cin=%d,sum=%d,cout=%b",a,b,cin,sum,cout);
		   
           a=4'b1010;b=4'b0101;cin=1;
           #10;
           $display("a=%d,b=%d,cin=%d,sum=%d,cout=%b",a,b,cin,sum,cout);
		   
           a=4'b0111;b=4'b0100;cin=0;
           #10;
           $display("a=%d,b=%d,cin=%d,sum=%d,cout=%b",a,b,cin,sum,cout);
		   
           a=4'b0110;b=4'b0110;cin=1;
           #10;
           $display("a=%d,b=%d,cin=%d,sum=%d,cout=%b",a,b,cin,sum,cout);
		   
           a=4'b1010;b=4'b1111;cin=0;
           #10;
           $display("a=%d,b=%d,cin=%d,sum=%d,cout=%b",a,b,cin,sum,cout);
		   
           #10;
           $finish();
       end
	   
endmodule

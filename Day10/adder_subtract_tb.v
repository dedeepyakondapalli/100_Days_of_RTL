module adder_subtract_tb();

   reg [3:0] a,bin;
   reg ctrl;
   wire [3:0] sum;
   wire carry;
   
   adder_subtract DUT(a,bin,ctrl,sum,carry);
   
   initial
       begin
	   
	       a=4'b0000;bin=4'b0000;ctrl=1'b0;
		   $display("Time = %0t,a=%b,b=%b,ctrl=%b,sum=%b,carry=%b,ctrl=%b",$time,a,bin,ctrl,sum,carry,ctrl);
		   
		   #10;
		   a=4'b1111;bin=4'b1111;ctrl=1'b1;
		   $display("Time = %0t,a=%b,b=%b,ctrl=%b,sum=%b,carry=%b,ctrl=%b",$time,a,bin,ctrl,sum,carry,ctrl);
		   
		   #10;
		   a=4'b1100;bin=4'b0011;ctrl=1'b0;
		   $display("Time = %0t,a=%b,b=%b,ctrl=%b,sum=%b,carry=%b,ctrl=%b",$time,a,bin,ctrl,sum,carry,ctrl);
		   
		   #10;
		   a=4'b1011;bin=4'b0101;ctrl=1'b1;
		   $display("Time = %0t,a=%b,b=%b,ctrl=%b,sum=%b,carry=%b,ctrl=%b",$time,a,bin,ctrl,sum,carry,ctrl);
		   
		   #10;
		   a=4'b0111;bin=4'b0111;ctrl=1'b0;
		   $display("Time = %0t,a=%b,b=%b,ctrl=%b,sum=%b,carry=%b,ctrl=%b",$time,a,bin,ctrl,sum,carry,ctrl);
		   
		   #10;
		   a=4'b1000;bin=4'b0001;ctrl=1'b1;
		   $display("Time = %0t,a=%b,b=%b,ctrl=%b,sum=%b,carry=%b,ctrl=%b",$time,a,bin,ctrl,sum,carry,ctrl);
		   
		   #10;
		   $finish;
	   end
		  
endmodule 

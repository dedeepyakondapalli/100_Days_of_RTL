module binarytogray_tb;

    reg [3:0] b;
	wire [3:0] g;
	
	binarytogray DUT(b,g);
	
	integer i;
	
	initial
	begin
	
	   $monitor("Input b = %b, Output g = %b",b,g);
	   
	   for(i=0;i<16;i=i+1)
	   begin
	   
	       b = i[3:0];
		   #5;
		   
		end

    end

endmodule	

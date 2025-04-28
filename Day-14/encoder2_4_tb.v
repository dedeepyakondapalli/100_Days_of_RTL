module encoder2_4_tb();

    reg [3:0] d;
	reg en;
	wire [1:0] y;
	
	encoder2_4 DUT(d,y,en);
	
	initial
	begin
	
	   en = 0;
	   #5;
	   en = 1;
	   #5; d[3]=0;d[2]=0;d[1]=0;d[0]=1;
	   $display("Time = %0t | d = %b | y = %b",$time,d,y);
	   #5; d[3]=0;d[2]=0;d[1]=1;d[0]=0;
	   $display("Time = %0t | d = %b | y = %b",$time,d,y);
	   #5; d[3]=0;d[2]=1;d[1]=0;d[0]=0;
	   $display("Time = %0t | d = %b | y = %b",$time,d,y);
	   #5; d[3]=1;d[2]=0;d[1]=0;d[0]=0;
	   $display("Time = %0t | d = %b | y = %b",$time,d,y);
	   
	   #10 $finish;
	end

endmodule	

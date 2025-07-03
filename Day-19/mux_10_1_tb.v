module mux_10_1_tb();

    reg I0,I1,I2,I3,I4,I5,I6,I7,I8,I9;
	reg S0,S1,S2,S3;
	wire out;
	
	mux_10_1 DUT(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,S0,S1,S2,S3,out);
	
	integer i;
	
	initial 
	begin
	
	   {I9,I8,I7,I6,I5,I4,I3,I2,I1,I0} = 10'b01_0101_0101;
	   
	   for(i=0;i<10;i=i+1)
	   begin
	     {S0,S1,S2,S3} = i;
		 #5;
		end
    
    end

endmodule	

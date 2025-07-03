module mux_41_tb();

    reg I0,I1,I2,I3;
	reg S0,S1;
	wire out;
	
	integer i;
	
	mux_41 DUT (I0,I1,I2,I3,S0,S1,out);
	
	initial
	begin
	
	   S0 = 0;
	   S1 = 0;
	   I0 = $random;
	   I1 = $random;
	   I2 = $random;
	   I3 = $random;
	   
	   for(i=0;i<4;i=i+1)
	   begin
	      {S0,S1} = i;
		  $display("Time = %0t | I0 = %b | I1 = %b | I2 = %b | I3 = %b | S0 = %b | S1 = %b | out = %b",$time,I0,I1,I2,I3,S0,S1,out);
		  #5;
		end

    end
 
endmodule 

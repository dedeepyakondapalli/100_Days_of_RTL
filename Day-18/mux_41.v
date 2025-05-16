module mux_41(I0,I1,I2,I3,S0,S1,out);

    input I0,I1,I2,I3;
	input S0;
	input S1;
	output  reg out;
	
	always @(*)
	begin
	
	    case({S1,S0})
		2'b00 : out = I0;
		2'b01 : out = I1;
		2'b10 : out = I2;
		2'b11 : out = I3;
		default : out = 1'b0;
		endcase
	end	

endmodule	

module mux_10_1 (I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,S0,S1,S2,S3,out);

    input I0,I1,I2,I3,I4,I5,I6,I7,I8,I9;
	input S0,S1,S2,S3;
	output out;
	
	wire w1,w2,w3;
	
	mux_41 A(.I0(I0),.I1(I1),.I2(I2),.I3(I3),.S0(S0),.S1(S1),.out(w1));
	mux_41 B(.I0(I4),.I1(I5),.I2(I6),.I3(I7),.S0(S0),.S1(S1),.out(w2));
	mux_41 C(.I0(I8),.I1(I9),.I2(1'b0),.I3(1'b0),.S0(S0),.S1(S1),.out(w3));
	mux_41 D(.I0(w1),.I1(w2),.I2(w3),.I3(1'b0),.S0(S2),.S1(S3),.out(out));
	
endmodule	

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

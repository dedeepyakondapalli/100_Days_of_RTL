module mux_81(a,s,y);

    input [7:0] a;
	input [2:0] s;
	output y;
	
	wire [5:0] w;
	
	mux_21 M0(.sel(s[0]),.a(a[0]),.b(a[1]),.y(w[0]));
	mux_21 M1(.sel(s[0]),.a(a[2]),.b(a[3]),.y(w[1]));
	mux_21 M2(.sel(s[0]),.a(a[4]),.b(a[5]),.y(w[2]));
	mux_21 M3(.sel(s[0]),.a(a[6]),.b(a[7]),.y(w[3]));
	
	mux_21 M4(.sel(s[1]),.a(w[0]),.b(w[1]),.y(w[4]));
	mux_21 M5(.sel(s[1]),.a(w[2]),.b(w[3]),.y(w[5]));
	
	mux_21 M6(.sel(s[2]),.a(w[4]),.b(w[5]),.y(y));
	
endmodule	

module mux_21(sel,a,b,y);

    input sel;
	input a,b;
	output reg y;
	
	always @(*)
	begin
	
	   case(sel)
	   1'b0 : y = a;
	   1'b1 : y = b;
	   default : y = 0;
	   endcase
	
    end

endmodule	

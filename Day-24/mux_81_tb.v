module mux_81_tb;

    reg [7:0] a;
	reg [2:0] s;
	wire y;
	
	mux_81 DUT(a,s,y);
	
	initial
	begin
	
	   $monitor("The value of y is %b when a = %d and s = %d",y,a,s);
	   #10;
	   
	   a=8'b0000_0001;s=3'b000;#10;
	   a=8'b0000_0010;s=3'b001;#10;
	   a=8'b0000_0100;s=3'b010;#10;
	   a=8'b0000_1000;s=3'b011;#10;
	   a=8'b0001_0000;s=3'b100;#10;
	   a=8'b0010_0000;s=3'b101;#10;
	   a=8'b0100_0000;s=3'b110;#10;
	   a=8'b1000_0000;s=3'b111;#10;
	   
	   $finish;
	   
	end

endmodule	

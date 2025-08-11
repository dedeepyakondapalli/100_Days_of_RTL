module pal_tb;

	reg A,B,C;
	wire F1,F2;
	
	pal DUT(.A(A),.B(B),.C(C),.F1(F1),.F2(F2));
	
	initial
	begin
	
        {A, B, C} = 3'b000; #10;
        {A, B, C} = 3'b001; #10;
        {A, B, C} = 3'b010; #10;
        {A, B, C} = 3'b011; #10;
        {A, B, C} = 3'b100; #10;
        {A, B, C} = 3'b101; #10;
        {A, B, C} = 3'b110; #10;
        {A, B, C} = 3'b111; #10;
		
		$finish;
		
    end
	
endmodule

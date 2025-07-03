module graytobinary_tb;

    reg [3:0] g;
	wire [3:0] b;
	
	graytobinary DUT (g,b);
	
	integer i;
	
	initial
	begin
	
	    $monitor("Input g = %b, Output b = %b",g,b);
		
		for(i=0;i<16;i=i+1)
		begin
		
		   g = i[3:0];
		   #5;
		   
		end
    end

endmodule	

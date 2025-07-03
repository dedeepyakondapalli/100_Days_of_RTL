module register_tb;

    reg clk,rst,en;
	reg [7:0] a;
	wire [7:0] q;
	
	register DUT(clk,rst,en,a,q);
	
	always #5 clk = ~clk;
	
	initial
	begin
	
	   $monitor("RESET = %b | EN = %b | INPUT = %b | OUTPUT = %b",rst,en,a,q);
	   clk = 0;
	   rst = 0;
	   en = 0;
	   a = 8'b0000_0110;
	   #5 rst = 1;
	   #10 rst = 0;
	   a = 8'b0101_0101;
	   #10;
	   en = 1;
	   #10;
	   a = 8'b1111_1111;
	   #10;
	   en = 0;
	   a = 8'b1000_0000;
	   #10;
	   en = 1;
	   #10;
	   rst = 1;
	   #10 rst = 0;
	   #20 $finish;
	end
endmodule	

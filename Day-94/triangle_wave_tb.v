module triangle_wave_tb;

    reg clk;
    reg rst;
    reg [7:0] max;
    wire [7:0] wave;

    triangle_wave DUT (.clk(clk),.rst(rst),.max(max),.wave(wave));

	always #5 clk = ~clk;

    initial
	begin
	
        clk = 0;rst = 0;
		#10 rst = 1;
		#10 rst = 0;
		max = 8'd25;
		#500;
		$finish;
		
    end
endmodule

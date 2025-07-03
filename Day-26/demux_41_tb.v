module demux_41_tb;

    reg in;
	reg [1:0] sel;
	wire [3:0] y;
	
	demux_41 DUT(sel,in,y);
	
	initial begin
        in = 0;
        sel = 2'b00;

        $monitor("Time = %0d : sel = %b, in = %b, y = %b", $time, sel, in, y);

        #10 in = 1; sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;

        #10 in = 0; sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;

        #10 $finish;
    end

endmodule

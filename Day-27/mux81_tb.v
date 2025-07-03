module mux81_tb;

    reg [7:0] in;
    reg [2:0] sel;
    wire out;

    // Instantiate the DUT (Device Under Test)
    mux81 uut (.in(in),.sel(sel),.out(out));
	
	integer i;

    initial
	begin
	
        $monitor("time = %0t | sel = %b | in = %b | out = %b", $time, sel, in, out);

        in = 8'b10101010;  

        for (i = 0; i < 8; i = i + 1)
		begin
            sel = i;
            #10;  
        end

        $finish;
    end

endmodule

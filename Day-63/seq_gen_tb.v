module seq_gen_tb;

	reg clk,rst;
	wire [3:0] out;
	
	seq_gen DUT(clk,rst,out);
	
	always #5 clk = ~clk;
	
	task reset();
	begin
		#10 rst = 1;
		#10 rst = 0;
		#10 rst = 1;
	end
    endtask

    task wait_and_display(input integer cycles);
        integer i;
        begin
            for (i = 0; i < cycles; i = i + 1) begin
                @(posedge clk);
                $display("Time = %0t | out = %b", $time, out);
            end
        end
    endtask

    initial
	begin
	
		clk = 0;
        rst = 0;
        reset;
        wait_and_display(20);
        $finish;
    end

endmodule	

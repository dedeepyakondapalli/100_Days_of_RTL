module dual_ram_tb;

	reg clk,rst;
	reg we;
	reg [15:0] w_din;
	reg [4:0] w_addr;
	wire [15:0] w_dout;
	
	reg re;
	reg [15:0] r_din;
	reg [4:0] r_addr;
	wire [15:0] r_dout;
	
	dual_ram DUT(.clk(clk),.rst(rst),.we(we),.re(re),.w_din(w_din),.r_din(r_din),.w_addr(w_addr),.r_addr(r_addr),.w_dout(w_dout),.r_dout(r_dout));
	
	always #5 clk = ~clk;
	
	task reset;
	begin
	@(negedge clk) rst = 1;
	@(negedge clk) rst = 0;
	end
	endtask
	
	task write1(input [15:0] data,input [4:0] loc);
	begin
	@(negedge clk)
	we = 1;
	w_din = data;
	w_addr = loc;
	@(negedge clk)
	we= 0;
	$display("At Time = %0t Writing %h into %d for portA",$time,w_din,w_addr);
	end
	endtask
	
	task write2(input [15:0] data,input [4:0] loc);
	begin
	@(negedge clk)
	re = 1;
	r_din = data;
	r_addr = loc;
	@(negedge clk)
	re= 0;
	$display("At Time = %0t Writing %h into %d for portA",$time,r_din,r_addr);
	end
	endtask
	
	task read1(input [4:0] loc);
	begin
	@(negedge clk)
	we = 0;
	w_addr = loc;
	@(posedge clk)
	#5;
	$display("At Time = %0t From portA %h read from %d",$time,w_dout,w_addr);
	end
	endtask
	
	task read2(input [4:0] loc);
	begin
	@(negedge clk)
	re = 0;
	r_addr = loc;
	@(posedge clk)
	#5;
	$display("At Time = %0t From portA %h read from %d",$time,r_dout,r_addr);
	end
	endtask
	
	initial
	begin
	
		clk = 0;rst = 0; 
		we = 0;re = 0;
		w_din = 0;r_din = 0;
		w_addr = 0; r_addr = 0;
		
		reset;
		write1(16'hAAAA, 5'd5);
		write2(16'hBBBB, 5'd10);
		write1(16'hCCCC, 5'd15);
		write2(16'hDDDD, 5'd20);
		read1(5'd5);
		read2(5'd10);
		read1(5'd15);
		read2(5'd20);
		write1(16'h1234, 5'd25);
		write2(16'h5678, 5'd25);
		read1(5'd25);
		read2(5'd25);
		#10;
		$finish;
		
	end
endmodule	
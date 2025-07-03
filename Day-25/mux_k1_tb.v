module mux_k1_tb;

    reg [63:0] a;
	reg [6:0] sel;
	wire y;
	
	mux_k1 #(64) DUT(a,sel,y);
	
	initial
	begin
	
	   a=64'h0;
	   #10;
	   a=64'hF0F0_F0F0_F0F0_F0F0;
	   for(sel=0;sel<64;sel=sel+1)
	      begin
	      #10;
		  $display("sel=%d,y=%b",sel,y);
		  end
		$finish;
	end

endmodule	

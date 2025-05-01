module bcd_to7_display_tb();

    reg [3:0] bcd;
	wire [6:0] seg;
	
	bcd_to7_display DUT(bcd,seg);
	
	integer i;
	
	initial
	begin
	
	   for(i=0;i<10;i=i+1)
	   begin
	     
		   bcd = i;
		   $display("Time = %b | bcd = %d | seg = %b",$time,bcd,seg);
		   #5;
		end
	end

endmodule	

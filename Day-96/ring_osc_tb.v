module ring_osc_tb;

	wire out;
	
	ring_osc DUT(.out(out));
	
	initial
	begin
        
        $monitor("At Time = %0t , Out = %b",$time,out);
        #500;
		$finish;
		
    end
    
endmodule

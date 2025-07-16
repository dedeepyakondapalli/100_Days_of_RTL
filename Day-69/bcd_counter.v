module bcd_counter(clk,rst,tens,units);

	input clk,rst;
	output reg [3:0] tens;
	output reg [3:0] units;
	
	always @(posedge clk or negedge rst)
	begin
	
		if(!rst)
		begin
		   tens <= 4'd0;
		   units <= 4'd0;
		end
		else
		begin
		    if(units == 4'd9)
			begin
				units <= 4'd0;
				if(tens == 4'd5)
					tens <= 4'd0;
				else
					tens <= tens + 1;
			end
			else
				units <= units + 1;
        end
    
    end

endmodule	

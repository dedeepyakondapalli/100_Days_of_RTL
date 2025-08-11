module phasing(clk,rst,clk_out);

    input clk,rst;        
    output reg clk_out;

    reg [1:0] clk_div; 

    always @(posedge clk or posedge rst)
	  begin
	
        if(rst)
		    begin
            clk_div <= 2'b00;
            clk_out <= 0;
        end
		    else
		    begin
            clk_div <= clk_div + 1;
            if(clk_div == 2'b00)
			        begin
                clk_out <= ~clk_out;  // Flip the output clock every 2 cycles 
              end
        end
    end
	
endmodule	

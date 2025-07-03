module sr_ff(clk,rst,s,r,q,qb);

    input clk,rst;
    input s,r;
	output reg q;
	output reg qb;
	
	always @(posedge clk)
	begin
	
	    if(rst)
		   begin
		      q <=0;
			  qb <= 1;
			end
        else
            begin			
	           case({s,r})
		           2'b00 : {q,qb} <= {q,qb};
		           2'b01 : {q,qb} <= {1'b0,1'b1};		           
				   2'b10 : {q,qb} <= {1'b1,1'b0};
				   2'b11 : {q,qb} <= {1'bx,1'bx};
				endcase
            end

    end			
		
endmodule		

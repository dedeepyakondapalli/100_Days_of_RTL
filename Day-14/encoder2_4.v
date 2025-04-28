module encoder2_4(d,y,en);

    input [3:0] d;
	input en;
	output reg [1:0] y;
	
	always @(*)
	begin
	
	   if(en)
	   begin
	      
		  case(d)
		  
		  4'b0001: y <= 0;
		  4'b0010: y <= 1;
		  4'b0100: y <= 2;
		  4'b1000: y <= 3;
		  default y <= 0;
		  
		  endcase
		end
       else
          
           y <= 0;
    end

endmodule	

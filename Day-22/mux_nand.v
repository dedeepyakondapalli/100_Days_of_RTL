module mux_nand(a,b,out);

   input a,b;
   output reg out;
   
   always@(*)
   begin
   
      case(a)
	  1'b0 : out = 1'b1;
	  1'b1 : out = ~b;
	  endcase
	  
	end

endmodule	

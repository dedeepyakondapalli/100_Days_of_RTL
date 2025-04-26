module bcd_adder(a,b,cin,sum,carry);

    input [3:0] a,b;
	input cin;
	output  reg [7:0] sum;
	output reg carry;
	
	reg [7:0] t_sum;
	
	always @(*)
	   begin
	   
	       t_sum = a + b + cin;
		   
		   if(t_sum>9)
		      begin
			       t_sum = t_sum + 4'b0110;
				   carry = 1'b1;
				   sum = t_sum[7:0];
			  end
           else
               begin
                   carry = 1'b0;
               end
			   
			sum = t_sum;   
       end
	   
endmodule	

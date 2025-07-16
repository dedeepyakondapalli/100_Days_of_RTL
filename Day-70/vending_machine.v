module vending_machine(input clk,rst,input [1:0] coin,output reg p,ch);

	parameter s0=2'b00, s1=2'b01,s2=2'b10;

	reg [1:0] present,next;

	always @(posedge clk)
	begin
		if(rst)
			present<=s0;
		else
			present<=next;
	end
	
	always @(*)
	begin
		next<=s0;
			case(present)
				s0:	if(coin==2'b10)
						next<=s1;
					else if (coin==2'b11)
						next<=s2;
					else
						next<=s0;

				s1:	if(coin==2'b10)
						next<=s2;
					else if (coin==2'b11)
						next<=s0;
					else
						next<=s1;

				s2:	if(coin==2'b10)
						next<=s0;
					else if(coin==2'b11)
						next<=s0;
					else
						next<=s2;

				default :	next<=s0;
			endcase
	end
	
	always @(posedge clk)
	begin
		if(rst)
		begin
			p<=1'b0;
			ch<=1'b0;
		end
		else
		begin
			p<=1'b0;
			ch<=1'b0;
				case(present)
				s0: begin
					p<=1'b0;
					ch<=1'b0;
					end
				s1: begin
					p<=1'b1;
					ch<=1'b0;
					end
				s2: begin
					p<=1'b1;
					ch<=1'b1;
					end
				endcase
		end
	end
endmodule

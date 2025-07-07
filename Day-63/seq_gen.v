module seq_gen(clk,rst,out);

	input clk,rst;
	output [3:0] out;
	
	wire d3,d2,d1,d0;
	wire q3,q2,q1,q0;
	
	assign out = {q3,q2,q1,q0};
	
	assign d3 = ~q3 | (q3 & ~q1);
	assign d2 = ~q3 | (q3 & q1);
	assign d1 = q3 & ~q2;
	assign d0 = ~q0;
	
	d_ff D3 (.clk(clk),.rst(rst),.d(d3),.q(q3));
	d_ff D2 (.clk(clk),.rst(rst),.d(d2),.q(q2));
	d_ff D1 (.clk(clk),.rst(rst),.d(d1),.q(q1));
	d_ff D0 (.clk(clk),.rst(rst),.d(d0),.q(q0));
	
endmodule	

module d_ff(clk,rst,d,q);

    input clk,rst;
	input d;
	output reg q;
	
	always@(posedge clk or negedge rst)
	begin
	
	   if(~rst)
	      q <= 0;
	   else
          q <= d;
   
    end

endmodule	

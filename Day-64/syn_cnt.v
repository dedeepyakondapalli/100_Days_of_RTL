module syn_cnt(clk,mode,rst,out);

	input clk,rst;
	input mode;
	output [2:0] out;
	
	wire [13:1] w;
	
	wire no1;
	
	not n1(no1,mode);
	
	and a1(w[3],mode,w[1]);
	and a2(w[4],no1,w[2]);
	
	or o1(w[5],w[3],w[4]);
	
	and a3(w[8],w[3],w[6]);
	and a4(w[9],w[4],w[7]);
	
	or o2(w[10],w[8],w[9]);
	
	jk_ff ff0(.clk(clk),.rst(rst),.j(1'b1),.k(1'b1),.q(w[1]),.qb(w[2]));
	jk_ff ff1(.clk(clk),.rst(rst),.j(w[5]),.k(w[5]),.q(w[6]),.qb(w[7]));
	jk_ff ff2(.clk(clk),.rst(rst),.j(w[10]),.k(w[10]),.q(w[11]),.qb(w[12]));
	
	assign out = {w[11],w[6],w[1]};
	
endmodule	

module jk_ff(clk,rst,j,k,q,qb);

     input clk,rst;
	 input j,k;
	 output reg q;
	 output qb;
	 
	 always@(posedge clk)
	 begin
	 
	     if(rst)
		    q <= 1'b0;
		 else if( j == 1'b0 && k == 1'b0)
		    q <= q;
	     else if ( j == 1'b0 && k == 1'b1)
            q <= 0;
         else if ( j == 1'b1 && k == 1'b0)
            q <= 1;
         else
            q <= ~q;
     end

     assign qb = ~q;

endmodule	 

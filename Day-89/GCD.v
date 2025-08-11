module GCD(clk,a,b,start,gcd,done);

	input clk;
    input [7:0] a;        
    input [7:0] b;                 
    input start;          
    output reg [7:0] gcd;  
    output reg done;        

    reg [7:0] x, y;
    reg calculating;

    always @(posedge clk)
	begin
	
        if(start)
		begin
            x <= a;
            y <= b;
            calculating <= 1;
            done <= 0;
        end 
		else if(calculating)
		begin
            if (x == y)
			begin
                gcd <= x;
                done <= 1;
                calculating <= 0;
            end
			else if (x > y)
			begin
                x <= x - y;
            end
			else
			begin
                y <= y - x;
            end
        end
    end
endmodule

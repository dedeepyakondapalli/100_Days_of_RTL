module fibonacci(clk,rst,current,next);

    input clk,rst;
    output reg [31:0] current;
    output reg [31:0] next;

    always @(posedge clk or posedge rst)
	begin
	
        if(rst)
		begin
            current <= 0;
            next <= 1;
        end
		else
		begin
            {current, next} <= {next, current + next};
        end
		
    end
endmodule

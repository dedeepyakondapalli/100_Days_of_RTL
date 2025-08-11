module pwm(clk,rst,cycle,out);

    input clk,rst;
    input [7:0] cycle;
    output reg out;
	
    reg [7:0] counter;

    always @(posedge clk or posedge rst)
	begin
	
        if(rst)
            counter <= 8'b0; 
		else
            counter <= counter + 1;
			
    end

    always @(counter or cycle)
	begin
	
        if(counter < cycle)
            out <= 1;
        else
            out <= 0;
			
    end
	
endmodule

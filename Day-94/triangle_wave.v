module triangle_wave(clk,rst,max,wave);

    input clk,rst;     
    input [7:0] max; 
    output reg [7:0] wave;

    reg [7:0] counter;  
    reg direction;      

    always @(posedge clk or posedge rst)
	begin
        if(rst)
		begin
            counter <= 0;
            direction <= 0;
            wave <= 0;
        end
		else
		begin
            if(direction == 0)
			begin
                if(counter < max)
				begin
                    counter <= counter + 1;
                end
				else
				begin
                    direction <= 1;
                    counter <= counter - 1;
                end
            end
			else
			begin
                if(counter > 0)
				begin
                    counter <= counter - 1;
                end
				else
				begin
                    direction <= 0;
                    counter <= counter + 1;
                end
            end

            wave <= counter; 
		end
    end

endmodule

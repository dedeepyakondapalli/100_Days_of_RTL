module elevator(clk,rst,req_floor,in_floor,dir,complete,out_floor);

	input clk,rst;
	input [1:0] req_floor;
	input [1:0] in_floor;
	
	output reg dir;
	output reg complete;
	output  [1:0] out_floor;
	
	reg [1:0] current_floor,next_floor;
	
	assign out_floor = current_floor;
	
	always @(*)
	begin
			dir <= 1'b0;
			complete <= 1'b0;
			next_floor <= current_floor;
			
			if (req_floor > current_floor)
			begin
				dir <= 1'b1;
				next_floor <= current_floor + 1;
			end
			else if (req_floor < current_floor)
			begin	
				dir <= 1'b0;
				next_floor <= current_floor - 1;
			end
			else if (req_floor == current_floor)
			begin
			dir <= 1'b0;
			complete <= 1'b1;
			end
	end
	
	always @(posedge clk or posedge rst)
	begin
        if (rst)
		begin
            current_floor <= in_floor;
        end
		else
		begin
            current_floor <= next_floor;
        end
    end

endmodule	

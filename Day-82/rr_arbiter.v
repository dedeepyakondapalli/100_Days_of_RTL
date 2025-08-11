module rr_arbiter(clk,rst,req,gnt);

	input clk,rst;
	input [3:0] req;
	output reg [3:0] gnt;
	
	parameter [2:0] reset = 3'b000, s0 = 3'b001,s1 = 3'b010,s2 = 3'b011,s3 = 3'b100;
	
	reg [2:0] present,next;
	
	always@(posedge clk or negedge rst)
	begin
		if(!rst)
			present <= reset;
		else
			present <= next;
	end
	
	always@(*)
	begin
		case(present)
		reset:  begin 
                    if(req[0])
						next = s0;
                    else if (req[1])
                        next = s1;
                    else if (req[2])
                        next = s2;
                    else if (req[3])
                        next = s3;
                    else 
                        next =reset;
                end 
        s0: 	begin   
                    if (req[1])
                        next = s1;
                    else if (req[2])
                        next = s2;
                    else if (req[3])
                        next = s3;
                    else if(req[0])
                        next =s0;
                    else 
                        next =reset;
                end 
        s1:     begin   
                    if (req[2])
                        next = s2;
                    else if (req[3])
                        next = s3;
                    else if(req[0])
                        next =s0;
                    else if (req[1])
                        next = s1;
                    else 
                        next =reset;
                end 
        s2:     begin   
                    if (req[3])
                        next = s3;
                    else if(req[0])
                        next =s0;
                    else if (req[1])
                        next = s1;
                    else if (req[2])
                        next = s2;
                    else 
                        next =reset;
                end 
        s3:     begin   
                    if(req[0])
                        next =s0;
                    else if (req[1])
                        next = s1;
                    else if (req[2])
                        next = s2;
                    else if (req[3])
                        next = s3;
                    else 
                        next =reset;
                end 
        default:next = reset;
       endcase         
         
	end         
          
    always @(*)
    begin
        case (present)
        s0: gnt=4'b0001;
        s1: gnt=4'b0010;
        s2: gnt=4'b0100;
        s3: gnt=4'b1000;
        default: gnt=4'b0000;
        endcase
    end
   
endmodule 

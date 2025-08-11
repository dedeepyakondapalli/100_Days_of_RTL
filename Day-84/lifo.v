module lifo #(parameter DATA_WIDTH = 8,parameter STACK_DEPTH = 16)(clk,reset,push,pop,data_in,data_out,full,empty);

    input clk,reset,push,pop;       
    input [DATA_WIDTH-1:0] data_in; 
    output reg [DATA_WIDTH-1:0] data_out; 
    output reg full,empty;    

    reg [DATA_WIDTH-1:0] stack_mem [0:STACK_DEPTH-1];
    reg [$clog2(STACK_DEPTH):0] sp; 

    initial
	begin
        full = 0;
        empty = 1;
        sp = 0;
    end    

    always @(posedge clk or posedge reset)
	begin  
        if(reset)
		begin         
            sp <= 0; 
            full <= 0; 
            empty <= 1;
        end
		else
		begin
            if (push && !full)
			begin             // Push operation
                stack_mem[sp] <= data_in;
                sp <= sp + 1;
                empty <= 0;
                if (sp == STACK_DEPTH - 1)
                    full <= 1;
            end
			else if(pop && !empty)
			begin   // Pop operation
                sp <= sp - 1;
                data_out <= stack_mem[sp - 1];
                full <= 0;
                if (sp == 1)
                    empty <= 1;
            end
        end
    end
	
endmodule

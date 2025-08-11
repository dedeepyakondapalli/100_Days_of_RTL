module clock_gating(clk,reset,enable,gated_clk);

    input clk,reset;       
    input enable;    
    output gated_clk;

    reg latch1, latch2;

    always @(posedge clk or posedge reset)
	begin
        if (reset) 
            latch1 <= 0;
        else 
            latch1 <= enable;
    end

    always @(negedge clk or posedge reset)
	begin
        if (reset) 
            latch2 <= 0;
        else 
            latch2 <= latch1;
    end

    assign gated_clk = clk & latch2;

endmodule

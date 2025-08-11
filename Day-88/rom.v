module rom (addr,data);

    input  [2:0] addr;
    output reg [7:0] data;

    always @(*)
	begin
	
        case (addr)
            3'd0: data = 8'hA1;
            3'd1: data = 8'hB2;
            3'd2: data = 8'hC3;
            3'd3: data = 8'hD4;
            3'd4: data = 8'hE5;
            3'd5: data = 8'hF6;
            3'd6: data = 8'h07;
            3'd7: data = 8'h18;
            default: data = 8'h00;
        endcase
		
    end

endmodule

module traffic_light_fsm (clk,reset,light1,light2);

    input clk, reset;
    output reg [1:0] light1, light2; // 2-bit output for each light

    reg [1:0] state, next_state;

    // State transition logic (synchronous)
    always @(posedge clk or posedge reset)
	begin
        if (reset) 
            state <= 2'b00; // Initial state
        else 
            state <= next_state;
    end

    // State machine logic (combinational)
    always @(*)
	begin
        case (state)
            2'b00: next_state = 2'b01; // Green light for light1, Red for light2
            2'b01: next_state = 2'b10; // Yellow light for light1, Red for light2
            2'b10: next_state = 2'b00; // Red light for light1, Green for light2
            default: next_state = 2'b00;
        endcase
    end

    // Light control logic (outputs based on state)
    always @(state)
	begin
        case (state)
            2'b00: begin
                light1 = 2'b01;  // Green light for light1
                light2 = 2'b10;  // Red light for light2
            end
            2'b01: begin
                light1 = 2'b10;  // Yellow light for light1
                light2 = 2'b10;  // Red light for light2
            end
            2'b10: begin
                light1 = 2'b00;  // Red light for light1
                light2 = 2'b01;  // Green light for light2
            end
            default: begin
                light1 = 2'b00;
                light2 = 2'b00;
            end
        endcase
    end
endmodule

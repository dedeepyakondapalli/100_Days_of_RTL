module sr_latch_tb;

    reg S;
    reg R;
    wire Q;
    wire Qn;

    sr_latch uut (.S(S),.R(R),.Q(Q),.Qn(Qn));

    initial begin

        $monitor("Time = %0t | S = %b, R = %b | Q = %b, Qn = %b", $time, S, R, Q, Qn);
        S = 0; R = 0; #10; // Hold
        S = 1; R = 0; #10; // Set
        S = 0; R = 0; #10; // Hold
        S = 0; R = 1; #10; // Reset
        S = 0; R = 0; #10; // Hold
        S = 1; R = 1; #10; // Invalid
        S = 0; R = 0; #10; // Back to Hold

        $finish;
    end

endmodule

module sr_latch (S,R,Q,Qn);
    input S;      // Set
    input R;      // Reset
    output reg Q;
    output Qn;     // Complement of Q


always @ (S or R) begin
    if (S && !R)
        Q <= 1;
    else if (!S && R)
        Q <= 0;
    else if (!S && !R)
        Q <= Q;    // Hold state
    else
        Q <= 1'bx; // Invalid condition (S=1, R=1)
end

assign Qn = ~Q;

endmodule

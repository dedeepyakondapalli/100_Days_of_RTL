module d_latch (D,En,Q,Qn);
    input D;        // Data input
    input En;       // Enable (Latch control)
    output reg Q;
    output Qn;       // Complement of Q


always @ (D or En) begin
    if (En)
        Q <= D;     // Transparent when enabled
    
end

assign Qn = ~Q;

endmodule

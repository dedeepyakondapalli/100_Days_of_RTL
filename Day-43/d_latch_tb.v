module d_latch_tb;

    reg D;
    reg En;
    wire Q;
    wire Qn;

    d_latch DUT (.D(D),.En(En),.Q(Q),.Qn(Qn));

    initial begin
  
        $monitor("Time = %0t | En = %b, D = %b | Q = %b, Qn = %b", 
                 $time, En, D, Q, Qn);

        D = 0; En = 0; #10;
        D = 1; En = 0; #10;  // Latch should hold

        En = 1; #10;         // Latch should become transparent, Q = D = 1
        D = 0; #10;          // Q follows D
        En = 0; #10;         // Latch should hold Q = 0

        D = 1; #10;          // D changes, but Q should not
        En = 1; #10;         // Now Q should update to 1

        $finish;
    end

endmodule

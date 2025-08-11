module pal(A,B,C,F1,F2);     // F1 = a&~b + ~a&b F2 = a&b + b&c

    input  wire A;
    input  wire B;
    input  wire C;
    output wire F1;
    output wire F2;

    wire p0 = A & ~B; // term 0
    wire p1 = ~A & B; // term 1
    wire p2 = A & B;  // term 2
    wire p3 = B & C;  // term 3

    assign F1 = p0 | p1;     
    assign F2 = p2 | p3;     

endmodule

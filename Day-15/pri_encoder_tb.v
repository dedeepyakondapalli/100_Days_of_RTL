module pri_encoder_tb();

    reg [7:0] in;

    wire [2:0] out;
    wire valid;

    pri_encoder DUT (.in(in),.out(out),.valid(valid));

    initial begin
        $display("Time\tInput\t\tOutput\tValid");
        $monitor("%0dns\t%b\t%03b\t%b", $time, in, out, valid);

        in = 8'b00000000; #10;
        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;

        in = 8'b11000000; #10;
        in = 8'b01100000; #10;
        in = 8'b00001111; #10;
        in = 8'b11111111; #10;

        $finish;
    end

endmodule

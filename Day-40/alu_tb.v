module alu_tb;
  reg [7:0] a_in;
  reg [7:0] b_in;
  reg [3:0] command_in;
  reg oe;
  wire [15:0] d_out;
  alu DUT (.a_in(a_in),.b_in(b_in),.command_in(command_in),.oe(oe),.d_out(d_out));
  task test_alu;
    input [3:0] cmd;
    input [7:0] a, b;
    input en;
    begin
      a_in = a;
      b_in = b;
      command_in = cmd;
      oe = en;
      #10;
      $display("CMD=%b A=%d B=%d OE=%b -> OUT=%h", cmd, a, b, en, d_out);
    end
  endtask
  initial begin
    $display("Starting ALU Testbench...");
    test_alu(4'b0000, 8'd10, 8'd5, 1);  // ADD
    test_alu(4'b0001, 8'd10, 8'd0, 1);  // INC
    test_alu(4'b0010, 8'd10, 8'd5, 1);  // SUB
    test_alu(4'b0011, 8'd10, 8'd0, 1);  // DEC
    test_alu(4'b0100, 8'd4, 8'd3, 1);   // MUL
    test_alu(4'b0101, 8'd8, 8'd2, 1);   // DIV
    test_alu(4'b0110, 8'd8, 8'd0, 1);   // SHL
    test_alu(4'b0111, 8'd8, 8'd0, 1);   // SHR
    test_alu(4'b1000, 8'hFF, 8'h0F, 1); // AND (should be 1 or 0 due to logical mistake)
    test_alu(4'b1001, 8'hF0, 8'h0F, 1); // OR (same logic note)
    test_alu(4'b1010, 8'hAA, 8'd0, 1);  // INV
    test_alu(4'b1011, 8'hF0, 8'h0F, 1); // NAND
    test_alu(4'b1100, 8'hF0, 8'h0F, 1); // NOR
    test_alu(4'b1101, 8'hFF, 8'h0F, 1); // XOR
    test_alu(4'b1110, 8'hF0, 8'h0F, 1); // XNOR
    test_alu(4'b1111, 8'hAB, 8'd0, 1);  // BUF
    test_alu(4'b0000, 8'd1, 8'd1, 0);   // Output disabled
    $display("ALU Testbench complete.");
    $finish;
  end

endmodule

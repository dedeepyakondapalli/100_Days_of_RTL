module ripple_ca_adder_tb();

  reg [5:0] a,b;
  reg cin;
  wire [5:0] sum;
  wire carry;

  integer i;

  ripple_ca_adder DUT(a,b,cin,sum,carry);

  initial begin
    $monitor("time = %0t | a = %b (%0d), b = %b (%0d), cin = %b | sum = %b (%0d), carry = %b",
             $time, a, a, b, b, cin, sum, sum, carry);

    a = 6'd0;   b = 6'd0;   cin = 1'b0; #5;
    a = 6'd63;  b = 6'd63;  cin = 1'b0; #5;  // Max valid input for 6-bit
    a = 6'd35;  b = 6'd25;  cin = 1'b1; #5;
    a = 6'd0;   b = 6'd15;  cin = 1'b1; #5;
    a = 6'd44;  b = 6'd5;   cin = 1'b0; #5;

    $finish;
  end

endmodule

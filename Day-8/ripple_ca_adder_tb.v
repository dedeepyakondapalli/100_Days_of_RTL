module ripple_ca_adder_tb();

  reg [7:0] a,b;
  reg cin;
  wire [7:0] sum;
  wire carry;

  int i;

  ripple_ca_adder DUT(a,b,cin,sum,carry);

  $monitor("Time = %0t, a = %b, b = %b, cin = %b, sum = %b, carry = %b",$time,a,b,cin,sum,carry);

  initial
    begin
      for(i=0;i<16;i=i+1)
        begin
          {a,b} = i[1:0];
          #5;
        end
      repeat(8)
        begin
          cin = 1'b0;
        end
      repeat(7)
        begin
          cin = 1'b1;
        end
    end
endmodule

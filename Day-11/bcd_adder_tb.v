module bcd_adder_tb();

    reg [3:0] a,b;
	reg cin;
	wire [7:0] sum;
	wire carry;
	
	bcd_adder DUT(a,b,cin,sum,carry);
	
	integer i;
	
	task display_values;
        input [3:0] a_in, b_in;
        input cin_in;
        begin
            $display("Time: %0t | a: %d | b: %d | cin: %b | sum: %b | carry: %b",$time, a_in, b_in, cin_in, sum, carry);
        end
    endtask

    initial
        begin
           a = 4'd6; b = 4'd14; cin = 0;
           #5;  
           display_values(a, b, cin);

           a = 4'd7; b = 4'd3; cin = 1;
           #5;
           display_values(a, b, cin);
		   
		   a = 4'd8; b = 4'd8; cin = 0;
		   #5;
		   display_values(a, b, cin);
		   
		   a = 4'd3; b = 4'd3; cin = 1;
		   #5;
		   display_values(a, b, cin);
		   
		   a = 4'd14; b = 4'd12; cin = 1;
		   #5;
		   display_values(a, b, cin);   
       end  
endmodule	   

module mux81(in,sel,out);

    input [7:0] in;     
    input [2:0] sel;    
    output wire out;     
	
    wire [7:0] dec_out; // Outputs of decoder (enable lines for buffers)

    decoder3_8 dec (.d(sel),.y(dec_out));

    tri_buff t0 (.en(dec_out[0]), .a(in[0]), .f(out));
    tri_buff t1 (.en(dec_out[1]), .a(in[1]), .f(out));
    tri_buff t2 (.en(dec_out[2]), .a(in[2]), .f(out));
    tri_buff t3 (.en(dec_out[3]), .a(in[3]), .f(out));
    tri_buff t4 (.en(dec_out[4]), .a(in[4]), .f(out));
    tri_buff t5 (.en(dec_out[5]), .a(in[5]), .f(out));
    tri_buff t6 (.en(dec_out[6]), .a(in[6]), .f(out));
    tri_buff t7 (.en(dec_out[7]), .a(in[7]), .f(out));

endmodule

module tri_buff(en,a,f);
input en,a;
output f;
assign f=en?a:1'bz;
endmodule

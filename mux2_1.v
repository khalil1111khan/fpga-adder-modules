// mux 2:1
module mux21(
    input a0,a1,s,
    output y
    );
wire sb,w1,w2;
assign sb = ~s;
assign w1 = a0 & sb;
assign w2 = a1 & s;
assign y = w1 | w2;
endmodule

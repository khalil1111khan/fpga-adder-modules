module carry_skip_4bit(a, b, cin, sum, cout);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire [3:0] p;
wire c0;
wire bp;   
rca rca1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .carry(c0));
generate_p p1(a,b,p,bp);
mux21 m0(c0,cin,bp,cout);
endmodule

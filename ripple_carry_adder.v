// rca
module rca(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output cout
);

wire [3:1] c;

FA FA0(a[0],b[0],cin,sum[0],c[1]);
FA FA1(a[1],b[1],c[1],sum[1],c[2]);
FA FA2(a[2],b[2],c[2],sum[2],c[3]);
FA FA3(a[3],b[3],c[3],sum[3],cout);

endmodule

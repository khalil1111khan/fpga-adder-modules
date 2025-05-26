// multiple operand adder
module moa4x4(
  input [3:0] a, b, c, d,
  output [3:0] sum,
  output carry_out
);
// multiple operand adder
  wire [3:0] s1, s2, s3;
  // Full adder
  FA fa1 (.a(a[0]),.b(b[0]),.cin(0),.sum(s1[0]),.carry(s1[1]));
  FA fa2 (.a(s1[0]),.b(c[0]),.cin(1'b0),.sum(s2[0]),.carry(s2[1]));
  FA fa3 (.a(s2[0]),.b(d[0]),.cin(1'b0),.sum(sum[0]),.carry(carry_out));
  FA fa4 (.a(s1[1]),.b(c[1]),.cin(1'b0),.sum(s3[0]),.carry(s3[1]));
  FA fa5 (.a(s3[0]),.b(d[1]),.cin(1'b0),.sum(sum[1]),.carry(s3[2]));
  FA fa6 (.a(s2[1]),.b(c[2]),.cin(1'b0),.sum(sum[2]),.carry(s3[3]));
  FA fa7 (.a(s3[2]),.b(d[2]),.cin(1'b0),.sum(sum[3]),.carry());
endmodule

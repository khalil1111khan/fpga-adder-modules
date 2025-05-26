FULL_ADDER
module FA(input a , b ,cin , output sum , carry );
wire s, c, c1;
HA ha0(a,b,s,c);
HA ha1(s, cin , sum , c1);
assign carry= c1 | c;

endmodule

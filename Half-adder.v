HALF ADDER
module HA(input a , b ,output sum ,carry );
    assign sum=a^b;
    assign carry=a&b;
    
endmodule

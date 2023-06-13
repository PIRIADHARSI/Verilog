module full_adder_data(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
assign sum=a ^ b ^ cin;
assign carry= a&b | b&cin | cin&a;
endmodule

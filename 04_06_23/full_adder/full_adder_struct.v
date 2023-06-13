module full_adder_struct(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire n1,n2,n3;
xor g1(n1,a,b);
xor g2(sum,n1,cin);
and g3(n2,n1,cin);
and g4(n3,a,b);
or g5(carry,n2,n3);
endmodule

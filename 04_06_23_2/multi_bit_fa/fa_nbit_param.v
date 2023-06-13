`include "fa_1bit.v"
module fa_nbit_param(a,b,cin,sum,cout);
parameter WIDTH=32;
input [WIDTH-1:0]a,b;
input cin;
output [WIDTH-1:0]sum;
output cout;
genvar i;
wire [WIDTH:0]c;
//wire n1,n2,n3;
assign c[0]=cin;
assign cout=c[WIDTH];
for (i=0;i<WIDTH;i=i+1)begin
	fa_1bit u1(a[i],b[i],c[i],sum[i],c[i+1]);
end
endmodule

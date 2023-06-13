`include "fa_1bit.v"
module fa_nbit(a,b,cin,sum,cout);
input [15:0]a,b;
input cin;
output [15:0]sum;
output cout;
genvar i;
wire [16:0]c;
//wire n1,n2,n3;
assign c[0]=cin;
assign cout=c[16];
for (i=0;i<16;i=i+1)begin
	fa_1bit u1(a[i],b[i],c[i],sum[i],c[i+1]);
end
endmodule

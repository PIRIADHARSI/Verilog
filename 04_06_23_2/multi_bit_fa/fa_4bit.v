`include "fa_1bit.v"
module fa_4bit(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire n1,n2,n3;
fa_1bit u1(a[0],b[0],cin,sum[0],n1);
fa_1bit u2(a[1],b[1],n1,sum[1],n2);
fa_1bit u3(a[2],b[2],n2,sum[2],n3);
fa_1bit u4(a[3],b[3],n3,sum[3],cout);
endmodule

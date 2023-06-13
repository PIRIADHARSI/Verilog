`include "mux_2x1.v"
module mux_4x1_2x1(i0,i1,i2,i3,sel0,sel1,out);
input i0,i1,i2,i3,sel0,sel1;
output out;
mux_2x1 u1(.i0(i0),.i1(i1),.sel(sel1),.out(n1));
mux_2x1 u2(.i0(i2),.i1(i3),.sel(sel1),.out(n2));
mux_2x1 u3(.i0(n1),.i1(n2),.sel(sel0),.out(out));
endmodule

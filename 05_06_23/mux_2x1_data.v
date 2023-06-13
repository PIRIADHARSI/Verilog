module mux_2x1_data(i0,i1,sel,out);
input i0,i1,sel;
output out;
assign out= (~sel & i0) | (sel & i1);
endmodule

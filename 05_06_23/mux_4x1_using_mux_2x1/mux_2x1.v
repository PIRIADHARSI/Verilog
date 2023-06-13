module mux_2x1(i0,i1,sel,out);
input i0,i1,sel;
output reg out;
always @(*)begin
	if(sel==0)begin
		out=i0;
	end
	else begin
		out=i1;
	end
end
endmodule

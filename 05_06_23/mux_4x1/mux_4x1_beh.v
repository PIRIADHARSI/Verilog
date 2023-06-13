module mux_4x1_beh(i0,i1,i2,i3,sel0,sel1,out);
input i0,i1,i2,i3,sel0,sel1;
output reg out;
always @(*)begin
	if(sel0==0 && sel1==0)begin
		out=i0;
	end
	else if(sel0==1 && sel1==0)begin
		out=i1;
	end
	else if(sel0==0 && sel1==1)begin
		out=i2;
	end
	else begin
		out=i3;
	end
end
endmodule

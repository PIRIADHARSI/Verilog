module encoder(i0,i1,i2,i3,out1,out2);
input i0,i1,i2,i3;
output reg out1,out2;
always @(*)begin
	if(i0==1 && i1==0 && i2==0 && i3==0)begin
		out1=0;
		out2=0;
	end
	else if(i0==0 && i1==1 && i2==0 && i3==0)begin
		out1=0;
		out2=1;
	end
	else if(i0==0 && i1==0 && i2==1 && i3==0)begin
		out1=1;
		out2=0;
	end
	else if(i0==0 && i1==0 && i2==0 && i3==1) begin
		out1=1;
		out2=1;
	end
	else begin
		out1=1'bx;
		out2=1'bx;
	end
end
endmodule

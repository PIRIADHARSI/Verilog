module encoder_vec(i,out1,out2);
input [3:0]i;
output reg out1,out2;
always @(*)begin
	if(i==4'b0001)begin
		out1=0;
		out2=0;
	end
	else if(i==4'b0010)begin
		out1=0;
		out2=1;
	end
	else if(i==4'b0100)begin
		out1=1;
		out2=0;
	end
	else if(i==4'b1000) begin
		out1=1;
		out2=1;
	end
	else begin
		out1=1'bx;
		out2=1'bx;
	end
end
endmodule

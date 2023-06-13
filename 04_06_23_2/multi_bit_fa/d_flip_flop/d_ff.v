module d_ff(clk,rst,d,q);
input clk,rst,d;
output reg q;
//reg q_t;
always @(posedge clk)begin
	if(rst==1)begin
		//q_t=0;
		q=0;
	end
	else begin
		//q_t=d;
		q=d;
	end
end
//assign q=q_t;
endmodule

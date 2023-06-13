module up_down_counter(clk,rst,flag,count);
input clk,rst;
output reg [2:0]count;
input flag;
always @(posedge clk)begin
	if(rst==1)begin
		count=0;
	end
	else if(flag==1)begin
		count=count+1;
	end
	else begin
		count=count-1;
	end
end
endmodule

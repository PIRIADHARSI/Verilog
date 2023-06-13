module memory(clk_i,rst_i,wdata_i,addr_i,valid_i,wr_rd_en_i,rdata_o,ready_o);
parameter WIDTH=4;
parameter DEPTH=16;
parameter ADDR_WIDTH=$clog2(DEPTH);
input clk_i,rst_i,wr_rd_en_i,valid_i;
input [WIDTH-1:0]wdata_i;
input [ADDR_WIDTH-1:0]addr_i;
output reg ready_o;
output reg [WIDTH-1:0]rdata_o;
integer i;
reg [WIDTH-1:0]mem[DEPTH-1:0];
always @(posedge clk_i)begin
	if(rst_i==1)begin
		ready_o=0;
		rdata_o=0;
		for(i=0;i<DEPTH;i=i+1)begin
			mem[i]=0;//to reset the memory
		end
	end
	else begin
		if(valid_i==1)begin
			ready_o=1;
			if(wr_rd_en_i==1)begin
				mem[addr_i]=wdata_i;//write operation
			end
			else begin
				rdata_o=mem[addr_i];//read operation
			end
		end
		else begin
			ready_o=0;
		end
	end
end
endmodule

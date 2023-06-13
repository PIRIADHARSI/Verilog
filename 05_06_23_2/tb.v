`include "memory.v"
module tb;
parameter WIDTH=4;
parameter DEPTH=16;
parameter ADDR_WIDTH=$clog2(DEPTH);
reg clk_i,rst_i,wr_rd_en_i,valid_i;
reg [WIDTH-1:0]wdata_i;
reg [ADDR_WIDTH-1:0]addr_i;
wire ready_o;
wire [WIDTH-1:0]rdata_o;
integer i;
memory #(.WIDTH(WIDTH),.DEPTH(DEPTH),.ADDR_WIDTH(ADDR_WIDTH)) dut(clk_i,rst_i,wdata_i,addr_i,valid_i,wr_rd_en_i,rdata_o,ready_o);
always begin
	clk_i=0;
	#5;
	clk_i=1;
	#5;
end
initial begin
	rst_i=1;
	wr_rd_en_i=0;
	valid_i=0;
	wdata_i=0;
	addr_i=0;
	#20;
	rst_i=0;
	for(i=0;i<DEPTH;i=i+1)begin
		@(posedge clk_i)
		wdata_i=$random;
		addr_i=i;
		wr_rd_en_i=1;
		valid_i=1;
		wait(ready_o==1);
	end
		@(posedge clk_i)
		wdata_i=0;
		addr_i=0;
		wr_rd_en_i=0;
		valid_i=0;
	for(i=0;i<DEPTH;i=i+1)begin
		@(posedge clk_i)
		addr_i=i;
		wr_rd_en_i=0;
		valid_i=1;
		wait(ready_o==1);
	end
		@(posedge clk_i)
		addr_i=0;
		wr_rd_en_i=0;
		valid_i=0;

end
initial begin
	#500;
	$finish;
end
endmodule

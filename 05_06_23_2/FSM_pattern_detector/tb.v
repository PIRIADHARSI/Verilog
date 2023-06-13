//`include "pattern_mealy.v"
//`include "pattern_moore.v"
`include "pattern_mealy_over.v"
module tb;
parameter S_RESET=5'b00001;
parameter S_B=5'b00010;
parameter S_BB=5'b00100;
parameter S_BBC=5'b01000;
parameter S_BBCB=5'b10000;
parameter B=1'b1;
parameter C=1'b0;
reg [4:0]state,next_state;
reg clk,rst,valid_i,data_i;
wire pattern_o;
integer count;
//pattern_mealy dut(clk,rst,data_i,valid_i,pattern_o);
//pattern_moore dut(clk,rst,data_i,valid_i,pattern_o);
pattern_mealy_over dut(clk,rst,data_i,valid_i,pattern_o);
always begin
	clk=0;
	#5;
	clk=1;
	#5;
end
initial begin
	count=0;
	rst=1;
	#20;
	rst=0;
	repeat (600)begin
	@(posedge clk)
		data_i=$random;
		valid_i=1;
	end
	@(posedge clk)
		data_i=0;
		valid_i=0;
	#500;
	$finish;
end
/*initial begin
	#500;
	$finish;
end*/
always @(posedge pattern_o)count=count+1;
endmodule










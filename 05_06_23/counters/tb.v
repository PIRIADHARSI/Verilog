//`include "up_counter.v"
//`include "down_counter.v"
`include "up_down_counter.v"
module tb;
reg clk,rst,flag;
wire [2:0]count;
//up_counter dut(clk,rst,count);
//down_counter dut(clk,rst,count);
up_down_counter dut(clk,rst,flag,count);

initial begin
	rst=1;
	#20;
	rst=0;
	flag=1;
	#70;
	flag=0;
	#70;
	flag=1;
	#70;
	flag=0;
	#70;
	flag=1;
	#70;
	flag=0;
	#70;
	flag=1;
end
always begin
	clk=0;
	#5;
	clk=1;
	#5;
end
initial begin
	#500;
	$finish;
end
endmodule

`include "d_ff.v"
module tb;
reg clk,rst,d;
wire q;
d_ff dut(clk,rst,d,q);
always begin
	clk=0;
	#5;
	clk=1;
	#5;
end
/*initial begin
	clk=0;
	forever #5 clk=~clk;
end*/
initial begin
	rst=1;
	#20;
	rst=0;
	repeat(30)begin
		d=$random;
		#3;
	end
end
initial begin
	#200;
	$finish;
end
endmodule

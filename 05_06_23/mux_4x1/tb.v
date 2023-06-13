//`include "mux_2x1.v"
`include "mux_4x1_beh.v"
module tb;
reg i0,i1,i2,i3,sel0,sel1;
wire out;
//mux_2x1 dut(i0,i1,sel,out);
mux_4x1_beh dut(i0,i1,i2,i3,sel0,sel1,out);
initial begin
		$monitor("i0=%b,i1=%b,i2=%b,i3=%b,sel0=%b,sel1=%b,out=%b",i0,i1,i2,i3,sel0,sel1,out);
	repeat (20)begin
		i0=$random;
		i1=$random;
		i2=$random;
		i3=$random;
		sel0=$random;
		sel1=$random;
		#5;
		//$display("i0=%b,i1=%b,sel=%b,out=%b",i0,i1,sel,out);
	end
end
endmodule

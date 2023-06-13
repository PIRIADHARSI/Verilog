//`include "mux_2x1.v"
`include "mux_2x1_data.v"
module tb;
reg i0,i1,sel;
wire out;
//mux_2x1 dut(i0,i1,sel,out);
mux_2x1_data dut(i0,i1,sel,out);
initial begin
		$monitor("i0=%b,i1=%b,sel=%b,out=%b",i0,i1,sel,out);
	repeat (20)begin
		i0=$random;
		i1=$random;
		sel=$random;
		#5;
		//$display("i0=%b,i1=%b,sel=%b,out=%b",i0,i1,sel,out);
	end
end
endmodule

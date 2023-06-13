//`include "half_adder.v"
//`include "half_adder_data.v"
`include "half_adder_struct.v"
module tb;
reg a,b;
wire sum,carry;
//half_adder dut(a,b,sum,carry);
//half_adder_data dut(a,b,sum,carry);
half_adder_struct dut(a,b,sum,carry);
initial begin//this block starts at 0 time ands at 0 time
	repeat (20) begin
		a=$random;
		b=$random;
		#5;
		$display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
	end
end
endmodule

`include "full_adder_struct.v"
module tb;
reg a,b,cin;
wire sum,carry;
wire n1,n2,n3;
full_adder_struct dut(a,b,cin,sum,carry);
initial begin
	repeat (20)begin
		a=$random;
		b=$random;
		cin=$random;
		#5;
		$display("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
	end
end
endmodule

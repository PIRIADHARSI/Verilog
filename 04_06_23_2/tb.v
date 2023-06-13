//`include "FA_4bit.v"
`include "FA_4bit_data.v"
module tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
//wire n1,n2,n3;
//fa_4bit dut(a,b,cin,sum,cout);
fa_4bit_data dut(a,b,cin,sum,cout);
initial begin
	repeat (20)begin
		a=$random;
		b=$random;
		cin=$random;
		#5;
		$display("a=%0d,b=%0d,cin=%b,sum=%0d,cout=%b",a,b,cin,sum,cout);
	end
end
endmodule

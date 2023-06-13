//`include "FA_4bit.v"
//`include "fa_4bit.v"
//`include "fa_nbit.v"
`include "fa_nbit_param.v"
module tb;
parameter WIDTH=4;
reg [WIDTH-1:0]a,b;
reg cin;
wire [WIDTH-1:0]sum;
wire cout;
//wire n1,n2,n3;
//fa_4bit dut(a,b,cin,sum,cout);
//fa_4bit dut(a,b,cin,sum,cout);
//fa_nbit dut(a,b,cin,sum,cout);
fa_nbit_param #(.WIDTH(WIDTH)) dut(a,b,cin,sum,cout);
initial begin
	repeat (20)begin
		a=$random;
		b=$random;
		cin=$random;
		#5;
		$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
	end
end
endmodule

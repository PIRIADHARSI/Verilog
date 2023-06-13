`include "prior_encoder.v"
//`include "encoder.v"
//`include "encoder_vec.v"
module tb;
//reg [3:0]i;
reg i0,i1,i2,i3;
wire out1,out2;
integer j;
//encoder dut (i0,i1,i2,i3,out1,out2);
//encoder_vec dut (i,out1,out2);
prior_encoder dut (i0,i1,i2,i3,out1,out2);
initial begin
	repeat (100)begin
//	for(j=0;j<4;j=j+1)begin
//		i=2**j;
		i0=$random;
		i1=$random;
		i2=$random;
		i3=$random;
		#5;
		//$display("i=%b,out1=%b,out2=%b",i,out1,out2);
		$display("i0=%b,i1=%b,i2=%b,i3=%b,out1=%b,out2=%b",i0,i1,i2,i3,out1,out2);
	end
end
endmodule

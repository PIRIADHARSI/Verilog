//BBCBC or 11010
module pattern_mealy(clk,rst,data_i,valid_i,pattern_o);
parameter S_RESET=5'b00001;
parameter S_B=5'b00010;
parameter S_BB=5'b00100;
parameter S_BBC=5'b01000;
parameter S_BBCB=5'b10000;
parameter B=1'b1;
parameter C=1'b0;
input clk,rst,valid_i,data_i;
output reg pattern_o;
reg [4:0]state,next_state;
always@(posedge clk)begin
	if(rst==1)begin
		pattern_o=0;
		state=S_RESET;
		next_state=S_RESET;
	end
	else begin
			pattern_o=0;
		if(valid_i==1)begin
			case(state)
				S_RESET:begin
					if(data_i==B)begin
						next_state=S_B;
					end
					else begin
						next_state=S_RESET;
					end
				end
				S_B:begin
					if(data_i==B)begin
						next_state=S_BB;
					end
					else begin
						next_state=S_RESET;
					end
				end
				S_BB:begin
					if(data_i==B)begin
						next_state=S_BB;
					end
					else begin
						next_state=S_BBC;
					end
				end
				S_BBC:begin
					if(data_i==B)begin
						next_state=S_BBCB;
					end
					else begin
						next_state=S_RESET;
					end
				end
				S_BBCB:begin
					if(data_i==B)begin
						next_state=S_RESET;
					end
					else begin
						pattern_o=1;
						next_state=S_RESET;
					end
				end
				endcase
		end
	end
end
always@(next_state)state=next_state;
endmodule

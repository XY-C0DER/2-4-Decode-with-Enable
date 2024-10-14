module decoder2_4
(
	input wire in1,
	input wire in2,
	input wire enable,
	
	output reg	[3:0]	out
);

always@(*)
	if(enable == 1'b1)
		begin
			case({in1,in2})
				2'b00:out=4'b0001;
				2'b01:out=4'b0010;
				2'b10:out=4'b0100;
				2'b11:out=4'b1000;
				default:out=4'b0000;
			endcase
		end
	else
		begin
			out=4'b0000;
		end
endmodule
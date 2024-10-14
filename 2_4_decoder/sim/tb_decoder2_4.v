`timescale	1ns/1ns
module	tb_decoder2_4();

reg	in1;
reg in2;
reg enable;

wire [3:0] out;

initial
	begin
		in1<=1'b0;
		in2<=1'b0;
		enable<=1'b0;
	end
	
always	#10	in1		<=	{$random}%2	;
always	#10	in2		<=	{$random}%2	;
always	#10	enable	<=	{$random}%2	;


initial	begin
	$timeformat(-9, 0, "ns", 6);
    $monitor("@time %t: in1=%b in2=%b enable=%b out=%b", $time, in1, in2, enable,out);
end

decoder2_4 decoder2_4_inst
(
	.in1(in1),
	.in2(in2),
	.enable(enable),
	
	.out(out)
);

endmodule
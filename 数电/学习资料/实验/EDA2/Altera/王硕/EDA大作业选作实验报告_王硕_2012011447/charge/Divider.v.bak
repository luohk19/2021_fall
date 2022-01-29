module Divider
(
	input  clk_in,
	output clk_out
);

	reg	[14:0] cnt;
	
	always @(posedge clk_in)
		cnt <= cnt + 1'b1;
		
	assign clk_out = cnt[14];
	
endmodule

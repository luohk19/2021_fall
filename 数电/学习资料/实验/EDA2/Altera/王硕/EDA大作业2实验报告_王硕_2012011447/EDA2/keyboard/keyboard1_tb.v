`timescale 10ns/1ns

module keyboard1_tb;

reg [3:0] V;
wire [3:0] H;
reg clk;
wire [7:0]led;


keyboard1 keyboard1_inst
(.H(H),.V(V),.clk_sys(clk),.led(led));

initial begin
	#1 clk=0;
	V=4'b1111;
	#96728 V=4'b1101;	
	#65536 V=4'b1111;
	#258429 V=4'b1011;
	#65536 V=4'b1111;
	
	
end



always begin
	#1 clk=~clk;
end

endmodule

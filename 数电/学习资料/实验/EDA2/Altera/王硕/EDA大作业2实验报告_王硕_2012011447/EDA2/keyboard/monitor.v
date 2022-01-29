module monitor
(
input clk,
input [7:0]in1,
input [7:0]in2,
input [7:0]in3,
input [7:0]in4,
output reg [7:0]out,
output reg [1:0]ctrl
);
initial
begin

end
always @ (posedge clk)
begin
ctrl<=ctrl+1'b1;
	case(ctrl)
		0:out<=in2;
		1:out<=in3;
		2:out<=in4;		
		3:out<=in1;
	endcase	
end
endmodule
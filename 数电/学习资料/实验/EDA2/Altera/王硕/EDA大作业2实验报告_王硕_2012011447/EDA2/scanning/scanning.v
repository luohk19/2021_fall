module scanning
(
input [9:0]c,
input clk,
output reg [7:0]out,
output reg [1:0]ctrl
);

always @ (posedge clk)
begin
ctrl<=ctrl+1'b1;
	case(ctrl)
		0:case(c[7:4])
			4'b0000:out<=8'b10000001;
			4'b0001:out<=8'b11001111;
			4'b0010:out<=8'b10010010;
			4'b0011:out<=8'b10000110;
			4'b0100:out<=8'b11001100;
			4'b0101:out<=8'b10100100;
			4'b0110:out<=8'b11100000;
			4'b0111:out<=8'b10001111;
			4'b1000:out<=8'b10000000;
			4'b1001:out<=8'b10001100;
			4'b1010:out<=8'b11110010;
			4'b1011:out<=8'b11100110;
			4'b1100:out<=8'b11011100;
			4'b1101:out<=8'b10110100;
			4'b1110:out<=8'b11110000;
			4'b1111:out<=8'b11111111;
			default;
			endcase	
		1:case(c[9:8])
			2'b00:out<=8'b10000001;
			2'b01:out<=8'b11001111;
			2'b10:out<=8'b10010010;
			default out<=8'b10000001;
			endcase	
			
		2:out<=8'b10000001;
		
		3:case(c[3:0])
			4'b0000:out<=8'b10000001;
			4'b0001:out<=8'b11001111;
			4'b0010:out<=8'b10010010;
			4'b0011:out<=8'b10000110;
			4'b0100:out<=8'b11001100;
			4'b0101:out<=8'b10100100;
			4'b0110:out<=8'b11100000;
			4'b0111:out<=8'b10001111;
			4'b1000:out<=8'b10000000;
			4'b1001:out<=8'b10001100;
			4'b1010:out<=8'b11110010;
			4'b1011:out<=8'b11100110;
			4'b1100:out<=8'b11011100;
			4'b1101:out<=8'b10110100;
			4'b1110:out<=8'b11110000;
			4'b1111:out<=8'b11111111;
		  default;	
		  endcase	
	endcase	
end
endmodule
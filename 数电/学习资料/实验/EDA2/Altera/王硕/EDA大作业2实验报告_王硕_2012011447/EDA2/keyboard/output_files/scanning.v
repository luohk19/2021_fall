module scanning
(
input clk,
input [3:0]V, 
output reg [3:0] H,
output reg [7:0]out1,
output reg [7:0]out2,
output reg [7:0]out3,
output reg [7:0]out4
);

reg [1:0] cnt;

  always @ (posedge clk)
begin
	cnt<=cnt+1'b1;
	case(cnt)
		0:
			begin 
			H<=4'b1110;
			case (V)
				4'b1110:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11110010;end//ok *
				4'b1101:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10001111;end//ok 4
				4'b1011:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11001100;end//ok 7
				4'b0111:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11001111;end// ok1
				default;//0
			endcase
			end		
		1:
		begin
		H<=4'b1101;
			case (V)
				4'b1110:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11111111;end//D
				4'b1101:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11110000;end//C
				4'b1011:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10110100;end//B
				4'b0111:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11011100;end//A
				default;//0
			endcase
		end				
		2:
		begin 
			H<=4'b1011;
			case (V)
				4'b1110:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11100110;end//#
				4'b1101:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10001100;end//9
				4'b1011:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11100000;end//6
				4'b0111:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10000110;end//3
				default;//0
			endcase
		end				
		3: 
			begin
			H<=4'b0111;
			case (V)
				4'b1110:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10000001;end//0
				4'b1101:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10000000;end//8
				4'b1011:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10100100;end//5
				4'b0111:begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10010010;end//2
				default;
			endcase
			end				
		default;		  	
		endcase
end

endmodule
module scanning
(
input clk,
input [3:0]V, 
output reg [3:0] H,
output reg [7:0]out1,
output reg [7:0]out2,
output reg [7:0]out3,
output reg [7:0]out4,
output reg [7:0]led
);
reg [1:0] cnt;
reg [2:0]flag;
initial
begin
out1<=8'b10000001;
out2<=8'b10000001;
out3<=8'b10000001;
out4<=8'b10000001;
end
always @ (posedge clk)
begin
	cnt<=cnt+1'b1;
	
	 
	case(cnt)
		0:
			begin 
			H<=4'b1110;
			
			
			case (V)
				4'b1110:if(flag!=3'b100)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11110010;led<=8'b00001010;flag<=3'b100;end//ok *
				4'b1101:if(flag!=3'b100)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10001111;led<=8'b00000111;flag<=3'b100;end//ok 7
				4'b1011:if(flag!=3'b100)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11001100;led<=8'b00000100;flag<=3'b100;end//ok 4
				4'b0111:if(flag!=3'b100)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11001111;led<=8'b00000001;flag<=3'b100;end// ok1
				default if(flag==3'b100) flag<=3'b000;//0
			endcase
			end
					
		1:
		begin
		H<=4'b1101;
		
			
			case (V)
				4'b1110:if(flag!=3'b101)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11111111;led<=8'b00001111;flag<=3'b101;end//D
				4'b1101:if(flag!=3'b101)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11110000;led<=8'b00001110;flag<=3'b101;end//C
				4'b1011:if(flag!=3'b101)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10110100;led<=8'b00001101;flag<=3'b101;end//B
				4'b0111:if(flag!=3'b101)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11011100;led<=8'b00001100;flag<=3'b101;end//A
				default if(flag==3'b101)flag<=3'b001;//0
			endcase
			
		end				
		2:
		begin 
			H<=4'b1011;
			
			
			case (V)
				4'b1110:if(flag!=3'b110)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11100110;led<=8'b00001011;flag<=3'b110;end//#
				4'b1101:if(flag!=3'b110)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10001100;led<=8'b00001001;flag<=3'b110;end//9
				4'b1011:if(flag!=3'b110)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b11100000;led<=8'b00000110;flag<=3'b110;end//6
				4'b0111:if(flag!=3'b110)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10000110;led<=8'b00000011;flag<=3'b110;end//3
				default if(flag==3'b110)flag<=3'b010;//0
			endcase
			
		end				
		3: 
			begin
			H<=4'b0111;
			
			
			case (V)
				4'b1110:if(flag!=3'b111)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10000001;led<=8'b00000000;flag<=3'b111;end//0
				4'b1101:if(flag!=3'b111)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10000000;led<=8'b00001000;flag<=3'b111;end//8
				4'b1011:if(flag!=3'b111)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10100100;led<=8'b00000101;flag<=3'b111;end//5
				4'b0111:if(flag!=3'b111)begin out4<=out3;out3<=out2;out2<=out1;out1<=8'b10010010;led<=8'b00000010;flag<=3'b111;end//2
				default if(flag==3'b111)flag<=3'b011;
			endcase
			
			end				
		default;		  	
		endcase
		
end

endmodule
module calculator(a,b,k,light,clk,en,flagLed);
input clk;//时钟信号
input[3:0] a;
input[3:0] b;
input[2:0] k;
reg [8:0] out;
output reg [6:0] light;
output reg [5:0] en;
wire[3:0] data0;//结果的个位
wire[3:0] data1;//结果的十位
wire[3:0] data2;//结果的百位
output reg flagLed;
reg[4:0] data;
reg minus;
//获取每个位的结果

//根据k决定运算方式
always@(k)
	begin
		case(k)
			3'b100: out = 0;//置零
			3'b101: out = a + b;//加法
			3'b110: out = a - b;//减法
			3'b111: out = a * b;//乘法
			3'b011: out = a / b;//除法
		endcase
		minus = (out[8] == 1'b1) ? 1'b1 : 1'b0;//判断符号位，控制减号的显示
		flagLed = (out[8] == 1'b1) ? 1'b1 : 1'b0;//判断符号位，控制led灯
		out = (out[8] == 1'b1) ? ~out + 1 : out;//判断符号位，取反再加1
	end
	
//10进制
//assign data0 = out % 4'd10;
//assign data1 = out / 4'd10 % 4'd10;
//assign data2 = out / 7'd100 % 4'd10;

//16进制

assign data0 = out[3:0];
assign data1 = out[7:4];
assign data2 = out[8];

//确定选定的数码管
always @ (cnt_sel) begin
	case(cnt_sel)
		3'd0: begin//最右
			en = 6'b111110;
			data = data0;//末位
		end
		3'd1: begin//右2
			en = 6'b111101;
			data = data1;//倒数第二位
		end
		3'd2: begin//右3
			en = 6'b111011;
			data = data2;//倒数第三位（用于10进制）
		end
		3'd3: begin//右4
			en = 6'b110111;
			data = (minus == 1'b1) ? 5'b11111 : 5'b11110;//负号的显示
		end
		3'd4: begin//最左
			en = 6'b011111;
			data = a;//输入的a
		end
	endcase
end


//确定刷新频率
parameter MAX_NUM = 13'd5000;
reg flag;
reg [2:0] cnt_sel; 
reg [12:0] cnt0;

always @ (posedge clk) begin
    if (cnt0 < MAX_NUM - 1'b1) begin
        cnt0 <= cnt0 + 1'b1;
        flag <= 1'b0;
     end
    else begin//计数达到一定数量后将flag赋值为1
        cnt0 <= 13'b0;//而该flag作为后续的时钟信号
        flag <= 1'b1;
     end
end

//枚举不同种情况
always @ (posedge flag) begin
	if(flag) begin
        if(cnt_sel < 3'd5)
		  cnt_sel <= cnt_sel + 1'b1;//不断自增
        else
		  cnt_sel <= 3'b0;//复位为0
    end
    else
        cnt_sel <= cnt_sel;//flag信号为0时保持不变
end


//对不同的结果进行输出（其中负号对应31，正对应30）
always@(data)
	begin 
		case(data)
			0:light = 7'b0000001;
			1:light = 7'b1001111;
			2:light = 7'b0010010;
			3:light = 7'b0000110;
			4:light = 7'b1001100;
			5:light = 7'b0100100;
			6:light = 7'b0100000;
			7:light = 7'b0001111;
			8:light = 7'b0000000;
			9:light = 7'b0000100;
			10:light = 7'b0001000;
			11:light = 7'b1100000;
			12:light = 7'b0110001;
			13:light = 7'b1000010;
			14:light = 7'b0110000;
			15:light = 7'b0111000;
			31:light = 7'b1111110;
			30:light = 7'b1111111;
		endcase
	end
endmodule
	

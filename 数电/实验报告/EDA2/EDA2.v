module vending_machine(
	input[2:0] money,
	input[3:0] good,
	input clk,
	output reg[5:0] en,
	output reg[3:0] light,
	output reg[7:0] lit
);

//确定刷新频率
parameter MAX_NUM = 13'd5000;
reg flag;
reg [2:0] cnt_sel; 
reg [12:0] cnt0;

//分频模块

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


reg[10:0] cur;


//防抖模块
parameter DELAY = 20'd1;
reg [19:0] count;
reg [6:0] old;
reg [6:0] key_out;
reg key_cnt;
reg [2:0] state;
reg [2:0] nxtstate;

always@(posedge clk) begin
	if({~money, good} != old) begin//当当前输入与前输入不同时
		old <= {~money, good};//重置旧输入,重置计数、输入计数
		count <= 0;
		key_cnt <= 0;//输入计数用于显示按钮是否被按下，解决每次按下时间长短问题
	end
	else if(count == DELAY) begin//当达到一定长度后
		key_out <= old;//说明已经稳定
		count <= 0;//重置计数
		key_cnt <= 1;//记已被按下
	end
	else if(key_cnt == 1) begin
		key_out <= 7'b0000000;//当已被按下而且不发生改变时，视为无按下;
	end
	else begin
		count <= count + 1;//累加计数
	end
end

/***
always@(posedge clk) begin
	key_out <= {money, good};
end
***/

//light[0]代表提醒金额不足
//light[1]代表取货
//light[2]代表取钱
//good[0]代表购买15元商品
//good[1]代表购买25元商品
//good[2]代表重置清零
//good[3]代表复位



//组合逻辑always模块，描述状态转移
always@(*) begin
	case(state)
		3'b000: begin
			case(key_out)
				7'b0001000: nxtstate = 3'b111;//reset
				7'b0000001: nxtstate = 3'b001;//-15
				7'b0000010: nxtstate = 3'b010;//-25
				7'b0000100: nxtstate = 3'b011;//getMoney
				7'b0010000: nxtstate = 3'b100;//+5
				7'b0100000: nxtstate = 3'b101;//+10
				7'b1000000: nxtstate = 3'b110;//+50
				default: nxtstate = 3'b000;//remain
			endcase
			
		end
		3'b001: begin
			nxtstate = 3'b000;//back to remain
		end
		3'b010: begin
			nxtstate = 3'b000;//back to remain
		end
		3'b011: begin
			nxtstate = 3'b000;//back to remain
		end
		3'b100: begin
			nxtstate = 3'b000;//back to remain
		end
		3'b101: begin
			nxtstate = 3'b000;//back to remain
		end
		3'b110: begin
			nxtstate = 3'b000;//back to remain
		end
		3'b111: begin
			nxtstate = 3'b000;//back to remain
		end
	endcase

end

//时序always模块，描述次寄存器更新
always@(posedge clk) begin
	state <= nxtstate;
end

//第三个进程，同步时序always模块，描述次态寄存器输出
always@(posedge clk) begin
	case(nxtstate)
		3'b000: begin//维持不变
			cur <= cur;
			light <= light;
		end
		3'b001: begin//-15
			if(cur < 4'd15) begin
				light <= 4'b0001;
			end
			else begin//检查是否下溢
				cur <= cur - 4'd15;
				light <= 4'b0010;
			end
		end
		3'b010: begin//-25
			if(cur < 5'd25) begin
				light <= 4'b0001;
			end
			else begin//检查是否下溢
				cur <= cur - 5'd25;
				light <= 4'b0010;
			end
		end
		3'b011: begin//取钱
			cur <= 0;
			light <= 4'b0100;
		end
		3'b100: begin//加5
			if(cur <= 10'd999 - 10'd5) begin//判断上限
				cur <= cur + 5'd5;
				light <= 4'b0000;
			end
			else begin
				cur <= cur;
				light <= 4'b1000;
			end
		end
		3'b101: begin//加10
			if(cur <= 10'd999 - 10'd10) begin//判断上限
				cur <= cur + 5'd10;
				light <= 4'b0000;
			end
			else begin
				cur <= cur;
				light <= 4'b1000;
			end
		end
		3'b110: begin//加50
			if(cur <= 10'd999 - 10'd50) begin//判断上限
				cur <= cur + 7'd50;
				light <= 4'b0000;
			end
			else begin
				cur <= cur;
				light <= 4'b1000;
			end
		end
		3'b111: begin//复位
			cur <= 0;
			light <= 4'b0000;
		end
	endcase
end




wire[8:0] data1;
wire[8:0] data2;
wire[8:0] data3;

//取各位
assign data1 = cur % 4'd10;
assign data2 = cur / 4'd10 % 4'd10;
assign data3 = cur / 8'd100 % 4'd10;

//选择数码管
always @ (posedge flag) begin
	if(flag) begin
        if(cnt_sel < 3'd3)
				cnt_sel <= cnt_sel + 1'b1;//不断自增
        else
				cnt_sel <= 3'b0;//复位为0
    end
    else
        cnt_sel <= cnt_sel;//flag信号为0时保持不变
end

reg[8:0] data;
reg dtype;
//对各数码管赋值
//dtype用于显示小数，不过由于不知道引脚，因此此处忽略即可。
always @ (cnt_sel) begin
	case(cnt_sel)
		3'd0: begin//最右
			en = 6'b111110;
			data = data1;//末位
			dtype = 1'b1;
		end
		3'd1: begin//右2
			en = 6'b111101;
			data = data2;//倒数第二位
			dtype = 1'b0;
		end
		3'd2: begin//右3
			en = 6'b111011;
			data = data3;//倒数第三位（用于10进制）
			dtype = 1'b1;
		end
	endcase
end

//显示
always@(data)
	begin 
		case(data)
			0:lit <= {dtype,7'b0000001};
			1:lit <= {dtype,7'b1001111};
			2:lit <= {dtype,7'b0010010};
			3:lit <= {dtype,7'b0000110};
			4:lit <= {dtype,7'b1001100};
			5:lit <= {dtype,7'b0100100};
			6:lit <= {dtype,7'b0100000};
			7:lit <= {dtype,7'b0001111};
			8:lit <= {dtype,7'b0000000};
			9:lit <= {dtype,7'b0000100};
		endcase
	end
endmodule

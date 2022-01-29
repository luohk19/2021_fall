module secControl(
	input clk,
	output reg second,
	output reg show
);//分频器
//40MHz -> 1Hz,28位二进制数
//40MHz -> 数码管显示频率
reg[27:0] cnt;
reg[15:0] cnt1;



always@(posedge clk) begin
	if(cnt < 28'b0010011000100101101000000000) begin
		cnt <= cnt + 1;
		second <= 0;
	end
	else begin
		cnt <= 28'b0;
		second <= 1;
	end
	if(cnt1 < 15'd5000) begin
		cnt1 <= cnt1 + 1;
		show <= 0;
	end
	else begin
		show <= 1;
	end
end

endmodule

module lightControl(input flag, input clk, output reg sign);
reg change;
reg[4:0] cnt;
always@(posedge flag or negedge change) begin
	if(change == 0)//当读秒不足10s时
		sign <= 1;
	else 
		sign <= 0;//不再响铃
end
always@(posedge clk) begin
	if(sign == 1 && cnt < 4'd10) begin//当不足10s时
		cnt <= cnt + 1;
		change <= 0;
	end
	else begin
		cnt <= 0;
		change <= 1;
	end
end

endmodule

module xiaodou(input clk, input operate, output reg key_out);
reg old;
reg key_cnt;
parameter DELAY = 15'd5000;
reg count;
always@(posedge clk) begin
	if(operate != old) begin//当当前输入与前输入不同时
		old <= operate;//重置旧输入,重置计数、输入计数
		count <= 0;
		key_cnt <= 0;//输入计数用于显示按钮是否被按下，解决每次按下时间长短问题
	end
	else if(count == DELAY) begin//当达到一定长度后
		key_out <= old;//说明已经稳定
		count <= 0;//重置计数
		key_cnt <= 1;//记已被按下
	end
	else if(key_cnt == 1) begin
		key_out <= 0;//当已被按下而且不发生改变时，视为无按下;
	end
	else begin
		count <= count + 1;//累加计数
	end
end
endmodule

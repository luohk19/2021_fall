module timing 
(
input clk,
input clk2,
input m5,m10,
input [3:0] state,
output reg [3:0] min2,
output reg [3:0] min1,
output reg on,

output reg [3:0]money1,
output reg [3:0]money2

);

reg [7:0] money;
reg [3:0] current;
reg [3:0] next;
reg [1:0] flag;
reg [1:0]flag2;
reg [11:0] cnt;


parameter bc=0,a1=5,a2=6,a3=7,a4=8;//空闲，待命，计时充电
parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6,s7=7,s8=8;//0:0;1:5;2:10;3:15;4:20;5:5;6:10;7:15;8:20

always @(posedge clk)
current<=next;

always @(*)//计时器的状态跳转
case(current)
	bc:
	begin
	flag=0;
	if(state==s5)
			next=a1;
	else if(state==s6)
			next=a2;
	else if(state==s7)
			next=a3;
	else if(state==s8)
			next=a4;
	else
		next=bc;
	end
		

	
	a1:
	begin
	flag=1;
		if(state==s0)
		next=bc;
		else
		next=a1;
	end
	
	a2:
	begin
	flag=1;
		if(state==s0)
		next=bc;
		else
		next=a2;
   end
	
	a3:
	begin
	flag=1;
		if(state==s0)
		next=bc;
		else
		next=a3;
	end	
	
	a4:
	begin
	 flag=1;
		if(state==s0)
		next=bc;
		else
		next=a4;
	end
	default:
	flag=2;
endcase





always @(posedge clk2)

case (state)
	s1:
	begin
	 money<=5;
	end
	
	s2:
	begin
	 money<=10;
	end
	
	s3:
	begin
	 money<=15;
	end
	
	s4:
	begin
	 money<=20;
	end
	
	s5:
	if(cnt==0)
		begin
			if(flag2==0)
				begin
				flag2<=1;
				cnt<=5;
				money<=5;
				end
			else
				begin flag2<=2;
			money<=0;end
		end
	else
		cnt<=cnt-1;
	
	s6:
	if(cnt==0)
		begin
			if(flag2==0)
				begin
				flag2<=1;
				cnt<=10;
				money<=10;
				end
			else
				begin flag2<=2;
			money<=0;end
		end
	else
		cnt<=cnt-1;

	s7:
	if(cnt==0)
		begin
				if(flag2==0)
					begin
					flag2<=1;
					cnt<=30;
					money<=15;
					end
				else
					begin flag2<=2;
			money<=0;end
		end
	else
		cnt<=cnt-1;

	s8:
	if(cnt==0)
			begin
			if(flag2==0)
				begin
					flag2<=1;
					cnt<=40;
					money<=20;
				end
			else
			begin flag2<=2;
			money<=0;end
			end
	else
		cnt<=cnt-1;	
	
	default:
	begin
		cnt<=0;
		flag2<=0;
		money<=0;
	end
endcase


always @(*)//flag2=0还没有充，1：正在充，2：充完了。flag=0，无需冲,1需要充
if((flag==1&&flag2==0)||flag2==1)
on=1;
else 
on=0;

always@(cnt)
begin 
min1=(cnt)%10;
min2=(cnt-min1)/10;
end


always@(money)
begin
money1=money%10;
money2=(money-money1)/10;
end



endmodule
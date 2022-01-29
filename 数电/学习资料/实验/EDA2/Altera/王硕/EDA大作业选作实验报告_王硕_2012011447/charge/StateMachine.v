module StateMachine
(
	input	clk,clk1,m5,m10,enter,reset,on,
	output reg [3:0]state,
	output reg back
);

reg [3:0] next;
reg [3:0] temp;
initial
begin
state=0;
next=0;
temp=0;
end


	
always @(posedge clk)
if(m5==1||m10==1||enter==1||reset==1||on==1)
state=state;
else
state<=temp;

always @(posedge clk1)
temp<=next;
	
	parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6,s7=7,s8=8;//0:0;1:5;2:10;3:15;4:20;5:5;6:10;7:15;8:20

	always @ (posedge m5 or posedge m10 or posedge enter or posedge reset or negedge on) 
	case(state)	
	s0:
	if(m5==1)			next=s1;
	else if(m10==1)	next=s2;
	else 					next=s0;
	s1:
	if(m5==1)			next=s2;
	else if(m10==1)	next=s3;
	else if(enter==1) next=s5;
	else if(reset==1)	next=s0;
	else					next=s1;
	s2:
	if(m5==1)			next=s3;
	else if(m10==1)	next=s4;
	else if(enter==1) next=s6;
	else if(reset==1)	next=s0;
	else					next=s2;
	
	s3:
	if(m5==1)			next=s4;
	else if(m10==1)	next=s3;
	else if(enter==1) next=s7;
	else if(reset==1)	next=s0;
	else					next=s3;
	
	s4:
	if(m5==1)			next=s4;
	else if(m10==1)	next=s4;
	else	if(enter==1)		next=s8;
	else if(reset==1)	next=s0;
	else					next=s4;
	
	s5:
	if(on==0)			next=s0;
	else					next=s5;

	s6:
	if(on==0)			next=s0;
	else					next=s6;
	
	s7:
	if(on==0)			next=s0;
	else					next=s7;
	s8:
	if(on==0)			next=s0;
	else					next=s8;
	
	default:				next=s0;
	endcase
	
always @(*)
if ((m5==1&&state==s4)||(m10==1&&state==s4)||(m10==1&&state==s3))
back=1;
else
back=0;
endmodule
`timescale 1ns/1ns   ///shijiandanwei/fangzhenjingdu
module scanning_tb;

reg [3:0]A;
reg [3:0]B;
reg clk_sys,mm1,mm2,minus_in,K;
wire clk_out;

wire [7:0]out;
wire [1:0]ctrl;
wire sf_out;

scanner inst_scanner( .A(A),.B(B),.K(K),.mm1(mm1),.mm2(mm2),.minus_in(minus_in),.clk_sys(clk_sys),.out(out),.ctrl(ctrl) ,.sf_out(sf_out));

 
initial  begin 
      mm1=0;
      mm2=0;
		K=0;
		minus_in=0;      		
		A=4'b0001;
		B=4'b0001;
		clk_sys=0;

		#36000000 
	 		
		A=4'b0101;
		B=4'b0010;
		
		#36000000    		
		A=4'b0101;
		B=4'b0001;
		end
always 
begin
		#20 clk_sys=~clk_sys;

	end
		
		

        
                                                              
endmodule



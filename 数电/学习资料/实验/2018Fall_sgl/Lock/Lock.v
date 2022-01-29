module Lock(number_input,delete_input,clear_input,clock,
successful_output,failed_output,show_num1,show_num2,show_num3,show_num4,whether_locked_forever);
input[8:0]number_input;
input delete_input;
input clear_input;
input clock;

output wire successful_output;
output wire failed_output;
output[6:0] show_num1,show_num2,show_num3,show_num4;
output whether_locked_forever;

wire[3:0] number_hex;
wire input_signal;
wire[3:0] input_reg1,input_reg2,input_reg3,input_reg4;
wire compare_signal;

input_switch input_module(number_input,delete_input,clear_input,clock,number_hex,input_signal);
change_number change_module(number_hex,input_signal,input_reg1,input_reg2,input_reg3,input_reg4,compare_signal);
control_show show_module1(input_reg1,show_num1);
control_show show_module2(input_reg2,show_num2);
control_show show_module3(input_reg3,show_num3);
control_show show_module4(input_reg4,show_num4);
compare_password compare_module(input_reg1,input_reg2,input_reg3,input_reg4,compare_signal,successful_output,failed_output);
failuer_time failuer_judge_module(successful_output,failed_output,whether_locked_forever);
endmodule



module input_switch(number_input,delete_input,clear_input,clock,number_hex,input_signal);
input[8:0] number_input;
input delete_input, clear_input;
input clock;
output reg[3:0] number_hex;
output reg input_signal;
always@(posedge clock)
begin
case(number_input)
	9'b111111110: 
	begin
		number_hex <= 4'd1;
		input_signal <= 1;
	end
	9'b111111101: 
	begin
		number_hex <= 4'd2;
		input_signal <= 1;
	end
	9'b111111011: 
	begin
		number_hex <= 4'd3;
		input_signal <= 1;
	end
	9'b111110111: 
	begin
		number_hex <= 4'd4;
		input_signal <= 1;
	end
	9'b111101111: 
	begin
		number_hex <= 4'd5;
		input_signal <= 1;
	end
	9'b111011111: 
	begin
		number_hex <= 4'd6;
		input_signal <= 1;
	end
	9'b110111111: 
	begin
		number_hex <= 4'd7;
		input_signal <= 1;
	end
	9'b101111111: 
	begin
		number_hex <= 4'd8;
		input_signal <= 1;
	end
	9'b011111111: 
	begin
		number_hex <= 4'd9;
		input_signal <= 1;
	end
	default:
	begin
		number_hex <= 4'd0;
		input_signal <= 0;
	end
endcase
	if(delete_input == 1)
	begin
		number_hex <= 4'd10;
		input_signal <= 1;
	end
	else if(clear_input == 1)
	begin
		number_hex <= 4'd11;
		input_signal <= 1;
	end
end
endmodule		





module change_number(number_hex,input_signal,input_reg1,input_reg2,input_reg3,input_reg4,compare_signal);
input[3:0] number_hex;
input input_signal;
output reg[3:0]input_reg1,input_reg2,input_reg3,input_reg4;
output reg compare_signal;
reg[3:0] control_reg;

always@(posedge input_signal)
begin
	if(control_reg == 4'b1111 || number_hex == 4'd11)
	begin
	input_reg1 <= 4'b0000;
	input_reg2 <= 4'b0000;
	input_reg3 <= 4'b0000;
	input_reg4 <= 4'b0000;
	control_reg <= 4'b0000;
	compare_signal <= 0;
	end
	else if(number_hex > 4'd0 && number_hex < 4'd10)
	begin 
	case(control_reg)
		4'b0000:
		begin
		input_reg1 <= number_hex;
		control_reg <= 4'b0001;
		compare_signal <= 0;
		end
		4'b0001:
		begin
		input_reg2 <= number_hex;
		control_reg <= 4'b0011;
		compare_signal <= 0;
		end
		4'b0011:
		begin
		input_reg3 <= number_hex;
		control_reg <=4'b0111;
		compare_signal <= 0;
		end
		4'b0111:
		begin
		input_reg4 <= number_hex;
		control_reg <=4'b1111;
		compare_signal <= 1;
		end
		default:
		begin
		control_reg <=4'b0000;
		compare_signal <= 0;
		end
	endcase	
	end
	else if(number_hex == 4'd10)
	begin
	case(control_reg)
		4'b0001:
		begin
		input_reg1 <= 4'b0000;
		control_reg <= 4'b0000;
		compare_signal <= 0;
		end
		4'b0011:
		begin
		input_reg2 <= 4'b0000;
		control_reg <= 4'b0001;
		compare_signal <= 0;
		end
		4'b0111:
		begin
		input_reg3 <= 4'b0000;
		control_reg <= 4'b0011;
		compare_signal <= 0;
		end
		4'b1111:
		begin
		input_reg4 <= 4'b0000;
		control_reg <= 4'b0111;
		compare_signal <= 0;
		end
		default:
		begin
		control_reg <=4'b0000;
		compare_signal <= 0;
		end
	endcase	
	end
end
endmodule




module control_show(input_reg,show_num);
input[3:0] input_reg;
output reg[6:0] show_num;
reg[6:0] show0 = 7'b1111111;
reg[6:0] show1 = 7'b1001111;
reg[6:0] show2 = 7'b0010010;
reg[6:0] show3 = 7'b0000110;
reg[6:0] show4 = 7'b1001100;
reg[6:0] show5 = 7'b0100100;
reg[6:0] show6 = 7'b0100000;
reg[6:0] show7 = 7'b0001111;
reg[6:0] show8 = 7'b0000000;
reg[6:0] show9 = 7'b0000100;
reg[6:0] show10 = 7'b0001000;
reg[6:0] show11 = 7'b1100000;
reg[6:0] show12 = 7'b0110001;
reg[6:0] show13 = 7'b0100010;
reg[6:0] show14 = 7'b0110000;
reg[6:0] show15 = 7'b0111000;

always@(*)
begin
case(input_reg)
	4'd1:show_num <= show1;
	4'd2:show_num <= show2;
	4'd3:show_num <= show3;
	4'd4:show_num <= show4;
	4'd5:show_num <= show5;
	4'd6:show_num <= show6;
	4'd7:show_num <= show7;
	4'd8:show_num <= show8;
	4'd9:show_num <= show9;
	default:show_num <= show0;
endcase 
end
endmodule



module compare_password(input_password1,input_password2,input_password3,input_password4,
compare_signal,success_output,failure_output);
input[3:0] input_password1,input_password2,input_password3,input_password4;
reg[3:0] original_password1,original_password2,original_password3,original_password4;
input compare_signal;
output reg success_output,failure_output;
always@(posedge compare_signal)
begin
if(input_password1 == original_password1 && input_password2 == original_password2 
&& input_password3 == original_password3 && input_password4 == original_password4)
begin
success_output <= 1;
failure_output <= 0;
end
else
begin
success_output <= 0;
failure_output <= 1;
end
end
endmodule


module failuer_time(successful_output,failed_output,whether_locked_forever);
input successful_output,failed_output;
reg[3:0] failure_time_reg;
reg[3:0] most_failure_time;
output reg whether_locked_forever;
always@(*)
begin
if(failed_output == 1 && successful_output == 0)
begin
if(failure_time_reg > most_failure_time - 2) 
begin 
whether_locked_forever <= 1;
failure_time_reg <= most_failure_time;
end
else
begin 
failure_time_reg <= failure_time_reg + 1;
whether_locked_forever <= 0;
end
end
else if(failed_output == 0 && successful_output == 1 && whether_locked_forever == 0)
begin
failure_time_reg <= 0;
whether_locked_forever <= 0;
end
end
endmodule

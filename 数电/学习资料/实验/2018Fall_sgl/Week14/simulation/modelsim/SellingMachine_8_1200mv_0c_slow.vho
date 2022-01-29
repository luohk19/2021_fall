-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "12/19/2018 14:08:28"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SellingMachine IS
    PORT (
	clk_original : IN std_logic;
	add_money0 : IN std_logic;
	add_money1 : IN std_logic;
	add_money5 : IN std_logic;
	buy_thing1 : IN std_logic;
	buy_thing2 : IN std_logic;
	refund : IN std_logic;
	remind_1 : OUT std_logic;
	remind_2 : OUT std_logic;
	remind_refund : OUT std_logic;
	remind_restore_1 : OUT std_logic;
	remind_restore_2 : OUT std_logic;
	show_num : OUT std_logic_vector(6 DOWNTO 0);
	show_place : OUT std_logic_vector(5 DOWNTO 0)
	);
END SellingMachine;

-- Design Ports Information
-- remind_1	=>  Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remind_2	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remind_refund	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remind_restore_1	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remind_restore_2	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num[0]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num[6]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_place[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_place[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_place[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_place[3]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_place[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_place[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_money0	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_money1	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_money5	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buy_thing1	=>  Location: PIN_175,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_original	=>  Location: PIN_152,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buy_thing2	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- refund	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SellingMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_original : std_logic;
SIGNAL ww_add_money0 : std_logic;
SIGNAL ww_add_money1 : std_logic;
SIGNAL ww_add_money5 : std_logic;
SIGNAL ww_buy_thing1 : std_logic;
SIGNAL ww_buy_thing2 : std_logic;
SIGNAL ww_refund : std_logic;
SIGNAL ww_remind_1 : std_logic;
SIGNAL ww_remind_2 : std_logic;
SIGNAL ww_remind_refund : std_logic;
SIGNAL ww_remind_restore_1 : std_logic;
SIGNAL ww_remind_restore_2 : std_logic;
SIGNAL ww_show_num : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_show_place : std_logic_vector(5 DOWNTO 0);
SIGNAL \count_mux|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count_mux_great|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_original~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \show_mux|Add0~10_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \change_mux|Add4~0_combout\ : std_logic;
SIGNAL \change_mux|Add0~0_combout\ : std_logic;
SIGNAL \change_mux|Add0~4_combout\ : std_logic;
SIGNAL \change_mux|Add0~6_combout\ : std_logic;
SIGNAL \change_mux|Add0~8_combout\ : std_logic;
SIGNAL \change_mux|Add2~4_combout\ : std_logic;
SIGNAL \change_mux|Add3~2_combout\ : std_logic;
SIGNAL \change_mux|Add3~4_combout\ : std_logic;
SIGNAL \change_mux|Add3~10_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~0_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~6_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~10_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~18_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~22_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~36_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~42_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~46_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~54_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~60_combout\ : std_logic;
SIGNAL \count_mux|Add0~0_combout\ : std_logic;
SIGNAL \count_mux|Add0~14_combout\ : std_logic;
SIGNAL \count_mux|Add0~22_combout\ : std_logic;
SIGNAL \count_mux|Add0~31\ : std_logic;
SIGNAL \count_mux|Add0~32_combout\ : std_logic;
SIGNAL \change_mux|Selector11~1_combout\ : std_logic;
SIGNAL \change_mux|remind_refund~1_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[69]~75_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[67]~77_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[66]~78_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[65]~79_combout\ : std_logic;
SIGNAL \show_mux|Mult0|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \show_mux|Mult0|mult_core|romout[0][6]~3_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\ : std_logic;
SIGNAL \change_mux|money[9]~5_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~0_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~6_combout\ : std_logic;
SIGNAL \count_mux_great|count~0_combout\ : std_logic;
SIGNAL \count_mux_great|count~2_combout\ : std_logic;
SIGNAL \count_mux_great|count~6_combout\ : std_logic;
SIGNAL \count_mux|count~0_combout\ : std_logic;
SIGNAL \count_mux|count~2_combout\ : std_logic;
SIGNAL \count_mux|count~6_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[70]~81_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[68]~83_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \change_mux|Selector14~3_combout\ : std_logic;
SIGNAL \clk_original~input_o\ : std_logic;
SIGNAL \clk_original~inputclkctrl_outclk\ : std_logic;
SIGNAL \judge_mux|previous_state[3]~feeder_combout\ : std_logic;
SIGNAL \remind_1~output_o\ : std_logic;
SIGNAL \remind_2~output_o\ : std_logic;
SIGNAL \remind_refund~output_o\ : std_logic;
SIGNAL \remind_restore_1~output_o\ : std_logic;
SIGNAL \remind_restore_2~output_o\ : std_logic;
SIGNAL \show_num[0]~output_o\ : std_logic;
SIGNAL \show_num[1]~output_o\ : std_logic;
SIGNAL \show_num[2]~output_o\ : std_logic;
SIGNAL \show_num[3]~output_o\ : std_logic;
SIGNAL \show_num[4]~output_o\ : std_logic;
SIGNAL \show_num[5]~output_o\ : std_logic;
SIGNAL \show_num[6]~output_o\ : std_logic;
SIGNAL \show_place[0]~output_o\ : std_logic;
SIGNAL \show_place[1]~output_o\ : std_logic;
SIGNAL \show_place[2]~output_o\ : std_logic;
SIGNAL \show_place[3]~output_o\ : std_logic;
SIGNAL \show_place[4]~output_o\ : std_logic;
SIGNAL \show_place[5]~output_o\ : std_logic;
SIGNAL \count_mux_great|Add0~1\ : std_logic;
SIGNAL \count_mux_great|Add0~2_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~3\ : std_logic;
SIGNAL \count_mux_great|Add0~4_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~5\ : std_logic;
SIGNAL \count_mux_great|Add0~7\ : std_logic;
SIGNAL \count_mux_great|Add0~8_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~9\ : std_logic;
SIGNAL \count_mux_great|Add0~11\ : std_logic;
SIGNAL \count_mux_great|Add0~12_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~1_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~38_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~34_combout\ : std_logic;
SIGNAL \count_mux_great|count~5_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~5_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~7_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~58_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~8_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~9_combout\ : std_logic;
SIGNAL \count_mux_great|count~3_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~2_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~28_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~26_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~3_combout\ : std_logic;
SIGNAL \count_mux_great|Equal0~4_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~13\ : std_logic;
SIGNAL \count_mux_great|Add0~14_combout\ : std_logic;
SIGNAL \count_mux_great|count~1_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~15\ : std_logic;
SIGNAL \count_mux_great|Add0~16_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~17\ : std_logic;
SIGNAL \count_mux_great|Add0~19\ : std_logic;
SIGNAL \count_mux_great|Add0~20_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~21\ : std_logic;
SIGNAL \count_mux_great|Add0~23\ : std_logic;
SIGNAL \count_mux_great|Add0~24_combout\ : std_logic;
SIGNAL \count_mux_great|count~4_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~25\ : std_logic;
SIGNAL \count_mux_great|Add0~27\ : std_logic;
SIGNAL \count_mux_great|Add0~29\ : std_logic;
SIGNAL \count_mux_great|Add0~30_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~31\ : std_logic;
SIGNAL \count_mux_great|Add0~32_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~33\ : std_logic;
SIGNAL \count_mux_great|Add0~35\ : std_logic;
SIGNAL \count_mux_great|Add0~37\ : std_logic;
SIGNAL \count_mux_great|Add0~39\ : std_logic;
SIGNAL \count_mux_great|Add0~40_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~41\ : std_logic;
SIGNAL \count_mux_great|Add0~43\ : std_logic;
SIGNAL \count_mux_great|Add0~44_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~45\ : std_logic;
SIGNAL \count_mux_great|Add0~47\ : std_logic;
SIGNAL \count_mux_great|Add0~48_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~49\ : std_logic;
SIGNAL \count_mux_great|Add0~50_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~51\ : std_logic;
SIGNAL \count_mux_great|Add0~52_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~53\ : std_logic;
SIGNAL \count_mux_great|Add0~55\ : std_logic;
SIGNAL \count_mux_great|Add0~56_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~57\ : std_logic;
SIGNAL \count_mux_great|Add0~59\ : std_logic;
SIGNAL \count_mux_great|Add0~61\ : std_logic;
SIGNAL \count_mux_great|Add0~62_combout\ : std_logic;
SIGNAL \count_mux_great|Add0~63\ : std_logic;
SIGNAL \count_mux_great|Add0~64_combout\ : std_logic;
SIGNAL \count_mux_great|clk~0_combout\ : std_logic;
SIGNAL \count_mux_great|clk~feeder_combout\ : std_logic;
SIGNAL \count_mux_great|clk~q\ : std_logic;
SIGNAL \count_mux_great|clk~clkctrl_outclk\ : std_logic;
SIGNAL \add_money0~input_o\ : std_logic;
SIGNAL \judge_mux|always0~0_combout\ : std_logic;
SIGNAL \judge_mux|change_state[0]~feeder_combout\ : std_logic;
SIGNAL \buy_thing2~input_o\ : std_logic;
SIGNAL \judge_mux|previous_state[4]~feeder_combout\ : std_logic;
SIGNAL \judge_mux|always0~2_combout\ : std_logic;
SIGNAL \add_money1~input_o\ : std_logic;
SIGNAL \judge_mux|previous_state[1]~feeder_combout\ : std_logic;
SIGNAL \add_money5~input_o\ : std_logic;
SIGNAL \judge_mux|always0~1_combout\ : std_logic;
SIGNAL \judge_mux|change_state~1_combout\ : std_logic;
SIGNAL \buy_thing1~input_o\ : std_logic;
SIGNAL \judge_mux|change_state~4_combout\ : std_logic;
SIGNAL \refund~input_o\ : std_logic;
SIGNAL \judge_mux|change_state~5_combout\ : std_logic;
SIGNAL \judge_mux|change_state~6_combout\ : std_logic;
SIGNAL \judge_mux|change_state~0_combout\ : std_logic;
SIGNAL \judge_mux|change_state~2_combout\ : std_logic;
SIGNAL \judge_mux|change_state[3]~feeder_combout\ : std_logic;
SIGNAL \change_mux|Selector9~0_combout\ : std_logic;
SIGNAL \change_mux|Add4~9\ : std_logic;
SIGNAL \change_mux|Add4~10_combout\ : std_logic;
SIGNAL \change_mux|Add4~4_combout\ : std_logic;
SIGNAL \change_mux|Add2~1\ : std_logic;
SIGNAL \change_mux|Add2~2_combout\ : std_logic;
SIGNAL \change_mux|money[9]~1_combout\ : std_logic;
SIGNAL \judge_mux|change_state~3_combout\ : std_logic;
SIGNAL \judge_mux|change_state[2]~feeder_combout\ : std_logic;
SIGNAL \change_mux|Add4~11\ : std_logic;
SIGNAL \change_mux|Add4~12_combout\ : std_logic;
SIGNAL \change_mux|Add2~3\ : std_logic;
SIGNAL \change_mux|Add2~5\ : std_logic;
SIGNAL \change_mux|Add2~7\ : std_logic;
SIGNAL \change_mux|Add2~9\ : std_logic;
SIGNAL \change_mux|Add2~10_combout\ : std_logic;
SIGNAL \change_mux|Add3~1\ : std_logic;
SIGNAL \change_mux|Add3~3\ : std_logic;
SIGNAL \change_mux|Add3~5\ : std_logic;
SIGNAL \change_mux|Add3~7\ : std_logic;
SIGNAL \change_mux|Add3~9\ : std_logic;
SIGNAL \change_mux|Add3~11\ : std_logic;
SIGNAL \change_mux|Add3~12_combout\ : std_logic;
SIGNAL \change_mux|Selector3~0_combout\ : std_logic;
SIGNAL \change_mux|Add0~11\ : std_logic;
SIGNAL \change_mux|Add0~12_combout\ : std_logic;
SIGNAL \change_mux|Add1~1\ : std_logic;
SIGNAL \change_mux|Add1~3\ : std_logic;
SIGNAL \change_mux|Add1~5\ : std_logic;
SIGNAL \change_mux|Add1~7\ : std_logic;
SIGNAL \change_mux|Add1~9\ : std_logic;
SIGNAL \change_mux|Add1~10_combout\ : std_logic;
SIGNAL \change_mux|Selector3~1_combout\ : std_logic;
SIGNAL \change_mux|Selector3~2_combout\ : std_logic;
SIGNAL \change_mux|Selector3~3_combout\ : std_logic;
SIGNAL \change_mux|money[9]~4_combout\ : std_logic;
SIGNAL \change_mux|money[9]~6_combout\ : std_logic;
SIGNAL \change_mux|money[9]~3_combout\ : std_logic;
SIGNAL \change_mux|money[9]~7_combout\ : std_logic;
SIGNAL \change_mux|Add4~13\ : std_logic;
SIGNAL \change_mux|Add4~14_combout\ : std_logic;
SIGNAL \change_mux|Add3~13\ : std_logic;
SIGNAL \change_mux|Add3~14_combout\ : std_logic;
SIGNAL \change_mux|Add2~11\ : std_logic;
SIGNAL \change_mux|Add2~12_combout\ : std_logic;
SIGNAL \change_mux|Selector2~0_combout\ : std_logic;
SIGNAL \change_mux|Add1~11\ : std_logic;
SIGNAL \change_mux|Add1~12_combout\ : std_logic;
SIGNAL \change_mux|Selector2~1_combout\ : std_logic;
SIGNAL \change_mux|Add0~13\ : std_logic;
SIGNAL \change_mux|Add0~14_combout\ : std_logic;
SIGNAL \change_mux|Selector2~2_combout\ : std_logic;
SIGNAL \change_mux|Selector2~3_combout\ : std_logic;
SIGNAL \change_mux|Add4~15\ : std_logic;
SIGNAL \change_mux|Add4~16_combout\ : std_logic;
SIGNAL \change_mux|Add0~15\ : std_logic;
SIGNAL \change_mux|Add0~16_combout\ : std_logic;
SIGNAL \change_mux|Add2~13\ : std_logic;
SIGNAL \change_mux|Add2~14_combout\ : std_logic;
SIGNAL \change_mux|Add3~15\ : std_logic;
SIGNAL \change_mux|Add3~16_combout\ : std_logic;
SIGNAL \change_mux|Selector1~0_combout\ : std_logic;
SIGNAL \change_mux|Add1~13\ : std_logic;
SIGNAL \change_mux|Add1~14_combout\ : std_logic;
SIGNAL \change_mux|Selector1~1_combout\ : std_logic;
SIGNAL \change_mux|Selector1~2_combout\ : std_logic;
SIGNAL \change_mux|Selector1~3_combout\ : std_logic;
SIGNAL \change_mux|Add4~17\ : std_logic;
SIGNAL \change_mux|Add4~18_combout\ : std_logic;
SIGNAL \change_mux|Add3~17\ : std_logic;
SIGNAL \change_mux|Add3~18_combout\ : std_logic;
SIGNAL \change_mux|Add2~15\ : std_logic;
SIGNAL \change_mux|Add2~16_combout\ : std_logic;
SIGNAL \change_mux|Selector0~0_combout\ : std_logic;
SIGNAL \change_mux|Add0~17\ : std_logic;
SIGNAL \change_mux|Add0~18_combout\ : std_logic;
SIGNAL \change_mux|money[9]~2_combout\ : std_logic;
SIGNAL \change_mux|Add1~15\ : std_logic;
SIGNAL \change_mux|Add1~16_combout\ : std_logic;
SIGNAL \change_mux|Selector0~1_combout\ : std_logic;
SIGNAL \change_mux|Selector0~2_combout\ : std_logic;
SIGNAL \change_mux|Selector0~3_combout\ : std_logic;
SIGNAL \change_mux|LessThan4~0_combout\ : std_logic;
SIGNAL \change_mux|LessThan4~1_combout\ : std_logic;
SIGNAL \change_mux|money[9]~0_combout\ : std_logic;
SIGNAL \change_mux|Selector7~0_combout\ : std_logic;
SIGNAL \change_mux|Add1~2_combout\ : std_logic;
SIGNAL \change_mux|Selector7~1_combout\ : std_logic;
SIGNAL \change_mux|Selector7~2_combout\ : std_logic;
SIGNAL \change_mux|Selector7~3_combout\ : std_logic;
SIGNAL \change_mux|Add0~1\ : std_logic;
SIGNAL \change_mux|Add0~3\ : std_logic;
SIGNAL \change_mux|Add0~5\ : std_logic;
SIGNAL \change_mux|Add0~7\ : std_logic;
SIGNAL \change_mux|Add0~9\ : std_logic;
SIGNAL \change_mux|Add0~10_combout\ : std_logic;
SIGNAL \change_mux|Add2~8_combout\ : std_logic;
SIGNAL \change_mux|Selector4~0_combout\ : std_logic;
SIGNAL \change_mux|Add1~8_combout\ : std_logic;
SIGNAL \change_mux|Selector4~1_combout\ : std_logic;
SIGNAL \change_mux|Selector4~2_combout\ : std_logic;
SIGNAL \change_mux|Selector4~3_combout\ : std_logic;
SIGNAL \change_mux|LessThan6~2_combout\ : std_logic;
SIGNAL \change_mux|LessThan6~0_combout\ : std_logic;
SIGNAL \change_mux|LessThan6~3_combout\ : std_logic;
SIGNAL \change_mux|Selector9~1_combout\ : std_logic;
SIGNAL \change_mux|Add3~0_combout\ : std_logic;
SIGNAL \change_mux|Selector9~2_combout\ : std_logic;
SIGNAL \change_mux|Selector9~3_combout\ : std_logic;
SIGNAL \change_mux|Selector9~4_combout\ : std_logic;
SIGNAL \change_mux|Selector9~5_combout\ : std_logic;
SIGNAL \change_mux|Selector9~6_combout\ : std_logic;
SIGNAL \change_mux|Selector9~7_combout\ : std_logic;
SIGNAL \change_mux|Selector9~8_combout\ : std_logic;
SIGNAL \change_mux|Add4~1\ : std_logic;
SIGNAL \change_mux|Add4~2_combout\ : std_logic;
SIGNAL \change_mux|Add2~0_combout\ : std_logic;
SIGNAL \change_mux|Selector8~0_combout\ : std_logic;
SIGNAL \change_mux|Add0~2_combout\ : std_logic;
SIGNAL \change_mux|Add1~0_combout\ : std_logic;
SIGNAL \change_mux|Selector8~1_combout\ : std_logic;
SIGNAL \change_mux|Selector8~2_combout\ : std_logic;
SIGNAL \change_mux|Selector8~3_combout\ : std_logic;
SIGNAL \change_mux|Add4~3\ : std_logic;
SIGNAL \change_mux|Add4~5\ : std_logic;
SIGNAL \change_mux|Add4~6_combout\ : std_logic;
SIGNAL \change_mux|Add3~6_combout\ : std_logic;
SIGNAL \change_mux|Selector6~0_combout\ : std_logic;
SIGNAL \change_mux|Add1~4_combout\ : std_logic;
SIGNAL \change_mux|Selector6~1_combout\ : std_logic;
SIGNAL \change_mux|Selector6~2_combout\ : std_logic;
SIGNAL \change_mux|Selector6~3_combout\ : std_logic;
SIGNAL \change_mux|Add4~7\ : std_logic;
SIGNAL \change_mux|Add4~8_combout\ : std_logic;
SIGNAL \change_mux|Add1~6_combout\ : std_logic;
SIGNAL \change_mux|Add2~6_combout\ : std_logic;
SIGNAL \change_mux|Add3~8_combout\ : std_logic;
SIGNAL \change_mux|Selector5~0_combout\ : std_logic;
SIGNAL \change_mux|Selector5~1_combout\ : std_logic;
SIGNAL \change_mux|Selector5~2_combout\ : std_logic;
SIGNAL \change_mux|Selector5~3_combout\ : std_logic;
SIGNAL \change_mux|LessThan5~0_combout\ : std_logic;
SIGNAL \change_mux|LessThan5~1_combout\ : std_logic;
SIGNAL \change_mux|Selector13~13_combout\ : std_logic;
SIGNAL \change_mux|LessThan6~1_combout\ : std_logic;
SIGNAL \change_mux|Selector13~5_combout\ : std_logic;
SIGNAL \change_mux|Selector13~6_combout\ : std_logic;
SIGNAL \change_mux|Selector13~7_combout\ : std_logic;
SIGNAL \change_mux|Selector13~8_combout\ : std_logic;
SIGNAL \change_mux|Selector13~9_combout\ : std_logic;
SIGNAL \change_mux|Selector13~10_combout\ : std_logic;
SIGNAL \change_mux|Selector13~11_combout\ : std_logic;
SIGNAL \change_mux|Selector13~12_combout\ : std_logic;
SIGNAL \change_mux|remind_1~q\ : std_logic;
SIGNAL \change_mux|Selector11~0_combout\ : std_logic;
SIGNAL \change_mux|Selector11~2_combout\ : std_logic;
SIGNAL \change_mux|Selector11~3_combout\ : std_logic;
SIGNAL \change_mux|Selector11~4_combout\ : std_logic;
SIGNAL \change_mux|Selector13~4_combout\ : std_logic;
SIGNAL \change_mux|Selector11~5_combout\ : std_logic;
SIGNAL \change_mux|remind_2~0_combout\ : std_logic;
SIGNAL \change_mux|remind_2~q\ : std_logic;
SIGNAL \change_mux|remind_refund~0_combout\ : std_logic;
SIGNAL \change_mux|remind_refund~2_combout\ : std_logic;
SIGNAL \change_mux|remind_refund~q\ : std_logic;
SIGNAL \change_mux|Selector14~2_combout\ : std_logic;
SIGNAL \change_mux|remind_restore_1~q\ : std_logic;
SIGNAL \change_mux|Selector12~0_combout\ : std_logic;
SIGNAL \change_mux|Selector12~1_combout\ : std_logic;
SIGNAL \change_mux|remind_restore_2~0_combout\ : std_logic;
SIGNAL \change_mux|remind_restore_2~q\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Selector1~0_combout\ : std_logic;
SIGNAL \show_mux|show_state.00~feeder_combout\ : std_logic;
SIGNAL \show_mux|show_state.00~q\ : std_logic;
SIGNAL \show_mux|show_state~8_combout\ : std_logic;
SIGNAL \show_mux|show_state.01~q\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[62]~84_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[70]~74_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[68]~76_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[67]~88_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|StageOut[65]~80_combout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \show_mux|Mult0|mult_core|romout[0][9]~0_combout\ : std_logic;
SIGNAL \show_mux|Mult0|mult_core|romout[0][7]~2_combout\ : std_logic;
SIGNAL \show_mux|Mult0|mult_core|romout[0][5]~4_combout\ : std_logic;
SIGNAL \show_mux|Add0~1\ : std_logic;
SIGNAL \show_mux|Add0~3\ : std_logic;
SIGNAL \show_mux|Add0~5\ : std_logic;
SIGNAL \show_mux|Add0~7\ : std_logic;
SIGNAL \show_mux|Add0~9\ : std_logic;
SIGNAL \show_mux|Add0~11\ : std_logic;
SIGNAL \show_mux|Add0~13\ : std_logic;
SIGNAL \show_mux|Add0~14_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \show_mux|Add0~12_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \show_mux|Add0~8_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \show_mux|Add0~6_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \show_mux|Add0~4_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \show_mux|Add0~2_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|show_state.10~feeder_combout\ : std_logic;
SIGNAL \show_mux|show_state.10~q\ : std_logic;
SIGNAL \show_mux|Selector1~1_combout\ : std_logic;
SIGNAL \show_mux|Selector1~2_combout\ : std_logic;
SIGNAL \show_mux|show_state.11~feeder_combout\ : std_logic;
SIGNAL \show_mux|show_state.11~q\ : std_logic;
SIGNAL \show_mux|Selector3~0_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \show_mux|Add0~0_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \show_mux|Selector3~1_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\ : std_logic;
SIGNAL \show_mux|Selector0~0_combout\ : std_logic;
SIGNAL \show_mux|Selector0~1_combout\ : std_logic;
SIGNAL \show_mux|Selector0~2_combout\ : std_logic;
SIGNAL \show_mux|Selector2~0_combout\ : std_logic;
SIGNAL \show_mux|Selector2~1_combout\ : std_logic;
SIGNAL \show_mux|Selector2~2_combout\ : std_logic;
SIGNAL \show_mux|Mux6~0_combout\ : std_logic;
SIGNAL \show_mux|Mux5~0_combout\ : std_logic;
SIGNAL \show_mux|Mux4~0_combout\ : std_logic;
SIGNAL \show_mux|Mux3~0_combout\ : std_logic;
SIGNAL \show_mux|Mux2~0_combout\ : std_logic;
SIGNAL \show_mux|Mux1~0_combout\ : std_logic;
SIGNAL \show_mux|Mux0~0_combout\ : std_logic;
SIGNAL \count_mux|Add0~1\ : std_logic;
SIGNAL \count_mux|Add0~2_combout\ : std_logic;
SIGNAL \count_mux|Add0~3\ : std_logic;
SIGNAL \count_mux|Add0~4_combout\ : std_logic;
SIGNAL \count_mux|Add0~5\ : std_logic;
SIGNAL \count_mux|Add0~6_combout\ : std_logic;
SIGNAL \count_mux|Equal0~0_combout\ : std_logic;
SIGNAL \count_mux|Add0~7\ : std_logic;
SIGNAL \count_mux|Add0~8_combout\ : std_logic;
SIGNAL \count_mux|Add0~9\ : std_logic;
SIGNAL \count_mux|Add0~10_combout\ : std_logic;
SIGNAL \count_mux|count~1_combout\ : std_logic;
SIGNAL \count_mux|Add0~11\ : std_logic;
SIGNAL \count_mux|Add0~12_combout\ : std_logic;
SIGNAL \count_mux|Equal0~1_combout\ : std_logic;
SIGNAL \count_mux|Add0~13\ : std_logic;
SIGNAL \count_mux|Add0~15\ : std_logic;
SIGNAL \count_mux|Add0~17\ : std_logic;
SIGNAL \count_mux|Add0~18_combout\ : std_logic;
SIGNAL \count_mux|count~4_combout\ : std_logic;
SIGNAL \count_mux|Add0~19\ : std_logic;
SIGNAL \count_mux|Add0~20_combout\ : std_logic;
SIGNAL \count_mux|count~5_combout\ : std_logic;
SIGNAL \count_mux|Add0~16_combout\ : std_logic;
SIGNAL \count_mux|count~3_combout\ : std_logic;
SIGNAL \count_mux|Equal0~2_combout\ : std_logic;
SIGNAL \count_mux|Add0~21\ : std_logic;
SIGNAL \count_mux|Add0~23\ : std_logic;
SIGNAL \count_mux|Add0~24_combout\ : std_logic;
SIGNAL \count_mux|Add0~25\ : std_logic;
SIGNAL \count_mux|Add0~26_combout\ : std_logic;
SIGNAL \count_mux|Add0~27\ : std_logic;
SIGNAL \count_mux|Add0~28_combout\ : std_logic;
SIGNAL \count_mux|Add0~29\ : std_logic;
SIGNAL \count_mux|Add0~30_combout\ : std_logic;
SIGNAL \count_mux|Equal0~3_combout\ : std_logic;
SIGNAL \count_mux|Equal0~4_combout\ : std_logic;
SIGNAL \count_mux|Equal0~5_combout\ : std_logic;
SIGNAL \count_mux|clk~0_combout\ : std_logic;
SIGNAL \count_mux|clk~feeder_combout\ : std_logic;
SIGNAL \count_mux|clk~q\ : std_logic;
SIGNAL \count_mux|clk~clkctrl_outclk\ : std_logic;
SIGNAL \show_mux|show_place[0]~0_combout\ : std_logic;
SIGNAL \show_mux|show_place[1]~1_combout\ : std_logic;
SIGNAL \show_mux|show_place[2]~2_combout\ : std_logic;
SIGNAL \show_mux|show_place\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \count_mux|count\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \show_mux|to_be_shown\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \judge_mux|change_state\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \judge_mux|previous_state\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \count_mux_great|count\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \change_mux|money\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \show_mux|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_clk_original <= clk_original;
ww_add_money0 <= add_money0;
ww_add_money1 <= add_money1;
ww_add_money5 <= add_money5;
ww_buy_thing1 <= buy_thing1;
ww_buy_thing2 <= buy_thing2;
ww_refund <= refund;
remind_1 <= ww_remind_1;
remind_2 <= ww_remind_2;
remind_refund <= ww_remind_refund;
remind_restore_1 <= ww_remind_restore_1;
remind_restore_2 <= ww_remind_restore_2;
show_num <= ww_show_num;
show_place <= ww_show_place;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count_mux|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \count_mux|clk~q\);

\count_mux_great|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \count_mux_great|clk~q\);

\clk_original~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_original~input_o\);
\show_mux|ALT_INV_Mux6~0_combout\ <= NOT \show_mux|Mux6~0_combout\;

-- Location: LCCOMB_X27_Y22_N6
\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\show_mux|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\)))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\show_mux|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ & 
-- (!\show_mux|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\)))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ & (!\show_mux|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ & 
-- !\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X27_Y22_N10
\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\show_mux|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & (((!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ & (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\show_mux|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & !\show_mux|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\)) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X27_Y22_N12
\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\show_mux|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\)))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\show_mux|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\)))))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X28_Y20_N10
\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\show_mux|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\) # (\show_mux|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\)))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\show_mux|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\) # (\show_mux|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\,
	datad => VCC,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X28_Y20_N12
\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\show_mux|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\)))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\show_mux|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ & 
-- (!\show_mux|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\)))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ & (!\show_mux|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ & 
-- !\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X28_Y20_N16
\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\ & (((!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\ & !\show_mux|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\)) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X26_Y20_N22
\show_mux|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Add0~10_combout\ = (\change_mux|money\(7) & ((\show_mux|Mult0|mult_core|romout[0][7]~2_combout\ & (!\show_mux|Add0~9\)) # (!\show_mux|Mult0|mult_core|romout[0][7]~2_combout\ & (\show_mux|Add0~9\ & VCC)))) # (!\change_mux|money\(7) & 
-- ((\show_mux|Mult0|mult_core|romout[0][7]~2_combout\ & ((\show_mux|Add0~9\) # (GND))) # (!\show_mux|Mult0|mult_core|romout[0][7]~2_combout\ & (!\show_mux|Add0~9\))))
-- \show_mux|Add0~11\ = CARRY((\change_mux|money\(7) & (\show_mux|Mult0|mult_core|romout[0][7]~2_combout\ & !\show_mux|Add0~9\)) # (!\change_mux|money\(7) & ((\show_mux|Mult0|mult_core|romout[0][7]~2_combout\) # (!\show_mux|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(7),
	datab => \show_mux|Mult0|mult_core|romout[0][7]~2_combout\,
	datad => VCC,
	cin => \show_mux|Add0~9\,
	combout => \show_mux|Add0~10_combout\,
	cout => \show_mux|Add0~11\);

-- Location: LCCOMB_X24_Y20_N14
\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\show_mux|Add0~14_combout\ & (\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\show_mux|Add0~14_combout\ & 
-- (!\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\show_mux|Add0~14_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Add0~14_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X24_Y20_N22
\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\show_mux|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\)))))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X23_Y20_N16
\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\show_mux|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\show_mux|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datad => VCC,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X23_Y16_N16
\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X22_Y16_N24
\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\show_mux|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\)))))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X26_Y18_N10
\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\change_mux|money\(9) & (\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\change_mux|money\(9) & 
-- (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\change_mux|money\(9) & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(9),
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X26_Y18_N24
\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\ & 
-- (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X26_Y18_N26
\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\)))))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X27_Y18_N16
\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datad => VCC,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X27_Y18_N18
\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X28_Y18_N20
\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X28_Y18_N22
\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100_combout\)))))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X27_Y19_N10
\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X27_Y19_N12
\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101_combout\)))))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X28_Y16_N2
\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\,
	datad => VCC,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X28_Y16_N6
\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\)))))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X29_Y20_N12
\change_mux|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~0_combout\ = \change_mux|money\(0) $ (VCC)
-- \change_mux|Add4~1\ = CARRY(\change_mux|money\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(0),
	datad => VCC,
	combout => \change_mux|Add4~0_combout\,
	cout => \change_mux|Add4~1\);

-- Location: LCCOMB_X26_Y21_N4
\change_mux|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~0_combout\ = \change_mux|money\(0) $ (VCC)
-- \change_mux|Add0~1\ = CARRY(\change_mux|money\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(0),
	datad => VCC,
	combout => \change_mux|Add0~0_combout\,
	cout => \change_mux|Add0~1\);

-- Location: LCCOMB_X26_Y21_N8
\change_mux|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~4_combout\ = (\change_mux|money\(2) & ((GND) # (!\change_mux|Add0~3\))) # (!\change_mux|money\(2) & (\change_mux|Add0~3\ $ (GND)))
-- \change_mux|Add0~5\ = CARRY((\change_mux|money\(2)) # (!\change_mux|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(2),
	datad => VCC,
	cin => \change_mux|Add0~3\,
	combout => \change_mux|Add0~4_combout\,
	cout => \change_mux|Add0~5\);

-- Location: LCCOMB_X26_Y21_N10
\change_mux|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~6_combout\ = (\change_mux|money\(3) & (!\change_mux|Add0~5\)) # (!\change_mux|money\(3) & ((\change_mux|Add0~5\) # (GND)))
-- \change_mux|Add0~7\ = CARRY((!\change_mux|Add0~5\) # (!\change_mux|money\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(3),
	datad => VCC,
	cin => \change_mux|Add0~5\,
	combout => \change_mux|Add0~6_combout\,
	cout => \change_mux|Add0~7\);

-- Location: LCCOMB_X26_Y21_N12
\change_mux|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~8_combout\ = (\change_mux|money\(4) & (\change_mux|Add0~7\ $ (GND))) # (!\change_mux|money\(4) & (!\change_mux|Add0~7\ & VCC))
-- \change_mux|Add0~9\ = CARRY((\change_mux|money\(4) & !\change_mux|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(4),
	datad => VCC,
	cin => \change_mux|Add0~7\,
	combout => \change_mux|Add0~8_combout\,
	cout => \change_mux|Add0~9\);

-- Location: LCCOMB_X28_Y21_N10
\change_mux|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add2~4_combout\ = (\change_mux|money\(3) & (\change_mux|Add2~3\ $ (GND))) # (!\change_mux|money\(3) & (!\change_mux|Add2~3\ & VCC))
-- \change_mux|Add2~5\ = CARRY((\change_mux|money\(3) & !\change_mux|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(3),
	datad => VCC,
	cin => \change_mux|Add2~3\,
	combout => \change_mux|Add2~4_combout\,
	cout => \change_mux|Add2~5\);

-- Location: LCCOMB_X29_Y21_N2
\change_mux|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~2_combout\ = (\change_mux|money\(1) & (!\change_mux|Add3~1\)) # (!\change_mux|money\(1) & ((\change_mux|Add3~1\) # (GND)))
-- \change_mux|Add3~3\ = CARRY((!\change_mux|Add3~1\) # (!\change_mux|money\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(1),
	datad => VCC,
	cin => \change_mux|Add3~1\,
	combout => \change_mux|Add3~2_combout\,
	cout => \change_mux|Add3~3\);

-- Location: LCCOMB_X29_Y21_N4
\change_mux|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~4_combout\ = (\change_mux|money\(2) & (\change_mux|Add3~3\ $ (GND))) # (!\change_mux|money\(2) & (!\change_mux|Add3~3\ & VCC))
-- \change_mux|Add3~5\ = CARRY((\change_mux|money\(2) & !\change_mux|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(2),
	datad => VCC,
	cin => \change_mux|Add3~3\,
	combout => \change_mux|Add3~4_combout\,
	cout => \change_mux|Add3~5\);

-- Location: LCCOMB_X29_Y21_N10
\change_mux|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~10_combout\ = (\change_mux|money\(5) & (\change_mux|Add3~9\ & VCC)) # (!\change_mux|money\(5) & (!\change_mux|Add3~9\))
-- \change_mux|Add3~11\ = CARRY((!\change_mux|money\(5) & !\change_mux|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(5),
	datad => VCC,
	cin => \change_mux|Add3~9\,
	combout => \change_mux|Add3~10_combout\,
	cout => \change_mux|Add3~11\);

-- Location: LCCOMB_X11_Y18_N16
\count_mux_great|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~0_combout\ = \count_mux_great|count\(0) $ (VCC)
-- \count_mux_great|Add0~1\ = CARRY(\count_mux_great|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(0),
	datad => VCC,
	combout => \count_mux_great|Add0~0_combout\,
	cout => \count_mux_great|Add0~1\);

-- Location: LCCOMB_X11_Y18_N22
\count_mux_great|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~6_combout\ = (\count_mux_great|count\(3) & (!\count_mux_great|Add0~5\)) # (!\count_mux_great|count\(3) & ((\count_mux_great|Add0~5\) # (GND)))
-- \count_mux_great|Add0~7\ = CARRY((!\count_mux_great|Add0~5\) # (!\count_mux_great|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(3),
	datad => VCC,
	cin => \count_mux_great|Add0~5\,
	combout => \count_mux_great|Add0~6_combout\,
	cout => \count_mux_great|Add0~7\);

-- Location: LCCOMB_X11_Y18_N26
\count_mux_great|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~10_combout\ = (\count_mux_great|count\(5) & (!\count_mux_great|Add0~9\)) # (!\count_mux_great|count\(5) & ((\count_mux_great|Add0~9\) # (GND)))
-- \count_mux_great|Add0~11\ = CARRY((!\count_mux_great|Add0~9\) # (!\count_mux_great|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(5),
	datad => VCC,
	cin => \count_mux_great|Add0~9\,
	combout => \count_mux_great|Add0~10_combout\,
	cout => \count_mux_great|Add0~11\);

-- Location: LCCOMB_X11_Y17_N2
\count_mux_great|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~18_combout\ = (\count_mux_great|count\(9) & (!\count_mux_great|Add0~17\)) # (!\count_mux_great|count\(9) & ((\count_mux_great|Add0~17\) # (GND)))
-- \count_mux_great|Add0~19\ = CARRY((!\count_mux_great|Add0~17\) # (!\count_mux_great|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(9),
	datad => VCC,
	cin => \count_mux_great|Add0~17\,
	combout => \count_mux_great|Add0~18_combout\,
	cout => \count_mux_great|Add0~19\);

-- Location: LCCOMB_X11_Y17_N6
\count_mux_great|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~22_combout\ = (\count_mux_great|count\(11) & (!\count_mux_great|Add0~21\)) # (!\count_mux_great|count\(11) & ((\count_mux_great|Add0~21\) # (GND)))
-- \count_mux_great|Add0~23\ = CARRY((!\count_mux_great|Add0~21\) # (!\count_mux_great|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(11),
	datad => VCC,
	cin => \count_mux_great|Add0~21\,
	combout => \count_mux_great|Add0~22_combout\,
	cout => \count_mux_great|Add0~23\);

-- Location: LCCOMB_X11_Y17_N20
\count_mux_great|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~36_combout\ = (\count_mux_great|count\(18) & (\count_mux_great|Add0~35\ $ (GND))) # (!\count_mux_great|count\(18) & (!\count_mux_great|Add0~35\ & VCC))
-- \count_mux_great|Add0~37\ = CARRY((\count_mux_great|count\(18) & !\count_mux_great|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(18),
	datad => VCC,
	cin => \count_mux_great|Add0~35\,
	combout => \count_mux_great|Add0~36_combout\,
	cout => \count_mux_great|Add0~37\);

-- Location: LCCOMB_X11_Y17_N26
\count_mux_great|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~42_combout\ = (\count_mux_great|count\(21) & (!\count_mux_great|Add0~41\)) # (!\count_mux_great|count\(21) & ((\count_mux_great|Add0~41\) # (GND)))
-- \count_mux_great|Add0~43\ = CARRY((!\count_mux_great|Add0~41\) # (!\count_mux_great|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(21),
	datad => VCC,
	cin => \count_mux_great|Add0~41\,
	combout => \count_mux_great|Add0~42_combout\,
	cout => \count_mux_great|Add0~43\);

-- Location: LCCOMB_X11_Y17_N30
\count_mux_great|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~46_combout\ = (\count_mux_great|count\(23) & (!\count_mux_great|Add0~45\)) # (!\count_mux_great|count\(23) & ((\count_mux_great|Add0~45\) # (GND)))
-- \count_mux_great|Add0~47\ = CARRY((!\count_mux_great|Add0~45\) # (!\count_mux_great|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(23),
	datad => VCC,
	cin => \count_mux_great|Add0~45\,
	combout => \count_mux_great|Add0~46_combout\,
	cout => \count_mux_great|Add0~47\);

-- Location: LCCOMB_X11_Y16_N6
\count_mux_great|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~54_combout\ = (\count_mux_great|count\(27) & (!\count_mux_great|Add0~53\)) # (!\count_mux_great|count\(27) & ((\count_mux_great|Add0~53\) # (GND)))
-- \count_mux_great|Add0~55\ = CARRY((!\count_mux_great|Add0~53\) # (!\count_mux_great|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(27),
	datad => VCC,
	cin => \count_mux_great|Add0~53\,
	combout => \count_mux_great|Add0~54_combout\,
	cout => \count_mux_great|Add0~55\);

-- Location: LCCOMB_X11_Y16_N12
\count_mux_great|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~60_combout\ = (\count_mux_great|count\(30) & (\count_mux_great|Add0~59\ $ (GND))) # (!\count_mux_great|count\(30) & (!\count_mux_great|Add0~59\ & VCC))
-- \count_mux_great|Add0~61\ = CARRY((\count_mux_great|count\(30) & !\count_mux_great|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(30),
	datad => VCC,
	cin => \count_mux_great|Add0~59\,
	combout => \count_mux_great|Add0~60_combout\,
	cout => \count_mux_great|Add0~61\);

-- Location: LCCOMB_X19_Y28_N16
\count_mux|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~0_combout\ = \count_mux|count\(0) $ (VCC)
-- \count_mux|Add0~1\ = CARRY(\count_mux|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(0),
	datad => VCC,
	combout => \count_mux|Add0~0_combout\,
	cout => \count_mux|Add0~1\);

-- Location: LCCOMB_X19_Y28_N30
\count_mux|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~14_combout\ = (\count_mux|count\(7) & (!\count_mux|Add0~13\)) # (!\count_mux|count\(7) & ((\count_mux|Add0~13\) # (GND)))
-- \count_mux|Add0~15\ = CARRY((!\count_mux|Add0~13\) # (!\count_mux|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(7),
	datad => VCC,
	cin => \count_mux|Add0~13\,
	combout => \count_mux|Add0~14_combout\,
	cout => \count_mux|Add0~15\);

-- Location: LCCOMB_X19_Y27_N6
\count_mux|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~22_combout\ = (\count_mux|count\(11) & (!\count_mux|Add0~21\)) # (!\count_mux|count\(11) & ((\count_mux|Add0~21\) # (GND)))
-- \count_mux|Add0~23\ = CARRY((!\count_mux|Add0~21\) # (!\count_mux|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(11),
	datad => VCC,
	cin => \count_mux|Add0~21\,
	combout => \count_mux|Add0~22_combout\,
	cout => \count_mux|Add0~23\);

-- Location: LCCOMB_X19_Y27_N14
\count_mux|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~30_combout\ = (\count_mux|count\(15) & (!\count_mux|Add0~29\)) # (!\count_mux|count\(15) & ((\count_mux|Add0~29\) # (GND)))
-- \count_mux|Add0~31\ = CARRY((!\count_mux|Add0~29\) # (!\count_mux|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(15),
	datad => VCC,
	cin => \count_mux|Add0~29\,
	combout => \count_mux|Add0~30_combout\,
	cout => \count_mux|Add0~31\);

-- Location: LCCOMB_X19_Y27_N16
\count_mux|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~32_combout\ = \count_mux|Add0~31\ $ (!\count_mux|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count_mux|count\(16),
	cin => \count_mux|Add0~31\,
	combout => \count_mux|Add0~32_combout\);

-- Location: LCCOMB_X29_Y22_N10
\change_mux|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector11~1_combout\ = (!\change_mux|money\(2) & (!\judge_mux|change_state\(1) & !\change_mux|money\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(2),
	datac => \judge_mux|change_state\(1),
	datad => \change_mux|money\(3),
	combout => \change_mux|Selector11~1_combout\);

-- Location: LCCOMB_X31_Y22_N12
\change_mux|remind_refund~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|remind_refund~1_combout\ = (\judge_mux|change_state\(2) & (((!\judge_mux|change_state\(1) & !\judge_mux|change_state\(0))) # (!\change_mux|remind_refund~q\))) # (!\judge_mux|change_state\(2) & (\change_mux|remind_refund~q\ & 
-- (\judge_mux|change_state\(1) $ (\judge_mux|change_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(2),
	datab => \judge_mux|change_state\(1),
	datac => \change_mux|remind_refund~q\,
	datad => \judge_mux|change_state\(0),
	combout => \change_mux|remind_refund~1_combout\);

-- Location: LCCOMB_X27_Y22_N24
\show_mux|Div0|auto_generated|divider|divider|StageOut[54]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ = (\change_mux|money\(9) & \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(9),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\);

-- Location: LCCOMB_X27_Y22_N22
\show_mux|Div0|auto_generated|divider|divider|StageOut[53]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ = (\change_mux|money\(8) & \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(8),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\);

-- Location: LCCOMB_X28_Y22_N6
\show_mux|Div0|auto_generated|divider|divider|StageOut[52]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ = (\change_mux|money\(7) & \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(7),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\);

-- Location: LCCOMB_X28_Y22_N4
\show_mux|Div0|auto_generated|divider|divider|StageOut[51]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\);

-- Location: LCCOMB_X28_Y22_N2
\show_mux|Div0|auto_generated|divider|divider|StageOut[50]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ = (\change_mux|money\(5) & \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(5),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\);

-- Location: LCCOMB_X27_Y22_N30
\show_mux|Div0|auto_generated|divider|divider|StageOut[49]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ = (\change_mux|money\(4) & !\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(4),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\);

-- Location: LCCOMB_X28_Y20_N24
\show_mux|Div0|auto_generated|divider|divider|StageOut[62]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ = (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\);

-- Location: LCCOMB_X28_Y20_N30
\show_mux|Div0|auto_generated|divider|divider|StageOut[58]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ = (\change_mux|money\(4) & \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(4),
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\);

-- Location: LCCOMB_X28_Y20_N6
\show_mux|Div0|auto_generated|divider|divider|StageOut[57]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\ = (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \change_mux|money\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \change_mux|money\(3),
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[57]~73_combout\);

-- Location: LCCOMB_X28_Y20_N4
\show_mux|Div0|auto_generated|divider|divider|StageOut[69]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[69]~75_combout\ = (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[69]~75_combout\);

-- Location: LCCOMB_X27_Y20_N30
\show_mux|Div0|auto_generated|divider|divider|StageOut[67]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[67]~77_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[67]~77_combout\);

-- Location: LCCOMB_X27_Y20_N12
\show_mux|Div0|auto_generated|divider|divider|StageOut[66]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[66]~78_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[66]~78_combout\);

-- Location: LCCOMB_X27_Y20_N10
\show_mux|Div0|auto_generated|divider|divider|StageOut[65]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[65]~79_combout\ = (\change_mux|money\(2) & \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(2),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[65]~79_combout\);

-- Location: LCCOMB_X26_Y20_N30
\show_mux|Mult0|mult_core|romout[0][8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mult0|mult_core|romout[0][8]~1_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ $ 
-- (((\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\) # (\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((!\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \show_mux|Mult0|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X26_Y20_N10
\show_mux|Mult0|mult_core|romout[0][6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mult0|mult_core|romout[0][6]~3_combout\ = \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ $ (((\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \show_mux|Mult0|mult_core|romout[0][6]~3_combout\);

-- Location: LCCOMB_X24_Y20_N6
\show_mux|Div1|auto_generated|divider|divider|StageOut[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X24_Y20_N30
\show_mux|Div1|auto_generated|divider|divider|StageOut[17]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X23_Y20_N0
\show_mux|Div1|auto_generated|divider|divider|StageOut[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\show_mux|Add0~10_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Add0~10_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X24_Y20_N8
\show_mux|Div1|auto_generated|divider|divider|StageOut[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\ = (\show_mux|Add0~8_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Add0~8_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X23_Y20_N10
\show_mux|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X23_Y20_N6
\show_mux|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\show_mux|Add0~8_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Add0~8_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X23_Y20_N26
\show_mux|Div1|auto_generated|divider|divider|StageOut[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\show_mux|Add0~6_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Add0~6_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X23_Y16_N26
\show_mux|Div1|auto_generated|divider|divider|StageOut[26]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X24_Y16_N30
\show_mux|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \show_mux|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \show_mux|Add0~4_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X23_Y16_N4
\show_mux|Div1|auto_generated|divider|divider|StageOut[33]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X23_Y16_N2
\show_mux|Div1|auto_generated|divider|divider|StageOut[31]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X23_Y16_N30
\show_mux|Div1|auto_generated|divider|divider|StageOut[30]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\show_mux|Add0~2_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Add0~2_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X22_Y16_N12
\show_mux|Div1|auto_generated|divider|divider|StageOut[37]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ = (!\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X22_Y16_N30
\show_mux|Div1|auto_generated|divider|divider|StageOut[36]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \show_mux|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Add0~2_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X22_Y16_N10
\show_mux|Div1|auto_generated|divider|divider|StageOut[35]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \show_mux|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Add0~0_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X21_Y16_N22
\show_mux|Div1|auto_generated|divider|divider|StageOut[43]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X21_Y16_N26
\show_mux|Div1|auto_generated|divider|divider|StageOut[41]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ = (\show_mux|Add0~0_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Add0~0_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\);

-- Location: LCCOMB_X21_Y16_N30
\show_mux|Div1|auto_generated|divider|divider|StageOut[40]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\ = (\change_mux|money\(1) & !\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(1),
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\);

-- Location: LCCOMB_X26_Y18_N14
\show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X27_Y18_N4
\show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\change_mux|money\(8) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(8),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X26_Y18_N0
\show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X26_Y18_N16
\show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\change_mux|money\(6) & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(6),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X27_Y18_N30
\show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X27_Y18_N12
\show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X27_Y18_N26
\show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\change_mux|money\(6) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(6),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X27_Y18_N10
\show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\change_mux|money\(5) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(5),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X28_Y18_N10
\show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X28_Y18_N6
\show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X28_Y18_N30
\show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\ = (\change_mux|money\(4) & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(4),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X27_Y19_N20
\show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X27_Y19_N26
\show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \change_mux|money\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \change_mux|money\(4),
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X27_Y19_N22
\show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\ = (\change_mux|money\(3) & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(3),
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X28_Y19_N22
\show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X28_Y19_N20
\show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X28_Y19_N30
\show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \change_mux|money\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \change_mux|money\(2),
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X28_Y16_N12
\show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\ = (\change_mux|money\(1) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(1),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~88_combout\);

-- Location: LCCOMB_X28_Y19_N24
\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \change_mux|money\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \change_mux|money\(2),
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\);

-- Location: LCCOMB_X29_Y22_N30
\change_mux|money[9]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|money[9]~5_combout\ = (\judge_mux|change_state\(3) & (!\judge_mux|change_state\(4) & (!\judge_mux|change_state\(0) & !\judge_mux|change_state\(2)))) # (!\judge_mux|change_state\(3) & ((\judge_mux|change_state\(4) & 
-- (!\judge_mux|change_state\(0) & !\judge_mux|change_state\(2))) # (!\judge_mux|change_state\(4) & (\judge_mux|change_state\(0) $ (\judge_mux|change_state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(3),
	datab => \judge_mux|change_state\(4),
	datac => \judge_mux|change_state\(0),
	datad => \judge_mux|change_state\(2),
	combout => \change_mux|money[9]~5_combout\);

-- Location: FF_X35_Y22_N13
\judge_mux|previous_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \judge_mux|previous_state[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|previous_state\(3));

-- Location: FF_X11_Y18_N13
\count_mux_great|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(0));

-- Location: FF_X11_Y18_N23
\count_mux_great|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(3));

-- Location: LCCOMB_X11_Y18_N10
\count_mux_great|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~0_combout\ = (!\count_mux_great|count\(1) & (!\count_mux_great|count\(2) & (!\count_mux_great|count\(0) & !\count_mux_great|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(1),
	datab => \count_mux_great|count\(2),
	datac => \count_mux_great|count\(0),
	datad => \count_mux_great|count\(3),
	combout => \count_mux_great|Equal0~0_combout\);

-- Location: FF_X11_Y18_N27
\count_mux_great|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(5));

-- Location: FF_X10_Y17_N13
\count_mux_great|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(9));

-- Location: FF_X10_Y17_N27
\count_mux_great|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(18));

-- Location: FF_X11_Y17_N27
\count_mux_great|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(21));

-- Location: FF_X11_Y17_N31
\count_mux_great|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(23));

-- Location: LCCOMB_X10_Y17_N22
\count_mux_great|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~6_combout\ = (!\count_mux_great|count\(23) & (!\count_mux_great|count\(22) & (!\count_mux_great|count\(21) & !\count_mux_great|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(23),
	datab => \count_mux_great|count\(22),
	datac => \count_mux_great|count\(21),
	datad => \count_mux_great|count\(20),
	combout => \count_mux_great|Equal0~6_combout\);

-- Location: FF_X11_Y16_N7
\count_mux_great|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(27));

-- Location: FF_X11_Y16_N13
\count_mux_great|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(30));

-- Location: FF_X19_Y28_N7
\count_mux|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(0));

-- Location: FF_X19_Y28_N13
\count_mux|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(7));

-- Location: FF_X19_Y27_N19
\count_mux|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(11));

-- Location: FF_X19_Y27_N17
\count_mux|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(16));

-- Location: LCCOMB_X11_Y18_N12
\count_mux_great|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|count~0_combout\ = (\count_mux_great|Add0~0_combout\ & ((\count_mux_great|count\(32)) # ((!\count_mux_great|Equal0~9_combout\) # (!\count_mux_great|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(32),
	datab => \count_mux_great|Add0~0_combout\,
	datac => \count_mux_great|Equal0~4_combout\,
	datad => \count_mux_great|Equal0~9_combout\,
	combout => \count_mux_great|count~0_combout\);

-- Location: LCCOMB_X10_Y17_N12
\count_mux_great|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|count~2_combout\ = (\count_mux_great|Add0~18_combout\ & ((\count_mux_great|count\(32)) # ((!\count_mux_great|Equal0~4_combout\) # (!\count_mux_great|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|Add0~18_combout\,
	datab => \count_mux_great|count\(32),
	datac => \count_mux_great|Equal0~9_combout\,
	datad => \count_mux_great|Equal0~4_combout\,
	combout => \count_mux_great|count~2_combout\);

-- Location: LCCOMB_X10_Y17_N26
\count_mux_great|count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|count~6_combout\ = (\count_mux_great|Add0~36_combout\ & (((\count_mux_great|count\(32)) # (!\count_mux_great|Equal0~4_combout\)) # (!\count_mux_great|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|Equal0~9_combout\,
	datab => \count_mux_great|count\(32),
	datac => \count_mux_great|Add0~36_combout\,
	datad => \count_mux_great|Equal0~4_combout\,
	combout => \count_mux_great|count~6_combout\);

-- Location: LCCOMB_X19_Y28_N6
\count_mux|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|count~0_combout\ = (\count_mux|Add0~0_combout\ & !\count_mux|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|Add0~0_combout\,
	datad => \count_mux|Equal0~5_combout\,
	combout => \count_mux|count~0_combout\);

-- Location: LCCOMB_X19_Y28_N12
\count_mux|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|count~2_combout\ = (\count_mux|Add0~14_combout\ & !\count_mux|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_mux|Add0~14_combout\,
	datad => \count_mux|Equal0~5_combout\,
	combout => \count_mux|count~2_combout\);

-- Location: LCCOMB_X19_Y27_N18
\count_mux|count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|count~6_combout\ = (\count_mux|Add0~22_combout\ & !\count_mux|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|Add0~22_combout\,
	datad => \count_mux|Equal0~5_combout\,
	combout => \count_mux|count~6_combout\);

-- Location: LCCOMB_X27_Y20_N6
\show_mux|Div0|auto_generated|divider|divider|StageOut[70]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[70]~81_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\) # 
-- ((!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\,
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[70]~81_combout\);

-- Location: LCCOMB_X27_Y20_N2
\show_mux|Div0|auto_generated|divider|divider|StageOut[68]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[68]~83_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\) # 
-- ((!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[68]~83_combout\);

-- Location: LCCOMB_X23_Y16_N10
\show_mux|Div1|auto_generated|divider|divider|StageOut[28]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) # 
-- ((\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X24_Y16_N22
\show_mux|Div1|auto_generated|divider|divider|StageOut[38]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- ((\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X27_Y18_N14
\show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99_combout\) # 
-- ((!\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X28_Y18_N14
\show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- ((!\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X27_Y19_N0
\show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X28_Y19_N18
\show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- ((!\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X28_Y22_N26
\show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\change_mux|money\(7))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \change_mux|money\(7),
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\);

-- Location: LCCOMB_X28_Y20_N26
\show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\change_mux|money\(5))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \change_mux|money\(5),
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\);

-- Location: LCCOMB_X23_Y20_N12
\show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\show_mux|Add0~10_combout\)) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Add0~10_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\);

-- Location: LCCOMB_X23_Y16_N6
\show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\show_mux|Add0~8_combout\)) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Add0~8_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X24_Y16_N16
\show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\show_mux|Add0~6_combout\))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \show_mux|Add0~6_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X21_Y16_N28
\show_mux|Div1|auto_generated|divider|divider|StageOut[42]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\show_mux|Add0~2_combout\)) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Add0~2_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X33_Y22_N10
\change_mux|Selector14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector14~3_combout\ = (\judge_mux|change_state\(1) & ((\judge_mux|change_state\(3)) # ((!\judge_mux|change_state\(0) & !\judge_mux|change_state\(2))))) # (!\judge_mux|change_state\(1) & ((\judge_mux|change_state\(0) & 
-- ((\judge_mux|change_state\(3)) # (!\judge_mux|change_state\(2)))) # (!\judge_mux|change_state\(0) & ((\judge_mux|change_state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(1),
	datab => \judge_mux|change_state\(0),
	datac => \judge_mux|change_state\(3),
	datad => \judge_mux|change_state\(2),
	combout => \change_mux|Selector14~3_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk_original~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_original,
	o => \clk_original~input_o\);

-- Location: CLKCTRL_G9
\clk_original~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_original~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_original~inputclkctrl_outclk\);

-- Location: LCCOMB_X35_Y22_N12
\judge_mux|previous_state[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|previous_state[3]~feeder_combout\ = \buy_thing1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \buy_thing1~input_o\,
	combout => \judge_mux|previous_state[3]~feeder_combout\);

-- Location: IOOBUF_X41_Y23_N9
\remind_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \change_mux|remind_1~q\,
	devoe => ww_devoe,
	o => \remind_1~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\remind_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \change_mux|remind_2~q\,
	devoe => ww_devoe,
	o => \remind_2~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\remind_refund~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \change_mux|remind_refund~q\,
	devoe => ww_devoe,
	o => \remind_refund~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\remind_restore_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \change_mux|remind_restore_1~q\,
	devoe => ww_devoe,
	o => \remind_restore_1~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\remind_restore_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \change_mux|remind_restore_2~q\,
	devoe => ww_devoe,
	o => \remind_restore_2~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\show_num[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \show_num[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\show_num[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \show_num[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\show_num[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \show_num[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\show_num[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \show_num[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\show_num[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \show_num[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\show_num[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \show_num[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\show_num[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \show_num[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\show_place[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|show_place\(0),
	devoe => ww_devoe,
	o => \show_place[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\show_place[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|show_place\(1),
	devoe => ww_devoe,
	o => \show_place[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\show_place[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|show_place\(2),
	devoe => ww_devoe,
	o => \show_place[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\show_place[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \show_place[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\show_place[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \show_place[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\show_place[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \show_place[5]~output_o\);

-- Location: LCCOMB_X11_Y18_N18
\count_mux_great|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~2_combout\ = (\count_mux_great|count\(1) & (!\count_mux_great|Add0~1\)) # (!\count_mux_great|count\(1) & ((\count_mux_great|Add0~1\) # (GND)))
-- \count_mux_great|Add0~3\ = CARRY((!\count_mux_great|Add0~1\) # (!\count_mux_great|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(1),
	datad => VCC,
	cin => \count_mux_great|Add0~1\,
	combout => \count_mux_great|Add0~2_combout\,
	cout => \count_mux_great|Add0~3\);

-- Location: FF_X11_Y18_N19
\count_mux_great|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(1));

-- Location: LCCOMB_X11_Y18_N20
\count_mux_great|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~4_combout\ = (\count_mux_great|count\(2) & (\count_mux_great|Add0~3\ $ (GND))) # (!\count_mux_great|count\(2) & (!\count_mux_great|Add0~3\ & VCC))
-- \count_mux_great|Add0~5\ = CARRY((\count_mux_great|count\(2) & !\count_mux_great|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(2),
	datad => VCC,
	cin => \count_mux_great|Add0~3\,
	combout => \count_mux_great|Add0~4_combout\,
	cout => \count_mux_great|Add0~5\);

-- Location: FF_X11_Y18_N21
\count_mux_great|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(2));

-- Location: LCCOMB_X11_Y18_N24
\count_mux_great|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~8_combout\ = (\count_mux_great|count\(4) & (\count_mux_great|Add0~7\ $ (GND))) # (!\count_mux_great|count\(4) & (!\count_mux_great|Add0~7\ & VCC))
-- \count_mux_great|Add0~9\ = CARRY((\count_mux_great|count\(4) & !\count_mux_great|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(4),
	datad => VCC,
	cin => \count_mux_great|Add0~7\,
	combout => \count_mux_great|Add0~8_combout\,
	cout => \count_mux_great|Add0~9\);

-- Location: FF_X11_Y18_N25
\count_mux_great|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(4));

-- Location: LCCOMB_X11_Y18_N28
\count_mux_great|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~12_combout\ = (\count_mux_great|count\(6) & (\count_mux_great|Add0~11\ $ (GND))) # (!\count_mux_great|count\(6) & (!\count_mux_great|Add0~11\ & VCC))
-- \count_mux_great|Add0~13\ = CARRY((\count_mux_great|count\(6) & !\count_mux_great|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(6),
	datad => VCC,
	cin => \count_mux_great|Add0~11\,
	combout => \count_mux_great|Add0~12_combout\,
	cout => \count_mux_great|Add0~13\);

-- Location: FF_X11_Y18_N29
\count_mux_great|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(6));

-- Location: LCCOMB_X11_Y18_N14
\count_mux_great|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~1_combout\ = (!\count_mux_great|count\(5) & (\count_mux_great|count\(7) & (!\count_mux_great|count\(4) & !\count_mux_great|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(5),
	datab => \count_mux_great|count\(7),
	datac => \count_mux_great|count\(4),
	datad => \count_mux_great|count\(6),
	combout => \count_mux_great|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y17_N22
\count_mux_great|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~38_combout\ = (\count_mux_great|count\(19) & (!\count_mux_great|Add0~37\)) # (!\count_mux_great|count\(19) & ((\count_mux_great|Add0~37\) # (GND)))
-- \count_mux_great|Add0~39\ = CARRY((!\count_mux_great|Add0~37\) # (!\count_mux_great|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(19),
	datad => VCC,
	cin => \count_mux_great|Add0~37\,
	combout => \count_mux_great|Add0~38_combout\,
	cout => \count_mux_great|Add0~39\);

-- Location: FF_X11_Y17_N23
\count_mux_great|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(19));

-- Location: LCCOMB_X11_Y17_N18
\count_mux_great|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~34_combout\ = (\count_mux_great|count\(17) & (!\count_mux_great|Add0~33\)) # (!\count_mux_great|count\(17) & ((\count_mux_great|Add0~33\) # (GND)))
-- \count_mux_great|Add0~35\ = CARRY((!\count_mux_great|Add0~33\) # (!\count_mux_great|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(17),
	datad => VCC,
	cin => \count_mux_great|Add0~33\,
	combout => \count_mux_great|Add0~34_combout\,
	cout => \count_mux_great|Add0~35\);

-- Location: LCCOMB_X10_Y17_N10
\count_mux_great|count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|count~5_combout\ = (\count_mux_great|Add0~34_combout\ & (((\count_mux_great|count\(32)) # (!\count_mux_great|Equal0~4_combout\)) # (!\count_mux_great|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|Equal0~9_combout\,
	datab => \count_mux_great|Equal0~4_combout\,
	datac => \count_mux_great|count\(32),
	datad => \count_mux_great|Add0~34_combout\,
	combout => \count_mux_great|count~5_combout\);

-- Location: FF_X10_Y17_N11
\count_mux_great|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(17));

-- Location: LCCOMB_X10_Y17_N2
\count_mux_great|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~5_combout\ = (\count_mux_great|count\(18) & (!\count_mux_great|count\(16) & (!\count_mux_great|count\(19) & \count_mux_great|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(18),
	datab => \count_mux_great|count\(16),
	datac => \count_mux_great|count\(19),
	datad => \count_mux_great|count\(17),
	combout => \count_mux_great|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y16_N22
\count_mux_great|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~7_combout\ = (!\count_mux_great|count\(27) & (!\count_mux_great|count\(25) & (!\count_mux_great|count\(26) & !\count_mux_great|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(27),
	datab => \count_mux_great|count\(25),
	datac => \count_mux_great|count\(26),
	datad => \count_mux_great|count\(24),
	combout => \count_mux_great|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y16_N10
\count_mux_great|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~58_combout\ = (\count_mux_great|count\(29) & (!\count_mux_great|Add0~57\)) # (!\count_mux_great|count\(29) & ((\count_mux_great|Add0~57\) # (GND)))
-- \count_mux_great|Add0~59\ = CARRY((!\count_mux_great|Add0~57\) # (!\count_mux_great|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(29),
	datad => VCC,
	cin => \count_mux_great|Add0~57\,
	combout => \count_mux_great|Add0~58_combout\,
	cout => \count_mux_great|Add0~59\);

-- Location: FF_X11_Y16_N11
\count_mux_great|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(29));

-- Location: LCCOMB_X11_Y16_N24
\count_mux_great|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~8_combout\ = (!\count_mux_great|count\(30) & (!\count_mux_great|count\(28) & (!\count_mux_great|count\(31) & !\count_mux_great|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(30),
	datab => \count_mux_great|count\(28),
	datac => \count_mux_great|count\(31),
	datad => \count_mux_great|count\(29),
	combout => \count_mux_great|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y17_N30
\count_mux_great|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~9_combout\ = (\count_mux_great|Equal0~6_combout\ & (\count_mux_great|Equal0~5_combout\ & (\count_mux_great|Equal0~7_combout\ & \count_mux_great|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|Equal0~6_combout\,
	datab => \count_mux_great|Equal0~5_combout\,
	datac => \count_mux_great|Equal0~7_combout\,
	datad => \count_mux_great|Equal0~8_combout\,
	combout => \count_mux_great|Equal0~9_combout\);

-- Location: LCCOMB_X10_Y17_N16
\count_mux_great|count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|count~3_combout\ = (\count_mux_great|Add0~22_combout\ & ((\count_mux_great|count\(32)) # ((!\count_mux_great|Equal0~4_combout\) # (!\count_mux_great|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|Add0~22_combout\,
	datab => \count_mux_great|count\(32),
	datac => \count_mux_great|Equal0~9_combout\,
	datad => \count_mux_great|Equal0~4_combout\,
	combout => \count_mux_great|count~3_combout\);

-- Location: FF_X10_Y17_N17
\count_mux_great|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(11));

-- Location: LCCOMB_X10_Y17_N24
\count_mux_great|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~2_combout\ = (\count_mux_great|count\(9) & (\count_mux_great|count\(11) & (!\count_mux_great|count\(8) & !\count_mux_great|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(9),
	datab => \count_mux_great|count\(11),
	datac => \count_mux_great|count\(8),
	datad => \count_mux_great|count\(10),
	combout => \count_mux_great|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y17_N12
\count_mux_great|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~28_combout\ = (\count_mux_great|count\(14) & (\count_mux_great|Add0~27\ $ (GND))) # (!\count_mux_great|count\(14) & (!\count_mux_great|Add0~27\ & VCC))
-- \count_mux_great|Add0~29\ = CARRY((\count_mux_great|count\(14) & !\count_mux_great|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(14),
	datad => VCC,
	cin => \count_mux_great|Add0~27\,
	combout => \count_mux_great|Add0~28_combout\,
	cout => \count_mux_great|Add0~29\);

-- Location: FF_X11_Y17_N13
\count_mux_great|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(14));

-- Location: LCCOMB_X11_Y17_N10
\count_mux_great|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~26_combout\ = (\count_mux_great|count\(13) & (!\count_mux_great|Add0~25\)) # (!\count_mux_great|count\(13) & ((\count_mux_great|Add0~25\) # (GND)))
-- \count_mux_great|Add0~27\ = CARRY((!\count_mux_great|Add0~25\) # (!\count_mux_great|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(13),
	datad => VCC,
	cin => \count_mux_great|Add0~25\,
	combout => \count_mux_great|Add0~26_combout\,
	cout => \count_mux_great|Add0~27\);

-- Location: FF_X11_Y17_N11
\count_mux_great|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(13));

-- Location: LCCOMB_X10_Y17_N0
\count_mux_great|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~3_combout\ = (\count_mux_great|count\(12) & (!\count_mux_great|count\(14) & (!\count_mux_great|count\(13) & !\count_mux_great|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(12),
	datab => \count_mux_great|count\(14),
	datac => \count_mux_great|count\(13),
	datad => \count_mux_great|count\(15),
	combout => \count_mux_great|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y18_N8
\count_mux_great|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Equal0~4_combout\ = (\count_mux_great|Equal0~0_combout\ & (\count_mux_great|Equal0~1_combout\ & (\count_mux_great|Equal0~2_combout\ & \count_mux_great|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|Equal0~0_combout\,
	datab => \count_mux_great|Equal0~1_combout\,
	datac => \count_mux_great|Equal0~2_combout\,
	datad => \count_mux_great|Equal0~3_combout\,
	combout => \count_mux_great|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y18_N30
\count_mux_great|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~14_combout\ = (\count_mux_great|count\(7) & (!\count_mux_great|Add0~13\)) # (!\count_mux_great|count\(7) & ((\count_mux_great|Add0~13\) # (GND)))
-- \count_mux_great|Add0~15\ = CARRY((!\count_mux_great|Add0~13\) # (!\count_mux_great|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(7),
	datad => VCC,
	cin => \count_mux_great|Add0~13\,
	combout => \count_mux_great|Add0~14_combout\,
	cout => \count_mux_great|Add0~15\);

-- Location: LCCOMB_X11_Y18_N4
\count_mux_great|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|count~1_combout\ = (\count_mux_great|Add0~14_combout\ & ((\count_mux_great|count\(32)) # ((!\count_mux_great|Equal0~9_combout\) # (!\count_mux_great|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|count\(32),
	datab => \count_mux_great|Equal0~4_combout\,
	datac => \count_mux_great|Add0~14_combout\,
	datad => \count_mux_great|Equal0~9_combout\,
	combout => \count_mux_great|count~1_combout\);

-- Location: FF_X11_Y18_N5
\count_mux_great|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(7));

-- Location: LCCOMB_X11_Y17_N0
\count_mux_great|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~16_combout\ = (\count_mux_great|count\(8) & (\count_mux_great|Add0~15\ $ (GND))) # (!\count_mux_great|count\(8) & (!\count_mux_great|Add0~15\ & VCC))
-- \count_mux_great|Add0~17\ = CARRY((\count_mux_great|count\(8) & !\count_mux_great|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(8),
	datad => VCC,
	cin => \count_mux_great|Add0~15\,
	combout => \count_mux_great|Add0~16_combout\,
	cout => \count_mux_great|Add0~17\);

-- Location: FF_X11_Y17_N1
\count_mux_great|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(8));

-- Location: LCCOMB_X11_Y17_N4
\count_mux_great|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~20_combout\ = (\count_mux_great|count\(10) & (\count_mux_great|Add0~19\ $ (GND))) # (!\count_mux_great|count\(10) & (!\count_mux_great|Add0~19\ & VCC))
-- \count_mux_great|Add0~21\ = CARRY((\count_mux_great|count\(10) & !\count_mux_great|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(10),
	datad => VCC,
	cin => \count_mux_great|Add0~19\,
	combout => \count_mux_great|Add0~20_combout\,
	cout => \count_mux_great|Add0~21\);

-- Location: FF_X11_Y17_N5
\count_mux_great|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(10));

-- Location: LCCOMB_X11_Y17_N8
\count_mux_great|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~24_combout\ = (\count_mux_great|count\(12) & (\count_mux_great|Add0~23\ $ (GND))) # (!\count_mux_great|count\(12) & (!\count_mux_great|Add0~23\ & VCC))
-- \count_mux_great|Add0~25\ = CARRY((\count_mux_great|count\(12) & !\count_mux_great|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(12),
	datad => VCC,
	cin => \count_mux_great|Add0~23\,
	combout => \count_mux_great|Add0~24_combout\,
	cout => \count_mux_great|Add0~25\);

-- Location: LCCOMB_X10_Y17_N6
\count_mux_great|count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|count~4_combout\ = (\count_mux_great|Add0~24_combout\ & (((\count_mux_great|count\(32)) # (!\count_mux_great|Equal0~4_combout\)) # (!\count_mux_great|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|Equal0~9_combout\,
	datab => \count_mux_great|count\(32),
	datac => \count_mux_great|Add0~24_combout\,
	datad => \count_mux_great|Equal0~4_combout\,
	combout => \count_mux_great|count~4_combout\);

-- Location: FF_X10_Y17_N7
\count_mux_great|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(12));

-- Location: LCCOMB_X11_Y17_N14
\count_mux_great|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~30_combout\ = (\count_mux_great|count\(15) & (!\count_mux_great|Add0~29\)) # (!\count_mux_great|count\(15) & ((\count_mux_great|Add0~29\) # (GND)))
-- \count_mux_great|Add0~31\ = CARRY((!\count_mux_great|Add0~29\) # (!\count_mux_great|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(15),
	datad => VCC,
	cin => \count_mux_great|Add0~29\,
	combout => \count_mux_great|Add0~30_combout\,
	cout => \count_mux_great|Add0~31\);

-- Location: FF_X11_Y17_N15
\count_mux_great|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(15));

-- Location: LCCOMB_X11_Y17_N16
\count_mux_great|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~32_combout\ = (\count_mux_great|count\(16) & (\count_mux_great|Add0~31\ $ (GND))) # (!\count_mux_great|count\(16) & (!\count_mux_great|Add0~31\ & VCC))
-- \count_mux_great|Add0~33\ = CARRY((\count_mux_great|count\(16) & !\count_mux_great|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(16),
	datad => VCC,
	cin => \count_mux_great|Add0~31\,
	combout => \count_mux_great|Add0~32_combout\,
	cout => \count_mux_great|Add0~33\);

-- Location: FF_X11_Y17_N17
\count_mux_great|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(16));

-- Location: LCCOMB_X11_Y17_N24
\count_mux_great|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~40_combout\ = (\count_mux_great|count\(20) & (\count_mux_great|Add0~39\ $ (GND))) # (!\count_mux_great|count\(20) & (!\count_mux_great|Add0~39\ & VCC))
-- \count_mux_great|Add0~41\ = CARRY((\count_mux_great|count\(20) & !\count_mux_great|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(20),
	datad => VCC,
	cin => \count_mux_great|Add0~39\,
	combout => \count_mux_great|Add0~40_combout\,
	cout => \count_mux_great|Add0~41\);

-- Location: FF_X11_Y17_N25
\count_mux_great|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(20));

-- Location: LCCOMB_X11_Y17_N28
\count_mux_great|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~44_combout\ = (\count_mux_great|count\(22) & (\count_mux_great|Add0~43\ $ (GND))) # (!\count_mux_great|count\(22) & (!\count_mux_great|Add0~43\ & VCC))
-- \count_mux_great|Add0~45\ = CARRY((\count_mux_great|count\(22) & !\count_mux_great|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(22),
	datad => VCC,
	cin => \count_mux_great|Add0~43\,
	combout => \count_mux_great|Add0~44_combout\,
	cout => \count_mux_great|Add0~45\);

-- Location: FF_X11_Y17_N29
\count_mux_great|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(22));

-- Location: LCCOMB_X11_Y16_N0
\count_mux_great|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~48_combout\ = (\count_mux_great|count\(24) & (\count_mux_great|Add0~47\ $ (GND))) # (!\count_mux_great|count\(24) & (!\count_mux_great|Add0~47\ & VCC))
-- \count_mux_great|Add0~49\ = CARRY((\count_mux_great|count\(24) & !\count_mux_great|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(24),
	datad => VCC,
	cin => \count_mux_great|Add0~47\,
	combout => \count_mux_great|Add0~48_combout\,
	cout => \count_mux_great|Add0~49\);

-- Location: FF_X11_Y16_N1
\count_mux_great|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(24));

-- Location: LCCOMB_X11_Y16_N2
\count_mux_great|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~50_combout\ = (\count_mux_great|count\(25) & (!\count_mux_great|Add0~49\)) # (!\count_mux_great|count\(25) & ((\count_mux_great|Add0~49\) # (GND)))
-- \count_mux_great|Add0~51\ = CARRY((!\count_mux_great|Add0~49\) # (!\count_mux_great|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(25),
	datad => VCC,
	cin => \count_mux_great|Add0~49\,
	combout => \count_mux_great|Add0~50_combout\,
	cout => \count_mux_great|Add0~51\);

-- Location: FF_X11_Y16_N3
\count_mux_great|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(25));

-- Location: LCCOMB_X11_Y16_N4
\count_mux_great|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~52_combout\ = (\count_mux_great|count\(26) & (\count_mux_great|Add0~51\ $ (GND))) # (!\count_mux_great|count\(26) & (!\count_mux_great|Add0~51\ & VCC))
-- \count_mux_great|Add0~53\ = CARRY((\count_mux_great|count\(26) & !\count_mux_great|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(26),
	datad => VCC,
	cin => \count_mux_great|Add0~51\,
	combout => \count_mux_great|Add0~52_combout\,
	cout => \count_mux_great|Add0~53\);

-- Location: FF_X11_Y16_N5
\count_mux_great|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(26));

-- Location: LCCOMB_X11_Y16_N8
\count_mux_great|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~56_combout\ = (\count_mux_great|count\(28) & (\count_mux_great|Add0~55\ $ (GND))) # (!\count_mux_great|count\(28) & (!\count_mux_great|Add0~55\ & VCC))
-- \count_mux_great|Add0~57\ = CARRY((\count_mux_great|count\(28) & !\count_mux_great|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(28),
	datad => VCC,
	cin => \count_mux_great|Add0~55\,
	combout => \count_mux_great|Add0~56_combout\,
	cout => \count_mux_great|Add0~57\);

-- Location: FF_X11_Y16_N9
\count_mux_great|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(28));

-- Location: LCCOMB_X11_Y16_N14
\count_mux_great|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~62_combout\ = (\count_mux_great|count\(31) & (!\count_mux_great|Add0~61\)) # (!\count_mux_great|count\(31) & ((\count_mux_great|Add0~61\) # (GND)))
-- \count_mux_great|Add0~63\ = CARRY((!\count_mux_great|Add0~61\) # (!\count_mux_great|count\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|count\(31),
	datad => VCC,
	cin => \count_mux_great|Add0~61\,
	combout => \count_mux_great|Add0~62_combout\,
	cout => \count_mux_great|Add0~63\);

-- Location: FF_X11_Y16_N15
\count_mux_great|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(31));

-- Location: LCCOMB_X11_Y16_N16
\count_mux_great|Add0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|Add0~64_combout\ = \count_mux_great|Add0~63\ $ (!\count_mux_great|count\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count_mux_great|count\(32),
	cin => \count_mux_great|Add0~63\,
	combout => \count_mux_great|Add0~64_combout\);

-- Location: FF_X11_Y16_N17
\count_mux_great|count[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|count\(32));

-- Location: LCCOMB_X10_Y17_N28
\count_mux_great|clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|clk~0_combout\ = \count_mux_great|clk~q\ $ (((\count_mux_great|Equal0~9_combout\ & (!\count_mux_great|count\(32) & \count_mux_great|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux_great|Equal0~9_combout\,
	datab => \count_mux_great|count\(32),
	datac => \count_mux_great|clk~q\,
	datad => \count_mux_great|Equal0~4_combout\,
	combout => \count_mux_great|clk~0_combout\);

-- Location: LCCOMB_X10_Y17_N18
\count_mux_great|clk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux_great|clk~feeder_combout\ = \count_mux_great|clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count_mux_great|clk~0_combout\,
	combout => \count_mux_great|clk~feeder_combout\);

-- Location: FF_X10_Y17_N19
\count_mux_great|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux_great|clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux_great|clk~q\);

-- Location: CLKCTRL_G2
\count_mux_great|clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count_mux_great|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count_mux_great|clk~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y5_N8
\add_money0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add_money0,
	o => \add_money0~input_o\);

-- Location: FF_X33_Y22_N29
\judge_mux|previous_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	asdata => \add_money0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|previous_state\(0));

-- Location: LCCOMB_X33_Y22_N26
\judge_mux|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|always0~0_combout\ = (!\add_money0~input_o\ & \judge_mux|previous_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_money0~input_o\,
	datad => \judge_mux|previous_state\(0),
	combout => \judge_mux|always0~0_combout\);

-- Location: LCCOMB_X33_Y22_N4
\judge_mux|change_state[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state[0]~feeder_combout\ = \judge_mux|always0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \judge_mux|always0~0_combout\,
	combout => \judge_mux|change_state[0]~feeder_combout\);

-- Location: FF_X33_Y22_N5
\judge_mux|change_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \judge_mux|change_state[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|change_state\(0));

-- Location: IOIBUF_X41_Y27_N15
\buy_thing2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buy_thing2,
	o => \buy_thing2~input_o\);

-- Location: LCCOMB_X35_Y22_N8
\judge_mux|previous_state[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|previous_state[4]~feeder_combout\ = \buy_thing2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \buy_thing2~input_o\,
	combout => \judge_mux|previous_state[4]~feeder_combout\);

-- Location: FF_X35_Y22_N9
\judge_mux|previous_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \judge_mux|previous_state[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|previous_state\(4));

-- Location: LCCOMB_X35_Y22_N2
\judge_mux|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|always0~2_combout\ = \judge_mux|previous_state\(4) $ (\buy_thing2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \judge_mux|previous_state\(4),
	datad => \buy_thing2~input_o\,
	combout => \judge_mux|always0~2_combout\);

-- Location: IOIBUF_X41_Y3_N15
\add_money1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add_money1,
	o => \add_money1~input_o\);

-- Location: LCCOMB_X33_Y22_N24
\judge_mux|previous_state[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|previous_state[1]~feeder_combout\ = \add_money1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_money1~input_o\,
	combout => \judge_mux|previous_state[1]~feeder_combout\);

-- Location: FF_X33_Y22_N25
\judge_mux|previous_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \judge_mux|previous_state[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|previous_state\(1));

-- Location: IOIBUF_X41_Y3_N22
\add_money5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add_money5,
	o => \add_money5~input_o\);

-- Location: FF_X33_Y22_N23
\judge_mux|previous_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	asdata => \add_money5~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|previous_state\(2));

-- Location: LCCOMB_X33_Y22_N22
\judge_mux|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|always0~1_combout\ = (!\add_money5~input_o\ & \judge_mux|previous_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_money5~input_o\,
	datac => \judge_mux|previous_state\(2),
	combout => \judge_mux|always0~1_combout\);

-- Location: LCCOMB_X33_Y22_N12
\judge_mux|change_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state~1_combout\ = (!\judge_mux|always0~0_combout\ & (!\judge_mux|always0~1_combout\ & ((\add_money1~input_o\) # (!\judge_mux|previous_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|always0~0_combout\,
	datab => \judge_mux|previous_state\(1),
	datac => \judge_mux|always0~1_combout\,
	datad => \add_money1~input_o\,
	combout => \judge_mux|change_state~1_combout\);

-- Location: IOIBUF_X41_Y25_N15
\buy_thing1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buy_thing1,
	o => \buy_thing1~input_o\);

-- Location: LCCOMB_X35_Y22_N28
\judge_mux|change_state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state~4_combout\ = (\judge_mux|always0~2_combout\ & (\judge_mux|change_state~1_combout\ & (\judge_mux|previous_state\(3) $ (!\buy_thing1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|previous_state\(3),
	datab => \judge_mux|always0~2_combout\,
	datac => \judge_mux|change_state~1_combout\,
	datad => \buy_thing1~input_o\,
	combout => \judge_mux|change_state~4_combout\);

-- Location: FF_X35_Y22_N29
\judge_mux|change_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \judge_mux|change_state~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|change_state\(4));

-- Location: IOIBUF_X41_Y27_N22
\refund~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_refund,
	o => \refund~input_o\);

-- Location: FF_X35_Y22_N1
\judge_mux|previous_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	asdata => \refund~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|previous_state\(5));

-- Location: LCCOMB_X35_Y22_N0
\judge_mux|change_state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state~5_combout\ = (\judge_mux|previous_state\(4) & (\buy_thing2~input_o\ & (\refund~input_o\ $ (\judge_mux|previous_state\(5))))) # (!\judge_mux|previous_state\(4) & (!\buy_thing2~input_o\ & (\refund~input_o\ $ 
-- (\judge_mux|previous_state\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|previous_state\(4),
	datab => \refund~input_o\,
	datac => \judge_mux|previous_state\(5),
	datad => \buy_thing2~input_o\,
	combout => \judge_mux|change_state~5_combout\);

-- Location: LCCOMB_X35_Y22_N10
\judge_mux|change_state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state~6_combout\ = (\judge_mux|change_state~5_combout\ & (\judge_mux|change_state~1_combout\ & (\judge_mux|previous_state\(3) $ (!\buy_thing1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|previous_state\(3),
	datab => \judge_mux|change_state~5_combout\,
	datac => \judge_mux|change_state~1_combout\,
	datad => \buy_thing1~input_o\,
	combout => \judge_mux|change_state~6_combout\);

-- Location: FF_X35_Y22_N11
\judge_mux|change_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \judge_mux|change_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|change_state\(5));

-- Location: LCCOMB_X33_Y22_N6
\judge_mux|change_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state~0_combout\ = (!\add_money1~input_o\ & (\judge_mux|previous_state\(1) & ((\add_money0~input_o\) # (!\judge_mux|previous_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_money1~input_o\,
	datab => \judge_mux|previous_state\(0),
	datac => \add_money0~input_o\,
	datad => \judge_mux|previous_state\(1),
	combout => \judge_mux|change_state~0_combout\);

-- Location: FF_X33_Y22_N7
\judge_mux|change_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \judge_mux|change_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|change_state\(1));

-- Location: LCCOMB_X35_Y22_N18
\judge_mux|change_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state~2_combout\ = (\judge_mux|change_state~1_combout\ & (\judge_mux|previous_state\(3) $ (\buy_thing1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|previous_state\(3),
	datac => \judge_mux|change_state~1_combout\,
	datad => \buy_thing1~input_o\,
	combout => \judge_mux|change_state~2_combout\);

-- Location: LCCOMB_X30_Y22_N28
\judge_mux|change_state[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state[3]~feeder_combout\ = \judge_mux|change_state~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \judge_mux|change_state~2_combout\,
	combout => \judge_mux|change_state[3]~feeder_combout\);

-- Location: FF_X30_Y22_N29
\judge_mux|change_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \judge_mux|change_state[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|change_state\(3));

-- Location: LCCOMB_X30_Y22_N12
\change_mux|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector9~0_combout\ = (!\judge_mux|change_state\(2) & (!\judge_mux|change_state\(1) & (!\judge_mux|change_state\(0) & !\judge_mux|change_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(2),
	datab => \judge_mux|change_state\(1),
	datac => \judge_mux|change_state\(0),
	datad => \judge_mux|change_state\(3),
	combout => \change_mux|Selector9~0_combout\);

-- Location: LCCOMB_X29_Y20_N20
\change_mux|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~8_combout\ = (\change_mux|money\(4) & (\change_mux|Add4~7\ $ (GND))) # (!\change_mux|money\(4) & (!\change_mux|Add4~7\ & VCC))
-- \change_mux|Add4~9\ = CARRY((\change_mux|money\(4) & !\change_mux|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(4),
	datad => VCC,
	cin => \change_mux|Add4~7\,
	combout => \change_mux|Add4~8_combout\,
	cout => \change_mux|Add4~9\);

-- Location: LCCOMB_X29_Y20_N22
\change_mux|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~10_combout\ = (\change_mux|money\(5) & (\change_mux|Add4~9\ & VCC)) # (!\change_mux|money\(5) & (!\change_mux|Add4~9\))
-- \change_mux|Add4~11\ = CARRY((!\change_mux|money\(5) & !\change_mux|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(5),
	datad => VCC,
	cin => \change_mux|Add4~9\,
	combout => \change_mux|Add4~10_combout\,
	cout => \change_mux|Add4~11\);

-- Location: LCCOMB_X29_Y20_N16
\change_mux|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~4_combout\ = (\change_mux|money\(2) & ((GND) # (!\change_mux|Add4~3\))) # (!\change_mux|money\(2) & (\change_mux|Add4~3\ $ (GND)))
-- \change_mux|Add4~5\ = CARRY((\change_mux|money\(2)) # (!\change_mux|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(2),
	datad => VCC,
	cin => \change_mux|Add4~3\,
	combout => \change_mux|Add4~4_combout\,
	cout => \change_mux|Add4~5\);

-- Location: LCCOMB_X28_Y21_N6
\change_mux|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add2~0_combout\ = \change_mux|money\(1) $ (VCC)
-- \change_mux|Add2~1\ = CARRY(\change_mux|money\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(1),
	datad => VCC,
	combout => \change_mux|Add2~0_combout\,
	cout => \change_mux|Add2~1\);

-- Location: LCCOMB_X28_Y21_N8
\change_mux|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add2~2_combout\ = (\change_mux|money\(2) & (!\change_mux|Add2~1\)) # (!\change_mux|money\(2) & ((\change_mux|Add2~1\) # (GND)))
-- \change_mux|Add2~3\ = CARRY((!\change_mux|Add2~1\) # (!\change_mux|money\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(2),
	datad => VCC,
	cin => \change_mux|Add2~1\,
	combout => \change_mux|Add2~2_combout\,
	cout => \change_mux|Add2~3\);

-- Location: LCCOMB_X31_Y21_N24
\change_mux|money[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|money[9]~1_combout\ = (\judge_mux|change_state\(3)) # ((!\judge_mux|change_state\(2) & \judge_mux|change_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(2),
	datac => \judge_mux|change_state\(3),
	datad => \judge_mux|change_state\(1),
	combout => \change_mux|money[9]~1_combout\);

-- Location: LCCOMB_X33_Y22_N30
\judge_mux|change_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state~3_combout\ = (\judge_mux|always0~1_combout\ & (!\judge_mux|always0~0_combout\ & ((\add_money1~input_o\) # (!\judge_mux|previous_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|always0~1_combout\,
	datab => \judge_mux|previous_state\(1),
	datac => \judge_mux|always0~0_combout\,
	datad => \add_money1~input_o\,
	combout => \judge_mux|change_state~3_combout\);

-- Location: LCCOMB_X30_Y21_N26
\judge_mux|change_state[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \judge_mux|change_state[2]~feeder_combout\ = \judge_mux|change_state~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \judge_mux|change_state~3_combout\,
	combout => \judge_mux|change_state[2]~feeder_combout\);

-- Location: FF_X30_Y21_N27
\judge_mux|change_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \judge_mux|change_state[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \judge_mux|change_state\(2));

-- Location: LCCOMB_X29_Y20_N24
\change_mux|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~12_combout\ = (\change_mux|money\(6) & ((GND) # (!\change_mux|Add4~11\))) # (!\change_mux|money\(6) & (\change_mux|Add4~11\ $ (GND)))
-- \change_mux|Add4~13\ = CARRY((\change_mux|money\(6)) # (!\change_mux|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(6),
	datad => VCC,
	cin => \change_mux|Add4~11\,
	combout => \change_mux|Add4~12_combout\,
	cout => \change_mux|Add4~13\);

-- Location: LCCOMB_X28_Y21_N12
\change_mux|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add2~6_combout\ = (\change_mux|money\(4) & (\change_mux|Add2~5\ & VCC)) # (!\change_mux|money\(4) & (!\change_mux|Add2~5\))
-- \change_mux|Add2~7\ = CARRY((!\change_mux|money\(4) & !\change_mux|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(4),
	datad => VCC,
	cin => \change_mux|Add2~5\,
	combout => \change_mux|Add2~6_combout\,
	cout => \change_mux|Add2~7\);

-- Location: LCCOMB_X28_Y21_N14
\change_mux|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add2~8_combout\ = (\change_mux|money\(5) & ((GND) # (!\change_mux|Add2~7\))) # (!\change_mux|money\(5) & (\change_mux|Add2~7\ $ (GND)))
-- \change_mux|Add2~9\ = CARRY((\change_mux|money\(5)) # (!\change_mux|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(5),
	datad => VCC,
	cin => \change_mux|Add2~7\,
	combout => \change_mux|Add2~8_combout\,
	cout => \change_mux|Add2~9\);

-- Location: LCCOMB_X28_Y21_N16
\change_mux|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add2~10_combout\ = (\change_mux|money\(6) & (!\change_mux|Add2~9\)) # (!\change_mux|money\(6) & ((\change_mux|Add2~9\) # (GND)))
-- \change_mux|Add2~11\ = CARRY((!\change_mux|Add2~9\) # (!\change_mux|money\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(6),
	datad => VCC,
	cin => \change_mux|Add2~9\,
	combout => \change_mux|Add2~10_combout\,
	cout => \change_mux|Add2~11\);

-- Location: LCCOMB_X29_Y21_N0
\change_mux|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~0_combout\ = \change_mux|money\(0) $ (VCC)
-- \change_mux|Add3~1\ = CARRY(\change_mux|money\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(0),
	datad => VCC,
	combout => \change_mux|Add3~0_combout\,
	cout => \change_mux|Add3~1\);

-- Location: LCCOMB_X29_Y21_N6
\change_mux|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~6_combout\ = (\change_mux|money\(3) & (!\change_mux|Add3~5\)) # (!\change_mux|money\(3) & ((\change_mux|Add3~5\) # (GND)))
-- \change_mux|Add3~7\ = CARRY((!\change_mux|Add3~5\) # (!\change_mux|money\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(3),
	datad => VCC,
	cin => \change_mux|Add3~5\,
	combout => \change_mux|Add3~6_combout\,
	cout => \change_mux|Add3~7\);

-- Location: LCCOMB_X29_Y21_N8
\change_mux|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~8_combout\ = (\change_mux|money\(4) & ((GND) # (!\change_mux|Add3~7\))) # (!\change_mux|money\(4) & (\change_mux|Add3~7\ $ (GND)))
-- \change_mux|Add3~9\ = CARRY((\change_mux|money\(4)) # (!\change_mux|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(4),
	datad => VCC,
	cin => \change_mux|Add3~7\,
	combout => \change_mux|Add3~8_combout\,
	cout => \change_mux|Add3~9\);

-- Location: LCCOMB_X29_Y21_N12
\change_mux|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~12_combout\ = (\change_mux|money\(6) & ((GND) # (!\change_mux|Add3~11\))) # (!\change_mux|money\(6) & (\change_mux|Add3~11\ $ (GND)))
-- \change_mux|Add3~13\ = CARRY((\change_mux|money\(6)) # (!\change_mux|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(6),
	datad => VCC,
	cin => \change_mux|Add3~11\,
	combout => \change_mux|Add3~12_combout\,
	cout => \change_mux|Add3~13\);

-- Location: LCCOMB_X27_Y21_N2
\change_mux|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector3~0_combout\ = (\change_mux|money[9]~1_combout\ & (((\change_mux|Add3~12_combout\ & \change_mux|money[9]~0_combout\)))) # (!\change_mux|money[9]~1_combout\ & ((\change_mux|Add2~10_combout\) # ((!\change_mux|money[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~1_combout\,
	datab => \change_mux|Add2~10_combout\,
	datac => \change_mux|Add3~12_combout\,
	datad => \change_mux|money[9]~0_combout\,
	combout => \change_mux|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y21_N14
\change_mux|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~10_combout\ = (\change_mux|money\(5) & (!\change_mux|Add0~9\)) # (!\change_mux|money\(5) & ((\change_mux|Add0~9\) # (GND)))
-- \change_mux|Add0~11\ = CARRY((!\change_mux|Add0~9\) # (!\change_mux|money\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(5),
	datad => VCC,
	cin => \change_mux|Add0~9\,
	combout => \change_mux|Add0~10_combout\,
	cout => \change_mux|Add0~11\);

-- Location: LCCOMB_X26_Y21_N16
\change_mux|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~12_combout\ = (\change_mux|money\(6) & (\change_mux|Add0~11\ $ (GND))) # (!\change_mux|money\(6) & (!\change_mux|Add0~11\ & VCC))
-- \change_mux|Add0~13\ = CARRY((\change_mux|money\(6) & !\change_mux|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(6),
	datad => VCC,
	cin => \change_mux|Add0~11\,
	combout => \change_mux|Add0~12_combout\,
	cout => \change_mux|Add0~13\);

-- Location: LCCOMB_X30_Y21_N0
\change_mux|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add1~0_combout\ = \change_mux|money\(1) $ (VCC)
-- \change_mux|Add1~1\ = CARRY(\change_mux|money\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(1),
	datad => VCC,
	combout => \change_mux|Add1~0_combout\,
	cout => \change_mux|Add1~1\);

-- Location: LCCOMB_X30_Y21_N2
\change_mux|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add1~2_combout\ = (\change_mux|money\(2) & (!\change_mux|Add1~1\)) # (!\change_mux|money\(2) & ((\change_mux|Add1~1\) # (GND)))
-- \change_mux|Add1~3\ = CARRY((!\change_mux|Add1~1\) # (!\change_mux|money\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(2),
	datad => VCC,
	cin => \change_mux|Add1~1\,
	combout => \change_mux|Add1~2_combout\,
	cout => \change_mux|Add1~3\);

-- Location: LCCOMB_X30_Y21_N4
\change_mux|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add1~4_combout\ = (\change_mux|money\(3) & ((GND) # (!\change_mux|Add1~3\))) # (!\change_mux|money\(3) & (\change_mux|Add1~3\ $ (GND)))
-- \change_mux|Add1~5\ = CARRY((\change_mux|money\(3)) # (!\change_mux|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(3),
	datad => VCC,
	cin => \change_mux|Add1~3\,
	combout => \change_mux|Add1~4_combout\,
	cout => \change_mux|Add1~5\);

-- Location: LCCOMB_X30_Y21_N6
\change_mux|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add1~6_combout\ = (\change_mux|money\(4) & (!\change_mux|Add1~5\)) # (!\change_mux|money\(4) & ((\change_mux|Add1~5\) # (GND)))
-- \change_mux|Add1~7\ = CARRY((!\change_mux|Add1~5\) # (!\change_mux|money\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(4),
	datad => VCC,
	cin => \change_mux|Add1~5\,
	combout => \change_mux|Add1~6_combout\,
	cout => \change_mux|Add1~7\);

-- Location: LCCOMB_X30_Y21_N8
\change_mux|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add1~8_combout\ = (\change_mux|money\(5) & (\change_mux|Add1~7\ $ (GND))) # (!\change_mux|money\(5) & (!\change_mux|Add1~7\ & VCC))
-- \change_mux|Add1~9\ = CARRY((\change_mux|money\(5) & !\change_mux|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(5),
	datad => VCC,
	cin => \change_mux|Add1~7\,
	combout => \change_mux|Add1~8_combout\,
	cout => \change_mux|Add1~9\);

-- Location: LCCOMB_X30_Y21_N10
\change_mux|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add1~10_combout\ = (\change_mux|money\(6) & (!\change_mux|Add1~9\)) # (!\change_mux|money\(6) & ((\change_mux|Add1~9\) # (GND)))
-- \change_mux|Add1~11\ = CARRY((!\change_mux|Add1~9\) # (!\change_mux|money\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(6),
	datad => VCC,
	cin => \change_mux|Add1~9\,
	combout => \change_mux|Add1~10_combout\,
	cout => \change_mux|Add1~11\);

-- Location: LCCOMB_X27_Y21_N12
\change_mux|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector3~1_combout\ = (\change_mux|money[9]~2_combout\ & (((\change_mux|Selector3~0_combout\)))) # (!\change_mux|money[9]~2_combout\ & ((\change_mux|LessThan4~1_combout\) # ((\change_mux|Add1~10_combout\ & 
-- !\change_mux|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~2_combout\,
	datab => \change_mux|LessThan4~1_combout\,
	datac => \change_mux|Add1~10_combout\,
	datad => \change_mux|Selector3~0_combout\,
	combout => \change_mux|Selector3~1_combout\);

-- Location: LCCOMB_X27_Y21_N6
\change_mux|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector3~2_combout\ = (\change_mux|Selector3~1_combout\) # ((\change_mux|Selector3~0_combout\ & \change_mux|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|Selector3~0_combout\,
	datac => \change_mux|Add0~12_combout\,
	datad => \change_mux|Selector3~1_combout\,
	combout => \change_mux|Selector3~2_combout\);

-- Location: LCCOMB_X29_Y22_N14
\change_mux|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector3~3_combout\ = (\judge_mux|change_state\(4) & (\change_mux|Add4~12_combout\)) # (!\judge_mux|change_state\(4) & ((\change_mux|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \judge_mux|change_state\(4),
	datac => \change_mux|Add4~12_combout\,
	datad => \change_mux|Selector3~2_combout\,
	combout => \change_mux|Selector3~3_combout\);

-- Location: LCCOMB_X29_Y22_N0
\change_mux|money[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|money[9]~4_combout\ = (\judge_mux|change_state\(5)) # ((\judge_mux|change_state\(3) & \change_mux|LessThan5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(3),
	datac => \judge_mux|change_state\(5),
	datad => \change_mux|LessThan5~1_combout\,
	combout => \change_mux|money[9]~4_combout\);

-- Location: LCCOMB_X29_Y22_N16
\change_mux|money[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|money[9]~6_combout\ = (\judge_mux|change_state\(0) & ((\judge_mux|change_state\(4)) # ((\judge_mux|change_state\(3)) # (\judge_mux|change_state\(2))))) # (!\judge_mux|change_state\(0) & ((\judge_mux|change_state\(4) & 
-- ((\judge_mux|change_state\(3)) # (\judge_mux|change_state\(2)))) # (!\judge_mux|change_state\(4) & (\judge_mux|change_state\(3) & \judge_mux|change_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(0),
	datab => \judge_mux|change_state\(4),
	datac => \judge_mux|change_state\(3),
	datad => \judge_mux|change_state\(2),
	combout => \change_mux|money[9]~6_combout\);

-- Location: LCCOMB_X29_Y22_N18
\change_mux|money[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|money[9]~3_combout\ = (\judge_mux|change_state\(1)) # ((\change_mux|LessThan6~3_combout\ & \judge_mux|change_state\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|LessThan6~3_combout\,
	datac => \judge_mux|change_state\(1),
	datad => \judge_mux|change_state\(4),
	combout => \change_mux|money[9]~3_combout\);

-- Location: LCCOMB_X29_Y22_N26
\change_mux|money[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|money[9]~7_combout\ = (\change_mux|money[9]~5_combout\ & ((\change_mux|money[9]~4_combout\ & (\change_mux|money[9]~6_combout\ & !\change_mux|money[9]~3_combout\)) # (!\change_mux|money[9]~4_combout\ & (\change_mux|money[9]~6_combout\ $ 
-- (!\change_mux|money[9]~3_combout\))))) # (!\change_mux|money[9]~5_combout\ & (!\change_mux|money[9]~6_combout\ & (\change_mux|money[9]~4_combout\ $ (\change_mux|money[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~5_combout\,
	datab => \change_mux|money[9]~4_combout\,
	datac => \change_mux|money[9]~6_combout\,
	datad => \change_mux|money[9]~3_combout\,
	combout => \change_mux|money[9]~7_combout\);

-- Location: FF_X29_Y22_N15
\change_mux|money[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector3~3_combout\,
	sclr => \judge_mux|change_state\(5),
	ena => \change_mux|money[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(6));

-- Location: LCCOMB_X29_Y20_N26
\change_mux|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~14_combout\ = (\change_mux|money\(7) & (\change_mux|Add4~13\ & VCC)) # (!\change_mux|money\(7) & (!\change_mux|Add4~13\))
-- \change_mux|Add4~15\ = CARRY((!\change_mux|money\(7) & !\change_mux|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(7),
	datad => VCC,
	cin => \change_mux|Add4~13\,
	combout => \change_mux|Add4~14_combout\,
	cout => \change_mux|Add4~15\);

-- Location: LCCOMB_X29_Y21_N14
\change_mux|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~14_combout\ = (\change_mux|money\(7) & (\change_mux|Add3~13\ & VCC)) # (!\change_mux|money\(7) & (!\change_mux|Add3~13\))
-- \change_mux|Add3~15\ = CARRY((!\change_mux|money\(7) & !\change_mux|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(7),
	datad => VCC,
	cin => \change_mux|Add3~13\,
	combout => \change_mux|Add3~14_combout\,
	cout => \change_mux|Add3~15\);

-- Location: LCCOMB_X28_Y21_N18
\change_mux|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add2~12_combout\ = (\change_mux|money\(7) & (\change_mux|Add2~11\ $ (GND))) # (!\change_mux|money\(7) & (!\change_mux|Add2~11\ & VCC))
-- \change_mux|Add2~13\ = CARRY((\change_mux|money\(7) & !\change_mux|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(7),
	datad => VCC,
	cin => \change_mux|Add2~11\,
	combout => \change_mux|Add2~12_combout\,
	cout => \change_mux|Add2~13\);

-- Location: LCCOMB_X27_Y21_N4
\change_mux|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector2~0_combout\ = (\change_mux|money[9]~1_combout\ & (\change_mux|money[9]~0_combout\ & (\change_mux|Add3~14_combout\))) # (!\change_mux|money[9]~1_combout\ & (((\change_mux|Add2~12_combout\)) # (!\change_mux|money[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~1_combout\,
	datab => \change_mux|money[9]~0_combout\,
	datac => \change_mux|Add3~14_combout\,
	datad => \change_mux|Add2~12_combout\,
	combout => \change_mux|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y21_N12
\change_mux|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add1~12_combout\ = (\change_mux|money\(7) & (\change_mux|Add1~11\ $ (GND))) # (!\change_mux|money\(7) & (!\change_mux|Add1~11\ & VCC))
-- \change_mux|Add1~13\ = CARRY((\change_mux|money\(7) & !\change_mux|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(7),
	datad => VCC,
	cin => \change_mux|Add1~11\,
	combout => \change_mux|Add1~12_combout\,
	cout => \change_mux|Add1~13\);

-- Location: LCCOMB_X27_Y21_N30
\change_mux|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector2~1_combout\ = (\change_mux|money[9]~2_combout\ & (((\change_mux|Selector2~0_combout\)))) # (!\change_mux|money[9]~2_combout\ & ((\change_mux|LessThan4~1_combout\) # ((!\change_mux|Selector2~0_combout\ & 
-- \change_mux|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~2_combout\,
	datab => \change_mux|LessThan4~1_combout\,
	datac => \change_mux|Selector2~0_combout\,
	datad => \change_mux|Add1~12_combout\,
	combout => \change_mux|Selector2~1_combout\);

-- Location: LCCOMB_X26_Y21_N18
\change_mux|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~14_combout\ = (\change_mux|money\(7) & (!\change_mux|Add0~13\)) # (!\change_mux|money\(7) & ((\change_mux|Add0~13\) # (GND)))
-- \change_mux|Add0~15\ = CARRY((!\change_mux|Add0~13\) # (!\change_mux|money\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(7),
	datad => VCC,
	cin => \change_mux|Add0~13\,
	combout => \change_mux|Add0~14_combout\,
	cout => \change_mux|Add0~15\);

-- Location: LCCOMB_X27_Y21_N0
\change_mux|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector2~2_combout\ = (\change_mux|Selector2~1_combout\) # ((\change_mux|Selector2~0_combout\ & \change_mux|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|Selector2~0_combout\,
	datac => \change_mux|Selector2~1_combout\,
	datad => \change_mux|Add0~14_combout\,
	combout => \change_mux|Selector2~2_combout\);

-- Location: LCCOMB_X29_Y22_N28
\change_mux|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector2~3_combout\ = (\judge_mux|change_state\(4) & (\change_mux|Add4~14_combout\)) # (!\judge_mux|change_state\(4) & ((\change_mux|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \judge_mux|change_state\(4),
	datac => \change_mux|Add4~14_combout\,
	datad => \change_mux|Selector2~2_combout\,
	combout => \change_mux|Selector2~3_combout\);

-- Location: FF_X29_Y22_N29
\change_mux|money[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector2~3_combout\,
	sclr => \judge_mux|change_state\(5),
	ena => \change_mux|money[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(7));

-- Location: LCCOMB_X29_Y20_N28
\change_mux|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~16_combout\ = (\change_mux|money\(8) & ((GND) # (!\change_mux|Add4~15\))) # (!\change_mux|money\(8) & (\change_mux|Add4~15\ $ (GND)))
-- \change_mux|Add4~17\ = CARRY((\change_mux|money\(8)) # (!\change_mux|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(8),
	datad => VCC,
	cin => \change_mux|Add4~15\,
	combout => \change_mux|Add4~16_combout\,
	cout => \change_mux|Add4~17\);

-- Location: LCCOMB_X26_Y21_N20
\change_mux|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~16_combout\ = (\change_mux|money\(8) & (\change_mux|Add0~15\ $ (GND))) # (!\change_mux|money\(8) & (!\change_mux|Add0~15\ & VCC))
-- \change_mux|Add0~17\ = CARRY((\change_mux|money\(8) & !\change_mux|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(8),
	datad => VCC,
	cin => \change_mux|Add0~15\,
	combout => \change_mux|Add0~16_combout\,
	cout => \change_mux|Add0~17\);

-- Location: LCCOMB_X28_Y21_N20
\change_mux|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add2~14_combout\ = (\change_mux|money\(8) & (!\change_mux|Add2~13\)) # (!\change_mux|money\(8) & ((\change_mux|Add2~13\) # (GND)))
-- \change_mux|Add2~15\ = CARRY((!\change_mux|Add2~13\) # (!\change_mux|money\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(8),
	datad => VCC,
	cin => \change_mux|Add2~13\,
	combout => \change_mux|Add2~14_combout\,
	cout => \change_mux|Add2~15\);

-- Location: LCCOMB_X29_Y21_N16
\change_mux|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~16_combout\ = (\change_mux|money\(8) & ((GND) # (!\change_mux|Add3~15\))) # (!\change_mux|money\(8) & (\change_mux|Add3~15\ $ (GND)))
-- \change_mux|Add3~17\ = CARRY((\change_mux|money\(8)) # (!\change_mux|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(8),
	datad => VCC,
	cin => \change_mux|Add3~15\,
	combout => \change_mux|Add3~16_combout\,
	cout => \change_mux|Add3~17\);

-- Location: LCCOMB_X27_Y21_N14
\change_mux|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector1~0_combout\ = (\change_mux|money[9]~1_combout\ & (\change_mux|money[9]~0_combout\ & ((\change_mux|Add3~16_combout\)))) # (!\change_mux|money[9]~1_combout\ & (((\change_mux|Add2~14_combout\)) # (!\change_mux|money[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~1_combout\,
	datab => \change_mux|money[9]~0_combout\,
	datac => \change_mux|Add2~14_combout\,
	datad => \change_mux|Add3~16_combout\,
	combout => \change_mux|Selector1~0_combout\);

-- Location: LCCOMB_X30_Y21_N14
\change_mux|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add1~14_combout\ = (\change_mux|money\(8) & (!\change_mux|Add1~13\)) # (!\change_mux|money\(8) & ((\change_mux|Add1~13\) # (GND)))
-- \change_mux|Add1~15\ = CARRY((!\change_mux|Add1~13\) # (!\change_mux|money\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(8),
	datad => VCC,
	cin => \change_mux|Add1~13\,
	combout => \change_mux|Add1~14_combout\,
	cout => \change_mux|Add1~15\);

-- Location: LCCOMB_X27_Y21_N20
\change_mux|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector1~1_combout\ = (\change_mux|money[9]~2_combout\ & (((\change_mux|Selector1~0_combout\)))) # (!\change_mux|money[9]~2_combout\ & ((\change_mux|LessThan4~1_combout\) # ((!\change_mux|Selector1~0_combout\ & 
-- \change_mux|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~2_combout\,
	datab => \change_mux|LessThan4~1_combout\,
	datac => \change_mux|Selector1~0_combout\,
	datad => \change_mux|Add1~14_combout\,
	combout => \change_mux|Selector1~1_combout\);

-- Location: LCCOMB_X27_Y21_N10
\change_mux|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector1~2_combout\ = (\change_mux|Selector1~1_combout\) # ((\change_mux|Add0~16_combout\ & \change_mux|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|Add0~16_combout\,
	datac => \change_mux|Selector1~0_combout\,
	datad => \change_mux|Selector1~1_combout\,
	combout => \change_mux|Selector1~2_combout\);

-- Location: LCCOMB_X28_Y22_N30
\change_mux|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector1~3_combout\ = (\judge_mux|change_state\(4) & (\change_mux|Add4~16_combout\)) # (!\judge_mux|change_state\(4) & ((\change_mux|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|Add4~16_combout\,
	datac => \judge_mux|change_state\(4),
	datad => \change_mux|Selector1~2_combout\,
	combout => \change_mux|Selector1~3_combout\);

-- Location: FF_X28_Y22_N31
\change_mux|money[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector1~3_combout\,
	sclr => \judge_mux|change_state\(5),
	ena => \change_mux|money[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(8));

-- Location: LCCOMB_X29_Y20_N30
\change_mux|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~18_combout\ = \change_mux|money\(9) $ (!\change_mux|Add4~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(9),
	cin => \change_mux|Add4~17\,
	combout => \change_mux|Add4~18_combout\);

-- Location: LCCOMB_X29_Y21_N18
\change_mux|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add3~18_combout\ = \change_mux|Add3~17\ $ (!\change_mux|money\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \change_mux|money\(9),
	cin => \change_mux|Add3~17\,
	combout => \change_mux|Add3~18_combout\);

-- Location: LCCOMB_X28_Y21_N22
\change_mux|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add2~16_combout\ = \change_mux|Add2~15\ $ (!\change_mux|money\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \change_mux|money\(9),
	cin => \change_mux|Add2~15\,
	combout => \change_mux|Add2~16_combout\);

-- Location: LCCOMB_X28_Y21_N28
\change_mux|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector0~0_combout\ = (\change_mux|money[9]~1_combout\ & (\change_mux|Add3~18_combout\ & ((\change_mux|money[9]~0_combout\)))) # (!\change_mux|money[9]~1_combout\ & (((\change_mux|Add2~16_combout\) # (!\change_mux|money[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~1_combout\,
	datab => \change_mux|Add3~18_combout\,
	datac => \change_mux|Add2~16_combout\,
	datad => \change_mux|money[9]~0_combout\,
	combout => \change_mux|Selector0~0_combout\);

-- Location: LCCOMB_X26_Y21_N22
\change_mux|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~18_combout\ = \change_mux|Add0~17\ $ (\change_mux|money\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \change_mux|money\(9),
	cin => \change_mux|Add0~17\,
	combout => \change_mux|Add0~18_combout\);

-- Location: LCCOMB_X28_Y21_N30
\change_mux|money[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|money[9]~2_combout\ = (\judge_mux|change_state\(2)) # (\judge_mux|change_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \judge_mux|change_state\(2),
	datad => \judge_mux|change_state\(3),
	combout => \change_mux|money[9]~2_combout\);

-- Location: LCCOMB_X30_Y21_N16
\change_mux|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add1~16_combout\ = \change_mux|Add1~15\ $ (!\change_mux|money\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \change_mux|money\(9),
	cin => \change_mux|Add1~15\,
	combout => \change_mux|Add1~16_combout\);

-- Location: LCCOMB_X28_Y21_N24
\change_mux|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector0~1_combout\ = (\change_mux|money[9]~2_combout\ & (((\change_mux|Selector0~0_combout\)))) # (!\change_mux|money[9]~2_combout\ & ((\change_mux|LessThan4~1_combout\) # ((\change_mux|Add1~16_combout\ & 
-- !\change_mux|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|LessThan4~1_combout\,
	datab => \change_mux|money[9]~2_combout\,
	datac => \change_mux|Add1~16_combout\,
	datad => \change_mux|Selector0~0_combout\,
	combout => \change_mux|Selector0~1_combout\);

-- Location: LCCOMB_X28_Y21_N26
\change_mux|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector0~2_combout\ = (\change_mux|Selector0~1_combout\) # ((\change_mux|Selector0~0_combout\ & \change_mux|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|Selector0~0_combout\,
	datac => \change_mux|Add0~18_combout\,
	datad => \change_mux|Selector0~1_combout\,
	combout => \change_mux|Selector0~2_combout\);

-- Location: LCCOMB_X28_Y22_N8
\change_mux|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector0~3_combout\ = (\judge_mux|change_state\(4) & (\change_mux|Add4~18_combout\)) # (!\judge_mux|change_state\(4) & ((\change_mux|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(4),
	datac => \change_mux|Add4~18_combout\,
	datad => \change_mux|Selector0~2_combout\,
	combout => \change_mux|Selector0~3_combout\);

-- Location: FF_X28_Y22_N9
\change_mux|money[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector0~3_combout\,
	sclr => \judge_mux|change_state\(5),
	ena => \change_mux|money[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(9));

-- Location: LCCOMB_X26_Y21_N28
\change_mux|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|LessThan4~0_combout\ = (\change_mux|money\(8) & (\change_mux|money\(9) & ((\change_mux|money\(3)) # (\change_mux|money\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(3),
	datab => \change_mux|money\(4),
	datac => \change_mux|money\(8),
	datad => \change_mux|money\(9),
	combout => \change_mux|LessThan4~0_combout\);

-- Location: LCCOMB_X26_Y21_N30
\change_mux|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|LessThan4~1_combout\ = (\change_mux|money\(7) & (\change_mux|money\(6) & (\change_mux|money\(5) & \change_mux|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(7),
	datab => \change_mux|money\(6),
	datac => \change_mux|money\(5),
	datad => \change_mux|LessThan4~0_combout\,
	combout => \change_mux|LessThan4~1_combout\);

-- Location: LCCOMB_X27_Y21_N28
\change_mux|money[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|money[9]~0_combout\ = (\judge_mux|change_state\(3)) # ((\judge_mux|change_state\(2) & !\change_mux|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \judge_mux|change_state\(3),
	datac => \judge_mux|change_state\(2),
	datad => \change_mux|LessThan4~1_combout\,
	combout => \change_mux|money[9]~0_combout\);

-- Location: LCCOMB_X27_Y21_N26
\change_mux|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector7~0_combout\ = (\change_mux|money[9]~1_combout\ & (\change_mux|Add3~4_combout\ & ((\change_mux|money[9]~0_combout\)))) # (!\change_mux|money[9]~1_combout\ & (((\change_mux|Add2~2_combout\) # (!\change_mux|money[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Add3~4_combout\,
	datab => \change_mux|Add2~2_combout\,
	datac => \change_mux|money[9]~1_combout\,
	datad => \change_mux|money[9]~0_combout\,
	combout => \change_mux|Selector7~0_combout\);

-- Location: LCCOMB_X27_Y21_N24
\change_mux|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector7~1_combout\ = (\change_mux|money[9]~2_combout\ & (((\change_mux|Selector7~0_combout\)))) # (!\change_mux|money[9]~2_combout\ & ((\change_mux|LessThan4~1_combout\) # ((\change_mux|Add1~2_combout\ & !\change_mux|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~2_combout\,
	datab => \change_mux|Add1~2_combout\,
	datac => \change_mux|Selector7~0_combout\,
	datad => \change_mux|LessThan4~1_combout\,
	combout => \change_mux|Selector7~1_combout\);

-- Location: LCCOMB_X27_Y21_N22
\change_mux|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector7~2_combout\ = (\change_mux|Selector7~1_combout\) # ((\change_mux|Add0~4_combout\ & \change_mux|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Add0~4_combout\,
	datac => \change_mux|Selector7~0_combout\,
	datad => \change_mux|Selector7~1_combout\,
	combout => \change_mux|Selector7~2_combout\);

-- Location: LCCOMB_X28_Y21_N2
\change_mux|Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector7~3_combout\ = (\judge_mux|change_state\(4) & (\change_mux|Add4~4_combout\)) # (!\judge_mux|change_state\(4) & ((\change_mux|Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \judge_mux|change_state\(4),
	datac => \change_mux|Add4~4_combout\,
	datad => \change_mux|Selector7~2_combout\,
	combout => \change_mux|Selector7~3_combout\);

-- Location: FF_X28_Y21_N3
\change_mux|money[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector7~3_combout\,
	sclr => \judge_mux|change_state\(5),
	ena => \change_mux|money[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(2));

-- Location: LCCOMB_X26_Y21_N6
\change_mux|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add0~2_combout\ = (\change_mux|money\(1) & (!\change_mux|Add0~1\)) # (!\change_mux|money\(1) & ((\change_mux|Add0~1\) # (GND)))
-- \change_mux|Add0~3\ = CARRY((!\change_mux|Add0~1\) # (!\change_mux|money\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(1),
	datad => VCC,
	cin => \change_mux|Add0~1\,
	combout => \change_mux|Add0~2_combout\,
	cout => \change_mux|Add0~3\);

-- Location: LCCOMB_X30_Y21_N18
\change_mux|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector4~0_combout\ = (\change_mux|money[9]~1_combout\ & (\change_mux|Add3~10_combout\ & ((\change_mux|money[9]~0_combout\)))) # (!\change_mux|money[9]~1_combout\ & (((\change_mux|Add2~8_combout\) # (!\change_mux|money[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Add3~10_combout\,
	datab => \change_mux|money[9]~1_combout\,
	datac => \change_mux|Add2~8_combout\,
	datad => \change_mux|money[9]~0_combout\,
	combout => \change_mux|Selector4~0_combout\);

-- Location: LCCOMB_X30_Y21_N24
\change_mux|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector4~1_combout\ = (\change_mux|money[9]~2_combout\ & (((\change_mux|Selector4~0_combout\)))) # (!\change_mux|money[9]~2_combout\ & ((\change_mux|LessThan4~1_combout\) # ((\change_mux|Add1~8_combout\ & !\change_mux|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~2_combout\,
	datab => \change_mux|LessThan4~1_combout\,
	datac => \change_mux|Add1~8_combout\,
	datad => \change_mux|Selector4~0_combout\,
	combout => \change_mux|Selector4~1_combout\);

-- Location: LCCOMB_X30_Y21_N22
\change_mux|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector4~2_combout\ = (\change_mux|Selector4~1_combout\) # ((\change_mux|Add0~10_combout\ & \change_mux|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|Add0~10_combout\,
	datac => \change_mux|Selector4~0_combout\,
	datad => \change_mux|Selector4~1_combout\,
	combout => \change_mux|Selector4~2_combout\);

-- Location: LCCOMB_X29_Y22_N8
\change_mux|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector4~3_combout\ = (\judge_mux|change_state\(4) & (\change_mux|Add4~10_combout\)) # (!\judge_mux|change_state\(4) & ((\change_mux|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \judge_mux|change_state\(4),
	datac => \change_mux|Add4~10_combout\,
	datad => \change_mux|Selector4~2_combout\,
	combout => \change_mux|Selector4~3_combout\);

-- Location: FF_X29_Y22_N9
\change_mux|money[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector4~3_combout\,
	sclr => \judge_mux|change_state\(5),
	ena => \change_mux|money[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(5));

-- Location: LCCOMB_X29_Y22_N22
\change_mux|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|LessThan6~2_combout\ = ((!\change_mux|money\(1) & (!\change_mux|money\(0) & !\change_mux|money\(2)))) # (!\change_mux|money\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(1),
	datab => \change_mux|money\(4),
	datac => \change_mux|money\(0),
	datad => \change_mux|money\(2),
	combout => \change_mux|LessThan6~2_combout\);

-- Location: LCCOMB_X29_Y22_N2
\change_mux|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|LessThan6~0_combout\ = (!\change_mux|money\(6) & (!\change_mux|money\(8) & (!\change_mux|money\(9) & !\change_mux|money\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(6),
	datab => \change_mux|money\(8),
	datac => \change_mux|money\(9),
	datad => \change_mux|money\(7),
	combout => \change_mux|LessThan6~0_combout\);

-- Location: LCCOMB_X29_Y22_N24
\change_mux|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|LessThan6~3_combout\ = (!\change_mux|money\(5) & (\change_mux|LessThan6~0_combout\ & ((\change_mux|LessThan6~2_combout\) # (!\change_mux|money\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(3),
	datab => \change_mux|money\(5),
	datac => \change_mux|LessThan6~2_combout\,
	datad => \change_mux|LessThan6~0_combout\,
	combout => \change_mux|LessThan6~3_combout\);

-- Location: LCCOMB_X29_Y20_N0
\change_mux|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector9~1_combout\ = (\change_mux|Selector9~0_combout\ & ((\change_mux|LessThan6~3_combout\ & ((\change_mux|money\(0)))) # (!\change_mux|LessThan6~3_combout\ & (\change_mux|Add4~0_combout\)))) # (!\change_mux|Selector9~0_combout\ & 
-- (((\change_mux|money\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Add4~0_combout\,
	datab => \change_mux|Selector9~0_combout\,
	datac => \change_mux|money\(0),
	datad => \change_mux|LessThan6~3_combout\,
	combout => \change_mux|Selector9~1_combout\);

-- Location: LCCOMB_X30_Y22_N2
\change_mux|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector9~2_combout\ = (!\judge_mux|change_state\(2) & (!\judge_mux|change_state\(1) & (\judge_mux|change_state\(0) $ (\judge_mux|change_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(2),
	datab => \judge_mux|change_state\(1),
	datac => \judge_mux|change_state\(0),
	datad => \judge_mux|change_state\(3),
	combout => \change_mux|Selector9~2_combout\);

-- Location: LCCOMB_X29_Y21_N28
\change_mux|Selector9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector9~3_combout\ = (\change_mux|Selector9~2_combout\ & ((\change_mux|LessThan5~1_combout\ & (\change_mux|money\(0))) # (!\change_mux|LessThan5~1_combout\ & ((\change_mux|Add3~0_combout\))))) # (!\change_mux|Selector9~2_combout\ & 
-- (\change_mux|money\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(0),
	datab => \change_mux|Add3~0_combout\,
	datac => \change_mux|Selector9~2_combout\,
	datad => \change_mux|LessThan5~1_combout\,
	combout => \change_mux|Selector9~3_combout\);

-- Location: LCCOMB_X30_Y22_N8
\change_mux|Selector9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector9~4_combout\ = (!\judge_mux|change_state\(3) & ((\judge_mux|change_state\(2) & (!\judge_mux|change_state\(1) & !\judge_mux|change_state\(0))) # (!\judge_mux|change_state\(2) & (\judge_mux|change_state\(1) $ 
-- (\judge_mux|change_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(2),
	datab => \judge_mux|change_state\(1),
	datac => \judge_mux|change_state\(0),
	datad => \judge_mux|change_state\(3),
	combout => \change_mux|Selector9~4_combout\);

-- Location: LCCOMB_X29_Y21_N30
\change_mux|Selector9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector9~5_combout\ = (\change_mux|Selector9~4_combout\ & ((\change_mux|Selector9~2_combout\) # (\change_mux|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|Selector9~4_combout\,
	datac => \change_mux|Selector9~2_combout\,
	datad => \change_mux|LessThan4~1_combout\,
	combout => \change_mux|Selector9~5_combout\);

-- Location: LCCOMB_X29_Y21_N24
\change_mux|Selector9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector9~6_combout\ = (\change_mux|Selector9~5_combout\ & ((\change_mux|Add0~0_combout\) # ((\change_mux|LessThan4~1_combout\)))) # (!\change_mux|Selector9~5_combout\ & (((\change_mux|Selector9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Add0~0_combout\,
	datab => \change_mux|Selector9~3_combout\,
	datac => \change_mux|Selector9~5_combout\,
	datad => \change_mux|LessThan4~1_combout\,
	combout => \change_mux|Selector9~6_combout\);

-- Location: LCCOMB_X29_Y21_N22
\change_mux|Selector9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector9~7_combout\ = (\judge_mux|change_state\(4) & ((\change_mux|Selector9~1_combout\) # ((\judge_mux|change_state\(5))))) # (!\judge_mux|change_state\(4) & (((!\judge_mux|change_state\(5) & \change_mux|Selector9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(4),
	datab => \change_mux|Selector9~1_combout\,
	datac => \judge_mux|change_state\(5),
	datad => \change_mux|Selector9~6_combout\,
	combout => \change_mux|Selector9~7_combout\);

-- Location: LCCOMB_X29_Y21_N26
\change_mux|Selector9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector9~8_combout\ = (\judge_mux|change_state\(5) & (\change_mux|money\(0) & ((\change_mux|Selector9~7_combout\) # (!\change_mux|Selector9~0_combout\)))) # (!\judge_mux|change_state\(5) & (((\change_mux|Selector9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Selector9~0_combout\,
	datab => \judge_mux|change_state\(5),
	datac => \change_mux|money\(0),
	datad => \change_mux|Selector9~7_combout\,
	combout => \change_mux|Selector9~8_combout\);

-- Location: FF_X29_Y21_N27
\change_mux|money[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector9~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(0));

-- Location: LCCOMB_X29_Y20_N14
\change_mux|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~2_combout\ = (\change_mux|money\(1) & (\change_mux|Add4~1\ & VCC)) # (!\change_mux|money\(1) & (!\change_mux|Add4~1\))
-- \change_mux|Add4~3\ = CARRY((!\change_mux|money\(1) & !\change_mux|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(1),
	datad => VCC,
	cin => \change_mux|Add4~1\,
	combout => \change_mux|Add4~2_combout\,
	cout => \change_mux|Add4~3\);

-- Location: LCCOMB_X27_Y21_N16
\change_mux|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector8~0_combout\ = (\change_mux|money[9]~1_combout\ & (\change_mux|Add3~2_combout\ & ((\change_mux|money[9]~0_combout\)))) # (!\change_mux|money[9]~1_combout\ & (((\change_mux|Add2~0_combout\) # (!\change_mux|money[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Add3~2_combout\,
	datab => \change_mux|Add2~0_combout\,
	datac => \change_mux|money[9]~1_combout\,
	datad => \change_mux|money[9]~0_combout\,
	combout => \change_mux|Selector8~0_combout\);

-- Location: LCCOMB_X27_Y21_N18
\change_mux|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector8~1_combout\ = (\change_mux|money[9]~2_combout\ & (((\change_mux|Selector8~0_combout\)))) # (!\change_mux|money[9]~2_combout\ & ((\change_mux|LessThan4~1_combout\) # ((\change_mux|Add1~0_combout\ & !\change_mux|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~2_combout\,
	datab => \change_mux|LessThan4~1_combout\,
	datac => \change_mux|Add1~0_combout\,
	datad => \change_mux|Selector8~0_combout\,
	combout => \change_mux|Selector8~1_combout\);

-- Location: LCCOMB_X27_Y21_N8
\change_mux|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector8~2_combout\ = (\change_mux|Selector8~1_combout\) # ((\change_mux|Selector8~0_combout\ & \change_mux|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|Selector8~0_combout\,
	datac => \change_mux|Add0~2_combout\,
	datad => \change_mux|Selector8~1_combout\,
	combout => \change_mux|Selector8~2_combout\);

-- Location: LCCOMB_X29_Y21_N20
\change_mux|Selector8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector8~3_combout\ = (\judge_mux|change_state\(4) & (\change_mux|Add4~2_combout\)) # (!\judge_mux|change_state\(4) & ((\change_mux|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(4),
	datac => \change_mux|Add4~2_combout\,
	datad => \change_mux|Selector8~2_combout\,
	combout => \change_mux|Selector8~3_combout\);

-- Location: FF_X29_Y21_N21
\change_mux|money[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector8~3_combout\,
	sclr => \judge_mux|change_state\(5),
	ena => \change_mux|money[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(1));

-- Location: LCCOMB_X29_Y20_N18
\change_mux|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Add4~6_combout\ = (\change_mux|money\(3) & (!\change_mux|Add4~5\)) # (!\change_mux|money\(3) & ((\change_mux|Add4~5\) # (GND)))
-- \change_mux|Add4~7\ = CARRY((!\change_mux|Add4~5\) # (!\change_mux|money\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(3),
	datad => VCC,
	cin => \change_mux|Add4~5\,
	combout => \change_mux|Add4~6_combout\,
	cout => \change_mux|Add4~7\);

-- Location: LCCOMB_X30_Y21_N20
\change_mux|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector6~0_combout\ = (\change_mux|money[9]~1_combout\ & (((\change_mux|Add3~6_combout\) # (!\change_mux|money[9]~0_combout\)))) # (!\change_mux|money[9]~1_combout\ & (\change_mux|Add2~4_combout\ & ((\change_mux|money[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Add2~4_combout\,
	datab => \change_mux|money[9]~1_combout\,
	datac => \change_mux|Add3~6_combout\,
	datad => \change_mux|money[9]~0_combout\,
	combout => \change_mux|Selector6~0_combout\);

-- Location: LCCOMB_X30_Y21_N30
\change_mux|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector6~1_combout\ = (\change_mux|money[9]~2_combout\ & (((!\change_mux|Selector6~0_combout\)))) # (!\change_mux|money[9]~2_combout\ & ((\change_mux|LessThan4~1_combout\) # ((!\change_mux|Add1~4_combout\ & 
-- \change_mux|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~2_combout\,
	datab => \change_mux|LessThan4~1_combout\,
	datac => \change_mux|Add1~4_combout\,
	datad => \change_mux|Selector6~0_combout\,
	combout => \change_mux|Selector6~1_combout\);

-- Location: LCCOMB_X30_Y21_N28
\change_mux|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector6~2_combout\ = (\change_mux|Selector6~1_combout\) # ((!\change_mux|Add0~6_combout\ & !\change_mux|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Add0~6_combout\,
	datab => \change_mux|Selector6~0_combout\,
	datac => \change_mux|Selector6~1_combout\,
	combout => \change_mux|Selector6~2_combout\);

-- Location: LCCOMB_X28_Y21_N4
\change_mux|Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector6~3_combout\ = (\judge_mux|change_state\(4) & (\change_mux|Add4~6_combout\)) # (!\judge_mux|change_state\(4) & ((!\change_mux|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|Add4~6_combout\,
	datac => \judge_mux|change_state\(4),
	datad => \change_mux|Selector6~2_combout\,
	combout => \change_mux|Selector6~3_combout\);

-- Location: FF_X28_Y21_N5
\change_mux|money[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector6~3_combout\,
	sclr => \judge_mux|change_state\(5),
	ena => \change_mux|money[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(3));

-- Location: LCCOMB_X26_Y21_N24
\change_mux|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector5~0_combout\ = (\change_mux|money[9]~1_combout\ & (((\change_mux|Add3~8_combout\) # (!\change_mux|money[9]~0_combout\)))) # (!\change_mux|money[9]~1_combout\ & (\change_mux|Add2~6_combout\ & ((\change_mux|money[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money[9]~1_combout\,
	datab => \change_mux|Add2~6_combout\,
	datac => \change_mux|Add3~8_combout\,
	datad => \change_mux|money[9]~0_combout\,
	combout => \change_mux|Selector5~0_combout\);

-- Location: LCCOMB_X26_Y21_N26
\change_mux|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector5~1_combout\ = (\change_mux|money[9]~2_combout\ & (((!\change_mux|Selector5~0_combout\)))) # (!\change_mux|money[9]~2_combout\ & ((\change_mux|LessThan4~1_combout\) # ((!\change_mux|Add1~6_combout\ & 
-- \change_mux|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|LessThan4~1_combout\,
	datab => \change_mux|money[9]~2_combout\,
	datac => \change_mux|Add1~6_combout\,
	datad => \change_mux|Selector5~0_combout\,
	combout => \change_mux|Selector5~1_combout\);

-- Location: LCCOMB_X26_Y21_N0
\change_mux|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector5~2_combout\ = (\change_mux|Selector5~1_combout\) # ((!\change_mux|Add0~8_combout\ & !\change_mux|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Add0~8_combout\,
	datac => \change_mux|Selector5~1_combout\,
	datad => \change_mux|Selector5~0_combout\,
	combout => \change_mux|Selector5~2_combout\);

-- Location: LCCOMB_X28_Y21_N0
\change_mux|Selector5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector5~3_combout\ = (\judge_mux|change_state\(4) & (\change_mux|Add4~8_combout\)) # (!\judge_mux|change_state\(4) & ((!\change_mux|Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \judge_mux|change_state\(4),
	datac => \change_mux|Add4~8_combout\,
	datad => \change_mux|Selector5~2_combout\,
	combout => \change_mux|Selector5~3_combout\);

-- Location: FF_X28_Y21_N1
\change_mux|money[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector5~3_combout\,
	sclr => \judge_mux|change_state\(5),
	ena => \change_mux|money[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|money\(4));

-- Location: LCCOMB_X29_Y22_N4
\change_mux|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|LessThan5~0_combout\ = (((!\change_mux|money\(3)) # (!\change_mux|money\(0))) # (!\change_mux|money\(1))) # (!\change_mux|money\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(2),
	datab => \change_mux|money\(1),
	datac => \change_mux|money\(0),
	datad => \change_mux|money\(3),
	combout => \change_mux|LessThan5~0_combout\);

-- Location: LCCOMB_X29_Y22_N6
\change_mux|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|LessThan5~1_combout\ = (!\change_mux|money\(5) & (!\change_mux|money\(4) & (\change_mux|LessThan5~0_combout\ & \change_mux|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(5),
	datab => \change_mux|money\(4),
	datac => \change_mux|LessThan5~0_combout\,
	datad => \change_mux|LessThan6~0_combout\,
	combout => \change_mux|LessThan5~1_combout\);

-- Location: LCCOMB_X33_Y22_N8
\change_mux|Selector13~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~13_combout\ = (\judge_mux|change_state\(1) & (\change_mux|remind_1~q\)) # (!\judge_mux|change_state\(1) & ((\judge_mux|change_state\(0) & (\change_mux|remind_1~q\)) # (!\judge_mux|change_state\(0) & 
-- ((\change_mux|LessThan5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(1),
	datab => \change_mux|remind_1~q\,
	datac => \judge_mux|change_state\(0),
	datad => \change_mux|LessThan5~1_combout\,
	combout => \change_mux|Selector13~13_combout\);

-- Location: LCCOMB_X30_Y22_N14
\change_mux|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|LessThan6~1_combout\ = (!\change_mux|money\(5) & \change_mux|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(5),
	datad => \change_mux|LessThan6~0_combout\,
	combout => \change_mux|LessThan6~1_combout\);

-- Location: LCCOMB_X29_Y22_N12
\change_mux|Selector13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~5_combout\ = (\change_mux|money\(1)) # ((\change_mux|money\(0) & \change_mux|money\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(1),
	datac => \change_mux|money\(0),
	datad => \change_mux|money\(2),
	combout => \change_mux|Selector13~5_combout\);

-- Location: LCCOMB_X30_Y22_N4
\change_mux|Selector13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~6_combout\ = (\change_mux|money\(3) & (!\change_mux|money\(2) & (!\judge_mux|change_state\(1) & !\change_mux|Selector13~5_combout\))) # (!\change_mux|money\(3) & (((!\change_mux|Selector13~5_combout\) # 
-- (!\judge_mux|change_state\(1))) # (!\change_mux|money\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(3),
	datab => \change_mux|money\(2),
	datac => \judge_mux|change_state\(1),
	datad => \change_mux|Selector13~5_combout\,
	combout => \change_mux|Selector13~6_combout\);

-- Location: LCCOMB_X30_Y22_N6
\change_mux|Selector13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~7_combout\ = \judge_mux|change_state\(1) $ (\judge_mux|change_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \judge_mux|change_state\(1),
	datac => \judge_mux|change_state\(0),
	combout => \change_mux|Selector13~7_combout\);

-- Location: LCCOMB_X30_Y22_N0
\change_mux|Selector13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~8_combout\ = (\change_mux|Selector13~7_combout\ & ((\change_mux|money\(4)) # ((!\change_mux|Selector13~6_combout\) # (!\change_mux|LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(4),
	datab => \change_mux|LessThan6~1_combout\,
	datac => \change_mux|Selector13~6_combout\,
	datad => \change_mux|Selector13~7_combout\,
	combout => \change_mux|Selector13~8_combout\);

-- Location: LCCOMB_X33_Y22_N20
\change_mux|Selector13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~9_combout\ = (\change_mux|remind_1~q\ & ((\judge_mux|change_state\(1)) # ((\judge_mux|change_state\(0)) # (!\judge_mux|change_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(1),
	datab => \change_mux|remind_1~q\,
	datac => \judge_mux|change_state\(0),
	datad => \judge_mux|change_state\(2),
	combout => \change_mux|Selector13~9_combout\);

-- Location: LCCOMB_X33_Y22_N18
\change_mux|Selector13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~10_combout\ = (\judge_mux|change_state\(3) & (\judge_mux|change_state\(2))) # (!\judge_mux|change_state\(3) & (\change_mux|Selector13~9_combout\ & ((\judge_mux|change_state\(2)) # (!\change_mux|Selector13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(2),
	datab => \judge_mux|change_state\(3),
	datac => \change_mux|Selector13~8_combout\,
	datad => \change_mux|Selector13~9_combout\,
	combout => \change_mux|Selector13~10_combout\);

-- Location: LCCOMB_X33_Y22_N0
\change_mux|Selector13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~11_combout\ = (\judge_mux|change_state\(3) & ((\change_mux|Selector13~10_combout\ & ((\change_mux|remind_1~q\))) # (!\change_mux|Selector13~10_combout\ & (\change_mux|Selector13~13_combout\)))) # (!\judge_mux|change_state\(3) & 
-- (((\change_mux|Selector13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(3),
	datab => \change_mux|Selector13~13_combout\,
	datac => \change_mux|remind_1~q\,
	datad => \change_mux|Selector13~10_combout\,
	combout => \change_mux|Selector13~11_combout\);

-- Location: LCCOMB_X33_Y22_N28
\change_mux|Selector13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~12_combout\ = (!\judge_mux|change_state\(5) & !\judge_mux|change_state\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \judge_mux|change_state\(5),
	datad => \judge_mux|change_state\(4),
	combout => \change_mux|Selector13~12_combout\);

-- Location: FF_X33_Y22_N1
\change_mux|remind_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector13~11_combout\,
	ena => \change_mux|Selector13~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|remind_1~q\);

-- Location: LCCOMB_X31_Y22_N16
\change_mux|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector11~0_combout\ = (\judge_mux|change_state\(0) & (\change_mux|remind_2~q\)) # (!\judge_mux|change_state\(0) & ((\judge_mux|change_state\(1) & (\change_mux|remind_2~q\)) # (!\judge_mux|change_state\(1) & 
-- ((\change_mux|LessThan6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(0),
	datab => \change_mux|remind_2~q\,
	datac => \judge_mux|change_state\(1),
	datad => \change_mux|LessThan6~3_combout\,
	combout => \change_mux|Selector11~0_combout\);

-- Location: LCCOMB_X29_Y22_N20
\change_mux|Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector11~2_combout\ = (\change_mux|Selector11~1_combout\) # ((!\change_mux|money\(4) & ((\change_mux|LessThan5~0_combout\) # (!\judge_mux|change_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Selector11~1_combout\,
	datab => \judge_mux|change_state\(1),
	datac => \change_mux|LessThan5~0_combout\,
	datad => \change_mux|money\(4),
	combout => \change_mux|Selector11~2_combout\);

-- Location: LCCOMB_X30_Y22_N30
\change_mux|Selector11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector11~3_combout\ = (\change_mux|remind_2~q\ & (((\change_mux|LessThan6~1_combout\ & \change_mux|Selector11~2_combout\)) # (!\change_mux|Selector13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Selector13~7_combout\,
	datab => \change_mux|remind_2~q\,
	datac => \change_mux|LessThan6~1_combout\,
	datad => \change_mux|Selector11~2_combout\,
	combout => \change_mux|Selector11~3_combout\);

-- Location: LCCOMB_X31_Y22_N14
\change_mux|Selector11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector11~4_combout\ = (\judge_mux|change_state\(2) & (((\judge_mux|change_state\(4))))) # (!\judge_mux|change_state\(2) & ((\judge_mux|change_state\(4) & (\change_mux|Selector11~0_combout\)) # (!\judge_mux|change_state\(4) & 
-- ((\change_mux|Selector11~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(2),
	datab => \change_mux|Selector11~0_combout\,
	datac => \judge_mux|change_state\(4),
	datad => \change_mux|Selector11~3_combout\,
	combout => \change_mux|Selector11~4_combout\);

-- Location: LCCOMB_X31_Y22_N2
\change_mux|Selector13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector13~4_combout\ = (\judge_mux|change_state\(1)) # (\judge_mux|change_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \judge_mux|change_state\(1),
	datad => \judge_mux|change_state\(0),
	combout => \change_mux|Selector13~4_combout\);

-- Location: LCCOMB_X31_Y22_N20
\change_mux|Selector11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector11~5_combout\ = (\judge_mux|change_state\(2) & (\change_mux|remind_2~q\ & ((\change_mux|Selector11~4_combout\) # (\change_mux|Selector13~4_combout\)))) # (!\judge_mux|change_state\(2) & (((\change_mux|Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(2),
	datab => \change_mux|remind_2~q\,
	datac => \change_mux|Selector11~4_combout\,
	datad => \change_mux|Selector13~4_combout\,
	combout => \change_mux|Selector11~5_combout\);

-- Location: LCCOMB_X31_Y22_N28
\change_mux|remind_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|remind_2~0_combout\ = (\judge_mux|change_state\(5) & (((\change_mux|remind_2~q\)))) # (!\judge_mux|change_state\(5) & ((\judge_mux|change_state\(3) & (\change_mux|remind_2~q\)) # (!\judge_mux|change_state\(3) & 
-- ((\change_mux|Selector11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(5),
	datab => \judge_mux|change_state\(3),
	datac => \change_mux|remind_2~q\,
	datad => \change_mux|Selector11~5_combout\,
	combout => \change_mux|remind_2~0_combout\);

-- Location: FF_X31_Y22_N29
\change_mux|remind_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|remind_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|remind_2~q\);

-- Location: LCCOMB_X31_Y22_N10
\change_mux|remind_refund~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|remind_refund~0_combout\ = (\judge_mux|change_state\(4) & (((\change_mux|remind_refund~q\)))) # (!\judge_mux|change_state\(4) & ((\judge_mux|change_state\(3) & (\change_mux|remind_refund~q\)) # (!\judge_mux|change_state\(3) & 
-- ((\judge_mux|change_state\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(4),
	datab => \judge_mux|change_state\(3),
	datac => \change_mux|remind_refund~q\,
	datad => \judge_mux|change_state\(5),
	combout => \change_mux|remind_refund~0_combout\);

-- Location: LCCOMB_X31_Y22_N26
\change_mux|remind_refund~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|remind_refund~2_combout\ = (\change_mux|remind_refund~1_combout\ & (((\change_mux|remind_refund~q\ & \change_mux|remind_refund~0_combout\)))) # (!\change_mux|remind_refund~1_combout\ & ((\change_mux|remind_refund~q\) # 
-- ((!\change_mux|Selector13~4_combout\ & \change_mux|remind_refund~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|remind_refund~1_combout\,
	datab => \change_mux|Selector13~4_combout\,
	datac => \change_mux|remind_refund~q\,
	datad => \change_mux|remind_refund~0_combout\,
	combout => \change_mux|remind_refund~2_combout\);

-- Location: FF_X31_Y22_N27
\change_mux|remind_refund\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|remind_refund~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|remind_refund~q\);

-- Location: LCCOMB_X33_Y22_N14
\change_mux|Selector14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector14~2_combout\ = (\change_mux|Selector14~3_combout\ & (\judge_mux|change_state\(3) & (\change_mux|remind_restore_1~q\))) # (!\change_mux|Selector14~3_combout\ & ((\change_mux|remind_restore_1~q\) # ((\judge_mux|change_state\(3) & 
-- !\change_mux|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|Selector14~3_combout\,
	datab => \judge_mux|change_state\(3),
	datac => \change_mux|remind_restore_1~q\,
	datad => \change_mux|LessThan5~1_combout\,
	combout => \change_mux|Selector14~2_combout\);

-- Location: FF_X33_Y22_N15
\change_mux|remind_restore_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|Selector14~2_combout\,
	ena => \change_mux|Selector13~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|remind_restore_1~q\);

-- Location: LCCOMB_X31_Y22_N6
\change_mux|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector12~0_combout\ = (\judge_mux|change_state\(2) & (!\judge_mux|change_state\(4) & !\judge_mux|change_state\(0))) # (!\judge_mux|change_state\(2) & (\judge_mux|change_state\(4) $ (\judge_mux|change_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(2),
	datac => \judge_mux|change_state\(4),
	datad => \judge_mux|change_state\(0),
	combout => \change_mux|Selector12~0_combout\);

-- Location: LCCOMB_X31_Y22_N24
\change_mux|Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|Selector12~1_combout\ = (!\judge_mux|change_state\(5) & (!\judge_mux|change_state\(3) & (!\judge_mux|change_state\(1) & \change_mux|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(5),
	datab => \judge_mux|change_state\(3),
	datac => \judge_mux|change_state\(1),
	datad => \change_mux|Selector12~0_combout\,
	combout => \change_mux|Selector12~1_combout\);

-- Location: LCCOMB_X31_Y22_N0
\change_mux|remind_restore_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_mux|remind_restore_2~0_combout\ = (\change_mux|Selector12~1_combout\ & (\judge_mux|change_state\(4) & ((\change_mux|remind_restore_2~q\) # (!\change_mux|LessThan6~3_combout\)))) # (!\change_mux|Selector12~1_combout\ & 
-- (((\change_mux|remind_restore_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \judge_mux|change_state\(4),
	datab => \change_mux|LessThan6~3_combout\,
	datac => \change_mux|remind_restore_2~q\,
	datad => \change_mux|Selector12~1_combout\,
	combout => \change_mux|remind_restore_2~0_combout\);

-- Location: FF_X31_Y22_N1
\change_mux|remind_restore_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux_great|clk~clkctrl_outclk\,
	d => \change_mux|remind_restore_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_mux|remind_restore_2~q\);

-- Location: LCCOMB_X26_Y18_N6
\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \change_mux|money\(7) $ (VCC)
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\change_mux|money\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(7),
	datad => VCC,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X26_Y18_N8
\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\change_mux|money\(8) & (\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\change_mux|money\(8) & 
-- (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\change_mux|money\(8) & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(8),
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X26_Y18_N12
\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X26_Y18_N4
\show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\change_mux|money\(9) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(9),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X26_Y18_N20
\show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X26_Y18_N2
\show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\change_mux|money\(7) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(7),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X26_Y18_N18
\show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\ = (\change_mux|money\(6) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(6),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X26_Y18_N22
\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datad => VCC,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X26_Y18_N28
\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X26_Y18_N30
\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X27_Y18_N2
\show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~98_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\change_mux|money\(8)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \change_mux|money\(8),
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~98_combout\);

-- Location: LCCOMB_X27_Y18_N0
\show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\change_mux|money\(7))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \change_mux|money\(7),
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99_combout\);

-- Location: LCCOMB_X27_Y18_N8
\show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X27_Y18_N28
\show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\ = (\change_mux|money\(5) & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(5),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X27_Y18_N20
\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99_combout\)))))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X27_Y18_N22
\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~98_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[23]~98_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X27_Y18_N24
\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y18_N4
\show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X27_Y18_N6
\show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\change_mux|money\(6)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \change_mux|money\(6),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X28_Y18_N16
\show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\change_mux|money\(5) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(5),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X28_Y18_N8
\show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\change_mux|money\(4) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(4),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X28_Y18_N18
\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => VCC,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X28_Y18_N24
\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~94_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X28_Y18_N26
\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y18_N0
\show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X28_Y18_N12
\show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\change_mux|money\(5)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \change_mux|money\(5),
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X28_Y19_N0
\show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X27_Y19_N24
\show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\change_mux|money\(3) & \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(3),
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X27_Y19_N8
\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datad => VCC,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X27_Y19_N14
\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~95_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~95_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X27_Y19_N16
\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y19_N28
\show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \change_mux|money\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \change_mux|money\(2),
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X28_Y19_N6
\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => VCC,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X27_Y19_N6
\show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X28_Y19_N16
\show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\change_mux|money\(4))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \change_mux|money\(4),
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X28_Y19_N4
\show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \change_mux|money\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \change_mux|money\(3),
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X28_Y19_N8
\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X28_Y19_N10
\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102_combout\)))))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X28_Y19_N12
\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~96_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~96_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X28_Y19_N14
\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y16_N28
\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\);

-- Location: LCCOMB_X28_Y16_N0
\show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\ = (\change_mux|money\(1) & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(1),
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[40]~89_combout\);

-- Location: LCCOMB_X28_Y16_N4
\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\ & 
-- (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\)))
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X28_Y19_N2
\show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\ = (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\);

-- Location: LCCOMB_X28_Y19_N26
\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\change_mux|money\(3))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \change_mux|money\(3),
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X28_Y16_N8
\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~97_combout\ & (!\show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\ & 
-- !\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~97_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[43]~90_combout\,
	datad => VCC,
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X28_Y16_N10
\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y16_N26
\show_mux|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector1~0_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\) # 
-- ((\show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (((\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~92_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[41]~93_combout\,
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \show_mux|Selector1~0_combout\);

-- Location: LCCOMB_X20_Y16_N28
\show_mux|show_state.00~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_state.00~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \show_mux|show_state.00~feeder_combout\);

-- Location: FF_X20_Y16_N29
\show_mux|show_state.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|show_state.00~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|show_state.00~q\);

-- Location: LCCOMB_X20_Y16_N0
\show_mux|show_state~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_state~8_combout\ = (\show_mux|show_state.11~q\) # (!\show_mux|show_state.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|show_state.11~q\,
	datad => \show_mux|show_state.00~q\,
	combout => \show_mux|show_state~8_combout\);

-- Location: FF_X20_Y16_N1
\show_mux|show_state.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|show_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|show_state.01~q\);

-- Location: LCCOMB_X28_Y22_N14
\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \change_mux|money\(5) $ (VCC)
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\change_mux|money\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(5),
	datad => VCC,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X28_Y22_N16
\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\change_mux|money\(6) & (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\change_mux|money\(6) & 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\change_mux|money\(6) & !\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(6),
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X28_Y22_N18
\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\change_mux|money\(7) & ((GND) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\change_mux|money\(7) & 
-- (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\change_mux|money\(7)) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(7),
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X28_Y22_N20
\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\change_mux|money\(8) & (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\change_mux|money\(8) & 
-- ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\change_mux|money\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(8),
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X28_Y22_N22
\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\change_mux|money\(9) & (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\change_mux|money\(9) & 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\change_mux|money\(9) & !\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_mux|money\(9),
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X28_Y22_N24
\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X27_Y22_N18
\show_mux|Div0|auto_generated|divider|divider|StageOut[54]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\);

-- Location: LCCOMB_X28_Y22_N0
\show_mux|Div0|auto_generated|divider|divider|StageOut[53]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\);

-- Location: LCCOMB_X28_Y22_N28
\show_mux|Div0|auto_generated|divider|divider|StageOut[52]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\);

-- Location: LCCOMB_X28_Y22_N10
\show_mux|Div0|auto_generated|divider|divider|StageOut[51]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ = (\change_mux|money\(6) & \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(6),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\);

-- Location: LCCOMB_X28_Y22_N12
\show_mux|Div0|auto_generated|divider|divider|StageOut[50]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\);

-- Location: LCCOMB_X27_Y22_N0
\show_mux|Div0|auto_generated|divider|divider|StageOut[49]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ = (\change_mux|money\(4) & \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(4),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\);

-- Location: LCCOMB_X27_Y22_N4
\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\show_mux|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\) # (\show_mux|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\)))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\show_mux|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\) # (\show_mux|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\,
	datad => VCC,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X27_Y22_N8
\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\show_mux|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\))))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # 
-- ((\show_mux|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # (GND))))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\show_mux|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # ((\show_mux|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X27_Y22_N14
\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ & (!\show_mux|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ & 
-- !\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X27_Y22_N16
\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X28_Y20_N2
\show_mux|Div0|auto_generated|divider|divider|StageOut[62]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[62]~84_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\change_mux|money\(8)))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \change_mux|money\(8),
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[62]~84_combout\);

-- Location: LCCOMB_X27_Y22_N28
\show_mux|Div0|auto_generated|divider|divider|StageOut[61]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\);

-- Location: LCCOMB_X27_Y22_N26
\show_mux|Div0|auto_generated|divider|divider|StageOut[60]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\);

-- Location: LCCOMB_X27_Y22_N20
\show_mux|Div0|auto_generated|divider|divider|StageOut[59]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\);

-- Location: LCCOMB_X27_Y22_N2
\show_mux|Div0|auto_generated|divider|divider|StageOut[58]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\);

-- Location: LCCOMB_X28_Y20_N0
\show_mux|Div0|auto_generated|divider|divider|StageOut[57]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \change_mux|money\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \change_mux|money\(3),
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\);

-- Location: LCCOMB_X28_Y20_N14
\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\))))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\) # 
-- ((\show_mux|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (GND))))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\) # ((\show_mux|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X28_Y20_N18
\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\)))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\)))))
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X28_Y20_N20
\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ & (!\show_mux|Div0|auto_generated|divider|divider|StageOut[62]~84_combout\ & 
-- !\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[62]~84_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X28_Y20_N22
\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X27_Y20_N0
\show_mux|Div0|auto_generated|divider|divider|StageOut[70]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[70]~74_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[70]~74_combout\);

-- Location: LCCOMB_X28_Y20_N28
\show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\change_mux|money\(6))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \change_mux|money\(6),
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\);

-- Location: LCCOMB_X27_Y20_N8
\show_mux|Div0|auto_generated|divider|divider|StageOut[69]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\) # 
-- ((!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \show_mux|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\);

-- Location: LCCOMB_X28_Y20_N8
\show_mux|Div0|auto_generated|divider|divider|StageOut[68]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[68]~76_combout\ = (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[68]~76_combout\);

-- Location: LCCOMB_X27_Y20_N14
\show_mux|Div0|auto_generated|divider|divider|StageOut[67]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[67]~88_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\change_mux|money\(4))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(4),
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[67]~88_combout\);

-- Location: LCCOMB_X26_Y20_N6
\show_mux|Div0|auto_generated|divider|divider|StageOut[66]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ = (\change_mux|money\(3) & \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(3),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[66]~89_combout\);

-- Location: LCCOMB_X27_Y20_N4
\show_mux|Div0|auto_generated|divider|divider|StageOut[65]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|StageOut[65]~80_combout\ = (\change_mux|money\(2) & !\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(2),
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|StageOut[65]~80_combout\);

-- Location: LCCOMB_X27_Y20_N16
\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ = CARRY((\show_mux|Div0|auto_generated|divider|divider|StageOut[65]~79_combout\) # (\show_mux|Div0|auto_generated|divider|divider|StageOut[65]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[65]~79_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[65]~80_combout\,
	datad => VCC,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\);

-- Location: LCCOMB_X27_Y20_N18
\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|StageOut[66]~78_combout\ & (!\show_mux|Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ & 
-- !\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[66]~78_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[66]~89_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\);

-- Location: LCCOMB_X27_Y20_N20
\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ = CARRY((\show_mux|Div0|auto_generated|divider|divider|StageOut[67]~77_combout\) # ((\show_mux|Div0|auto_generated|divider|divider|StageOut[67]~88_combout\) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[67]~77_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[67]~88_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\);

-- Location: LCCOMB_X27_Y20_N22
\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ = CARRY(((!\show_mux|Div0|auto_generated|divider|divider|StageOut[68]~83_combout\ & !\show_mux|Div0|auto_generated|divider|divider|StageOut[68]~76_combout\)) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[68]~83_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[68]~76_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\);

-- Location: LCCOMB_X27_Y20_N24
\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ & ((\show_mux|Div0|auto_generated|divider|divider|StageOut[69]~75_combout\) # 
-- (\show_mux|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[69]~75_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\);

-- Location: LCCOMB_X27_Y20_N26
\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\show_mux|Div0|auto_generated|divider|divider|StageOut[70]~81_combout\ & (!\show_mux|Div0|auto_generated|divider|divider|StageOut[70]~74_combout\ & 
-- !\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|StageOut[70]~81_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|StageOut[70]~74_combout\,
	datad => VCC,
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\,
	cout => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X27_Y20_N28
\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	combout => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\);

-- Location: LCCOMB_X26_Y20_N0
\show_mux|Mult0|mult_core|romout[0][9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mult0|mult_core|romout[0][9]~0_combout\ = (\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\) # (\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)))) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \show_mux|Mult0|mult_core|romout[0][9]~0_combout\);

-- Location: LCCOMB_X26_Y20_N4
\show_mux|Mult0|mult_core|romout[0][7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mult0|mult_core|romout[0][7]~2_combout\ = \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (((\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # (\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((!\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \show_mux|Mult0|mult_core|romout[0][7]~2_combout\);

-- Location: LCCOMB_X26_Y20_N28
\show_mux|Mult0|mult_core|romout[0][5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mult0|mult_core|romout[0][5]~4_combout\ = \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ $ (\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \show_mux|Mult0|mult_core|romout[0][5]~4_combout\);

-- Location: LCCOMB_X26_Y20_N12
\show_mux|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Add0~0_combout\ = (\change_mux|money\(2) & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (GND))) # (!\change_mux|money\(2) & 
-- (\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ $ (VCC)))
-- \show_mux|Add0~1\ = CARRY((\change_mux|money\(2)) # (\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(2),
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => VCC,
	combout => \show_mux|Add0~0_combout\,
	cout => \show_mux|Add0~1\);

-- Location: LCCOMB_X26_Y20_N14
\show_mux|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Add0~2_combout\ = (\change_mux|money\(3) & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\show_mux|Add0~1\ & VCC)) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- (!\show_mux|Add0~1\)))) # (!\change_mux|money\(3) & ((\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (!\show_mux|Add0~1\)) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\show_mux|Add0~1\) # (GND)))))
-- \show_mux|Add0~3\ = CARRY((\change_mux|money\(3) & (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & !\show_mux|Add0~1\)) # (!\change_mux|money\(3) & ((!\show_mux|Add0~1\) # 
-- (!\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(3),
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => VCC,
	cin => \show_mux|Add0~1\,
	combout => \show_mux|Add0~2_combout\,
	cout => \show_mux|Add0~3\);

-- Location: LCCOMB_X26_Y20_N16
\show_mux|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Add0~4_combout\ = ((\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (\change_mux|money\(4) $ (!\show_mux|Add0~3\)))) # (GND)
-- \show_mux|Add0~5\ = CARRY((\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\change_mux|money\(4)) # (!\show_mux|Add0~3\))) # (!\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\change_mux|money\(4) & !\show_mux|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \change_mux|money\(4),
	datad => VCC,
	cin => \show_mux|Add0~3\,
	combout => \show_mux|Add0~4_combout\,
	cout => \show_mux|Add0~5\);

-- Location: LCCOMB_X26_Y20_N18
\show_mux|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Add0~6_combout\ = (\change_mux|money\(5) & ((\show_mux|Mult0|mult_core|romout[0][5]~4_combout\ & (!\show_mux|Add0~5\)) # (!\show_mux|Mult0|mult_core|romout[0][5]~4_combout\ & (\show_mux|Add0~5\ & VCC)))) # (!\change_mux|money\(5) & 
-- ((\show_mux|Mult0|mult_core|romout[0][5]~4_combout\ & ((\show_mux|Add0~5\) # (GND))) # (!\show_mux|Mult0|mult_core|romout[0][5]~4_combout\ & (!\show_mux|Add0~5\))))
-- \show_mux|Add0~7\ = CARRY((\change_mux|money\(5) & (\show_mux|Mult0|mult_core|romout[0][5]~4_combout\ & !\show_mux|Add0~5\)) # (!\change_mux|money\(5) & ((\show_mux|Mult0|mult_core|romout[0][5]~4_combout\) # (!\show_mux|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(5),
	datab => \show_mux|Mult0|mult_core|romout[0][5]~4_combout\,
	datad => VCC,
	cin => \show_mux|Add0~5\,
	combout => \show_mux|Add0~6_combout\,
	cout => \show_mux|Add0~7\);

-- Location: LCCOMB_X26_Y20_N20
\show_mux|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Add0~8_combout\ = ((\show_mux|Mult0|mult_core|romout[0][6]~3_combout\ $ (\change_mux|money\(6) $ (\show_mux|Add0~7\)))) # (GND)
-- \show_mux|Add0~9\ = CARRY((\show_mux|Mult0|mult_core|romout[0][6]~3_combout\ & (\change_mux|money\(6) & !\show_mux|Add0~7\)) # (!\show_mux|Mult0|mult_core|romout[0][6]~3_combout\ & ((\change_mux|money\(6)) # (!\show_mux|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mult0|mult_core|romout[0][6]~3_combout\,
	datab => \change_mux|money\(6),
	datad => VCC,
	cin => \show_mux|Add0~7\,
	combout => \show_mux|Add0~8_combout\,
	cout => \show_mux|Add0~9\);

-- Location: LCCOMB_X26_Y20_N24
\show_mux|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Add0~12_combout\ = ((\show_mux|Mult0|mult_core|romout[0][8]~1_combout\ $ (\change_mux|money\(8) $ (\show_mux|Add0~11\)))) # (GND)
-- \show_mux|Add0~13\ = CARRY((\show_mux|Mult0|mult_core|romout[0][8]~1_combout\ & (\change_mux|money\(8) & !\show_mux|Add0~11\)) # (!\show_mux|Mult0|mult_core|romout[0][8]~1_combout\ & ((\change_mux|money\(8)) # (!\show_mux|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mult0|mult_core|romout[0][8]~1_combout\,
	datab => \change_mux|money\(8),
	datad => VCC,
	cin => \show_mux|Add0~11\,
	combout => \show_mux|Add0~12_combout\,
	cout => \show_mux|Add0~13\);

-- Location: LCCOMB_X26_Y20_N26
\show_mux|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Add0~14_combout\ = \change_mux|money\(9) $ (\show_mux|Add0~13\ $ (!\show_mux|Mult0|mult_core|romout[0][9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(9),
	datad => \show_mux|Mult0|mult_core|romout[0][9]~0_combout\,
	cin => \show_mux|Add0~13\,
	combout => \show_mux|Add0~14_combout\);

-- Location: LCCOMB_X24_Y20_N10
\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \show_mux|Add0~10_combout\ $ (VCC)
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\show_mux|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Add0~10_combout\,
	datad => VCC,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X24_Y20_N12
\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\show_mux|Add0~12_combout\ & (\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\show_mux|Add0~12_combout\ & 
-- (!\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\show_mux|Add0~12_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Add0~12_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X24_Y20_N16
\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X24_Y20_N4
\show_mux|Div1|auto_generated|divider|divider|StageOut[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\show_mux|Add0~14_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Add0~14_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X24_Y20_N0
\show_mux|Div1|auto_generated|divider|divider|StageOut[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\show_mux|Add0~12_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Add0~12_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X24_Y20_N28
\show_mux|Div1|auto_generated|divider|divider|StageOut[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X24_Y20_N2
\show_mux|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\show_mux|Add0~8_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Add0~8_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X24_Y20_N18
\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\show_mux|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\show_mux|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X24_Y20_N20
\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- (!\show_mux|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X24_Y20_N24
\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y20_N26
\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y20_N14
\show_mux|Div1|auto_generated|divider|divider|StageOut[23]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\show_mux|Add0~12_combout\)) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Add0~12_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\);

-- Location: LCCOMB_X23_Y20_N8
\show_mux|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X23_Y20_N4
\show_mux|Div1|auto_generated|divider|divider|StageOut[21]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X23_Y20_N28
\show_mux|Div1|auto_generated|divider|divider|StageOut[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ = (\show_mux|Add0~6_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Add0~6_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X23_Y20_N18
\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\show_mux|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X23_Y20_N20
\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X23_Y20_N22
\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y20_N24
\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y20_N2
\show_mux|Div1|auto_generated|divider|divider|StageOut[28]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X23_Y16_N0
\show_mux|Div1|auto_generated|divider|divider|StageOut[27]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X24_Y16_N12
\show_mux|Div1|auto_generated|divider|divider|StageOut[26]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \show_mux|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \show_mux|Add0~6_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X24_Y16_N24
\show_mux|Div1|auto_generated|divider|divider|StageOut[25]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ = (!\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \show_mux|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \show_mux|Add0~4_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X23_Y16_N12
\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\show_mux|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\show_mux|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datad => VCC,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X23_Y16_N14
\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- (!\show_mux|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X23_Y16_N18
\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y16_N20
\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y16_N8
\show_mux|Div1|auto_generated|divider|divider|StageOut[33]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- ((!\show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X23_Y16_N22
\show_mux|Div1|auto_generated|divider|divider|StageOut[32]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X23_Y16_N28
\show_mux|Div1|auto_generated|divider|divider|StageOut[31]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\show_mux|Add0~4_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Add0~4_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X23_Y16_N24
\show_mux|Div1|auto_generated|divider|divider|StageOut[30]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ = (\show_mux|Add0~2_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Add0~2_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X22_Y16_N0
\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\show_mux|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\show_mux|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X22_Y16_N2
\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ & 
-- (!\show_mux|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X22_Y16_N4
\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\)))))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X22_Y16_N6
\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y16_N8
\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y16_N10
\show_mux|show_state.10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_state.10~feeder_combout\ = \show_mux|show_state.01~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|show_state.01~q\,
	combout => \show_mux|show_state.10~feeder_combout\);

-- Location: FF_X20_Y16_N11
\show_mux|show_state.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|show_state.10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|show_state.10~q\);

-- Location: LCCOMB_X20_Y16_N24
\show_mux|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector1~1_combout\ = (\show_mux|show_state.10~q\ & (((\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\show_mux|show_state.10~q\ & 
-- ((\show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # ((!\show_mux|show_state.01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \show_mux|show_state.01~q\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|show_state.10~q\,
	combout => \show_mux|Selector1~1_combout\);

-- Location: LCCOMB_X20_Y16_N30
\show_mux|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector1~2_combout\ = (\show_mux|show_state.11~q\ & (\show_mux|Selector1~0_combout\)) # (!\show_mux|show_state.11~q\ & ((!\show_mux|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|show_state.11~q\,
	datac => \show_mux|Selector1~0_combout\,
	datad => \show_mux|Selector1~1_combout\,
	combout => \show_mux|Selector1~2_combout\);

-- Location: FF_X20_Y16_N31
\show_mux|to_be_shown[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|to_be_shown\(2));

-- Location: LCCOMB_X20_Y16_N8
\show_mux|show_state.11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_state.11~feeder_combout\ = \show_mux|show_state.10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \show_mux|show_state.10~q\,
	combout => \show_mux|show_state.11~feeder_combout\);

-- Location: FF_X20_Y16_N9
\show_mux|show_state.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|show_state.11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|show_state.11~q\);

-- Location: LCCOMB_X20_Y16_N6
\show_mux|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector3~0_combout\ = (\show_mux|show_state.11~q\ & (\change_mux|money\(0))) # (!\show_mux|show_state.11~q\ & (((!\show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \show_mux|show_state.01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_mux|money\(0),
	datab => \show_mux|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \show_mux|show_state.11~q\,
	datad => \show_mux|show_state.01~q\,
	combout => \show_mux|Selector3~0_combout\);

-- Location: LCCOMB_X22_Y16_N14
\show_mux|Div1|auto_generated|divider|divider|StageOut[38]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X21_Y16_N6
\show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\show_mux|Add0~4_combout\)) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \show_mux|Add0~4_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X22_Y16_N16
\show_mux|Div1|auto_generated|divider|divider|StageOut[36]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ = (!\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X22_Y16_N18
\show_mux|Div1|auto_generated|divider|divider|StageOut[35]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ = (!\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \show_mux|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Add0~0_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X22_Y16_N20
\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\show_mux|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\show_mux|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datad => VCC,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X22_Y16_N22
\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\show_mux|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\)))) # (!\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ & 
-- (!\show_mux|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\)))
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X22_Y16_N26
\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y16_N28
\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y16_N24
\show_mux|Div1|auto_generated|divider|divider|StageOut[43]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- ((\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X21_Y16_N20
\show_mux|Div1|auto_generated|divider|divider|StageOut[42]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\);

-- Location: LCCOMB_X21_Y16_N4
\show_mux|Div1|auto_generated|divider|divider|StageOut[41]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ = (\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\);

-- Location: LCCOMB_X21_Y16_N0
\show_mux|Div1|auto_generated|divider|divider|StageOut[40]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ = (\change_mux|money\(1) & \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_mux|money\(1),
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\);

-- Location: LCCOMB_X21_Y16_N10
\show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\show_mux|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\) # (\show_mux|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\,
	datad => VCC,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X21_Y16_N12
\show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X21_Y16_N14
\show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & ((\show_mux|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\) # 
-- (\show_mux|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X21_Y16_N16
\show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\show_mux|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ & (!\show_mux|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ & 
-- !\show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\,
	datad => VCC,
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y16_N18
\show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y16_N8
\show_mux|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector3~1_combout\ = (\show_mux|show_state.11~q\ & (((\show_mux|Selector3~0_combout\)))) # (!\show_mux|show_state.11~q\ & ((\show_mux|show_state.10~q\ & ((!\show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))) # 
-- (!\show_mux|show_state.10~q\ & (\show_mux|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|show_state.11~q\,
	datab => \show_mux|show_state.10~q\,
	datac => \show_mux|Selector3~0_combout\,
	datad => \show_mux|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \show_mux|Selector3~1_combout\);

-- Location: FF_X21_Y16_N9
\show_mux|to_be_shown[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|to_be_shown\(0));

-- Location: LCCOMB_X28_Y16_N22
\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\);

-- Location: LCCOMB_X28_Y16_N24
\show_mux|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector0~0_combout\ = (\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (((\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\) # 
-- (\show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\)))) # (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datab => \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datac => \show_mux|Mod0|auto_generated|divider|divider|StageOut[42]~91_combout\,
	datad => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \show_mux|Selector0~0_combout\);

-- Location: LCCOMB_X20_Y16_N2
\show_mux|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector0~1_combout\ = (\show_mux|show_state.10~q\ & (((\show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\show_mux|show_state.10~q\ & 
-- ((\show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # ((!\show_mux|show_state.01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \show_mux|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \show_mux|show_state.01~q\,
	datad => \show_mux|show_state.10~q\,
	combout => \show_mux|Selector0~1_combout\);

-- Location: LCCOMB_X20_Y16_N12
\show_mux|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector0~2_combout\ = (\show_mux|show_state.11~q\ & (\show_mux|Selector0~0_combout\)) # (!\show_mux|show_state.11~q\ & ((!\show_mux|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|show_state.11~q\,
	datac => \show_mux|Selector0~0_combout\,
	datad => \show_mux|Selector0~1_combout\,
	combout => \show_mux|Selector0~2_combout\);

-- Location: FF_X20_Y16_N13
\show_mux|to_be_shown[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|to_be_shown\(3));

-- Location: LCCOMB_X20_Y16_N4
\show_mux|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector2~0_combout\ = (\show_mux|show_state.11~q\ & ((\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\change_mux|money\(1)))) # 
-- (!\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \change_mux|money\(1),
	datac => \show_mux|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \show_mux|show_state.11~q\,
	combout => \show_mux|Selector2~0_combout\);

-- Location: LCCOMB_X20_Y16_N18
\show_mux|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector2~1_combout\ = (\show_mux|show_state.10~q\ & (((\show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))) # (!\show_mux|show_state.10~q\ & 
-- ((\show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\) # ((!\show_mux|show_state.01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \show_mux|show_state.01~q\,
	datac => \show_mux|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \show_mux|show_state.10~q\,
	combout => \show_mux|Selector2~1_combout\);

-- Location: LCCOMB_X20_Y16_N16
\show_mux|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Selector2~2_combout\ = (\show_mux|Selector2~0_combout\) # ((!\show_mux|show_state.11~q\ & !\show_mux|Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|show_state.11~q\,
	datac => \show_mux|Selector2~0_combout\,
	datad => \show_mux|Selector2~1_combout\,
	combout => \show_mux|Selector2~2_combout\);

-- Location: FF_X20_Y16_N17
\show_mux|to_be_shown[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|to_be_shown\(1));

-- Location: LCCOMB_X19_Y16_N28
\show_mux|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux6~0_combout\ = (\show_mux|to_be_shown\(0) & ((\show_mux|to_be_shown\(3)) # (\show_mux|to_be_shown\(2) $ (\show_mux|to_be_shown\(1))))) # (!\show_mux|to_be_shown\(0) & ((\show_mux|to_be_shown\(1)) # (\show_mux|to_be_shown\(2) $ 
-- (\show_mux|to_be_shown\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|to_be_shown\(2),
	datab => \show_mux|to_be_shown\(0),
	datac => \show_mux|to_be_shown\(3),
	datad => \show_mux|to_be_shown\(1),
	combout => \show_mux|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y16_N18
\show_mux|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux5~0_combout\ = (\show_mux|to_be_shown\(2) & (\show_mux|to_be_shown\(0) & (\show_mux|to_be_shown\(3) $ (\show_mux|to_be_shown\(1))))) # (!\show_mux|to_be_shown\(2) & (!\show_mux|to_be_shown\(3) & ((\show_mux|to_be_shown\(0)) # 
-- (\show_mux|to_be_shown\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|to_be_shown\(2),
	datab => \show_mux|to_be_shown\(0),
	datac => \show_mux|to_be_shown\(3),
	datad => \show_mux|to_be_shown\(1),
	combout => \show_mux|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y16_N12
\show_mux|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux4~0_combout\ = (\show_mux|to_be_shown\(1) & (((\show_mux|to_be_shown\(0) & !\show_mux|to_be_shown\(3))))) # (!\show_mux|to_be_shown\(1) & ((\show_mux|to_be_shown\(2) & ((!\show_mux|to_be_shown\(3)))) # (!\show_mux|to_be_shown\(2) & 
-- (\show_mux|to_be_shown\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|to_be_shown\(2),
	datab => \show_mux|to_be_shown\(0),
	datac => \show_mux|to_be_shown\(3),
	datad => \show_mux|to_be_shown\(1),
	combout => \show_mux|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y16_N26
\show_mux|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux3~0_combout\ = (\show_mux|to_be_shown\(1) & ((\show_mux|to_be_shown\(2) & (\show_mux|to_be_shown\(0))) # (!\show_mux|to_be_shown\(2) & (!\show_mux|to_be_shown\(0) & \show_mux|to_be_shown\(3))))) # (!\show_mux|to_be_shown\(1) & 
-- (!\show_mux|to_be_shown\(3) & (\show_mux|to_be_shown\(2) $ (\show_mux|to_be_shown\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|to_be_shown\(2),
	datab => \show_mux|to_be_shown\(0),
	datac => \show_mux|to_be_shown\(3),
	datad => \show_mux|to_be_shown\(1),
	combout => \show_mux|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y16_N4
\show_mux|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux2~0_combout\ = (\show_mux|to_be_shown\(2) & (\show_mux|to_be_shown\(3) & ((\show_mux|to_be_shown\(1)) # (!\show_mux|to_be_shown\(0))))) # (!\show_mux|to_be_shown\(2) & (!\show_mux|to_be_shown\(0) & (!\show_mux|to_be_shown\(3) & 
-- \show_mux|to_be_shown\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|to_be_shown\(2),
	datab => \show_mux|to_be_shown\(0),
	datac => \show_mux|to_be_shown\(3),
	datad => \show_mux|to_be_shown\(1),
	combout => \show_mux|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y16_N14
\show_mux|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux1~0_combout\ = (\show_mux|to_be_shown\(2) & ((\show_mux|to_be_shown\(3)) # (\show_mux|to_be_shown\(0) $ (\show_mux|to_be_shown\(1))))) # (!\show_mux|to_be_shown\(2) & (\show_mux|to_be_shown\(0) & (\show_mux|to_be_shown\(3) & 
-- \show_mux|to_be_shown\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|to_be_shown\(2),
	datab => \show_mux|to_be_shown\(0),
	datac => \show_mux|to_be_shown\(3),
	datad => \show_mux|to_be_shown\(1),
	combout => \show_mux|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y16_N8
\show_mux|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux0~0_combout\ = (\show_mux|to_be_shown\(2) & (!\show_mux|to_be_shown\(0) & (!\show_mux|to_be_shown\(3) & !\show_mux|to_be_shown\(1)))) # (!\show_mux|to_be_shown\(2) & (\show_mux|to_be_shown\(0) & (\show_mux|to_be_shown\(3) $ 
-- (!\show_mux|to_be_shown\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|to_be_shown\(2),
	datab => \show_mux|to_be_shown\(0),
	datac => \show_mux|to_be_shown\(3),
	datad => \show_mux|to_be_shown\(1),
	combout => \show_mux|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y28_N18
\count_mux|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~2_combout\ = (\count_mux|count\(1) & (!\count_mux|Add0~1\)) # (!\count_mux|count\(1) & ((\count_mux|Add0~1\) # (GND)))
-- \count_mux|Add0~3\ = CARRY((!\count_mux|Add0~1\) # (!\count_mux|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|count\(1),
	datad => VCC,
	cin => \count_mux|Add0~1\,
	combout => \count_mux|Add0~2_combout\,
	cout => \count_mux|Add0~3\);

-- Location: FF_X19_Y28_N19
\count_mux|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(1));

-- Location: LCCOMB_X19_Y28_N20
\count_mux|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~4_combout\ = (\count_mux|count\(2) & (\count_mux|Add0~3\ $ (GND))) # (!\count_mux|count\(2) & (!\count_mux|Add0~3\ & VCC))
-- \count_mux|Add0~5\ = CARRY((\count_mux|count\(2) & !\count_mux|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|count\(2),
	datad => VCC,
	cin => \count_mux|Add0~3\,
	combout => \count_mux|Add0~4_combout\,
	cout => \count_mux|Add0~5\);

-- Location: FF_X19_Y28_N21
\count_mux|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(2));

-- Location: LCCOMB_X19_Y28_N22
\count_mux|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~6_combout\ = (\count_mux|count\(3) & (!\count_mux|Add0~5\)) # (!\count_mux|count\(3) & ((\count_mux|Add0~5\) # (GND)))
-- \count_mux|Add0~7\ = CARRY((!\count_mux|Add0~5\) # (!\count_mux|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(3),
	datad => VCC,
	cin => \count_mux|Add0~5\,
	combout => \count_mux|Add0~6_combout\,
	cout => \count_mux|Add0~7\);

-- Location: FF_X19_Y28_N23
\count_mux|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(3));

-- Location: LCCOMB_X19_Y28_N14
\count_mux|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Equal0~0_combout\ = (!\count_mux|count\(0) & (!\count_mux|count\(1) & (!\count_mux|count\(3) & !\count_mux|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(0),
	datab => \count_mux|count\(1),
	datac => \count_mux|count\(3),
	datad => \count_mux|count\(2),
	combout => \count_mux|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y28_N24
\count_mux|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~8_combout\ = (\count_mux|count\(4) & (\count_mux|Add0~7\ $ (GND))) # (!\count_mux|count\(4) & (!\count_mux|Add0~7\ & VCC))
-- \count_mux|Add0~9\ = CARRY((\count_mux|count\(4) & !\count_mux|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|count\(4),
	datad => VCC,
	cin => \count_mux|Add0~7\,
	combout => \count_mux|Add0~8_combout\,
	cout => \count_mux|Add0~9\);

-- Location: FF_X19_Y28_N25
\count_mux|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(4));

-- Location: LCCOMB_X19_Y28_N26
\count_mux|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~10_combout\ = (\count_mux|count\(5) & (!\count_mux|Add0~9\)) # (!\count_mux|count\(5) & ((\count_mux|Add0~9\) # (GND)))
-- \count_mux|Add0~11\ = CARRY((!\count_mux|Add0~9\) # (!\count_mux|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|count\(5),
	datad => VCC,
	cin => \count_mux|Add0~9\,
	combout => \count_mux|Add0~10_combout\,
	cout => \count_mux|Add0~11\);

-- Location: LCCOMB_X19_Y28_N8
\count_mux|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|count~1_combout\ = (\count_mux|Add0~10_combout\ & !\count_mux|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_mux|Add0~10_combout\,
	datad => \count_mux|Equal0~5_combout\,
	combout => \count_mux|count~1_combout\);

-- Location: FF_X19_Y28_N9
\count_mux|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(5));

-- Location: LCCOMB_X19_Y28_N28
\count_mux|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~12_combout\ = (\count_mux|count\(6) & (\count_mux|Add0~11\ $ (GND))) # (!\count_mux|count\(6) & (!\count_mux|Add0~11\ & VCC))
-- \count_mux|Add0~13\ = CARRY((\count_mux|count\(6) & !\count_mux|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|count\(6),
	datad => VCC,
	cin => \count_mux|Add0~11\,
	combout => \count_mux|Add0~12_combout\,
	cout => \count_mux|Add0~13\);

-- Location: FF_X19_Y28_N29
\count_mux|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(6));

-- Location: LCCOMB_X19_Y28_N4
\count_mux|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Equal0~1_combout\ = (\count_mux|count\(7) & (!\count_mux|count\(6) & (\count_mux|count\(5) & !\count_mux|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(7),
	datab => \count_mux|count\(6),
	datac => \count_mux|count\(5),
	datad => \count_mux|count\(4),
	combout => \count_mux|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y27_N0
\count_mux|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~16_combout\ = (\count_mux|count\(8) & (\count_mux|Add0~15\ $ (GND))) # (!\count_mux|count\(8) & (!\count_mux|Add0~15\ & VCC))
-- \count_mux|Add0~17\ = CARRY((\count_mux|count\(8) & !\count_mux|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(8),
	datad => VCC,
	cin => \count_mux|Add0~15\,
	combout => \count_mux|Add0~16_combout\,
	cout => \count_mux|Add0~17\);

-- Location: LCCOMB_X19_Y27_N2
\count_mux|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~18_combout\ = (\count_mux|count\(9) & (!\count_mux|Add0~17\)) # (!\count_mux|count\(9) & ((\count_mux|Add0~17\) # (GND)))
-- \count_mux|Add0~19\ = CARRY((!\count_mux|Add0~17\) # (!\count_mux|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|count\(9),
	datad => VCC,
	cin => \count_mux|Add0~17\,
	combout => \count_mux|Add0~18_combout\,
	cout => \count_mux|Add0~19\);

-- Location: LCCOMB_X19_Y27_N20
\count_mux|count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|count~4_combout\ = (\count_mux|Add0~18_combout\ & !\count_mux|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|Add0~18_combout\,
	datad => \count_mux|Equal0~5_combout\,
	combout => \count_mux|count~4_combout\);

-- Location: FF_X19_Y27_N21
\count_mux|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(9));

-- Location: LCCOMB_X19_Y27_N4
\count_mux|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~20_combout\ = (\count_mux|count\(10) & (\count_mux|Add0~19\ $ (GND))) # (!\count_mux|count\(10) & (!\count_mux|Add0~19\ & VCC))
-- \count_mux|Add0~21\ = CARRY((\count_mux|count\(10) & !\count_mux|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|count\(10),
	datad => VCC,
	cin => \count_mux|Add0~19\,
	combout => \count_mux|Add0~20_combout\,
	cout => \count_mux|Add0~21\);

-- Location: LCCOMB_X19_Y27_N24
\count_mux|count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|count~5_combout\ = (\count_mux|Add0~20_combout\ & !\count_mux|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_mux|Add0~20_combout\,
	datad => \count_mux|Equal0~5_combout\,
	combout => \count_mux|count~5_combout\);

-- Location: FF_X19_Y27_N25
\count_mux|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(10));

-- Location: LCCOMB_X19_Y27_N30
\count_mux|count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|count~3_combout\ = (\count_mux|Add0~16_combout\ & !\count_mux|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|Add0~16_combout\,
	datad => \count_mux|Equal0~5_combout\,
	combout => \count_mux|count~3_combout\);

-- Location: FF_X19_Y27_N31
\count_mux|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(8));

-- Location: LCCOMB_X19_Y27_N26
\count_mux|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Equal0~2_combout\ = (\count_mux|count\(8) & \count_mux|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_mux|count\(8),
	datad => \count_mux|count\(9),
	combout => \count_mux|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y27_N8
\count_mux|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~24_combout\ = (\count_mux|count\(12) & (\count_mux|Add0~23\ $ (GND))) # (!\count_mux|count\(12) & (!\count_mux|Add0~23\ & VCC))
-- \count_mux|Add0~25\ = CARRY((\count_mux|count\(12) & !\count_mux|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(12),
	datad => VCC,
	cin => \count_mux|Add0~23\,
	combout => \count_mux|Add0~24_combout\,
	cout => \count_mux|Add0~25\);

-- Location: FF_X19_Y27_N9
\count_mux|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(12));

-- Location: LCCOMB_X19_Y27_N10
\count_mux|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~26_combout\ = (\count_mux|count\(13) & (!\count_mux|Add0~25\)) # (!\count_mux|count\(13) & ((\count_mux|Add0~25\) # (GND)))
-- \count_mux|Add0~27\ = CARRY((!\count_mux|Add0~25\) # (!\count_mux|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|count\(13),
	datad => VCC,
	cin => \count_mux|Add0~25\,
	combout => \count_mux|Add0~26_combout\,
	cout => \count_mux|Add0~27\);

-- Location: FF_X19_Y27_N11
\count_mux|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(13));

-- Location: LCCOMB_X19_Y27_N12
\count_mux|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Add0~28_combout\ = (\count_mux|count\(14) & (\count_mux|Add0~27\ $ (GND))) # (!\count_mux|count\(14) & (!\count_mux|Add0~27\ & VCC))
-- \count_mux|Add0~29\ = CARRY((\count_mux|count\(14) & !\count_mux|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|count\(14),
	datad => VCC,
	cin => \count_mux|Add0~27\,
	combout => \count_mux|Add0~28_combout\,
	cout => \count_mux|Add0~29\);

-- Location: FF_X19_Y27_N13
\count_mux|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(14));

-- Location: FF_X19_Y27_N15
\count_mux|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|count\(15));

-- Location: LCCOMB_X19_Y27_N28
\count_mux|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Equal0~3_combout\ = (!\count_mux|count\(13) & (!\count_mux|count\(12) & (!\count_mux|count\(15) & !\count_mux|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(13),
	datab => \count_mux|count\(12),
	datac => \count_mux|count\(15),
	datad => \count_mux|count\(14),
	combout => \count_mux|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y27_N22
\count_mux|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Equal0~4_combout\ = (\count_mux|count\(11) & (\count_mux|count\(10) & (\count_mux|Equal0~2_combout\ & \count_mux|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(11),
	datab => \count_mux|count\(10),
	datac => \count_mux|Equal0~2_combout\,
	datad => \count_mux|Equal0~3_combout\,
	combout => \count_mux|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y28_N0
\count_mux|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|Equal0~5_combout\ = (!\count_mux|count\(16) & (\count_mux|Equal0~0_combout\ & (\count_mux|Equal0~1_combout\ & \count_mux|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_mux|count\(16),
	datab => \count_mux|Equal0~0_combout\,
	datac => \count_mux|Equal0~1_combout\,
	datad => \count_mux|Equal0~4_combout\,
	combout => \count_mux|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y28_N10
\count_mux|clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|clk~0_combout\ = \count_mux|clk~q\ $ (\count_mux|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_mux|clk~q\,
	datad => \count_mux|Equal0~5_combout\,
	combout => \count_mux|clk~0_combout\);

-- Location: LCCOMB_X19_Y28_N2
\count_mux|clk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_mux|clk~feeder_combout\ = \count_mux|clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count_mux|clk~0_combout\,
	combout => \count_mux|clk~feeder_combout\);

-- Location: FF_X19_Y28_N3
\count_mux|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_original~inputclkctrl_outclk\,
	d => \count_mux|clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_mux|clk~q\);

-- Location: CLKCTRL_G11
\count_mux|clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count_mux|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count_mux|clk~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y16_N22
\show_mux|show_place[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_place[0]~0_combout\ = !\show_mux|show_state.11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \show_mux|show_state.11~q\,
	combout => \show_mux|show_place[0]~0_combout\);

-- Location: FF_X20_Y16_N23
\show_mux|show_place[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|show_place[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|show_place\(0));

-- Location: LCCOMB_X20_Y16_N20
\show_mux|show_place[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_place[1]~1_combout\ = !\show_mux|show_state.10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \show_mux|show_state.10~q\,
	combout => \show_mux|show_place[1]~1_combout\);

-- Location: FF_X20_Y16_N21
\show_mux|show_place[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|show_place[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|show_place\(1));

-- Location: LCCOMB_X20_Y16_N26
\show_mux|show_place[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_place[2]~2_combout\ = !\show_mux|show_state.01~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \show_mux|show_state.01~q\,
	combout => \show_mux|show_place[2]~2_combout\);

-- Location: FF_X20_Y16_N27
\show_mux|show_place[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_mux|clk~clkctrl_outclk\,
	d => \show_mux|show_place[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \show_mux|show_place\(2));

ww_remind_1 <= \remind_1~output_o\;

ww_remind_2 <= \remind_2~output_o\;

ww_remind_refund <= \remind_refund~output_o\;

ww_remind_restore_1 <= \remind_restore_1~output_o\;

ww_remind_restore_2 <= \remind_restore_2~output_o\;

ww_show_num(0) <= \show_num[0]~output_o\;

ww_show_num(1) <= \show_num[1]~output_o\;

ww_show_num(2) <= \show_num[2]~output_o\;

ww_show_num(3) <= \show_num[3]~output_o\;

ww_show_num(4) <= \show_num[4]~output_o\;

ww_show_num(5) <= \show_num[5]~output_o\;

ww_show_num(6) <= \show_num[6]~output_o\;

ww_show_place(0) <= \show_place[0]~output_o\;

ww_show_place(1) <= \show_place[1]~output_o\;

ww_show_place(2) <= \show_place[2]~output_o\;

ww_show_place(3) <= \show_place[3]~output_o\;

ww_show_place(4) <= \show_place[4]~output_o\;

ww_show_place(5) <= \show_place[5]~output_o\;
END structure;



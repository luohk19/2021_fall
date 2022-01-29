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

-- DATE "12/12/2021 13:44:04"

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

ENTITY 	Block1 IS
    PORT (
	en : OUT std_logic_vector(5 DOWNTO 0);
	clk : IN std_logic;
	good : IN std_logic_vector(3 DOWNTO 0);
	money : IN std_logic_vector(2 DOWNTO 0);
	light : OUT std_logic_vector(3 DOWNTO 0);
	lit : OUT std_logic_vector(7 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- en[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[3]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[3]	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[2]	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[1]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[0]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lit[7]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lit[6]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lit[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lit[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lit[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lit[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lit[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lit[0]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_152,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- good[1]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- good[0]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- good[2]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- good[3]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- money[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- money[0]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- money[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_good : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_money : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_light : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_lit : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Mux8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|WideOr6~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~16_combout\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add2~19\ : std_logic;
SIGNAL \inst|Add2~20_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst|count[0]~20_combout\ : std_logic;
SIGNAL \inst|count[7]~34_combout\ : std_logic;
SIGNAL \inst|count[13]~46_combout\ : std_logic;
SIGNAL \inst|count[15]~50_combout\ : std_logic;
SIGNAL \inst|count[16]~52_combout\ : std_logic;
SIGNAL \inst|cnt0[0]~13_combout\ : std_logic;
SIGNAL \inst|cnt0[0]~14\ : std_logic;
SIGNAL \inst|cnt0[1]~15_combout\ : std_logic;
SIGNAL \inst|cnt0[1]~16\ : std_logic;
SIGNAL \inst|cnt0[2]~17_combout\ : std_logic;
SIGNAL \inst|cnt0[2]~18\ : std_logic;
SIGNAL \inst|cnt0[3]~19_combout\ : std_logic;
SIGNAL \inst|cnt0[3]~20\ : std_logic;
SIGNAL \inst|cnt0[4]~21_combout\ : std_logic;
SIGNAL \inst|cnt0[4]~22\ : std_logic;
SIGNAL \inst|cnt0[5]~23_combout\ : std_logic;
SIGNAL \inst|cnt0[5]~24\ : std_logic;
SIGNAL \inst|cnt0[6]~25_combout\ : std_logic;
SIGNAL \inst|cnt0[6]~26\ : std_logic;
SIGNAL \inst|cnt0[7]~27_combout\ : std_logic;
SIGNAL \inst|cnt0[7]~28\ : std_logic;
SIGNAL \inst|cnt0[8]~29_combout\ : std_logic;
SIGNAL \inst|cnt0[8]~30\ : std_logic;
SIGNAL \inst|cnt0[9]~31_combout\ : std_logic;
SIGNAL \inst|cnt0[9]~32\ : std_logic;
SIGNAL \inst|cnt0[10]~33_combout\ : std_logic;
SIGNAL \inst|cnt0[10]~34\ : std_logic;
SIGNAL \inst|cnt0[11]~35_combout\ : std_logic;
SIGNAL \inst|cnt0[11]~36\ : std_logic;
SIGNAL \inst|cnt0[12]~37_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|Selector22~6_combout\ : std_logic;
SIGNAL \inst|flag~q\ : std_logic;
SIGNAL \inst|Equal1~5_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|key_out~4_combout\ : std_logic;
SIGNAL \inst|Selector21~1_combout\ : std_logic;
SIGNAL \inst|Selector21~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~67_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[17]~68_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[16]~70_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~73_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[20]~79_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[33]~86_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[32]~87_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[31]~89_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[30]~91_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[37]~93_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[36]~95_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[43]~98_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[41]~101_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[45]~104_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[48]~106_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[54]~71_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[53]~73_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[52]~75_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[51]~77_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[50]~78_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[49]~81_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[60]~84_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[58]~86_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[48]~89_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[48]~90_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[57]~91_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[70]~92_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[69]~93_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[67]~95_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[65]~97_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[48]~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[48]~3_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[47]~5_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[46]~6_combout\ : std_logic;
SIGNAL \inst|Mux1~4_combout\ : std_logic;
SIGNAL \inst|Mux1~5_combout\ : std_logic;
SIGNAL \inst|Mux1~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[18]~67_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[17]~68_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[16]~70_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[23]~74_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[21]~76_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[20]~79_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[25]~85_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[33]~86_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[31]~89_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[30]~91_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[38]~92_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[36]~94_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[43]~98_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[41]~100_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[40]~103_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[32]~53_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[31]~54_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[30]~56_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\ : std_logic;
SIGNAL \inst|Mux1~7_combout\ : std_logic;
SIGNAL \inst|Mux1~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[46]~70_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[45]~72_combout\ : std_logic;
SIGNAL \inst|Mux1~9_combout\ : std_logic;
SIGNAL \inst|Mux1~10_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|Mux3~5_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[48]~104_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[47]~105_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[46]~106_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[46]~107_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[45]~108_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[45]~109_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[78]~101_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[77]~102_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[76]~103_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[75]~104_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[74]~105_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[73]~106_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[64]~107_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[64]~108_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[73]~109_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst|Mux0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[28]~110_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[38]~112_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[68]~112_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[28]~110_combout\ : std_logic;
SIGNAL \inst|Mux1~11_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[48]~74_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[47]~75_combout\ : std_logic;
SIGNAL \inst|Mux1~12_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[48]~114_combout\ : std_logic;
SIGNAL \inst|Mux0~5_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[78]~113_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[77]~114_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[76]~115_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[75]~116_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[23]~115_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[22]~116_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[47]~121_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[62]~117_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[61]~118_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[59]~120_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[66]~122_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[22]~116_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[42]~120_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[38]~76_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[41]~79_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[47]~121_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[74]~123_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[42]~81_combout\ : std_logic;
SIGNAL \en[5]~output_o\ : std_logic;
SIGNAL \en[4]~output_o\ : std_logic;
SIGNAL \en[3]~output_o\ : std_logic;
SIGNAL \en[2]~output_o\ : std_logic;
SIGNAL \en[1]~output_o\ : std_logic;
SIGNAL \en[0]~output_o\ : std_logic;
SIGNAL \light[3]~output_o\ : std_logic;
SIGNAL \light[2]~output_o\ : std_logic;
SIGNAL \light[1]~output_o\ : std_logic;
SIGNAL \light[0]~output_o\ : std_logic;
SIGNAL \lit[7]~output_o\ : std_logic;
SIGNAL \lit[6]~output_o\ : std_logic;
SIGNAL \lit[5]~output_o\ : std_logic;
SIGNAL \lit[4]~output_o\ : std_logic;
SIGNAL \lit[3]~output_o\ : std_logic;
SIGNAL \lit[2]~output_o\ : std_logic;
SIGNAL \lit[1]~output_o\ : std_logic;
SIGNAL \lit[0]~output_o\ : std_logic;
SIGNAL \inst|cnt_sel[1]~0_combout\ : std_logic;
SIGNAL \inst|cnt_sel[0]~1_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux8~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \good[0]~input_o\ : std_logic;
SIGNAL \inst|old[0]~feeder_combout\ : std_logic;
SIGNAL \money[2]~input_o\ : std_logic;
SIGNAL \inst|old[6]~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \money[0]~input_o\ : std_logic;
SIGNAL \money[1]~input_o\ : std_logic;
SIGNAL \inst|old[5]~2_combout\ : std_logic;
SIGNAL \inst|old[4]~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \good[1]~input_o\ : std_logic;
SIGNAL \inst|old[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|key_out[0]~1_combout\ : std_logic;
SIGNAL \inst|key_cnt~q\ : std_logic;
SIGNAL \inst|count[0]~21\ : std_logic;
SIGNAL \inst|count[1]~22_combout\ : std_logic;
SIGNAL \inst|count[19]~54_combout\ : std_logic;
SIGNAL \inst|count[1]~23\ : std_logic;
SIGNAL \inst|count[2]~24_combout\ : std_logic;
SIGNAL \inst|count[2]~25\ : std_logic;
SIGNAL \inst|count[3]~26_combout\ : std_logic;
SIGNAL \inst|count[3]~27\ : std_logic;
SIGNAL \inst|count[4]~28_combout\ : std_logic;
SIGNAL \inst|count[4]~29\ : std_logic;
SIGNAL \inst|count[5]~31\ : std_logic;
SIGNAL \inst|count[6]~32_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|count[5]~30_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|count[6]~33\ : std_logic;
SIGNAL \inst|count[7]~35\ : std_logic;
SIGNAL \inst|count[8]~36_combout\ : std_logic;
SIGNAL \inst|count[8]~37\ : std_logic;
SIGNAL \inst|count[9]~39\ : std_logic;
SIGNAL \inst|count[10]~40_combout\ : std_logic;
SIGNAL \inst|count[10]~41\ : std_logic;
SIGNAL \inst|count[11]~42_combout\ : std_logic;
SIGNAL \inst|count[11]~43\ : std_logic;
SIGNAL \inst|count[12]~44_combout\ : std_logic;
SIGNAL \inst|count[12]~45\ : std_logic;
SIGNAL \inst|count[13]~47\ : std_logic;
SIGNAL \inst|count[14]~48_combout\ : std_logic;
SIGNAL \inst|count[14]~49\ : std_logic;
SIGNAL \inst|count[15]~51\ : std_logic;
SIGNAL \inst|count[16]~53\ : std_logic;
SIGNAL \inst|count[17]~55_combout\ : std_logic;
SIGNAL \inst|count[17]~56\ : std_logic;
SIGNAL \inst|count[18]~57_combout\ : std_logic;
SIGNAL \inst|count[18]~58\ : std_logic;
SIGNAL \inst|count[19]~59_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|count[9]~38_combout\ : std_logic;
SIGNAL \inst|Equal1~4_combout\ : std_logic;
SIGNAL \inst|Equal1~6_combout\ : std_logic;
SIGNAL \inst|key_out~0_combout\ : std_logic;
SIGNAL \good[3]~input_o\ : std_logic;
SIGNAL \inst|key_out~3_combout\ : std_logic;
SIGNAL \good[2]~input_o\ : std_logic;
SIGNAL \inst|key_out~2_combout\ : std_logic;
SIGNAL \inst|nxtstate.001~1_combout\ : std_logic;
SIGNAL \inst|nxtstate.001~2_combout\ : std_logic;
SIGNAL \inst|key_out~7_combout\ : std_logic;
SIGNAL \inst|key_out~6_combout\ : std_logic;
SIGNAL \inst|key_out~5_combout\ : std_logic;
SIGNAL \inst|nxtstate.110~0_combout\ : std_logic;
SIGNAL \inst|nxtstate.110~1_combout\ : std_logic;
SIGNAL \inst|nxtstate.010~0_combout\ : std_logic;
SIGNAL \inst|nxtstate.101~0_combout\ : std_logic;
SIGNAL \inst|nxtstate.100~0_combout\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst|Add5~1\ : std_logic;
SIGNAL \inst|Add5~3\ : std_logic;
SIGNAL \inst|Add5~5\ : std_logic;
SIGNAL \inst|Add5~6_combout\ : std_logic;
SIGNAL \inst|nxtstate.101~1_combout\ : std_logic;
SIGNAL \inst|Add6~6_combout\ : std_logic;
SIGNAL \inst|Selector17~1_combout\ : std_logic;
SIGNAL \inst|Selector17~2_combout\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|nxtstate.110~2_combout\ : std_logic;
SIGNAL \inst|Add5~7\ : std_logic;
SIGNAL \inst|Add5~9\ : std_logic;
SIGNAL \inst|Add5~11\ : std_logic;
SIGNAL \inst|Add5~12_combout\ : std_logic;
SIGNAL \inst|Add6~11\ : std_logic;
SIGNAL \inst|Add6~12_combout\ : std_logic;
SIGNAL \inst|Selector14~1_combout\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~13\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst|Add5~0_combout\ : std_logic;
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|Selector20~1_combout\ : std_logic;
SIGNAL \inst|Selector20~2_combout\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~13\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|Selector14~0_combout\ : std_logic;
SIGNAL \inst|Selector14~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|Selector22~3_combout\ : std_logic;
SIGNAL \inst|Selector22~4_combout\ : std_logic;
SIGNAL \inst|Selector22~5_combout\ : std_logic;
SIGNAL \inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst|nxtstate.000~1_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|nxtstate.000~0_combout\ : std_logic;
SIGNAL \inst|nxtstate.000~2_combout\ : std_logic;
SIGNAL \inst|cur[1]~0_combout\ : std_logic;
SIGNAL \inst|cur[1]~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst|Add4~15\ : std_logic;
SIGNAL \inst|Add4~16_combout\ : std_logic;
SIGNAL \inst|Selector13~0_combout\ : std_logic;
SIGNAL \inst|Add5~13\ : std_logic;
SIGNAL \inst|Add5~14_combout\ : std_logic;
SIGNAL \inst|Add6~13\ : std_logic;
SIGNAL \inst|Add6~14_combout\ : std_logic;
SIGNAL \inst|Selector13~1_combout\ : std_logic;
SIGNAL \inst|Selector13~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|cur[1]~1_combout\ : std_logic;
SIGNAL \inst|Selector21~3_combout\ : std_logic;
SIGNAL \inst|Selector21~4_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add5~2_combout\ : std_logic;
SIGNAL \inst|Add6~1\ : std_logic;
SIGNAL \inst|Add6~2_combout\ : std_logic;
SIGNAL \inst|Selector19~1_combout\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst|Selector19~2_combout\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst|Add5~4_combout\ : std_logic;
SIGNAL \inst|Add6~3\ : std_logic;
SIGNAL \inst|Add6~4_combout\ : std_logic;
SIGNAL \inst|Selector18~1_combout\ : std_logic;
SIGNAL \inst|Selector18~2_combout\ : std_logic;
SIGNAL \inst|Add6~5\ : std_logic;
SIGNAL \inst|Add6~7\ : std_logic;
SIGNAL \inst|Add6~8_combout\ : std_logic;
SIGNAL \inst|Add5~8_combout\ : std_logic;
SIGNAL \inst|Selector16~1_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Selector16~0_combout\ : std_logic;
SIGNAL \inst|Selector16~2_combout\ : std_logic;
SIGNAL \inst|Add6~9\ : std_logic;
SIGNAL \inst|Add6~10_combout\ : std_logic;
SIGNAL \inst|Add5~10_combout\ : std_logic;
SIGNAL \inst|Selector15~1_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Selector15~0_combout\ : std_logic;
SIGNAL \inst|Selector15~2_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~17\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|Add6~15\ : std_logic;
SIGNAL \inst|Add6~16_combout\ : std_logic;
SIGNAL \inst|Add5~15\ : std_logic;
SIGNAL \inst|Add5~16_combout\ : std_logic;
SIGNAL \inst|Selector12~1_combout\ : std_logic;
SIGNAL \inst|Add3~15\ : std_logic;
SIGNAL \inst|Add3~17\ : std_logic;
SIGNAL \inst|Add3~18_combout\ : std_logic;
SIGNAL \inst|Add4~17\ : std_logic;
SIGNAL \inst|Add4~18_combout\ : std_logic;
SIGNAL \inst|Selector12~0_combout\ : std_logic;
SIGNAL \inst|Selector12~2_combout\ : std_logic;
SIGNAL \inst|Add5~17\ : std_logic;
SIGNAL \inst|Add5~18_combout\ : std_logic;
SIGNAL \inst|Add6~17\ : std_logic;
SIGNAL \inst|Add6~18_combout\ : std_logic;
SIGNAL \inst|Selector11~1_combout\ : std_logic;
SIGNAL \inst|Add3~19\ : std_logic;
SIGNAL \inst|Add3~20_combout\ : std_logic;
SIGNAL \inst|Add4~19\ : std_logic;
SIGNAL \inst|Add4~20_combout\ : std_logic;
SIGNAL \inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|Selector11~2_combout\ : std_logic;
SIGNAL \inst|Selector22~0_combout\ : std_logic;
SIGNAL \inst|Selector22~1_combout\ : std_logic;
SIGNAL \inst|Selector22~2_combout\ : std_logic;
SIGNAL \inst|Selector22~7_combout\ : std_logic;
SIGNAL \inst|nxtstate.011~1_combout\ : std_logic;
SIGNAL \inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst|nxtstate.001~0_combout\ : std_logic;
SIGNAL \inst|state.000~q\ : std_logic;
SIGNAL \inst|nxtstate.011~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~1_combout\ : std_logic;
SIGNAL \inst|Selector24~0_combout\ : std_logic;
SIGNAL \inst|Selector24~1_combout\ : std_logic;
SIGNAL \inst|Selector24~2_combout\ : std_logic;
SIGNAL \inst|Selector25~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[17]~69_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[16]~71_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~72_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~66_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[23]~74_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[22]~75_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[21]~76_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[20]~78_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[28]~80_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[27]~81_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[26]~82_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[25]~85_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[32]~118_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[31]~88_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[30]~90_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[27]~117_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[33]~111_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[38]~92_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[37]~119_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[36]~94_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[35]~96_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[40]~103_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[43]~113_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[41]~100_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[46]~109_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[46]~108_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[48]~114_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[47]~107_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mux2~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[18]~66_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[17]~69_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[23]~115_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[22]~75_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[21]~77_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[26]~82_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[28]~80_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[27]~81_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[27]~117_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[32]~87_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[31]~88_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[30]~90_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[32]~118_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[38]~112_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[37]~93_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[36]~95_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[35]~96_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[31]~55_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[30]~57_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[33]~50_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[38]~58_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[37]~59_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[36]~78_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[35]~62_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[40]~66_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[37]~77_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[43]~73_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[42]~64_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[41]~65_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[46]~80_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[37]~119_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[43]~113_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[41]~101_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[48]~68_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[47]~69_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux2~5_combout\ : std_logic;
SIGNAL \inst|WideOr6~0_combout\ : std_logic;
SIGNAL \inst|WideOr6~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|lit~0_combout\ : std_logic;
SIGNAL \inst|lit~1_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[54]~70_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[53]~72_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[52]~74_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[51]~76_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[50]~79_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[49]~80_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[62]~82_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[61]~83_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[60]~119_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[59]~85_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[57]~88_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[47]~4_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[46]~7_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[70]~110_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[69]~111_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[68]~94_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[67]~121_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[66]~96_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[56]~98_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[65]~100_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|Mux3~6_combout\ : std_logic;
SIGNAL \inst|Decoder2~0_combout\ : std_logic;
SIGNAL \inst|WideOr12~0_combout\ : std_logic;
SIGNAL \inst|WideOr14~0_combout\ : std_logic;
SIGNAL \inst|WideOr16~0_combout\ : std_logic;
SIGNAL \inst|WideOr18~0_combout\ : std_logic;
SIGNAL \inst|old\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|lit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|light\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|key_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|en\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|data\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|cur\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|cnt_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|cnt0\ : std_logic_vector(12 DOWNTO 0);

BEGIN

en <= ww_en;
ww_clk <= clk;
ww_good <= good;
ww_money <= money;
light <= ww_light;
lit <= ww_lit;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|Mux8~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Mux8~0_combout\);

\inst|WideOr6~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|WideOr6~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X22_Y19_N13
\inst|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[16]~52_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(16));

-- Location: FF_X22_Y20_N13
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[0]~20_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: FF_X22_Y20_N27
\inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[7]~34_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(7));

-- Location: FF_X22_Y19_N11
\inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[15]~50_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(15));

-- Location: FF_X22_Y19_N7
\inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[13]~46_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(13));

-- Location: LCCOMB_X26_Y16_N4
\inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = \inst|cur\(0) $ (VCC)
-- \inst|Add3~1\ = CARRY(\inst|cur\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(0),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X26_Y16_N10
\inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|cur\(3) & (!\inst|Add3~5\)) # (!\inst|cur\(3) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|cur\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(3),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X26_Y16_N12
\inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|cur\(4) & (\inst|Add3~7\ $ (GND))) # (!\inst|cur\(4) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|cur\(4) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(4),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X26_Y16_N20
\inst|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~16_combout\ = (\inst|cur\(8) & ((GND) # (!\inst|Add3~15\))) # (!\inst|cur\(8) & (\inst|Add3~15\ $ (GND)))
-- \inst|Add3~17\ = CARRY((\inst|cur\(8)) # (!\inst|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(8),
	datad => VCC,
	cin => \inst|Add3~15\,
	combout => \inst|Add3~16_combout\,
	cout => \inst|Add3~17\);

-- Location: LCCOMB_X21_Y16_N12
\inst|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = (\inst|cur\(6) & (\inst|Add4~11\ $ (GND))) # (!\inst|cur\(6) & (!\inst|Add4~11\ & VCC))
-- \inst|Add4~13\ = CARRY((\inst|cur\(6) & !\inst|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(6),
	datad => VCC,
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\,
	cout => \inst|Add4~13\);

-- Location: LCCOMB_X24_Y14_N10
\inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|cur\(0) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|cur\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X24_Y14_N16
\inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|cur\(3) & (!\inst|Add2~5\)) # (!\inst|cur\(3) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|cur\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X24_Y14_N18
\inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|cur\(4) & ((GND) # (!\inst|Add2~7\))) # (!\inst|cur\(4) & (\inst|Add2~7\ $ (GND)))
-- \inst|Add2~9\ = CARRY((\inst|cur\(4)) # (!\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X24_Y14_N26
\inst|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|cur\(8) & ((GND) # (!\inst|Add2~15\))) # (!\inst|cur\(8) & (\inst|Add2~15\ $ (GND)))
-- \inst|Add2~17\ = CARRY((\inst|cur\(8)) # (!\inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(8),
	datad => VCC,
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\,
	cout => \inst|Add2~17\);

-- Location: LCCOMB_X24_Y14_N28
\inst|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = (\inst|cur\(9) & (\inst|Add2~17\ & VCC)) # (!\inst|cur\(9) & (!\inst|Add2~17\))
-- \inst|Add2~19\ = CARRY((!\inst|cur\(9) & !\inst|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(9),
	datad => VCC,
	cin => \inst|Add2~17\,
	combout => \inst|Add2~18_combout\,
	cout => \inst|Add2~19\);

-- Location: LCCOMB_X24_Y14_N30
\inst|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~20_combout\ = \inst|cur\(10) $ (\inst|Add2~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(10),
	cin => \inst|Add2~19\,
	combout => \inst|Add2~20_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|cur\(10) & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|cur\(10) & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|cur\(10) & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(10),
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y17_N0
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~73_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[15]~72_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~73_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[15]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~73_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~72_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X21_Y17_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~84_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[25]~85_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[25]~84_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[25]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~85_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X21_Y17_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[26]~82_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[26]~83_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[26]~82_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[26]~83_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[26]~82_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~82_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y17_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~117_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[27]~81_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~117_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[27]~81_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~117_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[27]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~117_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~81_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X20_Y17_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[30]~91_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[30]~90_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[30]~91_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[30]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~91_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~90_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X20_Y17_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[31]~89_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[31]~88_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[31]~89_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[31]~88_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[31]~89_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[31]~88_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~89_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~88_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X19_Y16_N0
\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[35]~96_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[35]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[35]~96_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X19_Y16_N4
\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[37]~93_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[37]~119_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[37]~93_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[37]~119_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[37]~93_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[37]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[37]~93_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[37]~119_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X19_Y16_N24
\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X20_Y16_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[45]~104_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[45]~104_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[45]~104_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X20_Y16_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[46]~108_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[46]~109_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[46]~108_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[46]~109_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[46]~108_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[46]~109_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[46]~108_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[46]~109_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X20_Y16_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[47]~121_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[47]~107_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[47]~121_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[47]~107_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[47]~121_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[47]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[47]~121_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[47]~107_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X27_Y15_N6
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst|cur\(6) $ (VCC)
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst|cur\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(6),
	datad => VCC,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X27_Y15_N10
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst|cur\(8) & ((GND) # (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\inst|cur\(8) & 
-- (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\inst|cur\(8)) # (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(8),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X27_Y15_N12
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst|cur\(9) & (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\inst|cur\(9) & 
-- ((\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst|cur\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(9),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X27_Y15_N14
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst|cur\(10) & (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\inst|cur\(10) & 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst|cur\(10) & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(10),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X26_Y15_N16
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[50]~78_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[50]~79_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[50]~78_combout\ & 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[50]~79_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[50]~78_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[50]~79_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[50]~78_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[50]~79_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X26_Y15_N22
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[53]~73_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[53]~72_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\inst|Div1|auto_generated|divider|divider|StageOut[53]~73_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[53]~72_combout\)))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[53]~73_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[53]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[53]~73_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[53]~72_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X28_Y15_N16
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\inst|Div1|auto_generated|divider|divider|StageOut[48]~89_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[48]~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|StageOut[48]~89_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|StageOut[48]~90_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[58]~86_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[58]~86_combout\ & 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[58]~87_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X24_Y15_N12
\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\inst|Div1|auto_generated|divider|divider|StageOut[60]~84_combout\ & (((!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[60]~84_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[60]~119_combout\ & (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[60]~119_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\inst|Div1|auto_generated|divider|divider|StageOut[60]~84_combout\ & !\inst|Div1|auto_generated|divider|divider|StageOut[60]~119_combout\)) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[60]~84_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[60]~119_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X24_Y15_N14
\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[61]~118_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[61]~83_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\inst|Div1|auto_generated|divider|divider|StageOut[61]~118_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[61]~83_combout\)))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[61]~118_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[61]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[61]~118_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[61]~83_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X20_Y15_N6
\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ $ (GND)
-- \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY(!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => VCC,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X20_Y15_N10
\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & VCC)) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ $ (GND)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X24_Y13_N2
\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\inst|Div1|auto_generated|divider|divider|StageOut[65]~97_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[65]~100_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[65]~97_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[65]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[65]~97_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[65]~100_combout\,
	datad => VCC,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X24_Y13_N4
\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[66]~122_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[66]~96_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[66]~122_combout\ & 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[66]~96_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[66]~122_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[66]~96_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[66]~122_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[66]~96_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X24_Y13_N6
\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\inst|Div1|auto_generated|divider|divider|StageOut[67]~95_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[67]~121_combout\))))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[67]~95_combout\) # 
-- ((\inst|Div1|auto_generated|divider|divider|StageOut[67]~121_combout\) # (GND))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[67]~95_combout\) # ((\inst|Div1|auto_generated|divider|divider|StageOut[67]~121_combout\) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[67]~95_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[67]~121_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X24_Y13_N8
\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\inst|Div1|auto_generated|divider|divider|StageOut[68]~112_combout\ & (((!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[68]~112_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[68]~94_combout\ & (!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[68]~94_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\inst|Div1|auto_generated|divider|divider|StageOut[68]~112_combout\ & !\inst|Div1|auto_generated|divider|divider|StageOut[68]~94_combout\)) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[68]~112_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[68]~94_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X24_Y13_N10
\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[69]~93_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[69]~111_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\inst|Div1|auto_generated|divider|divider|StageOut[69]~93_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[69]~111_combout\)))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[69]~93_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[69]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[69]~93_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[69]~111_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X21_Y13_N22
\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\,
	datad => VCC,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X21_Y13_N24
\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[46]~6_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[46]~7_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[46]~6_combout\ & 
-- (!\inst|Mod2|auto_generated|divider|divider|StageOut[46]~7_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[46]~6_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[46]~7_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[46]~6_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[46]~7_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X21_Y13_N26
\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[47]~5_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[47]~4_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\inst|Mod2|auto_generated|divider|divider|StageOut[47]~5_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[47]~4_combout\)))))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[47]~5_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[47]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[47]~5_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[47]~4_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X21_Y13_N28
\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[48]~3_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[48]~2_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[48]~3_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[48]~2_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y13_N30
\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y15_N6
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|cur\(8) $ (VCC)
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|cur\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(8),
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y15_N10
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|cur\(10) & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|cur\(10) & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|cur\(10) & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(10),
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y15_N22
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[17]~68_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[17]~69_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Div0|auto_generated|divider|divider|StageOut[17]~68_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[17]~69_combout\)))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[17]~68_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[17]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[17]~68_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[17]~69_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X21_Y15_N4
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[27]~117_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[27]~81_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst|Div0|auto_generated|divider|divider|StageOut[27]~117_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[27]~81_combout\)))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[27]~117_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[27]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[27]~117_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[27]~81_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X22_Y12_N12
\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst|Div0|auto_generated|divider|divider|StageOut[30]~91_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[30]~90_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[30]~91_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[30]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[30]~91_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[30]~90_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X22_Y12_N16
\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[32]~118_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[32]~87_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst|Div0|auto_generated|divider|divider|StageOut[32]~118_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[32]~87_combout\)))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[32]~118_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[32]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[32]~118_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[32]~87_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X21_Y12_N4
\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[37]~119_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[37]~93_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\inst|Div0|auto_generated|divider|divider|StageOut[37]~119_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[37]~93_combout\)))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[37]~119_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[37]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[37]~119_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[37]~93_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X20_Y12_N0
\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\inst|Div0|auto_generated|divider|divider|StageOut[40]~103_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[40]~102_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[40]~103_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[40]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[40]~103_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X20_Y12_N2
\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[41]~100_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[41]~101_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[41]~100_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[41]~101_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[41]~100_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[41]~101_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[41]~100_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[41]~101_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X20_Y12_N4
\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[42]~99_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\inst|Div0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[42]~99_combout\)))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[42]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[42]~120_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X19_Y12_N0
\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\);

-- Location: LCCOMB_X22_Y15_N12
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X22_Y15_N14
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X22_Y14_N10
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst|Mod1|auto_generated|divider|divider|StageOut[30]~56_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[30]~57_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[30]~56_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[30]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~56_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X21_Y14_N20
\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[37]~77_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[37]~59_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\inst|Mod1|auto_generated|divider|divider|StageOut[37]~77_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[37]~59_combout\)))))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[37]~77_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[37]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[37]~77_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[37]~59_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X19_Y14_N20
\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\inst|Mod1|auto_generated|divider|divider|StageOut[45]~72_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[45]~72_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[45]~72_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X20_Y12_N20
\inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[45]~108_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[45]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[45]~108_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[45]~109_combout\,
	datad => VCC,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1_cout\);

-- Location: LCCOMB_X20_Y12_N22
\inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[46]~106_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[46]~107_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[46]~106_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[46]~107_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3_cout\);

-- Location: LCCOMB_X20_Y12_N24
\inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3_cout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[47]~105_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[47]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[47]~105_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[47]~121_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5_cout\);

-- Location: LCCOMB_X20_Y12_N26
\inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[48]~114_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[48]~104_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[48]~114_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[48]~104_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y12_N28
\inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y13_N4
\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\ = (\inst|Div1|auto_generated|divider|divider|StageOut[64]~108_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[64]~107_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|StageOut[64]~108_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|StageOut[64]~107_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\);

-- Location: LCCOMB_X23_Y13_N14
\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[73]~109_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[73]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[73]~109_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[73]~106_combout\,
	datad => VCC,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\);

-- Location: LCCOMB_X23_Y13_N16
\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[74]~123_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[74]~105_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[74]~123_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[74]~105_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\);

-- Location: LCCOMB_X23_Y13_N18
\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[75]~104_combout\) # ((\inst|Div1|auto_generated|divider|divider|StageOut[75]~116_combout\) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[75]~104_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[75]~116_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\);

-- Location: LCCOMB_X23_Y13_N20
\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\ = CARRY(((!\inst|Div1|auto_generated|divider|divider|StageOut[76]~103_combout\ & !\inst|Div1|auto_generated|divider|divider|StageOut[76]~115_combout\)) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[76]~103_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[76]~115_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\);

-- Location: LCCOMB_X23_Y13_N22
\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[77]~102_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[77]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[77]~102_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[77]~114_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\);

-- Location: LCCOMB_X23_Y13_N24
\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[78]~101_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[78]~113_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[78]~101_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[78]~113_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\);

-- Location: LCCOMB_X23_Y13_N26
\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ = \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\ = !\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\);

-- Location: FF_X23_Y14_N7
\inst|cnt0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[0]~13_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(0));

-- Location: FF_X23_Y14_N9
\inst|cnt0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[1]~15_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(1));

-- Location: FF_X23_Y14_N11
\inst|cnt0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[2]~17_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(2));

-- Location: FF_X23_Y14_N13
\inst|cnt0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[3]~19_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(3));

-- Location: FF_X23_Y14_N15
\inst|cnt0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[4]~21_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(4));

-- Location: FF_X23_Y14_N17
\inst|cnt0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[5]~23_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(5));

-- Location: FF_X23_Y14_N19
\inst|cnt0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[6]~25_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(6));

-- Location: FF_X23_Y14_N21
\inst|cnt0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[7]~27_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(7));

-- Location: FF_X23_Y14_N23
\inst|cnt0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[8]~29_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(8));

-- Location: FF_X23_Y14_N25
\inst|cnt0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[9]~31_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(9));

-- Location: FF_X23_Y14_N27
\inst|cnt0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[10]~33_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(10));

-- Location: FF_X23_Y14_N29
\inst|cnt0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[11]~35_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(11));

-- Location: FF_X23_Y14_N31
\inst|cnt0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt0[12]~37_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt0\(12));

-- Location: LCCOMB_X22_Y20_N12
\inst|count[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[0]~20_combout\ = (\inst|count\(0) & (\inst|key_cnt~q\ $ (GND))) # (!\inst|count\(0) & (!\inst|key_cnt~q\ & VCC))
-- \inst|count[0]~21\ = CARRY((\inst|count\(0) & !\inst|key_cnt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|key_cnt~q\,
	datad => VCC,
	combout => \inst|count[0]~20_combout\,
	cout => \inst|count[0]~21\);

-- Location: LCCOMB_X22_Y20_N26
\inst|count[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[7]~34_combout\ = (\inst|count\(7) & (!\inst|count[6]~33\)) # (!\inst|count\(7) & ((\inst|count[6]~33\) # (GND)))
-- \inst|count[7]~35\ = CARRY((!\inst|count[6]~33\) # (!\inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datad => VCC,
	cin => \inst|count[6]~33\,
	combout => \inst|count[7]~34_combout\,
	cout => \inst|count[7]~35\);

-- Location: LCCOMB_X22_Y19_N6
\inst|count[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[13]~46_combout\ = (\inst|count\(13) & (!\inst|count[12]~45\)) # (!\inst|count\(13) & ((\inst|count[12]~45\) # (GND)))
-- \inst|count[13]~47\ = CARRY((!\inst|count[12]~45\) # (!\inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(13),
	datad => VCC,
	cin => \inst|count[12]~45\,
	combout => \inst|count[13]~46_combout\,
	cout => \inst|count[13]~47\);

-- Location: LCCOMB_X22_Y19_N10
\inst|count[15]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[15]~50_combout\ = (\inst|count\(15) & (!\inst|count[14]~49\)) # (!\inst|count\(15) & ((\inst|count[14]~49\) # (GND)))
-- \inst|count[15]~51\ = CARRY((!\inst|count[14]~49\) # (!\inst|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(15),
	datad => VCC,
	cin => \inst|count[14]~49\,
	combout => \inst|count[15]~50_combout\,
	cout => \inst|count[15]~51\);

-- Location: LCCOMB_X22_Y19_N12
\inst|count[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[16]~52_combout\ = (\inst|count\(16) & (\inst|count[15]~51\ $ (GND))) # (!\inst|count\(16) & (!\inst|count[15]~51\ & VCC))
-- \inst|count[16]~53\ = CARRY((\inst|count\(16) & !\inst|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(16),
	datad => VCC,
	cin => \inst|count[15]~51\,
	combout => \inst|count[16]~52_combout\,
	cout => \inst|count[16]~53\);

-- Location: LCCOMB_X23_Y14_N6
\inst|cnt0[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[0]~13_combout\ = \inst|cnt0\(0) $ (VCC)
-- \inst|cnt0[0]~14\ = CARRY(\inst|cnt0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(0),
	datad => VCC,
	combout => \inst|cnt0[0]~13_combout\,
	cout => \inst|cnt0[0]~14\);

-- Location: LCCOMB_X23_Y14_N8
\inst|cnt0[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[1]~15_combout\ = (\inst|cnt0\(1) & (!\inst|cnt0[0]~14\)) # (!\inst|cnt0\(1) & ((\inst|cnt0[0]~14\) # (GND)))
-- \inst|cnt0[1]~16\ = CARRY((!\inst|cnt0[0]~14\) # (!\inst|cnt0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(1),
	datad => VCC,
	cin => \inst|cnt0[0]~14\,
	combout => \inst|cnt0[1]~15_combout\,
	cout => \inst|cnt0[1]~16\);

-- Location: LCCOMB_X23_Y14_N10
\inst|cnt0[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[2]~17_combout\ = (\inst|cnt0\(2) & (\inst|cnt0[1]~16\ $ (GND))) # (!\inst|cnt0\(2) & (!\inst|cnt0[1]~16\ & VCC))
-- \inst|cnt0[2]~18\ = CARRY((\inst|cnt0\(2) & !\inst|cnt0[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(2),
	datad => VCC,
	cin => \inst|cnt0[1]~16\,
	combout => \inst|cnt0[2]~17_combout\,
	cout => \inst|cnt0[2]~18\);

-- Location: LCCOMB_X23_Y14_N12
\inst|cnt0[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[3]~19_combout\ = (\inst|cnt0\(3) & (!\inst|cnt0[2]~18\)) # (!\inst|cnt0\(3) & ((\inst|cnt0[2]~18\) # (GND)))
-- \inst|cnt0[3]~20\ = CARRY((!\inst|cnt0[2]~18\) # (!\inst|cnt0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(3),
	datad => VCC,
	cin => \inst|cnt0[2]~18\,
	combout => \inst|cnt0[3]~19_combout\,
	cout => \inst|cnt0[3]~20\);

-- Location: LCCOMB_X23_Y14_N14
\inst|cnt0[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[4]~21_combout\ = (\inst|cnt0\(4) & (\inst|cnt0[3]~20\ $ (GND))) # (!\inst|cnt0\(4) & (!\inst|cnt0[3]~20\ & VCC))
-- \inst|cnt0[4]~22\ = CARRY((\inst|cnt0\(4) & !\inst|cnt0[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(4),
	datad => VCC,
	cin => \inst|cnt0[3]~20\,
	combout => \inst|cnt0[4]~21_combout\,
	cout => \inst|cnt0[4]~22\);

-- Location: LCCOMB_X23_Y14_N16
\inst|cnt0[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[5]~23_combout\ = (\inst|cnt0\(5) & (!\inst|cnt0[4]~22\)) # (!\inst|cnt0\(5) & ((\inst|cnt0[4]~22\) # (GND)))
-- \inst|cnt0[5]~24\ = CARRY((!\inst|cnt0[4]~22\) # (!\inst|cnt0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(5),
	datad => VCC,
	cin => \inst|cnt0[4]~22\,
	combout => \inst|cnt0[5]~23_combout\,
	cout => \inst|cnt0[5]~24\);

-- Location: LCCOMB_X23_Y14_N18
\inst|cnt0[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[6]~25_combout\ = (\inst|cnt0\(6) & (\inst|cnt0[5]~24\ $ (GND))) # (!\inst|cnt0\(6) & (!\inst|cnt0[5]~24\ & VCC))
-- \inst|cnt0[6]~26\ = CARRY((\inst|cnt0\(6) & !\inst|cnt0[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(6),
	datad => VCC,
	cin => \inst|cnt0[5]~24\,
	combout => \inst|cnt0[6]~25_combout\,
	cout => \inst|cnt0[6]~26\);

-- Location: LCCOMB_X23_Y14_N20
\inst|cnt0[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[7]~27_combout\ = (\inst|cnt0\(7) & (!\inst|cnt0[6]~26\)) # (!\inst|cnt0\(7) & ((\inst|cnt0[6]~26\) # (GND)))
-- \inst|cnt0[7]~28\ = CARRY((!\inst|cnt0[6]~26\) # (!\inst|cnt0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(7),
	datad => VCC,
	cin => \inst|cnt0[6]~26\,
	combout => \inst|cnt0[7]~27_combout\,
	cout => \inst|cnt0[7]~28\);

-- Location: LCCOMB_X23_Y14_N22
\inst|cnt0[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[8]~29_combout\ = (\inst|cnt0\(8) & (\inst|cnt0[7]~28\ $ (GND))) # (!\inst|cnt0\(8) & (!\inst|cnt0[7]~28\ & VCC))
-- \inst|cnt0[8]~30\ = CARRY((\inst|cnt0\(8) & !\inst|cnt0[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(8),
	datad => VCC,
	cin => \inst|cnt0[7]~28\,
	combout => \inst|cnt0[8]~29_combout\,
	cout => \inst|cnt0[8]~30\);

-- Location: LCCOMB_X23_Y14_N24
\inst|cnt0[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[9]~31_combout\ = (\inst|cnt0\(9) & (!\inst|cnt0[8]~30\)) # (!\inst|cnt0\(9) & ((\inst|cnt0[8]~30\) # (GND)))
-- \inst|cnt0[9]~32\ = CARRY((!\inst|cnt0[8]~30\) # (!\inst|cnt0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(9),
	datad => VCC,
	cin => \inst|cnt0[8]~30\,
	combout => \inst|cnt0[9]~31_combout\,
	cout => \inst|cnt0[9]~32\);

-- Location: LCCOMB_X23_Y14_N26
\inst|cnt0[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[10]~33_combout\ = (\inst|cnt0\(10) & (\inst|cnt0[9]~32\ $ (GND))) # (!\inst|cnt0\(10) & (!\inst|cnt0[9]~32\ & VCC))
-- \inst|cnt0[10]~34\ = CARRY((\inst|cnt0\(10) & !\inst|cnt0[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(10),
	datad => VCC,
	cin => \inst|cnt0[9]~32\,
	combout => \inst|cnt0[10]~33_combout\,
	cout => \inst|cnt0[10]~34\);

-- Location: LCCOMB_X23_Y14_N28
\inst|cnt0[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[11]~35_combout\ = (\inst|cnt0\(11) & (!\inst|cnt0[10]~34\)) # (!\inst|cnt0\(11) & ((\inst|cnt0[10]~34\) # (GND)))
-- \inst|cnt0[11]~36\ = CARRY((!\inst|cnt0[10]~34\) # (!\inst|cnt0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(11),
	datad => VCC,
	cin => \inst|cnt0[10]~34\,
	combout => \inst|cnt0[11]~35_combout\,
	cout => \inst|cnt0[11]~36\);

-- Location: LCCOMB_X23_Y14_N30
\inst|cnt0[12]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[12]~37_combout\ = \inst|cnt0\(12) $ (!\inst|cnt0[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(12),
	cin => \inst|cnt0[11]~36\,
	combout => \inst|cnt0[12]~37_combout\);

-- Location: FF_X22_Y18_N11
\inst|key_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|key_out~4_combout\,
	ena => \inst|key_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key_out\(4));

-- Location: LCCOMB_X22_Y16_N2
\inst|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = (\inst|cur\(7) & (\inst|cur\(9) & \inst|cur\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(7),
	datac => \inst|cur\(9),
	datad => \inst|cur\(8),
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y16_N6
\inst|Selector22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector22~6_combout\ = (\inst|nxtstate.000~2_combout\ & (\inst|LessThan3~4_combout\ & ((\inst|nxtstate.100~0_combout\)))) # (!\inst|nxtstate.000~2_combout\ & ((\inst|light\(3)) # ((\inst|LessThan3~4_combout\ & \inst|nxtstate.100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.000~2_combout\,
	datab => \inst|LessThan3~4_combout\,
	datac => \inst|light\(3),
	datad => \inst|nxtstate.100~0_combout\,
	combout => \inst|Selector22~6_combout\);

-- Location: FF_X23_Y14_N5
\inst|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag~q\);

-- Location: LCCOMB_X22_Y19_N30
\inst|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~5_combout\ = (\inst|count\(15)) # ((\inst|count\(14)) # ((!\inst|count\(13)) # (!\inst|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(15),
	datab => \inst|count\(14),
	datac => \inst|count\(12),
	datad => \inst|count\(13),
	combout => \inst|Equal1~5_combout\);

-- Location: LCCOMB_X26_Y18_N22
\inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\good[2]~input_o\ & (\inst|old\(2) & (\inst|old\(3) $ (!\good[3]~input_o\)))) # (!\good[2]~input_o\ & (!\inst|old\(2) & (\inst|old\(3) $ (!\good[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \good[2]~input_o\,
	datab => \inst|old\(3),
	datac => \good[3]~input_o\,
	datad => \inst|old\(2),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y18_N10
\inst|key_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|key_out~4_combout\ = (\inst|old\(4) & !\inst|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|old\(4),
	datad => \inst|Equal1~6_combout\,
	combout => \inst|key_out~4_combout\);

-- Location: LCCOMB_X22_Y16_N26
\inst|Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector21~1_combout\ = (\inst|nxtstate.010~0_combout\ & (\inst|Add3~0_combout\ & !\inst|LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|nxtstate.010~0_combout\,
	datac => \inst|Add3~0_combout\,
	datad => \inst|LessThan2~1_combout\,
	combout => \inst|Selector21~1_combout\);

-- Location: LCCOMB_X22_Y16_N12
\inst|Selector21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector21~2_combout\ = (\inst|Selector21~1_combout\) # ((\inst|Add2~0_combout\ & (\inst|nxtstate.001~2_combout\ & !\inst|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \inst|nxtstate.001~2_combout\,
	datac => \inst|Selector21~1_combout\,
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|Selector21~2_combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~67_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~67_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst|Mod0|auto_generated|divider|divider|StageOut[17]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[17]~68_combout\ = (\inst|cur\(9) & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(9),
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~68_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst|Mod0|auto_generated|divider|divider|StageOut[16]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[16]~70_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|cur\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|cur\(8),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~70_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[15]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~73_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|cur\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|cur\(7),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~73_combout\);

-- Location: LCCOMB_X22_Y17_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[21]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X22_Y17_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[20]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[20]~79_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|cur\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|cur\(6),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~79_combout\);

-- Location: LCCOMB_X22_Y17_N20
\inst|Mod0|auto_generated|divider|divider|StageOut[26]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~83_combout\);

-- Location: LCCOMB_X22_Y17_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[25]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\inst|cur\(5) & \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(5),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~84_combout\);

-- Location: LCCOMB_X21_Y17_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[33]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[33]~86_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~86_combout\);

-- Location: LCCOMB_X21_Y17_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[32]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[32]~87_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~87_combout\);

-- Location: LCCOMB_X21_Y17_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[31]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[31]~89_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~89_combout\);

-- Location: LCCOMB_X21_Y17_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[30]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[30]~91_combout\ = (\inst|cur\(4) & !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(4),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~91_combout\);

-- Location: LCCOMB_X20_Y17_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[37]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[37]~93_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[37]~93_combout\);

-- Location: LCCOMB_X20_Y17_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[36]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[36]~95_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[36]~95_combout\);

-- Location: LCCOMB_X20_Y17_N22
\inst|Mod0|auto_generated|divider|divider|StageOut[35]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\inst|cur\(3) & !\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(3),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X19_Y16_N10
\inst|Mod0|auto_generated|divider|divider|StageOut[43]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[43]~98_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[43]~98_combout\);

-- Location: LCCOMB_X19_Y16_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[41]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[41]~101_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[41]~101_combout\);

-- Location: LCCOMB_X19_Y16_N12
\inst|Mod0|auto_generated|divider|divider|StageOut[40]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\inst|cur\(2) & \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(2),
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X20_Y16_N22
\inst|Mod0|auto_generated|divider|divider|StageOut[45]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[45]~104_combout\ = (\inst|cur\(1) & \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(1),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[45]~104_combout\);

-- Location: LCCOMB_X20_Y16_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[48]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[48]~106_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[48]~106_combout\);

-- Location: LCCOMB_X27_Y15_N4
\inst|Div1|auto_generated|divider|divider|StageOut[54]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[54]~71_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[54]~71_combout\);

-- Location: LCCOMB_X27_Y15_N20
\inst|Div1|auto_generated|divider|divider|StageOut[53]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[53]~73_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[53]~73_combout\);

-- Location: LCCOMB_X27_Y15_N2
\inst|Div1|auto_generated|divider|divider|StageOut[52]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[52]~75_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[52]~75_combout\);

-- Location: LCCOMB_X27_Y15_N30
\inst|Div1|auto_generated|divider|divider|StageOut[51]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[51]~77_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[51]~77_combout\);

-- Location: LCCOMB_X27_Y15_N28
\inst|Div1|auto_generated|divider|divider|StageOut[50]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[50]~78_combout\ = (\inst|cur\(6) & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(6),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[50]~78_combout\);

-- Location: LCCOMB_X26_Y15_N30
\inst|Div1|auto_generated|divider|divider|StageOut[49]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[49]~81_combout\ = (\inst|cur\(5) & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(5),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[49]~81_combout\);

-- Location: LCCOMB_X24_Y15_N4
\inst|Div1|auto_generated|divider|divider|StageOut[60]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[60]~84_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[60]~84_combout\);

-- Location: LCCOMB_X24_Y16_N30
\inst|Div1|auto_generated|divider|divider|StageOut[58]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[58]~86_combout\ = (\inst|cur\(5) & \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(5),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[58]~86_combout\);

-- Location: LCCOMB_X28_Y15_N4
\inst|Div1|auto_generated|divider|divider|StageOut[48]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[48]~89_combout\ = (\inst|cur\(4) & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[48]~89_combout\);

-- Location: LCCOMB_X28_Y15_N2
\inst|Div1|auto_generated|divider|divider|StageOut[48]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[48]~90_combout\ = (\inst|cur\(4) & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[48]~90_combout\);

-- Location: LCCOMB_X28_Y15_N12
\inst|Div1|auto_generated|divider|divider|StageOut[57]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[57]~91_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[57]~91_combout\);

-- Location: LCCOMB_X24_Y15_N22
\inst|Div1|auto_generated|divider|divider|StageOut[70]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[70]~92_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[70]~92_combout\);

-- Location: LCCOMB_X24_Y15_N24
\inst|Div1|auto_generated|divider|divider|StageOut[69]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[69]~93_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[69]~93_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst|Div1|auto_generated|divider|divider|StageOut[67]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[67]~95_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[67]~95_combout\);

-- Location: LCCOMB_X24_Y13_N26
\inst|Div1|auto_generated|divider|divider|StageOut[65]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[65]~97_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \inst|cur\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \inst|cur\(3),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[65]~97_combout\);

-- Location: LCCOMB_X21_Y13_N10
\inst|Mod2|auto_generated|divider|divider|StageOut[45]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\);

-- Location: LCCOMB_X21_Y13_N2
\inst|Mod2|auto_generated|divider|divider|StageOut[48]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[48]~2_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[48]~2_combout\);

-- Location: LCCOMB_X20_Y15_N20
\inst|Mod2|auto_generated|divider|divider|StageOut[48]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[48]~3_combout\ = (!\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[48]~3_combout\);

-- Location: LCCOMB_X20_Y15_N24
\inst|Mod2|auto_generated|divider|divider|StageOut[47]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[47]~5_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[47]~5_combout\);

-- Location: LCCOMB_X21_Y13_N6
\inst|Mod2|auto_generated|divider|divider|StageOut[46]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[46]~6_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[46]~6_combout\);

-- Location: LCCOMB_X21_Y13_N18
\inst|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~4_combout\ = (\inst|cnt_sel\(1) & ((\inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\) # ((\inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \inst|cnt_sel\(1),
	combout => \inst|Mux1~4_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~5_combout\ = (\inst|Mux1~4_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\) # (\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \inst|Mux1~4_combout\,
	combout => \inst|Mux1~5_combout\);

-- Location: LCCOMB_X20_Y16_N28
\inst|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~6_combout\ = (\inst|Mux1~5_combout\) # ((\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\inst|cur\(1))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(1),
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \inst|Mux1~5_combout\,
	combout => \inst|Mux1~6_combout\);

-- Location: LCCOMB_X23_Y15_N30
\inst|Div0|auto_generated|divider|divider|StageOut[18]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[18]~67_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[18]~67_combout\);

-- Location: LCCOMB_X23_Y15_N28
\inst|Div0|auto_generated|divider|divider|StageOut[17]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[17]~68_combout\ = (\inst|cur\(9) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(9),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[17]~68_combout\);

-- Location: LCCOMB_X24_Y15_N2
\inst|Div0|auto_generated|divider|divider|StageOut[16]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[16]~70_combout\ = (\inst|cur\(8) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(8),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[16]~70_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst|Div0|auto_generated|divider|divider|StageOut[15]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|cur\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|cur\(7),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\);

-- Location: LCCOMB_X23_Y15_N2
\inst|Div0|auto_generated|divider|divider|StageOut[23]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[23]~74_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[23]~74_combout\);

-- Location: LCCOMB_X22_Y15_N22
\inst|Div0|auto_generated|divider|divider|StageOut[21]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[21]~76_combout\ = (\inst|cur\(7) & \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(7),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[21]~76_combout\);

-- Location: LCCOMB_X22_Y15_N30
\inst|Div0|auto_generated|divider|divider|StageOut[20]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[20]~79_combout\ = (\inst|cur\(6) & !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(6),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[20]~79_combout\);

-- Location: LCCOMB_X21_Y15_N22
\inst|Div0|auto_generated|divider|divider|StageOut[26]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\);

-- Location: LCCOMB_X21_Y15_N10
\inst|Div0|auto_generated|divider|divider|StageOut[25]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[25]~85_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|cur\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|cur\(5),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[25]~85_combout\);

-- Location: LCCOMB_X21_Y15_N16
\inst|Div0|auto_generated|divider|divider|StageOut[33]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[33]~86_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[33]~86_combout\);

-- Location: LCCOMB_X22_Y12_N6
\inst|Div0|auto_generated|divider|divider|StageOut[31]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[31]~89_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[31]~89_combout\);

-- Location: LCCOMB_X22_Y12_N30
\inst|Div0|auto_generated|divider|divider|StageOut[30]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[30]~91_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|cur\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|cur\(4),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[30]~91_combout\);

-- Location: LCCOMB_X22_Y12_N4
\inst|Div0|auto_generated|divider|divider|StageOut[38]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[38]~92_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[38]~92_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst|Div0|auto_generated|divider|divider|StageOut[36]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[36]~94_combout\ = (\inst|cur\(4) & \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(4),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[36]~94_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst|Div0|auto_generated|divider|divider|StageOut[35]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\inst|cur\(3) & !\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(3),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X21_Y12_N20
\inst|Div0|auto_generated|divider|divider|StageOut[43]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[43]~98_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[43]~98_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst|Div0|auto_generated|divider|divider|StageOut[41]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[41]~100_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst|cur\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|cur\(3),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[41]~100_combout\);

-- Location: LCCOMB_X21_Y12_N30
\inst|Div0|auto_generated|divider|divider|StageOut[40]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[40]~103_combout\ = (\inst|cur\(2) & !\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(2),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[40]~103_combout\);

-- Location: LCCOMB_X22_Y14_N22
\inst|Mod1|auto_generated|divider|divider|StageOut[33]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\ = (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\);

-- Location: LCCOMB_X22_Y14_N30
\inst|Mod1|auto_generated|divider|divider|StageOut[32]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[32]~53_combout\ = (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~53_combout\);

-- Location: LCCOMB_X22_Y14_N4
\inst|Mod1|auto_generated|divider|divider|StageOut[31]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[31]~54_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~54_combout\);

-- Location: LCCOMB_X22_Y14_N26
\inst|Mod1|auto_generated|divider|divider|StageOut[30]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[30]~56_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~56_combout\);

-- Location: LCCOMB_X22_Y14_N6
\inst|Mod1|auto_generated|divider|divider|StageOut[36]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X21_Y14_N26
\inst|Mod1|auto_generated|divider|divider|StageOut[35]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\);

-- Location: LCCOMB_X21_Y14_N6
\inst|Mod1|auto_generated|divider|divider|StageOut[43]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\);

-- Location: LCCOMB_X20_Y14_N12
\inst|Mod1|auto_generated|divider|divider|StageOut[40]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~7_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)) # 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	combout => \inst|Mux1~7_combout\);

-- Location: LCCOMB_X21_Y13_N14
\inst|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~8_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\)))) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|StageOut[45]~0_combout\,
	combout => \inst|Mux1~8_combout\);

-- Location: LCCOMB_X20_Y14_N6
\inst|Mod1|auto_generated|divider|divider|StageOut[46]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[46]~70_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[46]~70_combout\);

-- Location: LCCOMB_X19_Y14_N12
\inst|Mod1|auto_generated|divider|divider|StageOut[45]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[45]~72_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[45]~72_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst|Mux1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~9_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\) # ((\inst|cnt_sel\(1) & \inst|Mux1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(1),
	datac => \inst|Mux1~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \inst|Mux1~9_combout\);

-- Location: LCCOMB_X19_Y13_N18
\inst|Mux1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~10_combout\ = (\inst|Mux3~0_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\inst|Mux1~11_combout\)) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- ((\inst|Mux1~9_combout\))))) # (!\inst|Mux3~0_combout\ & (\inst|Mux1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~0_combout\,
	datab => \inst|Mux1~11_combout\,
	datac => \inst|Mux1~9_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \inst|Mux1~10_combout\);

-- Location: LCCOMB_X21_Y13_N4
\inst|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X20_Y13_N8
\inst|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (\inst|cnt_sel\(1) & ((\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\inst|Mux2~2_combout\)) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- ((\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~2_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \inst|cnt_sel\(1),
	combout => \inst|Mux2~3_combout\);

-- Location: LCCOMB_X19_Y14_N10
\inst|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~5_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[47]~107_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[47]~121_combout\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[47]~107_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[47]~121_combout\,
	combout => \inst|Mux3~5_combout\);

-- Location: LCCOMB_X20_Y12_N14
\inst|Div0|auto_generated|divider|divider|StageOut[48]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[48]~104_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[48]~104_combout\);

-- Location: LCCOMB_X20_Y12_N12
\inst|Div0|auto_generated|divider|divider|StageOut[47]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[47]~105_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[47]~105_combout\);

-- Location: LCCOMB_X20_Y12_N10
\inst|Div0|auto_generated|divider|divider|StageOut[46]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[46]~106_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \inst|cur\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|cur\(2),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[46]~106_combout\);

-- Location: LCCOMB_X20_Y12_N16
\inst|Div0|auto_generated|divider|divider|StageOut[46]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[46]~107_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[46]~107_combout\);

-- Location: LCCOMB_X20_Y12_N30
\inst|Div0|auto_generated|divider|divider|StageOut[45]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[45]~108_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \inst|cur\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|cur\(1),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[45]~108_combout\);

-- Location: LCCOMB_X20_Y12_N18
\inst|Div0|auto_generated|divider|divider|StageOut[45]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[45]~109_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \inst|cur\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|cur\(1),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[45]~109_combout\);

-- Location: LCCOMB_X23_Y13_N6
\inst|Div1|auto_generated|divider|divider|StageOut[78]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[78]~101_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[78]~101_combout\);

-- Location: LCCOMB_X23_Y13_N12
\inst|Div1|auto_generated|divider|divider|StageOut[77]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[77]~102_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[77]~102_combout\);

-- Location: LCCOMB_X23_Y13_N30
\inst|Div1|auto_generated|divider|divider|StageOut[76]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[76]~103_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[76]~103_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst|Div1|auto_generated|divider|divider|StageOut[75]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[75]~104_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[75]~104_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst|Div1|auto_generated|divider|divider|StageOut[74]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[74]~105_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[74]~105_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst|Div1|auto_generated|divider|divider|StageOut[73]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[73]~106_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \inst|cur\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \inst|cur\(2),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[73]~106_combout\);

-- Location: LCCOMB_X22_Y13_N2
\inst|Div1|auto_generated|divider|divider|StageOut[64]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[64]~107_combout\ = (\inst|cur\(2) & \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(2),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[64]~107_combout\);

-- Location: LCCOMB_X22_Y13_N8
\inst|Div1|auto_generated|divider|divider|StageOut[64]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[64]~108_combout\ = (\inst|cur\(2) & !\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(2),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[64]~108_combout\);

-- Location: LCCOMB_X22_Y13_N14
\inst|Div1|auto_generated|divider|divider|StageOut[73]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[73]~109_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[73]~109_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst|cnt_sel\(1) & ((\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (!\inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \inst|cnt_sel\(1),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[0]~10_combout\,
	combout => \inst|Mux0~3_combout\);

-- Location: LCCOMB_X19_Y13_N10
\inst|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~4_combout\ = (\inst|Mux0~3_combout\) # ((\inst|Mux0~5_combout\) # ((\inst|cur\(0) & \inst|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(0),
	datab => \inst|Mux0~3_combout\,
	datac => \inst|Mux0~5_combout\,
	datad => \inst|Mux0~2_combout\,
	combout => \inst|Mux0~4_combout\);

-- Location: LCCOMB_X22_Y14_N28
\inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|cnt0\(3) & (((!\inst|cnt0\(1)) # (!\inst|cnt0\(2))) # (!\inst|cnt0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(0),
	datab => \inst|cnt0\(2),
	datac => \inst|cnt0\(3),
	datad => \inst|cnt0\(1),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|cnt0\(6) & (!\inst|cnt0\(5) & (!\inst|cnt0\(4) & \inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(6),
	datab => \inst|cnt0\(5),
	datac => \inst|cnt0\(4),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y14_N0
\inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (((\inst|LessThan0~1_combout\) # (!\inst|cnt0\(8))) # (!\inst|cnt0\(7))) # (!\inst|cnt0\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(9),
	datab => \inst|cnt0\(7),
	datac => \inst|cnt0\(8),
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y14_N4
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|cnt0\(12) & ((\inst|cnt0\(10)) # ((\inst|cnt0\(11)) # (!\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(10),
	datab => \inst|cnt0\(11),
	datac => \inst|cnt0\(12),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y17_N12
\inst|Mod0|auto_generated|divider|divider|StageOut[28]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[28]~110_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[22]~116_combout\) # 
-- ((!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~116_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~110_combout\);

-- Location: LCCOMB_X20_Y17_N10
\inst|Mod0|auto_generated|divider|divider|StageOut[38]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[38]~112_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[32]~118_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~118_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[38]~112_combout\);

-- Location: LCCOMB_X24_Y15_N30
\inst|Div1|auto_generated|divider|divider|StageOut[68]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[68]~112_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[59]~120_combout\) # 
-- ((!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[59]~120_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[68]~112_combout\);

-- Location: LCCOMB_X21_Y15_N12
\inst|Div0|auto_generated|divider|divider|StageOut[28]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[28]~110_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[22]~116_combout\) # 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|StageOut[22]~116_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[28]~110_combout\);

-- Location: LCCOMB_X19_Y13_N6
\inst|Mux1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~11_combout\ = (\inst|cnt_sel\(1) & (((\inst|Mux1~8_combout\)))) # (!\inst|cnt_sel\(1) & (\inst|cnt_sel\(0) & ((\inst|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datab => \inst|cnt_sel\(1),
	datac => \inst|Mux1~8_combout\,
	datad => \inst|Mux1~7_combout\,
	combout => \inst|Mux1~11_combout\);

-- Location: LCCOMB_X19_Y14_N6
\inst|Mod1|auto_generated|divider|divider|StageOut[48]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[48]~74_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[42]~81_combout\) # 
-- ((\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|StageOut[42]~81_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[48]~74_combout\);

-- Location: LCCOMB_X20_Y14_N4
\inst|Mod1|auto_generated|divider|divider|StageOut[47]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[47]~75_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[41]~79_combout\) # 
-- ((!\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|StageOut[41]~79_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[47]~75_combout\);

-- Location: LCCOMB_X19_Y13_N12
\inst|Mux1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~12_combout\ = (\inst|Mux1~10_combout\) # ((!\inst|cnt_sel\(1) & (!\inst|cnt_sel\(0) & \inst|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~10_combout\,
	datab => \inst|cnt_sel\(1),
	datac => \inst|cnt_sel\(0),
	datad => \inst|Mux1~6_combout\,
	combout => \inst|Mux1~12_combout\);

-- Location: LCCOMB_X19_Y12_N16
\inst|Div0|auto_generated|divider|divider|StageOut[48]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[48]~114_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- ((!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|StageOut[42]~120_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[48]~114_combout\);

-- Location: LCCOMB_X19_Y13_N0
\inst|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~5_combout\ = (!\inst|cnt_sel\(1) & (\inst|cnt_sel\(0) & !\inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(1),
	datac => \inst|cnt_sel\(0),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \inst|Mux0~5_combout\);

-- Location: LCCOMB_X23_Y13_N4
\inst|Div1|auto_generated|divider|divider|StageOut[78]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[78]~113_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[69]~111_combout\) # 
-- ((\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[69]~111_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[78]~113_combout\);

-- Location: LCCOMB_X24_Y13_N22
\inst|Div1|auto_generated|divider|divider|StageOut[77]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[77]~114_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[68]~112_combout\) # 
-- ((!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[68]~112_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[77]~114_combout\);

-- Location: LCCOMB_X24_Y13_N16
\inst|Div1|auto_generated|divider|divider|StageOut[76]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[76]~115_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[67]~121_combout\) # 
-- ((!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|StageOut[67]~121_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[76]~115_combout\);

-- Location: LCCOMB_X24_Y13_N18
\inst|Div1|auto_generated|divider|divider|StageOut[75]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[75]~116_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[66]~122_combout\) # 
-- ((!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[66]~122_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[75]~116_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[23]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[23]~115_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|cur\(9))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(9),
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[23]~115_combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[22]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[22]~116_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|cur\(8)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|cur\(8),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~116_combout\);

-- Location: LCCOMB_X20_Y16_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[47]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[47]~121_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\inst|cur\(3))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \inst|cur\(3),
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[47]~121_combout\);

-- Location: LCCOMB_X27_Y15_N18
\inst|Div1|auto_generated|divider|divider|StageOut[62]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[62]~117_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst|cur\(9)))) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|cur\(9),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[62]~117_combout\);

-- Location: LCCOMB_X26_Y15_N6
\inst|Div1|auto_generated|divider|divider|StageOut[61]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[61]~118_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst|cur\(8))) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst|cur\(8),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[61]~118_combout\);

-- Location: LCCOMB_X24_Y15_N26
\inst|Div1|auto_generated|divider|divider|StageOut[59]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[59]~120_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst|cur\(6))) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(6),
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[59]~120_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst|Div1|auto_generated|divider|divider|StageOut[66]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[66]~122_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst|cur\(4))) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \inst|cur\(4),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[66]~122_combout\);

-- Location: LCCOMB_X22_Y15_N26
\inst|Div0|auto_generated|divider|divider|StageOut[22]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[22]~116_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|cur\(8)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst|cur\(8),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[22]~116_combout\);

-- Location: LCCOMB_X21_Y12_N22
\inst|Div0|auto_generated|divider|divider|StageOut[42]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[42]~120_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst|cur\(4))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst|cur\(4),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[42]~120_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst|Mod1|auto_generated|divider|divider|StageOut[38]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[38]~76_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[38]~76_combout\);

-- Location: LCCOMB_X20_Y14_N30
\inst|Mod1|auto_generated|divider|divider|StageOut[41]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[41]~79_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[41]~79_combout\);

-- Location: LCCOMB_X19_Y12_N6
\inst|Div0|auto_generated|divider|divider|StageOut[47]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[47]~121_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst|cur\(3)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datab => \inst|cur\(3),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[47]~121_combout\);

-- Location: LCCOMB_X23_Y13_N10
\inst|Div1|auto_generated|divider|divider|StageOut[74]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[74]~123_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\inst|cur\(3)))) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	datab => \inst|cur\(3),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[74]~123_combout\);

-- Location: LCCOMB_X20_Y14_N10
\inst|Mod1|auto_generated|divider|divider|StageOut[42]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[42]~81_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[42]~81_combout\);

-- Location: IOOBUF_X5_Y0_N2
\en[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \en[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\en[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \en[4]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\en[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \en[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\en[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|en\(2),
	devoe => ww_devoe,
	o => \en[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\en[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|en\(1),
	devoe => ww_devoe,
	o => \en[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\en[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|en\(0),
	devoe => ww_devoe,
	o => \en[0]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\light[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|light\(3),
	devoe => ww_devoe,
	o => \light[3]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\light[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|light\(2),
	devoe => ww_devoe,
	o => \light[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\light[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|light\(1),
	devoe => ww_devoe,
	o => \light[1]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\light[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|light\(0),
	devoe => ww_devoe,
	o => \light[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\lit[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lit\(7),
	devoe => ww_devoe,
	o => \lit[7]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\lit[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lit\(6),
	devoe => ww_devoe,
	o => \lit[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\lit[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lit\(5),
	devoe => ww_devoe,
	o => \lit[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\lit[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lit\(4),
	devoe => ww_devoe,
	o => \lit[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\lit[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lit\(3),
	devoe => ww_devoe,
	o => \lit[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\lit[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lit\(2),
	devoe => ww_devoe,
	o => \lit[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\lit[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lit\(1),
	devoe => ww_devoe,
	o => \lit[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\lit[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lit\(0),
	devoe => ww_devoe,
	o => \lit[0]~output_o\);

-- Location: LCCOMB_X20_Y13_N4
\inst|cnt_sel[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt_sel[1]~0_combout\ = \inst|cnt_sel\(0) $ (\inst|cnt_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datad => \inst|cnt_sel\(1),
	combout => \inst|cnt_sel[1]~0_combout\);

-- Location: FF_X20_Y13_N3
\inst|cnt_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|flag~q\,
	asdata => \inst|cnt_sel[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt_sel\(1));

-- Location: LCCOMB_X20_Y13_N2
\inst|cnt_sel[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt_sel[0]~1_combout\ = !\inst|cnt_sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	combout => \inst|cnt_sel[0]~1_combout\);

-- Location: FF_X20_Y13_N7
\inst|cnt_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|flag~q\,
	asdata => \inst|cnt_sel[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt_sel\(0));

-- Location: LCCOMB_X20_Y15_N30
\inst|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst|cnt_sel\(0) & \inst|cnt_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt_sel\(0),
	datad => \inst|cnt_sel\(1),
	combout => \inst|Mux8~0_combout\);

-- Location: CLKCTRL_G12
\inst|Mux8~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Mux8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Mux8~0clkctrl_outclk\);

-- Location: LCCOMB_X17_Y12_N8
\inst|en[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|en\(2) = (GLOBAL(\inst|Mux8~0clkctrl_outclk\) & ((\inst|en\(2)))) # (!GLOBAL(\inst|Mux8~0clkctrl_outclk\) & (!\inst|cnt_sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(1),
	datac => \inst|en\(2),
	datad => \inst|Mux8~0clkctrl_outclk\,
	combout => \inst|en\(2));

-- Location: LCCOMB_X20_Y13_N20
\inst|en[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|en\(1) = (GLOBAL(\inst|Mux8~0clkctrl_outclk\) & (\inst|en\(1))) # (!GLOBAL(\inst|Mux8~0clkctrl_outclk\) & ((!\inst|cnt_sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|en\(1),
	datac => \inst|cnt_sel\(0),
	datad => \inst|Mux8~0clkctrl_outclk\,
	combout => \inst|en\(1));

-- Location: LCCOMB_X20_Y13_N16
\inst|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (!\inst|cnt_sel\(0) & !\inst|cnt_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datad => \inst|cnt_sel\(1),
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y13_N4
\inst|en[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|en\(0) = (GLOBAL(\inst|Mux8~0clkctrl_outclk\) & ((\inst|en\(0)))) # (!GLOBAL(\inst|Mux8~0clkctrl_outclk\) & (!\inst|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux0~2_combout\,
	datac => \inst|en\(0),
	datad => \inst|Mux8~0clkctrl_outclk\,
	combout => \inst|en\(0));

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y18_N15
\good[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_good(0),
	o => \good[0]~input_o\);

-- Location: LCCOMB_X26_Y18_N4
\inst|old[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|old[0]~feeder_combout\ = \good[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \good[0]~input_o\,
	combout => \inst|old[0]~feeder_combout\);

-- Location: IOIBUF_X41_Y3_N22
\money[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_money(2),
	o => \money[2]~input_o\);

-- Location: LCCOMB_X26_Y18_N20
\inst|old[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|old[6]~0_combout\ = !\money[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \money[2]~input_o\,
	combout => \inst|old[6]~0_combout\);

-- Location: FF_X26_Y18_N21
\inst|old[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|old[6]~0_combout\,
	ena => \inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|old\(6));

-- Location: LCCOMB_X26_Y18_N18
\inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = \money[2]~input_o\ $ (\inst|old\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \money[2]~input_o\,
	datad => \inst|old\(6),
	combout => \inst|Equal0~2_combout\);

-- Location: IOIBUF_X41_Y5_N8
\money[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_money(0),
	o => \money[0]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\money[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_money(1),
	o => \money[1]~input_o\);

-- Location: LCCOMB_X26_Y18_N26
\inst|old[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|old[5]~2_combout\ = !\money[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \money[1]~input_o\,
	combout => \inst|old[5]~2_combout\);

-- Location: FF_X26_Y18_N27
\inst|old[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|old[5]~2_combout\,
	ena => \inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|old\(5));

-- Location: LCCOMB_X26_Y18_N28
\inst|old[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|old[4]~1_combout\ = !\money[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \money[0]~input_o\,
	combout => \inst|old[4]~1_combout\);

-- Location: FF_X26_Y18_N29
\inst|old[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|old[4]~1_combout\,
	ena => \inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|old\(4));

-- Location: LCCOMB_X26_Y18_N8
\inst|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\money[1]~input_o\ & (!\inst|old\(5) & (\money[0]~input_o\ $ (\inst|old\(4))))) # (!\money[1]~input_o\ & (\inst|old\(5) & (\money[0]~input_o\ $ (\inst|old\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money[1]~input_o\,
	datab => \money[0]~input_o\,
	datac => \inst|old\(5),
	datad => \inst|old\(4),
	combout => \inst|Equal0~3_combout\);

-- Location: IOIBUF_X41_Y18_N1
\good[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_good(1),
	o => \good[1]~input_o\);

-- Location: LCCOMB_X26_Y18_N6
\inst|old[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|old[1]~feeder_combout\ = \good[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \good[1]~input_o\,
	combout => \inst|old[1]~feeder_combout\);

-- Location: FF_X26_Y18_N7
\inst|old[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|old[1]~feeder_combout\,
	ena => \inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|old\(1));

-- Location: LCCOMB_X26_Y18_N0
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\good[0]~input_o\ & (\inst|old\(0) & (\good[1]~input_o\ $ (!\inst|old\(1))))) # (!\good[0]~input_o\ & (!\inst|old\(0) & (\good[1]~input_o\ $ (!\inst|old\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \good[0]~input_o\,
	datab => \good[1]~input_o\,
	datac => \inst|old\(0),
	datad => \inst|old\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y18_N2
\inst|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~3_combout\)) # (!\inst|Equal0~2_combout\)) # (!\inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: FF_X26_Y18_N5
\inst|old[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|old[0]~feeder_combout\,
	ena => \inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|old\(0));

-- Location: LCCOMB_X22_Y18_N22
\inst|key_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|key_out[0]~1_combout\ = (!\inst|Equal0~4_combout\ & ((\inst|key_cnt~q\) # (!\inst|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_cnt~q\,
	datab => \inst|Equal0~4_combout\,
	datad => \inst|Equal1~6_combout\,
	combout => \inst|key_out[0]~1_combout\);

-- Location: FF_X22_Y18_N13
\inst|key_cnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|key_out[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key_cnt~q\);

-- Location: LCCOMB_X22_Y20_N14
\inst|count[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[1]~22_combout\ = (\inst|count\(1) & (!\inst|count[0]~21\)) # (!\inst|count\(1) & ((\inst|count[0]~21\) # (GND)))
-- \inst|count[1]~23\ = CARRY((!\inst|count[0]~21\) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(1),
	datad => VCC,
	cin => \inst|count[0]~21\,
	combout => \inst|count[1]~22_combout\,
	cout => \inst|count[1]~23\);

-- Location: LCCOMB_X22_Y20_N10
\inst|count[19]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[19]~54_combout\ = (\inst|Equal0~4_combout\) # (!\inst|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~6_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|count[19]~54_combout\);

-- Location: FF_X22_Y20_N15
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[1]~22_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X22_Y20_N16
\inst|count[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[2]~24_combout\ = (\inst|count\(2) & (\inst|count[1]~23\ $ (GND))) # (!\inst|count\(2) & (!\inst|count[1]~23\ & VCC))
-- \inst|count[2]~25\ = CARRY((\inst|count\(2) & !\inst|count[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datad => VCC,
	cin => \inst|count[1]~23\,
	combout => \inst|count[2]~24_combout\,
	cout => \inst|count[2]~25\);

-- Location: FF_X22_Y20_N17
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[2]~24_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X22_Y20_N18
\inst|count[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[3]~26_combout\ = (\inst|count\(3) & (!\inst|count[2]~25\)) # (!\inst|count\(3) & ((\inst|count[2]~25\) # (GND)))
-- \inst|count[3]~27\ = CARRY((!\inst|count[2]~25\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(3),
	datad => VCC,
	cin => \inst|count[2]~25\,
	combout => \inst|count[3]~26_combout\,
	cout => \inst|count[3]~27\);

-- Location: FF_X22_Y20_N19
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[3]~26_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X22_Y20_N20
\inst|count[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[4]~28_combout\ = (\inst|count\(4) & (\inst|count[3]~27\ $ (GND))) # (!\inst|count\(4) & (!\inst|count[3]~27\ & VCC))
-- \inst|count[4]~29\ = CARRY((\inst|count\(4) & !\inst|count[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(4),
	datad => VCC,
	cin => \inst|count[3]~27\,
	combout => \inst|count[4]~28_combout\,
	cout => \inst|count[4]~29\);

-- Location: FF_X22_Y20_N21
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[4]~28_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X22_Y20_N22
\inst|count[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[5]~30_combout\ = (\inst|count\(5) & (!\inst|count[4]~29\)) # (!\inst|count\(5) & ((\inst|count[4]~29\) # (GND)))
-- \inst|count[5]~31\ = CARRY((!\inst|count[4]~29\) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datad => VCC,
	cin => \inst|count[4]~29\,
	combout => \inst|count[5]~30_combout\,
	cout => \inst|count[5]~31\);

-- Location: LCCOMB_X22_Y20_N24
\inst|count[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[6]~32_combout\ = (\inst|count\(6) & (\inst|count[5]~31\ $ (GND))) # (!\inst|count\(6) & (!\inst|count[5]~31\ & VCC))
-- \inst|count[6]~33\ = CARRY((\inst|count\(6) & !\inst|count[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(6),
	datad => VCC,
	cin => \inst|count[5]~31\,
	combout => \inst|count[6]~32_combout\,
	cout => \inst|count[6]~33\);

-- Location: FF_X22_Y20_N25
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[6]~32_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LCCOMB_X22_Y20_N8
\inst|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|count\(0)) # ((\inst|count\(3)) # ((\inst|count\(1)) # (\inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(3),
	datac => \inst|count\(1),
	datad => \inst|count\(2),
	combout => \inst|Equal1~1_combout\);

-- Location: FF_X22_Y20_N23
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[5]~30_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LCCOMB_X22_Y20_N2
\inst|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (\inst|count\(5)) # (\inst|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(5),
	datad => \inst|count\(4),
	combout => \inst|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y20_N0
\inst|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (\inst|count\(7)) # ((\inst|count\(6)) # ((\inst|Equal1~1_combout\) # (\inst|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|count\(6),
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Equal1~2_combout\,
	combout => \inst|Equal1~3_combout\);

-- Location: LCCOMB_X22_Y20_N28
\inst|count[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[8]~36_combout\ = (\inst|count\(8) & (\inst|count[7]~35\ $ (GND))) # (!\inst|count\(8) & (!\inst|count[7]~35\ & VCC))
-- \inst|count[8]~37\ = CARRY((\inst|count\(8) & !\inst|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(8),
	datad => VCC,
	cin => \inst|count[7]~35\,
	combout => \inst|count[8]~36_combout\,
	cout => \inst|count[8]~37\);

-- Location: FF_X22_Y20_N29
\inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[8]~36_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(8));

-- Location: LCCOMB_X22_Y20_N30
\inst|count[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[9]~38_combout\ = (\inst|count\(9) & (!\inst|count[8]~37\)) # (!\inst|count\(9) & ((\inst|count[8]~37\) # (GND)))
-- \inst|count[9]~39\ = CARRY((!\inst|count[8]~37\) # (!\inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(9),
	datad => VCC,
	cin => \inst|count[8]~37\,
	combout => \inst|count[9]~38_combout\,
	cout => \inst|count[9]~39\);

-- Location: LCCOMB_X22_Y19_N0
\inst|count[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[10]~40_combout\ = (\inst|count\(10) & (\inst|count[9]~39\ $ (GND))) # (!\inst|count\(10) & (!\inst|count[9]~39\ & VCC))
-- \inst|count[10]~41\ = CARRY((\inst|count\(10) & !\inst|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(10),
	datad => VCC,
	cin => \inst|count[9]~39\,
	combout => \inst|count[10]~40_combout\,
	cout => \inst|count[10]~41\);

-- Location: FF_X22_Y19_N1
\inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[10]~40_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(10));

-- Location: LCCOMB_X22_Y19_N2
\inst|count[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[11]~42_combout\ = (\inst|count\(11) & (!\inst|count[10]~41\)) # (!\inst|count\(11) & ((\inst|count[10]~41\) # (GND)))
-- \inst|count[11]~43\ = CARRY((!\inst|count[10]~41\) # (!\inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(11),
	datad => VCC,
	cin => \inst|count[10]~41\,
	combout => \inst|count[11]~42_combout\,
	cout => \inst|count[11]~43\);

-- Location: FF_X22_Y19_N3
\inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[11]~42_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(11));

-- Location: LCCOMB_X22_Y19_N4
\inst|count[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[12]~44_combout\ = (\inst|count\(12) & (\inst|count[11]~43\ $ (GND))) # (!\inst|count\(12) & (!\inst|count[11]~43\ & VCC))
-- \inst|count[12]~45\ = CARRY((\inst|count\(12) & !\inst|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(12),
	datad => VCC,
	cin => \inst|count[11]~43\,
	combout => \inst|count[12]~44_combout\,
	cout => \inst|count[12]~45\);

-- Location: FF_X22_Y19_N5
\inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[12]~44_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(12));

-- Location: LCCOMB_X22_Y19_N8
\inst|count[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[14]~48_combout\ = (\inst|count\(14) & (\inst|count[13]~47\ $ (GND))) # (!\inst|count\(14) & (!\inst|count[13]~47\ & VCC))
-- \inst|count[14]~49\ = CARRY((\inst|count\(14) & !\inst|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(14),
	datad => VCC,
	cin => \inst|count[13]~47\,
	combout => \inst|count[14]~48_combout\,
	cout => \inst|count[14]~49\);

-- Location: FF_X22_Y19_N9
\inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[14]~48_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(14));

-- Location: LCCOMB_X22_Y19_N14
\inst|count[17]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[17]~55_combout\ = (\inst|count\(17) & (!\inst|count[16]~53\)) # (!\inst|count\(17) & ((\inst|count[16]~53\) # (GND)))
-- \inst|count[17]~56\ = CARRY((!\inst|count[16]~53\) # (!\inst|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(17),
	datad => VCC,
	cin => \inst|count[16]~53\,
	combout => \inst|count[17]~55_combout\,
	cout => \inst|count[17]~56\);

-- Location: FF_X22_Y19_N15
\inst|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[17]~55_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(17));

-- Location: LCCOMB_X22_Y19_N16
\inst|count[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[18]~57_combout\ = (\inst|count\(18) & (\inst|count[17]~56\ $ (GND))) # (!\inst|count\(18) & (!\inst|count[17]~56\ & VCC))
-- \inst|count[18]~58\ = CARRY((\inst|count\(18) & !\inst|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(18),
	datad => VCC,
	cin => \inst|count[17]~56\,
	combout => \inst|count[18]~57_combout\,
	cout => \inst|count[18]~58\);

-- Location: FF_X22_Y19_N17
\inst|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[18]~57_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(18));

-- Location: LCCOMB_X22_Y19_N18
\inst|count[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count[19]~59_combout\ = \inst|count[18]~58\ $ (\inst|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|count\(19),
	cin => \inst|count[18]~58\,
	combout => \inst|count[19]~59_combout\);

-- Location: FF_X22_Y19_N19
\inst|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[19]~59_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(19));

-- Location: LCCOMB_X22_Y19_N28
\inst|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|count\(16)) # (((\inst|count\(17)) # (!\inst|count\(18))) # (!\inst|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(16),
	datab => \inst|count\(19),
	datac => \inst|count\(17),
	datad => \inst|count\(18),
	combout => \inst|Equal1~0_combout\);

-- Location: FF_X22_Y20_N31
\inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[9]~38_combout\,
	sclr => \inst|count[19]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(9));

-- Location: LCCOMB_X22_Y20_N6
\inst|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~4_combout\ = (\inst|count\(11)) # (((\inst|count\(9)) # (!\inst|count\(8))) # (!\inst|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(11),
	datab => \inst|count\(10),
	datac => \inst|count\(9),
	datad => \inst|count\(8),
	combout => \inst|Equal1~4_combout\);

-- Location: LCCOMB_X22_Y20_N4
\inst|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~6_combout\ = (\inst|Equal1~5_combout\) # ((\inst|Equal1~3_combout\) # ((\inst|Equal1~0_combout\) # (\inst|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~5_combout\,
	datab => \inst|Equal1~3_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Equal1~4_combout\,
	combout => \inst|Equal1~6_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst|key_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|key_out~0_combout\ = (\inst|old\(0) & !\inst|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|old\(0),
	datad => \inst|Equal1~6_combout\,
	combout => \inst|key_out~0_combout\);

-- Location: FF_X22_Y18_N25
\inst|key_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|key_out~0_combout\,
	ena => \inst|key_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key_out\(0));

-- Location: IOIBUF_X41_Y19_N8
\good[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_good(3),
	o => \good[3]~input_o\);

-- Location: FF_X26_Y18_N11
\inst|old[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \good[3]~input_o\,
	sload => VCC,
	ena => \inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|old\(3));

-- Location: LCCOMB_X23_Y18_N12
\inst|key_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|key_out~3_combout\ = (\inst|old\(3) & !\inst|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|old\(3),
	datac => \inst|Equal1~6_combout\,
	combout => \inst|key_out~3_combout\);

-- Location: FF_X22_Y18_N27
\inst|key_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|key_out~3_combout\,
	sload => VCC,
	ena => \inst|key_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key_out\(3));

-- Location: IOIBUF_X41_Y19_N1
\good[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_good(2),
	o => \good[2]~input_o\);

-- Location: FF_X26_Y18_N13
\inst|old[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \good[2]~input_o\,
	sload => VCC,
	ena => \inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|old\(2));

-- Location: LCCOMB_X22_Y18_N16
\inst|key_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|key_out~2_combout\ = (\inst|old\(2) & !\inst|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|old\(2),
	datad => \inst|Equal1~6_combout\,
	combout => \inst|key_out~2_combout\);

-- Location: FF_X22_Y18_N17
\inst|key_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|key_out~2_combout\,
	ena => \inst|key_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key_out\(2));

-- Location: LCCOMB_X22_Y18_N28
\inst|nxtstate.001~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.001~1_combout\ = (!\inst|state.000~q\ & (\inst|key_out\(0) & (!\inst|key_out\(3) & !\inst|key_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.000~q\,
	datab => \inst|key_out\(0),
	datac => \inst|key_out\(3),
	datad => \inst|key_out\(2),
	combout => \inst|nxtstate.001~1_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst|nxtstate.001~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.001~2_combout\ = (\inst|nxtstate.001~0_combout\ & \inst|nxtstate.001~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.001~0_combout\,
	datad => \inst|nxtstate.001~1_combout\,
	combout => \inst|nxtstate.001~2_combout\);

-- Location: LCCOMB_X23_Y18_N14
\inst|key_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|key_out~7_combout\ = (\inst|old\(1) & !\inst|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|old\(1),
	datac => \inst|Equal1~6_combout\,
	combout => \inst|key_out~7_combout\);

-- Location: FF_X23_Y18_N15
\inst|key_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|key_out~7_combout\,
	ena => \inst|key_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key_out\(1));

-- Location: LCCOMB_X23_Y18_N20
\inst|key_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|key_out~6_combout\ = (!\inst|Equal1~6_combout\ & \inst|old\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~6_combout\,
	datac => \inst|old\(6),
	combout => \inst|key_out~6_combout\);

-- Location: FF_X23_Y18_N21
\inst|key_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|key_out~6_combout\,
	ena => \inst|key_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key_out\(6));

-- Location: LCCOMB_X22_Y18_N0
\inst|key_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|key_out~5_combout\ = (\inst|old\(5) & !\inst|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|old\(5),
	datad => \inst|Equal1~6_combout\,
	combout => \inst|key_out~5_combout\);

-- Location: FF_X22_Y18_N1
\inst|key_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|key_out~5_combout\,
	ena => \inst|key_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|key_out\(5));

-- Location: LCCOMB_X22_Y18_N8
\inst|nxtstate.110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.110~0_combout\ = (!\inst|state.000~q\ & (!\inst|key_out\(2) & (!\inst|key_out\(3) & !\inst|key_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.000~q\,
	datab => \inst|key_out\(2),
	datac => \inst|key_out\(3),
	datad => \inst|key_out\(0),
	combout => \inst|nxtstate.110~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst|nxtstate.110~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.110~1_combout\ = (!\inst|key_out\(4) & (!\inst|key_out\(5) & \inst|nxtstate.110~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(4),
	datab => \inst|key_out\(5),
	datad => \inst|nxtstate.110~0_combout\,
	combout => \inst|nxtstate.110~1_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst|nxtstate.010~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.010~0_combout\ = (\inst|key_out\(1) & (!\inst|key_out\(6) & \inst|nxtstate.110~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|key_out\(1),
	datac => \inst|key_out\(6),
	datad => \inst|nxtstate.110~1_combout\,
	combout => \inst|nxtstate.010~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst|nxtstate.101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.101~0_combout\ = (!\inst|key_out\(1) & (!\inst|key_out\(6) & \inst|nxtstate.110~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|key_out\(1),
	datac => \inst|key_out\(6),
	datad => \inst|nxtstate.110~0_combout\,
	combout => \inst|nxtstate.101~0_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst|nxtstate.100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.100~0_combout\ = (\inst|key_out\(4) & (!\inst|key_out\(5) & \inst|nxtstate.101~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(4),
	datab => \inst|key_out\(5),
	datad => \inst|nxtstate.101~0_combout\,
	combout => \inst|nxtstate.100~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\inst|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|cur\(3) & (!\inst|Add4~5\)) # (!\inst|cur\(3) & ((\inst|Add4~5\) # (GND)))
-- \inst|Add4~7\ = CARRY((!\inst|Add4~5\) # (!\inst|cur\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(3),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X21_Y16_N8
\inst|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = (\inst|cur\(4) & (\inst|Add4~7\ $ (GND))) # (!\inst|cur\(4) & (!\inst|Add4~7\ & VCC))
-- \inst|Add4~9\ = CARRY((\inst|cur\(4) & !\inst|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: LCCOMB_X26_Y16_N2
\inst|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector17~0_combout\ = (\inst|Add3~8_combout\ & ((\inst|nxtstate.010~0_combout\) # ((\inst|nxtstate.100~0_combout\ & \inst|Add4~8_combout\)))) # (!\inst|Add3~8_combout\ & (((\inst|nxtstate.100~0_combout\ & \inst|Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~8_combout\,
	datab => \inst|nxtstate.010~0_combout\,
	datac => \inst|nxtstate.100~0_combout\,
	datad => \inst|Add4~8_combout\,
	combout => \inst|Selector17~0_combout\);

-- Location: LCCOMB_X24_Y16_N4
\inst|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~0_combout\ = \inst|cur\(1) $ (VCC)
-- \inst|Add5~1\ = CARRY(\inst|cur\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(1),
	datad => VCC,
	combout => \inst|Add5~0_combout\,
	cout => \inst|Add5~1\);

-- Location: LCCOMB_X24_Y16_N6
\inst|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~2_combout\ = (\inst|cur\(2) & (!\inst|Add5~1\)) # (!\inst|cur\(2) & ((\inst|Add5~1\) # (GND)))
-- \inst|Add5~3\ = CARRY((!\inst|Add5~1\) # (!\inst|cur\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(2),
	datad => VCC,
	cin => \inst|Add5~1\,
	combout => \inst|Add5~2_combout\,
	cout => \inst|Add5~3\);

-- Location: LCCOMB_X24_Y16_N8
\inst|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~4_combout\ = (\inst|cur\(3) & ((GND) # (!\inst|Add5~3\))) # (!\inst|cur\(3) & (\inst|Add5~3\ $ (GND)))
-- \inst|Add5~5\ = CARRY((\inst|cur\(3)) # (!\inst|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(3),
	datad => VCC,
	cin => \inst|Add5~3\,
	combout => \inst|Add5~4_combout\,
	cout => \inst|Add5~5\);

-- Location: LCCOMB_X24_Y16_N10
\inst|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~6_combout\ = (\inst|cur\(4) & (!\inst|Add5~5\)) # (!\inst|cur\(4) & ((\inst|Add5~5\) # (GND)))
-- \inst|Add5~7\ = CARRY((!\inst|Add5~5\) # (!\inst|cur\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datad => VCC,
	cin => \inst|Add5~5\,
	combout => \inst|Add5~6_combout\,
	cout => \inst|Add5~7\);

-- Location: LCCOMB_X22_Y18_N2
\inst|nxtstate.101~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.101~1_combout\ = (!\inst|key_out\(4) & (\inst|key_out\(5) & \inst|nxtstate.101~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(4),
	datab => \inst|key_out\(5),
	datad => \inst|nxtstate.101~0_combout\,
	combout => \inst|nxtstate.101~1_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~6_combout\ = (\inst|cur\(4) & (\inst|Add6~5\ & VCC)) # (!\inst|cur\(4) & (!\inst|Add6~5\))
-- \inst|Add6~7\ = CARRY((!\inst|cur\(4) & !\inst|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datad => VCC,
	cin => \inst|Add6~5\,
	combout => \inst|Add6~6_combout\,
	cout => \inst|Add6~7\);

-- Location: LCCOMB_X24_Y16_N2
\inst|Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector17~1_combout\ = (\inst|nxtstate.110~2_combout\ & ((\inst|Add6~6_combout\) # ((\inst|Add5~6_combout\ & \inst|nxtstate.101~1_combout\)))) # (!\inst|nxtstate.110~2_combout\ & (\inst|Add5~6_combout\ & (\inst|nxtstate.101~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.110~2_combout\,
	datab => \inst|Add5~6_combout\,
	datac => \inst|nxtstate.101~1_combout\,
	datad => \inst|Add6~6_combout\,
	combout => \inst|Selector17~1_combout\);

-- Location: LCCOMB_X23_Y16_N6
\inst|Selector17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector17~2_combout\ = (\inst|Selector17~0_combout\) # ((\inst|Selector17~1_combout\) # ((\inst|Add2~8_combout\ & \inst|nxtstate.001~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~8_combout\,
	datab => \inst|Selector17~0_combout\,
	datac => \inst|nxtstate.001~2_combout\,
	datad => \inst|Selector17~1_combout\,
	combout => \inst|Selector17~2_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|cur\(7) & (\inst|Add2~13\ & VCC)) # (!\inst|cur\(7) & (!\inst|Add2~13\))
-- \inst|Add2~15\ = CARRY((!\inst|cur\(7) & !\inst|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(7),
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: LCCOMB_X23_Y18_N16
\inst|nxtstate.110~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.110~2_combout\ = (\inst|key_out\(6) & (!\inst|key_out\(1) & \inst|nxtstate.110~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|key_out\(6),
	datac => \inst|key_out\(1),
	datad => \inst|nxtstate.110~1_combout\,
	combout => \inst|nxtstate.110~2_combout\);

-- Location: LCCOMB_X24_Y16_N12
\inst|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~8_combout\ = (\inst|cur\(5) & (\inst|Add5~7\ $ (GND))) # (!\inst|cur\(5) & (!\inst|Add5~7\ & VCC))
-- \inst|Add5~9\ = CARRY((\inst|cur\(5) & !\inst|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(5),
	datad => VCC,
	cin => \inst|Add5~7\,
	combout => \inst|Add5~8_combout\,
	cout => \inst|Add5~9\);

-- Location: LCCOMB_X24_Y16_N14
\inst|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~10_combout\ = (\inst|cur\(6) & (!\inst|Add5~9\)) # (!\inst|cur\(6) & ((\inst|Add5~9\) # (GND)))
-- \inst|Add5~11\ = CARRY((!\inst|Add5~9\) # (!\inst|cur\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(6),
	datad => VCC,
	cin => \inst|Add5~9\,
	combout => \inst|Add5~10_combout\,
	cout => \inst|Add5~11\);

-- Location: LCCOMB_X24_Y16_N16
\inst|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~12_combout\ = (\inst|cur\(7) & (\inst|Add5~11\ $ (GND))) # (!\inst|cur\(7) & (!\inst|Add5~11\ & VCC))
-- \inst|Add5~13\ = CARRY((\inst|cur\(7) & !\inst|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(7),
	datad => VCC,
	cin => \inst|Add5~11\,
	combout => \inst|Add5~12_combout\,
	cout => \inst|Add5~13\);

-- Location: LCCOMB_X24_Y18_N16
\inst|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~10_combout\ = (\inst|cur\(6) & (!\inst|Add6~9\)) # (!\inst|cur\(6) & ((\inst|Add6~9\) # (GND)))
-- \inst|Add6~11\ = CARRY((!\inst|Add6~9\) # (!\inst|cur\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(6),
	datad => VCC,
	cin => \inst|Add6~9\,
	combout => \inst|Add6~10_combout\,
	cout => \inst|Add6~11\);

-- Location: LCCOMB_X24_Y18_N18
\inst|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~12_combout\ = (\inst|cur\(7) & (\inst|Add6~11\ $ (GND))) # (!\inst|cur\(7) & (!\inst|Add6~11\ & VCC))
-- \inst|Add6~13\ = CARRY((\inst|cur\(7) & !\inst|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(7),
	datad => VCC,
	cin => \inst|Add6~11\,
	combout => \inst|Add6~12_combout\,
	cout => \inst|Add6~13\);

-- Location: LCCOMB_X24_Y17_N22
\inst|Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector14~1_combout\ = (\inst|nxtstate.101~1_combout\ & ((\inst|Add5~12_combout\) # ((\inst|nxtstate.110~2_combout\ & \inst|Add6~12_combout\)))) # (!\inst|nxtstate.101~1_combout\ & (\inst|nxtstate.110~2_combout\ & ((\inst|Add6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.101~1_combout\,
	datab => \inst|nxtstate.110~2_combout\,
	datac => \inst|Add5~12_combout\,
	datad => \inst|Add6~12_combout\,
	combout => \inst|Selector14~1_combout\);

-- Location: LCCOMB_X21_Y16_N10
\inst|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|cur\(5) & (!\inst|Add4~9\)) # (!\inst|cur\(5) & ((\inst|Add4~9\) # (GND)))
-- \inst|Add4~11\ = CARRY((!\inst|Add4~9\) # (!\inst|cur\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(5),
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: LCCOMB_X21_Y16_N14
\inst|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = (\inst|cur\(7) & (!\inst|Add4~13\)) # (!\inst|cur\(7) & ((\inst|Add4~13\) # (GND)))
-- \inst|Add4~15\ = CARRY((!\inst|Add4~13\) # (!\inst|cur\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(7),
	datad => VCC,
	cin => \inst|Add4~13\,
	combout => \inst|Add4~14_combout\,
	cout => \inst|Add4~15\);

-- Location: LCCOMB_X24_Y14_N12
\inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|cur\(1) & (!\inst|Add2~1\)) # (!\inst|cur\(1) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|cur\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X21_Y16_N0
\inst|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = \inst|cur\(0) $ (VCC)
-- \inst|Add4~1\ = CARRY(\inst|cur\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(0),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X21_Y16_N2
\inst|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|cur\(1) & (!\inst|Add4~1\)) # (!\inst|cur\(1) & ((\inst|Add4~1\) # (GND)))
-- \inst|Add4~3\ = CARRY((!\inst|Add4~1\) # (!\inst|cur\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(1),
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X26_Y16_N6
\inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|cur\(1) & (\inst|Add3~1\ & VCC)) # (!\inst|cur\(1) & (!\inst|Add3~1\))
-- \inst|Add3~3\ = CARRY((!\inst|cur\(1) & !\inst|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(1),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X21_Y16_N26
\inst|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector20~0_combout\ = (\inst|nxtstate.010~0_combout\ & ((\inst|Add3~2_combout\) # ((\inst|Add4~2_combout\ & \inst|nxtstate.100~0_combout\)))) # (!\inst|nxtstate.010~0_combout\ & (\inst|Add4~2_combout\ & ((\inst|nxtstate.100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.010~0_combout\,
	datab => \inst|Add4~2_combout\,
	datac => \inst|Add3~2_combout\,
	datad => \inst|nxtstate.100~0_combout\,
	combout => \inst|Selector20~0_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = \inst|cur\(1) $ (VCC)
-- \inst|Add6~1\ = CARRY(\inst|cur\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(1),
	datad => VCC,
	combout => \inst|Add6~0_combout\,
	cout => \inst|Add6~1\);

-- Location: LCCOMB_X24_Y16_N28
\inst|Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector20~1_combout\ = (\inst|nxtstate.101~1_combout\ & ((\inst|Add5~0_combout\) # ((\inst|nxtstate.110~2_combout\ & \inst|Add6~0_combout\)))) # (!\inst|nxtstate.101~1_combout\ & (((\inst|nxtstate.110~2_combout\ & \inst|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.101~1_combout\,
	datab => \inst|Add5~0_combout\,
	datac => \inst|nxtstate.110~2_combout\,
	datad => \inst|Add6~0_combout\,
	combout => \inst|Selector20~1_combout\);

-- Location: LCCOMB_X23_Y16_N2
\inst|Selector20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector20~2_combout\ = (\inst|Selector20~0_combout\) # ((\inst|Selector20~1_combout\) # ((\inst|nxtstate.001~2_combout\ & \inst|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.001~2_combout\,
	datab => \inst|Add2~2_combout\,
	datac => \inst|Selector20~0_combout\,
	datad => \inst|Selector20~1_combout\,
	combout => \inst|Selector20~2_combout\);

-- Location: FF_X23_Y16_N3
\inst|cur[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector20~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(1));

-- Location: LCCOMB_X26_Y16_N8
\inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|cur\(2) & ((GND) # (!\inst|Add3~3\))) # (!\inst|cur\(2) & (\inst|Add3~3\ $ (GND)))
-- \inst|Add3~5\ = CARRY((\inst|cur\(2)) # (!\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(2),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X26_Y16_N14
\inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|cur\(5) & (\inst|Add3~9\ & VCC)) # (!\inst|cur\(5) & (!\inst|Add3~9\))
-- \inst|Add3~11\ = CARRY((!\inst|cur\(5) & !\inst|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(5),
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: LCCOMB_X26_Y16_N16
\inst|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = (\inst|cur\(6) & ((GND) # (!\inst|Add3~11\))) # (!\inst|cur\(6) & (\inst|Add3~11\ $ (GND)))
-- \inst|Add3~13\ = CARRY((\inst|cur\(6)) # (!\inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(6),
	datad => VCC,
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\,
	cout => \inst|Add3~13\);

-- Location: LCCOMB_X26_Y16_N18
\inst|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = (\inst|cur\(7) & (\inst|Add3~13\ & VCC)) # (!\inst|cur\(7) & (!\inst|Add3~13\))
-- \inst|Add3~15\ = CARRY((!\inst|cur\(7) & !\inst|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(7),
	datad => VCC,
	cin => \inst|Add3~13\,
	combout => \inst|Add3~14_combout\,
	cout => \inst|Add3~15\);

-- Location: LCCOMB_X21_Y16_N30
\inst|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector14~0_combout\ = (\inst|nxtstate.010~0_combout\ & ((\inst|Add3~14_combout\) # ((\inst|nxtstate.100~0_combout\ & \inst|Add4~14_combout\)))) # (!\inst|nxtstate.010~0_combout\ & (\inst|nxtstate.100~0_combout\ & (\inst|Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.010~0_combout\,
	datab => \inst|nxtstate.100~0_combout\,
	datac => \inst|Add4~14_combout\,
	datad => \inst|Add3~14_combout\,
	combout => \inst|Selector14~0_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst|Selector14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector14~2_combout\ = (\inst|Selector14~1_combout\) # ((\inst|Selector14~0_combout\) # ((\inst|nxtstate.001~2_combout\ & \inst|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.001~2_combout\,
	datab => \inst|Add2~14_combout\,
	datac => \inst|Selector14~1_combout\,
	datad => \inst|Selector14~0_combout\,
	combout => \inst|Selector14~2_combout\);

-- Location: FF_X24_Y17_N25
\inst|cur[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector14~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(7));

-- Location: LCCOMB_X22_Y16_N24
\inst|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_combout\ = (\inst|cur\(8) & (\inst|cur\(6) & (\inst|cur\(9) & \inst|cur\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(8),
	datab => \inst|cur\(6),
	datac => \inst|cur\(9),
	datad => \inst|cur\(7),
	combout => \inst|LessThan3~1_combout\);

-- Location: LCCOMB_X23_Y16_N4
\inst|Selector22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector22~3_combout\ = (\inst|cur\(2) & (\inst|cur\(3) & \inst|cur\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(2),
	datac => \inst|cur\(3),
	datad => \inst|cur\(1),
	combout => \inst|Selector22~3_combout\);

-- Location: LCCOMB_X22_Y16_N18
\inst|Selector22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector22~4_combout\ = (\inst|LessThan3~1_combout\ & ((\inst|cur\(5)) # ((\inst|cur\(4) & \inst|Selector22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(5),
	datab => \inst|cur\(4),
	datac => \inst|LessThan3~1_combout\,
	datad => \inst|Selector22~3_combout\,
	combout => \inst|Selector22~4_combout\);

-- Location: LCCOMB_X22_Y16_N16
\inst|Selector22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector22~5_combout\ = (\inst|nxtstate.101~1_combout\ & ((\inst|Selector22~4_combout\) # (\inst|cur\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector22~4_combout\,
	datac => \inst|cur\(10),
	datad => \inst|nxtstate.101~1_combout\,
	combout => \inst|Selector22~5_combout\);

-- Location: LCCOMB_X22_Y18_N14
\inst|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~1_combout\ = (!\inst|key_out\(6) & (\inst|key_out\(4) $ (!\inst|key_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(4),
	datac => \inst|key_out\(6),
	datad => \inst|key_out\(5),
	combout => \inst|WideOr0~1_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst|nxtstate.000~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.000~1_combout\ = (\inst|key_out\(0)) # ((\inst|key_out\(1)) # ((\inst|key_out\(3)) # (\inst|key_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(0),
	datab => \inst|key_out\(1),
	datac => \inst|key_out\(3),
	datad => \inst|key_out\(2),
	combout => \inst|nxtstate.000~1_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\inst|key_out\(2) & (!\inst|key_out\(1) & (!\inst|key_out\(3) & !\inst|key_out\(0)))) # (!\inst|key_out\(2) & ((\inst|key_out\(1) & (!\inst|key_out\(3) & !\inst|key_out\(0))) # (!\inst|key_out\(1) & (\inst|key_out\(3) $ 
-- (\inst|key_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(2),
	datab => \inst|key_out\(1),
	datac => \inst|key_out\(3),
	datad => \inst|key_out\(0),
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst|nxtstate.000~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.000~0_combout\ = (\inst|key_out\(4) & ((\inst|key_out\(6)) # ((\inst|key_out\(5))))) # (!\inst|key_out\(4) & ((\inst|key_out\(6) & (\inst|key_out\(5))) # (!\inst|key_out\(6) & (!\inst|key_out\(5) & !\inst|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(4),
	datab => \inst|key_out\(6),
	datac => \inst|key_out\(5),
	datad => \inst|WideOr0~0_combout\,
	combout => \inst|nxtstate.000~0_combout\);

-- Location: LCCOMB_X22_Y18_N4
\inst|nxtstate.000~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.000~2_combout\ = (!\inst|state.000~q\ & (!\inst|nxtstate.000~0_combout\ & ((\inst|WideOr0~1_combout\) # (!\inst|nxtstate.000~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.000~q\,
	datab => \inst|WideOr0~1_combout\,
	datac => \inst|nxtstate.000~1_combout\,
	datad => \inst|nxtstate.000~0_combout\,
	combout => \inst|nxtstate.000~2_combout\);

-- Location: LCCOMB_X22_Y18_N6
\inst|cur[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cur[1]~0_combout\ = (\inst|nxtstate.000~2_combout\ & ((!\inst|LessThan3~4_combout\) # (!\inst|nxtstate.100~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.100~0_combout\,
	datac => \inst|nxtstate.000~2_combout\,
	datad => \inst|LessThan3~4_combout\,
	combout => \inst|cur[1]~0_combout\);

-- Location: LCCOMB_X23_Y16_N30
\inst|cur[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cur[1]~2_combout\ = (\inst|cur[1]~1_combout\ & (!\inst|Selector22~2_combout\ & (!\inst|Selector22~5_combout\ & \inst|cur[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur[1]~1_combout\,
	datab => \inst|Selector22~2_combout\,
	datac => \inst|Selector22~5_combout\,
	datad => \inst|cur[1]~0_combout\,
	combout => \inst|cur[1]~2_combout\);

-- Location: FF_X23_Y16_N7
\inst|cur[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector17~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(4));

-- Location: LCCOMB_X22_Y16_N28
\inst|LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~2_combout\ = (\inst|cur\(0) & \inst|cur\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(0),
	datad => \inst|cur\(1),
	combout => \inst|LessThan3~2_combout\);

-- Location: LCCOMB_X22_Y16_N22
\inst|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_combout\ = (\inst|cur\(3)) # ((\inst|cur\(2)) # ((\inst|cur\(4)) # (\inst|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(3),
	datab => \inst|cur\(2),
	datac => \inst|cur\(4),
	datad => \inst|LessThan3~2_combout\,
	combout => \inst|LessThan3~3_combout\);

-- Location: LCCOMB_X22_Y16_N0
\inst|LessThan3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~4_combout\ = (\inst|cur\(10)) # ((\inst|cur\(5) & (\inst|LessThan3~3_combout\ & \inst|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(5),
	datab => \inst|cur\(10),
	datac => \inst|LessThan3~3_combout\,
	datad => \inst|LessThan3~1_combout\,
	combout => \inst|LessThan3~4_combout\);

-- Location: LCCOMB_X22_Y16_N4
\inst|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector21~0_combout\ = (!\inst|LessThan3~4_combout\ & (\inst|Add4~0_combout\ & \inst|nxtstate.100~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan3~4_combout\,
	datac => \inst|Add4~0_combout\,
	datad => \inst|nxtstate.100~0_combout\,
	combout => \inst|Selector21~0_combout\);

-- Location: LCCOMB_X21_Y16_N16
\inst|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~16_combout\ = (\inst|cur\(8) & (\inst|Add4~15\ $ (GND))) # (!\inst|cur\(8) & (!\inst|Add4~15\ & VCC))
-- \inst|Add4~17\ = CARRY((\inst|cur\(8) & !\inst|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(8),
	datad => VCC,
	cin => \inst|Add4~15\,
	combout => \inst|Add4~16_combout\,
	cout => \inst|Add4~17\);

-- Location: LCCOMB_X22_Y16_N30
\inst|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector13~0_combout\ = (\inst|Add3~16_combout\ & ((\inst|nxtstate.010~0_combout\) # ((\inst|Add4~16_combout\ & \inst|nxtstate.100~0_combout\)))) # (!\inst|Add3~16_combout\ & (((\inst|Add4~16_combout\ & \inst|nxtstate.100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~16_combout\,
	datab => \inst|nxtstate.010~0_combout\,
	datac => \inst|Add4~16_combout\,
	datad => \inst|nxtstate.100~0_combout\,
	combout => \inst|Selector13~0_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~14_combout\ = (\inst|cur\(8) & (!\inst|Add5~13\)) # (!\inst|cur\(8) & ((\inst|Add5~13\) # (GND)))
-- \inst|Add5~15\ = CARRY((!\inst|Add5~13\) # (!\inst|cur\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(8),
	datad => VCC,
	cin => \inst|Add5~13\,
	combout => \inst|Add5~14_combout\,
	cout => \inst|Add5~15\);

-- Location: LCCOMB_X24_Y18_N20
\inst|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~14_combout\ = (\inst|cur\(8) & (!\inst|Add6~13\)) # (!\inst|cur\(8) & ((\inst|Add6~13\) # (GND)))
-- \inst|Add6~15\ = CARRY((!\inst|Add6~13\) # (!\inst|cur\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(8),
	datad => VCC,
	cin => \inst|Add6~13\,
	combout => \inst|Add6~14_combout\,
	cout => \inst|Add6~15\);

-- Location: LCCOMB_X24_Y18_N28
\inst|Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector13~1_combout\ = (\inst|nxtstate.101~1_combout\ & ((\inst|Add5~14_combout\) # ((\inst|nxtstate.110~2_combout\ & \inst|Add6~14_combout\)))) # (!\inst|nxtstate.101~1_combout\ & (((\inst|nxtstate.110~2_combout\ & \inst|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.101~1_combout\,
	datab => \inst|Add5~14_combout\,
	datac => \inst|nxtstate.110~2_combout\,
	datad => \inst|Add6~14_combout\,
	combout => \inst|Selector13~1_combout\);

-- Location: LCCOMB_X23_Y15_N14
\inst|Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector13~2_combout\ = (\inst|Selector13~0_combout\) # ((\inst|Selector13~1_combout\) # ((\inst|Add2~16_combout\ & \inst|nxtstate.001~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~16_combout\,
	datab => \inst|nxtstate.001~2_combout\,
	datac => \inst|Selector13~0_combout\,
	datad => \inst|Selector13~1_combout\,
	combout => \inst|Selector13~2_combout\);

-- Location: FF_X23_Y15_N15
\inst|cur[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector13~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(8));

-- Location: LCCOMB_X23_Y16_N18
\inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|cur\(5) & (!\inst|cur\(6) & (!\inst|cur\(7) & !\inst|cur\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(5),
	datab => \inst|cur\(6),
	datac => \inst|cur\(7),
	datad => \inst|cur\(8),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst|cur\(10) & (!\inst|cur\(9) & \inst|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(10),
	datac => \inst|cur\(9),
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y16_N26
\inst|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (!\inst|cur\(4) & (\inst|LessThan1~1_combout\ & ((!\inst|Selector22~3_combout\) # (!\inst|cur\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datab => \inst|cur\(0),
	datac => \inst|Selector22~3_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y16_N10
\inst|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = ((!\inst|cur\(0) & (!\inst|cur\(2) & !\inst|cur\(1)))) # (!\inst|cur\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(0),
	datab => \inst|cur\(2),
	datac => \inst|cur\(3),
	datad => \inst|cur\(1),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y16_N28
\inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = (\inst|LessThan1~1_combout\ & ((\inst|LessThan2~0_combout\) # (!\inst|cur\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datac => \inst|LessThan2~0_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|LessThan2~1_combout\);

-- Location: LCCOMB_X23_Y16_N12
\inst|cur[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cur[1]~1_combout\ = (\inst|nxtstate.001~2_combout\ & (!\inst|LessThan1~2_combout\ & ((!\inst|LessThan2~1_combout\) # (!\inst|nxtstate.010~0_combout\)))) # (!\inst|nxtstate.001~2_combout\ & (((!\inst|LessThan2~1_combout\)) # 
-- (!\inst|nxtstate.010~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.001~2_combout\,
	datab => \inst|nxtstate.010~0_combout\,
	datac => \inst|LessThan1~2_combout\,
	datad => \inst|LessThan2~1_combout\,
	combout => \inst|cur[1]~1_combout\);

-- Location: LCCOMB_X22_Y16_N10
\inst|Selector21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector21~3_combout\ = (\inst|nxtstate.110~2_combout\) # ((\inst|nxtstate.101~1_combout\) # ((!\inst|cur[1]~0_combout\) # (!\inst|cur[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.110~2_combout\,
	datab => \inst|nxtstate.101~1_combout\,
	datac => \inst|cur[1]~1_combout\,
	datad => \inst|cur[1]~0_combout\,
	combout => \inst|Selector21~3_combout\);

-- Location: LCCOMB_X22_Y16_N14
\inst|Selector21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector21~4_combout\ = (\inst|Selector21~2_combout\) # ((\inst|Selector21~0_combout\) # ((\inst|cur\(0) & \inst|Selector21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector21~2_combout\,
	datab => \inst|Selector21~0_combout\,
	datac => \inst|cur\(0),
	datad => \inst|Selector21~3_combout\,
	combout => \inst|Selector21~4_combout\);

-- Location: FF_X22_Y16_N15
\inst|cur[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(0));

-- Location: LCCOMB_X24_Y14_N14
\inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|cur\(2) & (\inst|Add2~3\ $ (GND))) # (!\inst|cur\(2) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|cur\(2) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X24_Y18_N8
\inst|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~2_combout\ = (\inst|cur\(2) & (!\inst|Add6~1\)) # (!\inst|cur\(2) & ((\inst|Add6~1\) # (GND)))
-- \inst|Add6~3\ = CARRY((!\inst|Add6~1\) # (!\inst|cur\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(2),
	datad => VCC,
	cin => \inst|Add6~1\,
	combout => \inst|Add6~2_combout\,
	cout => \inst|Add6~3\);

-- Location: LCCOMB_X24_Y18_N2
\inst|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector19~1_combout\ = (\inst|nxtstate.110~2_combout\ & ((\inst|Add6~2_combout\) # ((\inst|Add5~2_combout\ & \inst|nxtstate.101~1_combout\)))) # (!\inst|nxtstate.110~2_combout\ & (\inst|Add5~2_combout\ & ((\inst|nxtstate.101~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.110~2_combout\,
	datab => \inst|Add5~2_combout\,
	datac => \inst|Add6~2_combout\,
	datad => \inst|nxtstate.101~1_combout\,
	combout => \inst|Selector19~1_combout\);

-- Location: LCCOMB_X21_Y16_N4
\inst|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = (\inst|cur\(2) & ((GND) # (!\inst|Add4~3\))) # (!\inst|cur\(2) & (\inst|Add4~3\ $ (GND)))
-- \inst|Add4~5\ = CARRY((\inst|cur\(2)) # (!\inst|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(2),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X21_Y16_N24
\inst|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector19~0_combout\ = (\inst|nxtstate.010~0_combout\ & ((\inst|Add3~4_combout\) # ((\inst|nxtstate.100~0_combout\ & \inst|Add4~4_combout\)))) # (!\inst|nxtstate.010~0_combout\ & (\inst|nxtstate.100~0_combout\ & (\inst|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.010~0_combout\,
	datab => \inst|nxtstate.100~0_combout\,
	datac => \inst|Add4~4_combout\,
	datad => \inst|Add3~4_combout\,
	combout => \inst|Selector19~0_combout\);

-- Location: LCCOMB_X23_Y16_N16
\inst|Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector19~2_combout\ = (\inst|Selector19~1_combout\) # ((\inst|Selector19~0_combout\) # ((\inst|nxtstate.001~2_combout\ & \inst|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.001~2_combout\,
	datab => \inst|Add2~4_combout\,
	datac => \inst|Selector19~1_combout\,
	datad => \inst|Selector19~0_combout\,
	combout => \inst|Selector19~2_combout\);

-- Location: FF_X23_Y16_N17
\inst|cur[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector19~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(2));

-- Location: LCCOMB_X26_Y16_N30
\inst|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector18~0_combout\ = (\inst|Add3~6_combout\ & ((\inst|nxtstate.010~0_combout\) # ((\inst|nxtstate.100~0_combout\ & \inst|Add4~6_combout\)))) # (!\inst|Add3~6_combout\ & (((\inst|nxtstate.100~0_combout\ & \inst|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~6_combout\,
	datab => \inst|nxtstate.010~0_combout\,
	datac => \inst|nxtstate.100~0_combout\,
	datad => \inst|Add4~6_combout\,
	combout => \inst|Selector18~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~4_combout\ = (\inst|cur\(3) & (\inst|Add6~3\ $ (GND))) # (!\inst|cur\(3) & (!\inst|Add6~3\ & VCC))
-- \inst|Add6~5\ = CARRY((\inst|cur\(3) & !\inst|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(3),
	datad => VCC,
	cin => \inst|Add6~3\,
	combout => \inst|Add6~4_combout\,
	cout => \inst|Add6~5\);

-- Location: LCCOMB_X24_Y18_N4
\inst|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector18~1_combout\ = (\inst|nxtstate.101~1_combout\ & ((\inst|Add5~4_combout\) # ((\inst|nxtstate.110~2_combout\ & \inst|Add6~4_combout\)))) # (!\inst|nxtstate.101~1_combout\ & (((\inst|nxtstate.110~2_combout\ & \inst|Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.101~1_combout\,
	datab => \inst|Add5~4_combout\,
	datac => \inst|nxtstate.110~2_combout\,
	datad => \inst|Add6~4_combout\,
	combout => \inst|Selector18~1_combout\);

-- Location: LCCOMB_X23_Y16_N20
\inst|Selector18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector18~2_combout\ = (\inst|Selector18~0_combout\) # ((\inst|Selector18~1_combout\) # ((\inst|Add2~6_combout\ & \inst|nxtstate.001~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~6_combout\,
	datab => \inst|nxtstate.001~2_combout\,
	datac => \inst|Selector18~0_combout\,
	datad => \inst|Selector18~1_combout\,
	combout => \inst|Selector18~2_combout\);

-- Location: FF_X23_Y16_N21
\inst|cur[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector18~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(3));

-- Location: LCCOMB_X24_Y18_N14
\inst|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~8_combout\ = (\inst|cur\(5) & ((GND) # (!\inst|Add6~7\))) # (!\inst|cur\(5) & (\inst|Add6~7\ $ (GND)))
-- \inst|Add6~9\ = CARRY((\inst|cur\(5)) # (!\inst|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(5),
	datad => VCC,
	cin => \inst|Add6~7\,
	combout => \inst|Add6~8_combout\,
	cout => \inst|Add6~9\);

-- Location: LCCOMB_X24_Y16_N0
\inst|Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector16~1_combout\ = (\inst|nxtstate.101~1_combout\ & ((\inst|Add5~8_combout\) # ((\inst|Add6~8_combout\ & \inst|nxtstate.110~2_combout\)))) # (!\inst|nxtstate.101~1_combout\ & (\inst|Add6~8_combout\ & (\inst|nxtstate.110~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.101~1_combout\,
	datab => \inst|Add6~8_combout\,
	datac => \inst|nxtstate.110~2_combout\,
	datad => \inst|Add5~8_combout\,
	combout => \inst|Selector16~1_combout\);

-- Location: LCCOMB_X24_Y14_N20
\inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|cur\(5) & (\inst|Add2~9\ & VCC)) # (!\inst|cur\(5) & (!\inst|Add2~9\))
-- \inst|Add2~11\ = CARRY((!\inst|cur\(5) & !\inst|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X21_Y16_N28
\inst|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector16~0_combout\ = (\inst|nxtstate.010~0_combout\ & ((\inst|Add3~10_combout\) # ((\inst|nxtstate.100~0_combout\ & \inst|Add4~10_combout\)))) # (!\inst|nxtstate.010~0_combout\ & (\inst|nxtstate.100~0_combout\ & (\inst|Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.010~0_combout\,
	datab => \inst|nxtstate.100~0_combout\,
	datac => \inst|Add4~10_combout\,
	datad => \inst|Add3~10_combout\,
	combout => \inst|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y16_N24
\inst|Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector16~2_combout\ = (\inst|Selector16~1_combout\) # ((\inst|Selector16~0_combout\) # ((\inst|nxtstate.001~2_combout\ & \inst|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.001~2_combout\,
	datab => \inst|Selector16~1_combout\,
	datac => \inst|Add2~10_combout\,
	datad => \inst|Selector16~0_combout\,
	combout => \inst|Selector16~2_combout\);

-- Location: FF_X24_Y16_N25
\inst|cur[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector16~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(5));

-- Location: LCCOMB_X24_Y18_N26
\inst|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector15~1_combout\ = (\inst|nxtstate.101~1_combout\ & ((\inst|Add5~10_combout\) # ((\inst|Add6~10_combout\ & \inst|nxtstate.110~2_combout\)))) # (!\inst|nxtstate.101~1_combout\ & (\inst|Add6~10_combout\ & (\inst|nxtstate.110~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.101~1_combout\,
	datab => \inst|Add6~10_combout\,
	datac => \inst|nxtstate.110~2_combout\,
	datad => \inst|Add5~10_combout\,
	combout => \inst|Selector15~1_combout\);

-- Location: LCCOMB_X24_Y14_N22
\inst|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|cur\(6) & ((GND) # (!\inst|Add2~11\))) # (!\inst|cur\(6) & (\inst|Add2~11\ $ (GND)))
-- \inst|Add2~13\ = CARRY((\inst|cur\(6)) # (!\inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X22_Y16_N20
\inst|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector15~0_combout\ = (\inst|Add4~12_combout\ & ((\inst|nxtstate.100~0_combout\) # ((\inst|nxtstate.010~0_combout\ & \inst|Add3~12_combout\)))) # (!\inst|Add4~12_combout\ & (((\inst|nxtstate.010~0_combout\ & \inst|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~12_combout\,
	datab => \inst|nxtstate.100~0_combout\,
	datac => \inst|nxtstate.010~0_combout\,
	datad => \inst|Add3~12_combout\,
	combout => \inst|Selector15~0_combout\);

-- Location: LCCOMB_X23_Y16_N0
\inst|Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector15~2_combout\ = (\inst|Selector15~1_combout\) # ((\inst|Selector15~0_combout\) # ((\inst|nxtstate.001~2_combout\ & \inst|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.001~2_combout\,
	datab => \inst|Selector15~1_combout\,
	datac => \inst|Add2~12_combout\,
	datad => \inst|Selector15~0_combout\,
	combout => \inst|Selector15~2_combout\);

-- Location: FF_X23_Y16_N1
\inst|cur[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector15~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(6));

-- Location: LCCOMB_X24_Y18_N22
\inst|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~16_combout\ = (\inst|cur\(9) & (\inst|Add6~15\ $ (GND))) # (!\inst|cur\(9) & (!\inst|Add6~15\ & VCC))
-- \inst|Add6~17\ = CARRY((\inst|cur\(9) & !\inst|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(9),
	datad => VCC,
	cin => \inst|Add6~15\,
	combout => \inst|Add6~16_combout\,
	cout => \inst|Add6~17\);

-- Location: LCCOMB_X24_Y16_N20
\inst|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~16_combout\ = (\inst|cur\(9) & (\inst|Add5~15\ $ (GND))) # (!\inst|cur\(9) & (!\inst|Add5~15\ & VCC))
-- \inst|Add5~17\ = CARRY((\inst|cur\(9) & !\inst|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(9),
	datad => VCC,
	cin => \inst|Add5~15\,
	combout => \inst|Add5~16_combout\,
	cout => \inst|Add5~17\);

-- Location: LCCOMB_X24_Y18_N30
\inst|Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector12~1_combout\ = (\inst|nxtstate.110~2_combout\ & ((\inst|Add6~16_combout\) # ((\inst|nxtstate.101~1_combout\ & \inst|Add5~16_combout\)))) # (!\inst|nxtstate.110~2_combout\ & (\inst|nxtstate.101~1_combout\ & ((\inst|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.110~2_combout\,
	datab => \inst|nxtstate.101~1_combout\,
	datac => \inst|Add6~16_combout\,
	datad => \inst|Add5~16_combout\,
	combout => \inst|Selector12~1_combout\);

-- Location: LCCOMB_X26_Y16_N22
\inst|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~18_combout\ = (\inst|cur\(9) & (\inst|Add3~17\ & VCC)) # (!\inst|cur\(9) & (!\inst|Add3~17\))
-- \inst|Add3~19\ = CARRY((!\inst|cur\(9) & !\inst|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(9),
	datad => VCC,
	cin => \inst|Add3~17\,
	combout => \inst|Add3~18_combout\,
	cout => \inst|Add3~19\);

-- Location: LCCOMB_X21_Y16_N18
\inst|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~18_combout\ = (\inst|cur\(9) & (!\inst|Add4~17\)) # (!\inst|cur\(9) & ((\inst|Add4~17\) # (GND)))
-- \inst|Add4~19\ = CARRY((!\inst|Add4~17\) # (!\inst|cur\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(9),
	datad => VCC,
	cin => \inst|Add4~17\,
	combout => \inst|Add4~18_combout\,
	cout => \inst|Add4~19\);

-- Location: LCCOMB_X26_Y16_N0
\inst|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector12~0_combout\ = (\inst|nxtstate.100~0_combout\ & ((\inst|Add4~18_combout\) # ((\inst|nxtstate.010~0_combout\ & \inst|Add3~18_combout\)))) # (!\inst|nxtstate.100~0_combout\ & (\inst|nxtstate.010~0_combout\ & (\inst|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.100~0_combout\,
	datab => \inst|nxtstate.010~0_combout\,
	datac => \inst|Add3~18_combout\,
	datad => \inst|Add4~18_combout\,
	combout => \inst|Selector12~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst|Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector12~2_combout\ = (\inst|Selector12~1_combout\) # ((\inst|Selector12~0_combout\) # ((\inst|nxtstate.001~2_combout\ & \inst|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.001~2_combout\,
	datab => \inst|Add2~18_combout\,
	datac => \inst|Selector12~1_combout\,
	datad => \inst|Selector12~0_combout\,
	combout => \inst|Selector12~2_combout\);

-- Location: FF_X23_Y17_N31
\inst|cur[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector12~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(9));

-- Location: LCCOMB_X24_Y16_N22
\inst|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~18_combout\ = \inst|Add5~17\ $ (\inst|cur\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cur\(10),
	cin => \inst|Add5~17\,
	combout => \inst|Add5~18_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~18_combout\ = \inst|Add6~17\ $ (\inst|cur\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cur\(10),
	cin => \inst|Add6~17\,
	combout => \inst|Add6~18_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector11~1_combout\ = (\inst|nxtstate.101~1_combout\ & ((\inst|Add5~18_combout\) # ((\inst|nxtstate.110~2_combout\ & \inst|Add6~18_combout\)))) # (!\inst|nxtstate.101~1_combout\ & (((\inst|nxtstate.110~2_combout\ & \inst|Add6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.101~1_combout\,
	datab => \inst|Add5~18_combout\,
	datac => \inst|nxtstate.110~2_combout\,
	datad => \inst|Add6~18_combout\,
	combout => \inst|Selector11~1_combout\);

-- Location: LCCOMB_X26_Y16_N24
\inst|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~20_combout\ = \inst|Add3~19\ $ (\inst|cur\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cur\(10),
	cin => \inst|Add3~19\,
	combout => \inst|Add3~20_combout\);

-- Location: LCCOMB_X21_Y16_N20
\inst|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~20_combout\ = \inst|cur\(10) $ (!\inst|Add4~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(10),
	cin => \inst|Add4~19\,
	combout => \inst|Add4~20_combout\);

-- Location: LCCOMB_X26_Y16_N28
\inst|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector11~0_combout\ = (\inst|nxtstate.100~0_combout\ & ((\inst|Add4~20_combout\) # ((\inst|Add3~20_combout\ & \inst|nxtstate.010~0_combout\)))) # (!\inst|nxtstate.100~0_combout\ & (\inst|Add3~20_combout\ & (\inst|nxtstate.010~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.100~0_combout\,
	datab => \inst|Add3~20_combout\,
	datac => \inst|nxtstate.010~0_combout\,
	datad => \inst|Add4~20_combout\,
	combout => \inst|Selector11~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\inst|Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector11~2_combout\ = (\inst|Selector11~1_combout\) # ((\inst|Selector11~0_combout\) # ((\inst|Add2~20_combout\ & \inst|nxtstate.001~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~20_combout\,
	datab => \inst|nxtstate.001~2_combout\,
	datac => \inst|Selector11~1_combout\,
	datad => \inst|Selector11~0_combout\,
	combout => \inst|Selector11~2_combout\);

-- Location: FF_X23_Y15_N5
\inst|cur[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector11~2_combout\,
	ena => \inst|cur[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cur\(10));

-- Location: LCCOMB_X23_Y16_N22
\inst|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector22~0_combout\ = (\inst|cur\(3)) # ((\inst|cur\(2) & \inst|cur\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(2),
	datac => \inst|cur\(3),
	datad => \inst|cur\(1),
	combout => \inst|Selector22~0_combout\);

-- Location: LCCOMB_X23_Y16_N8
\inst|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector22~1_combout\ = (\inst|cur\(6)) # ((\inst|cur\(4) & (\inst|cur\(5) & \inst|Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datab => \inst|cur\(6),
	datac => \inst|cur\(5),
	datad => \inst|Selector22~0_combout\,
	combout => \inst|Selector22~1_combout\);

-- Location: LCCOMB_X23_Y16_N14
\inst|Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector22~2_combout\ = (\inst|nxtstate.110~2_combout\ & ((\inst|cur\(10)) # ((\inst|LessThan3~0_combout\ & \inst|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~0_combout\,
	datab => \inst|cur\(10),
	datac => \inst|Selector22~1_combout\,
	datad => \inst|nxtstate.110~2_combout\,
	combout => \inst|Selector22~2_combout\);

-- Location: LCCOMB_X22_Y16_N8
\inst|Selector22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector22~7_combout\ = (\inst|Selector22~6_combout\) # ((\inst|Selector22~2_combout\) # (\inst|Selector22~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~6_combout\,
	datac => \inst|Selector22~2_combout\,
	datad => \inst|Selector22~5_combout\,
	combout => \inst|Selector22~7_combout\);

-- Location: FF_X22_Y16_N9
\inst|light[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector22~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|light\(3));

-- Location: LCCOMB_X23_Y18_N10
\inst|nxtstate.011~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.011~1_combout\ = (\inst|key_out\(2) & !\inst|key_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(2),
	datac => \inst|key_out\(3),
	combout => \inst|nxtstate.011~1_combout\);

-- Location: LCCOMB_X21_Y18_N12
\inst|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector23~0_combout\ = (\inst|nxtstate.011~0_combout\ & ((\inst|nxtstate.011~1_combout\) # ((!\inst|nxtstate.000~2_combout\ & \inst|light\(2))))) # (!\inst|nxtstate.011~0_combout\ & (!\inst|nxtstate.000~2_combout\ & (\inst|light\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.011~0_combout\,
	datab => \inst|nxtstate.000~2_combout\,
	datac => \inst|light\(2),
	datad => \inst|nxtstate.011~1_combout\,
	combout => \inst|Selector23~0_combout\);

-- Location: FF_X21_Y18_N13
\inst|light[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|light\(2));

-- Location: LCCOMB_X23_Y18_N26
\inst|nxtstate.001~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.001~0_combout\ = (!\inst|key_out\(4) & (!\inst|key_out\(1) & (!\inst|key_out\(5) & !\inst|key_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(4),
	datab => \inst|key_out\(1),
	datac => \inst|key_out\(5),
	datad => \inst|key_out\(6),
	combout => \inst|nxtstate.001~0_combout\);

-- Location: FF_X22_Y18_N23
\inst|state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|nxtstate.000~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.000~q\);

-- Location: LCCOMB_X23_Y18_N28
\inst|nxtstate.011~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|nxtstate.011~0_combout\ = (!\inst|key_out\(0) & (\inst|nxtstate.001~0_combout\ & !\inst|state.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|key_out\(0),
	datac => \inst|nxtstate.001~0_combout\,
	datad => \inst|state.000~q\,
	combout => \inst|nxtstate.011~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr4~0_combout\ = (\inst|nxtstate.011~0_combout\ & (\inst|key_out\(2) $ (\inst|key_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key_out\(2),
	datab => \inst|nxtstate.011~0_combout\,
	datac => \inst|key_out\(3),
	combout => \inst|WideOr4~0_combout\);

-- Location: LCCOMB_X23_Y18_N22
\inst|WideOr4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr4~1_combout\ = (\inst|nxtstate.100~0_combout\) # ((\inst|nxtstate.110~2_combout\) # ((\inst|nxtstate.101~1_combout\) # (\inst|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|nxtstate.100~0_combout\,
	datab => \inst|nxtstate.110~2_combout\,
	datac => \inst|nxtstate.101~1_combout\,
	datad => \inst|WideOr4~0_combout\,
	combout => \inst|WideOr4~1_combout\);

-- Location: LCCOMB_X21_Y16_N22
\inst|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector24~0_combout\ = (\inst|cur\(4) & (((\inst|LessThan2~0_combout\)))) # (!\inst|cur\(4) & (\inst|Selector22~3_combout\ & (\inst|cur\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~3_combout\,
	datab => \inst|cur\(0),
	datac => \inst|cur\(4),
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|Selector24~0_combout\);

-- Location: LCCOMB_X24_Y16_N26
\inst|Selector24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector24~1_combout\ = (\inst|LessThan1~1_combout\ & ((\inst|Selector24~0_combout\ & ((\inst|nxtstate.010~0_combout\))) # (!\inst|Selector24~0_combout\ & (!\inst|cur\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|nxtstate.010~0_combout\,
	datad => \inst|Selector24~0_combout\,
	combout => \inst|Selector24~1_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst|Selector24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector24~2_combout\ = (!\inst|WideOr4~1_combout\ & !\inst|Selector24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr4~1_combout\,
	datad => \inst|Selector24~1_combout\,
	combout => \inst|Selector24~2_combout\);

-- Location: FF_X23_Y18_N9
\inst|light[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector24~2_combout\,
	ena => \inst|nxtstate.000~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|light\(1));

-- Location: LCCOMB_X23_Y18_N2
\inst|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector25~0_combout\ = (!\inst|WideOr4~1_combout\ & \inst|Selector24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr4~1_combout\,
	datad => \inst|Selector24~1_combout\,
	combout => \inst|Selector25~0_combout\);

-- Location: FF_X23_Y18_N3
\inst|light[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector25~0_combout\,
	ena => \inst|nxtstate.000~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|light\(0));

-- Location: LCCOMB_X19_Y13_N30
\inst|data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data\(1) = (GLOBAL(\inst|Mux8~0clkctrl_outclk\) & ((\inst|data\(1)))) # (!GLOBAL(\inst|Mux8~0clkctrl_outclk\) & (\inst|Mux1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~12_combout\,
	datac => \inst|data\(1),
	datad => \inst|Mux8~0clkctrl_outclk\,
	combout => \inst|data\(1));

-- Location: LCCOMB_X23_Y17_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|cur\(8) $ (VCC)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|cur\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(8),
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y17_N22
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|cur\(9) & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|cur\(9) & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|cur\(9) & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(9),
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y17_N26
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst|Mod0|auto_generated|divider|divider|StageOut[17]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[17]~69_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~69_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst|Mod0|auto_generated|divider|divider|StageOut[16]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[16]~71_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~71_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[15]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~72_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|cur\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|cur\(7),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~72_combout\);

-- Location: LCCOMB_X23_Y17_N2
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[16]~70_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[16]~71_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~70_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~71_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~70_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~71_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~70_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~71_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y17_N4
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~68_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~69_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~68_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~69_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~68_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~68_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~69_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X23_Y17_N16
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~66_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|cur\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|cur\(10),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~66_combout\);

-- Location: LCCOMB_X23_Y17_N6
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[18]~67_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[18]~66_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~67_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~66_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y17_N8
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[23]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[23]~74_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[23]~74_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst|Mod0|auto_generated|divider|divider|StageOut[22]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[22]~75_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~75_combout\);

-- Location: LCCOMB_X22_Y17_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[21]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[21]~76_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|cur\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|cur\(7),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~76_combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[20]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[20]~78_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|cur\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|cur\(6),
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~78_combout\);

-- Location: LCCOMB_X22_Y17_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[20]~79_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[20]~78_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[20]~79_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[20]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~79_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~78_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X22_Y17_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~77_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[21]~76_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~77_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~76_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~77_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~76_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~76_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X22_Y17_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[22]~116_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[22]~75_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[22]~116_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[22]~75_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[22]~116_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[22]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~116_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~75_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X22_Y17_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[23]~115_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[23]~74_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[23]~115_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[23]~74_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y17_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[28]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[28]~80_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~80_combout\);

-- Location: LCCOMB_X22_Y17_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[27]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[27]~81_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~81_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst|Mod0|auto_generated|divider|divider|StageOut[26]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[26]~82_combout\ = (\inst|cur\(6) & \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(6),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~82_combout\);

-- Location: LCCOMB_X21_Y17_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[25]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[25]~85_combout\ = (\inst|cur\(5) & !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(5),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[25]~85_combout\);

-- Location: LCCOMB_X21_Y17_N22
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[28]~110_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[28]~80_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~110_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~80_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y17_N24
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y17_N14
\inst|Mod0|auto_generated|divider|divider|StageOut[32]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[32]~118_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst|cur\(6))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(6),
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~118_combout\);

-- Location: LCCOMB_X20_Y17_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[31]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[31]~88_combout\ = (\inst|cur\(5) & \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(5),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[31]~88_combout\);

-- Location: LCCOMB_X21_Y17_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[30]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[30]~90_combout\ = (\inst|cur\(4) & \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(4),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[30]~90_combout\);

-- Location: LCCOMB_X20_Y17_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[32]~87_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[32]~118_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[32]~87_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[32]~118_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[32]~87_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[32]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~87_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[32]~118_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X21_Y17_N10
\inst|Mod0|auto_generated|divider|divider|StageOut[27]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[27]~117_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|cur\(7)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst|cur\(7),
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~117_combout\);

-- Location: LCCOMB_X20_Y17_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[33]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[33]~111_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[27]~117_combout\) # 
-- ((!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~117_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~111_combout\);

-- Location: LCCOMB_X20_Y17_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[33]~86_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[33]~111_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~86_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[33]~111_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y17_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y17_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[38]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[38]~92_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[38]~92_combout\);

-- Location: LCCOMB_X20_Y17_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[37]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[37]~119_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|cur\(5)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst|cur\(5),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[37]~119_combout\);

-- Location: LCCOMB_X20_Y17_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[36]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[36]~94_combout\ = (\inst|cur\(4) & \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[36]~94_combout\);

-- Location: LCCOMB_X20_Y17_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[35]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[35]~96_combout\ = (\inst|cur\(3) & \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(3),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[35]~96_combout\);

-- Location: LCCOMB_X19_Y16_N2
\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[36]~95_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[36]~94_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[36]~95_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[36]~94_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[36]~95_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[36]~94_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[36]~95_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[36]~94_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X19_Y16_N6
\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[38]~112_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[38]~92_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[38]~112_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[38]~92_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y16_N8
\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y16_N14
\inst|Mod0|auto_generated|divider|divider|StageOut[40]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[40]~103_combout\ = (\inst|cur\(2) & !\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(2),
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[40]~103_combout\);

-- Location: LCCOMB_X19_Y16_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[40]~103_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[40]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[40]~103_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X19_Y16_N18
\inst|Mod0|auto_generated|divider|divider|StageOut[43]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[43]~113_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[37]~119_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[37]~119_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[43]~113_combout\);

-- Location: LCCOMB_X19_Y16_N16
\inst|Mod0|auto_generated|divider|divider|StageOut[42]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X20_Y16_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[41]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[41]~100_combout\ = (\inst|cur\(3) & \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(3),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[41]~100_combout\);

-- Location: LCCOMB_X19_Y16_N22
\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[41]~101_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[41]~100_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[41]~101_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[41]~100_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[41]~101_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[41]~100_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[41]~101_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[41]~100_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X19_Y16_N26
\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[43]~98_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[43]~113_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[43]~98_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[43]~113_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y16_N28
\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y16_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[46]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[46]~109_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[46]~109_combout\);

-- Location: LCCOMB_X20_Y16_N20
\inst|Mod0|auto_generated|divider|divider|StageOut[46]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[46]~108_combout\ = (\inst|cur\(2) & \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(2),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[46]~108_combout\);

-- Location: LCCOMB_X20_Y17_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[42]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|cur\(4)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst|cur\(4),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\);

-- Location: LCCOMB_X20_Y16_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[48]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[48]~114_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[48]~114_combout\);

-- Location: LCCOMB_X20_Y16_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[47]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[47]~107_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[47]~107_combout\);

-- Location: LCCOMB_X20_Y16_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[45]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\ = (\inst|cur\(1) & !\inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(1),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\);

-- Location: LCCOMB_X20_Y16_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[48]~106_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[48]~114_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[48]~106_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[48]~114_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y16_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y16_N30
\inst|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[46]~109_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[46]~108_combout\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[46]~109_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[46]~108_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \inst|Mux2~4_combout\);

-- Location: LCCOMB_X23_Y15_N8
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|cur\(9) & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|cur\(9) & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|cur\(9) & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(9),
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y15_N12
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X23_Y15_N16
\inst|Div0|auto_generated|divider|divider|StageOut[18]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[18]~66_combout\ = (\inst|cur\(10) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(10),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[18]~66_combout\);

-- Location: LCCOMB_X23_Y15_N0
\inst|Div0|auto_generated|divider|divider|StageOut[17]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[17]~69_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[17]~69_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst|Div0|auto_generated|divider|divider|StageOut[16]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst|Div0|auto_generated|divider|divider|StageOut[15]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|cur\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|cur\(7),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\);

-- Location: LCCOMB_X23_Y15_N18
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[15]~72_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[15]~73_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X23_Y15_N20
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[16]~70_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[16]~70_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[16]~70_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[16]~70_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[16]~71_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y15_N24
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[18]~67_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[18]~66_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[18]~67_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[18]~66_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y15_N26
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y15_N28
\inst|Div0|auto_generated|divider|divider|StageOut[23]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[23]~115_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|cur\(9))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(9),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[23]~115_combout\);

-- Location: LCCOMB_X22_Y15_N20
\inst|Div0|auto_generated|divider|divider|StageOut[22]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[22]~75_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[22]~75_combout\);

-- Location: LCCOMB_X21_Y15_N18
\inst|Div0|auto_generated|divider|divider|StageOut[21]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[21]~77_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[21]~77_combout\);

-- Location: LCCOMB_X22_Y15_N24
\inst|Div0|auto_generated|divider|divider|StageOut[20]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\ = (\inst|cur\(6) & \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(6),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\);

-- Location: LCCOMB_X22_Y15_N0
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst|Div0|auto_generated|divider|divider|StageOut[20]~79_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[20]~79_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[20]~79_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[20]~78_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X22_Y15_N2
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[21]~76_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[21]~77_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[21]~76_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[21]~77_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[21]~76_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[21]~77_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[21]~76_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[21]~77_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X22_Y15_N4
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[22]~116_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[22]~75_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst|Div0|auto_generated|divider|divider|StageOut[22]~116_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[22]~75_combout\)))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[22]~116_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[22]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[22]~116_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[22]~75_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X22_Y15_N6
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[23]~74_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[23]~115_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[23]~74_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[23]~115_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y15_N8
\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y15_N28
\inst|Div0|auto_generated|divider|divider|StageOut[26]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[26]~82_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|cur\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|cur\(6),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[26]~82_combout\);

-- Location: LCCOMB_X21_Y15_N20
\inst|Div0|auto_generated|divider|divider|StageOut[25]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|cur\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|cur\(5),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\);

-- Location: LCCOMB_X21_Y15_N0
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst|Div0|auto_generated|divider|divider|StageOut[25]~85_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[25]~85_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[25]~85_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X21_Y15_N2
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[26]~82_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[26]~82_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[26]~82_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[26]~82_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y15_N24
\inst|Div0|auto_generated|divider|divider|StageOut[28]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[28]~80_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[28]~80_combout\);

-- Location: LCCOMB_X21_Y15_N14
\inst|Div0|auto_generated|divider|divider|StageOut[27]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[27]~81_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[27]~81_combout\);

-- Location: LCCOMB_X21_Y15_N6
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[28]~110_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[28]~80_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[28]~110_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[28]~80_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y15_N8
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y15_N26
\inst|Div0|auto_generated|divider|divider|StageOut[27]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[27]~117_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|cur\(7)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst|cur\(7),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[27]~117_combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst|Div0|auto_generated|divider|divider|StageOut[33]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[27]~117_combout\) # 
-- ((!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|StageOut[27]~117_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[33]~111_combout\);

-- Location: LCCOMB_X21_Y15_N30
\inst|Div0|auto_generated|divider|divider|StageOut[32]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[32]~87_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[32]~87_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst|Div0|auto_generated|divider|divider|StageOut[31]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[31]~88_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|cur\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|cur\(5),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[31]~88_combout\);

-- Location: LCCOMB_X22_Y12_N0
\inst|Div0|auto_generated|divider|divider|StageOut[30]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[30]~90_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|cur\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|cur\(4),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[30]~90_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[31]~89_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[31]~88_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[31]~89_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[31]~88_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[31]~89_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[31]~88_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[31]~89_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[31]~88_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X22_Y12_N18
\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[33]~86_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[33]~86_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[33]~111_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y12_N20
\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y12_N26
\inst|Div0|auto_generated|divider|divider|StageOut[32]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[32]~118_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst|cur\(6))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(6),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[32]~118_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst|Div0|auto_generated|divider|divider|StageOut[38]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[38]~112_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[32]~118_combout\) # 
-- ((!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|StageOut[32]~118_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[38]~112_combout\);

-- Location: LCCOMB_X22_Y12_N10
\inst|Div0|auto_generated|divider|divider|StageOut[37]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[37]~93_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[37]~93_combout\);

-- Location: LCCOMB_X22_Y12_N22
\inst|Div0|auto_generated|divider|divider|StageOut[36]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[36]~95_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[36]~95_combout\);

-- Location: LCCOMB_X22_Y12_N8
\inst|Div0|auto_generated|divider|divider|StageOut[35]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[35]~96_combout\ = (\inst|cur\(3) & \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(3),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[35]~96_combout\);

-- Location: LCCOMB_X21_Y12_N0
\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\inst|Div0|auto_generated|divider|divider|StageOut[35]~97_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[35]~96_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[35]~97_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[35]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[35]~96_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X21_Y12_N2
\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[36]~94_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[36]~95_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[36]~94_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[36]~95_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[36]~94_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[36]~95_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[36]~94_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[36]~95_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X21_Y12_N6
\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[38]~92_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[38]~112_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[38]~92_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[38]~112_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y12_N8
\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y15_N10
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X22_Y15_N16
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y15_N18
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst|Mod1|auto_generated|divider|divider|StageOut[32]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\);

-- Location: LCCOMB_X22_Y14_N20
\inst|Mod1|auto_generated|divider|divider|StageOut[31]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[31]~55_combout\ = (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~55_combout\);

-- Location: LCCOMB_X22_Y14_N8
\inst|Mod1|auto_generated|divider|divider|StageOut[30]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[30]~57_combout\ = (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~57_combout\);

-- Location: LCCOMB_X22_Y14_N12
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[31]~54_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[31]~55_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[31]~54_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[31]~55_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[31]~54_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[31]~55_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~54_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~55_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X22_Y14_N14
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[32]~53_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst|Mod1|auto_generated|divider|divider|StageOut[32]~53_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\)))))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[32]~53_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~53_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~52_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X22_Y14_N0
\inst|Mod1|auto_generated|divider|divider|StageOut[33]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[33]~50_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~50_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[33]~50_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~51_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~50_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y14_N18
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y14_N14
\inst|Mod1|auto_generated|divider|divider|StageOut[38]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[38]~58_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[38]~58_combout\);

-- Location: LCCOMB_X21_Y14_N8
\inst|Mod1|auto_generated|divider|divider|StageOut[37]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[37]~59_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[37]~59_combout\);

-- Location: LCCOMB_X21_Y14_N2
\inst|Mod1|auto_generated|divider|divider|StageOut[36]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[36]~78_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[36]~78_combout\);

-- Location: LCCOMB_X21_Y14_N0
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\);

-- Location: LCCOMB_X21_Y14_N4
\inst|Mod1|auto_generated|divider|divider|StageOut[35]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[35]~62_combout\ = (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[35]~62_combout\);

-- Location: LCCOMB_X21_Y14_N16
\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\inst|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[35]~62_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[35]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[35]~62_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X21_Y14_N18
\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[36]~78_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[36]~78_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[36]~78_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[36]~78_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X21_Y14_N22
\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[38]~76_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[38]~58_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[38]~76_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[38]~58_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y14_N24
\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y14_N2
\inst|Mod1|auto_generated|divider|divider|StageOut[40]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[40]~66_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[40]~66_combout\);

-- Location: LCCOMB_X20_Y14_N20
\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = (((\inst|Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[40]~66_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[40]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[40]~66_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

-- Location: LCCOMB_X22_Y14_N2
\inst|Mod1|auto_generated|divider|divider|StageOut[37]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[37]~77_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[37]~77_combout\);

-- Location: LCCOMB_X20_Y14_N14
\inst|Mod1|auto_generated|divider|divider|StageOut[43]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[43]~73_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[37]~77_combout\) # 
-- ((!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|StageOut[37]~77_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[43]~73_combout\);

-- Location: LCCOMB_X21_Y14_N28
\inst|Mod1|auto_generated|divider|divider|StageOut[42]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[42]~64_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[42]~64_combout\);

-- Location: LCCOMB_X20_Y14_N16
\inst|Mod1|auto_generated|divider|divider|StageOut[41]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[41]~65_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[41]~65_combout\);

-- Location: LCCOMB_X20_Y14_N22
\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[41]~79_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[41]~65_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[41]~79_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[41]~65_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[41]~79_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[41]~65_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[41]~79_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[41]~65_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

-- Location: LCCOMB_X20_Y14_N24
\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[42]~81_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[42]~64_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & ((((\inst|Mod1|auto_generated|divider|divider|StageOut[42]~81_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[42]~64_combout\)))))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[42]~81_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[42]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[42]~81_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[42]~64_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

-- Location: LCCOMB_X20_Y14_N26
\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[43]~73_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[43]~63_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[43]~73_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\);

-- Location: LCCOMB_X20_Y14_N28
\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\);

-- Location: LCCOMB_X20_Y14_N0
\inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\) # ((\inst|Mod1|auto_generated|divider|divider|StageOut[40]~66_combout\)))) # 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ & (((\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|StageOut[40]~66_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst|Mod1|auto_generated|divider|divider|StageOut[46]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[46]~80_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[46]~80_combout\);

-- Location: LCCOMB_X21_Y12_N12
\inst|Div0|auto_generated|divider|divider|StageOut[37]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[37]~119_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst|cur\(5))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(5),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[37]~119_combout\);

-- Location: LCCOMB_X21_Y12_N18
\inst|Div0|auto_generated|divider|divider|StageOut[43]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[43]~113_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[37]~119_combout\) # 
-- ((!\inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|StageOut[37]~119_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[43]~113_combout\);

-- Location: LCCOMB_X21_Y12_N10
\inst|Div0|auto_generated|divider|divider|StageOut[42]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[42]~99_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X21_Y12_N14
\inst|Div0|auto_generated|divider|divider|StageOut[41]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[41]~101_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[41]~101_combout\);

-- Location: LCCOMB_X21_Y12_N16
\inst|Div0|auto_generated|divider|divider|StageOut[40]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\inst|cur\(2) & \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(2),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[40]~102_combout\);

-- Location: LCCOMB_X20_Y12_N6
\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[43]~98_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[43]~113_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[43]~98_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[43]~113_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y12_N8
\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y12_N2
\inst|Mod1|auto_generated|divider|divider|StageOut[45]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\);

-- Location: LCCOMB_X19_Y14_N22
\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[46]~70_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[46]~80_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[46]~70_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[46]~80_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[46]~70_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[46]~80_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[46]~70_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[46]~80_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X20_Y14_N18
\inst|Mod1|auto_generated|divider|divider|StageOut[48]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[48]~68_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[48]~68_combout\);

-- Location: LCCOMB_X20_Y14_N8
\inst|Mod1|auto_generated|divider|divider|StageOut[47]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[47]~69_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[47]~69_combout\);

-- Location: LCCOMB_X19_Y14_N24
\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[47]~75_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[47]~69_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\inst|Mod1|auto_generated|divider|divider|StageOut[47]~75_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[47]~69_combout\)))))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[47]~75_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[47]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[47]~75_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[47]~69_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X19_Y14_N26
\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[48]~74_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[48]~68_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[48]~74_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[48]~68_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y14_N28
\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~7_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y14_N18
\inst|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux3~0_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & (\inst|Mux2~0_combout\)) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- ((\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~0_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y14_N16
\inst|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~5_combout\ = (\inst|Mux2~3_combout\) # ((\inst|Mux2~1_combout\) # ((\inst|Mux0~2_combout\ & \inst|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~3_combout\,
	datab => \inst|Mux0~2_combout\,
	datac => \inst|Mux2~4_combout\,
	datad => \inst|Mux2~1_combout\,
	combout => \inst|Mux2~5_combout\);

-- Location: LCCOMB_X19_Y14_N8
\inst|data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data\(2) = (\inst|Mux8~0_combout\ & (\inst|data\(2))) # (!\inst|Mux8~0_combout\ & ((\inst|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|data\(2),
	datac => \inst|Mux8~0_combout\,
	datad => \inst|Mux2~5_combout\,
	combout => \inst|data\(2));

-- Location: LCCOMB_X19_Y13_N2
\inst|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr6~0_combout\ = ((!\inst|data\(1) & !\inst|data\(2))) # (!\inst|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datac => \inst|data\(1),
	datad => \inst|data\(2),
	combout => \inst|WideOr6~0_combout\);

-- Location: CLKCTRL_G14
\inst|WideOr6~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|WideOr6~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|WideOr6~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y13_N6
\inst|lit[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit\(7) = (GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & ((\inst|en\(1)))) # (!GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & (\inst|lit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr6~0clkctrl_outclk\,
	datab => \inst|lit\(7),
	datad => \inst|en\(1),
	combout => \inst|lit\(7));

-- Location: LCCOMB_X19_Y13_N14
\inst|data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data\(0) = (GLOBAL(\inst|Mux8~0clkctrl_outclk\) & ((\inst|data\(0)))) # (!GLOBAL(\inst|Mux8~0clkctrl_outclk\) & (\inst|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~4_combout\,
	datac => \inst|data\(0),
	datad => \inst|Mux8~0clkctrl_outclk\,
	combout => \inst|data\(0));

-- Location: LCCOMB_X19_Y13_N22
\inst|lit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit~0_combout\ = (!\inst|data\(3) & (!\inst|data\(1) & (\inst|data\(2) $ (\inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(2),
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst|lit~0_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst|lit[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit\(6) = (GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & ((\inst|lit~0_combout\))) # (!GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & (\inst|lit\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lit\(6),
	datac => \inst|WideOr6~0clkctrl_outclk\,
	datad => \inst|lit~0_combout\,
	combout => \inst|lit\(6));

-- Location: LCCOMB_X19_Y13_N4
\inst|lit~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit~1_combout\ = (!\inst|data\(3) & (\inst|data\(2) & (\inst|data\(1) $ (\inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(2),
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst|lit~1_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst|lit[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit\(5) = (GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & ((\inst|lit~1_combout\))) # (!GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & (\inst|lit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lit\(5),
	datac => \inst|WideOr6~0clkctrl_outclk\,
	datad => \inst|lit~1_combout\,
	combout => \inst|lit\(5));

-- Location: LCCOMB_X20_Y13_N0
\inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (!\inst|cnt_sel\(1) & \inst|cnt_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt_sel\(1),
	datad => \inst|cnt_sel\(0),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (\inst|Mux3~0_combout\ & (\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[47]~75_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[47]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[47]~75_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[47]~69_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \inst|Mux3~4_combout\);

-- Location: LCCOMB_X27_Y15_N8
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst|cur\(7) & (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\inst|cur\(7) & 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst|cur\(7) & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(7),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X27_Y15_N16
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X26_Y15_N0
\inst|Div1|auto_generated|divider|divider|StageOut[54]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[54]~70_combout\ = (\inst|cur\(10) & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(10),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[54]~70_combout\);

-- Location: LCCOMB_X27_Y15_N22
\inst|Div1|auto_generated|divider|divider|StageOut[53]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[53]~72_combout\ = (\inst|cur\(9) & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cur\(9),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[53]~72_combout\);

-- Location: LCCOMB_X26_Y15_N2
\inst|Div1|auto_generated|divider|divider|StageOut[52]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[52]~74_combout\ = (\inst|cur\(8) & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(8),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[52]~74_combout\);

-- Location: LCCOMB_X27_Y15_N0
\inst|Div1|auto_generated|divider|divider|StageOut[51]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[51]~76_combout\ = (\inst|cur\(7) & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(7),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[51]~76_combout\);

-- Location: LCCOMB_X27_Y15_N26
\inst|Div1|auto_generated|divider|divider|StageOut[50]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[50]~79_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[50]~79_combout\);

-- Location: LCCOMB_X26_Y15_N4
\inst|Div1|auto_generated|divider|divider|StageOut[49]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[49]~80_combout\ = (\inst|cur\(5) & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(5),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[49]~80_combout\);

-- Location: LCCOMB_X26_Y15_N14
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\inst|Div1|auto_generated|divider|divider|StageOut[49]~81_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[49]~80_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[49]~81_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[49]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[49]~81_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[49]~80_combout\,
	datad => VCC,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X26_Y15_N18
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\inst|Div1|auto_generated|divider|divider|StageOut[51]~77_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[51]~76_combout\))))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[51]~77_combout\) # 
-- ((\inst|Div1|auto_generated|divider|divider|StageOut[51]~76_combout\) # (GND))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[51]~77_combout\) # ((\inst|Div1|auto_generated|divider|divider|StageOut[51]~76_combout\) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[51]~77_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[51]~76_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X26_Y15_N20
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\inst|Div1|auto_generated|divider|divider|StageOut[52]~75_combout\ & (((!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[52]~75_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[52]~74_combout\ & (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[52]~74_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\inst|Div1|auto_generated|divider|divider|StageOut[52]~75_combout\ & !\inst|Div1|auto_generated|divider|divider|StageOut[52]~74_combout\)) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[52]~75_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[52]~74_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X26_Y15_N24
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[54]~71_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[54]~70_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[54]~71_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[54]~70_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X26_Y15_N26
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X26_Y15_N28
\inst|Div1|auto_generated|divider|divider|StageOut[62]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[62]~82_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[62]~82_combout\);

-- Location: LCCOMB_X26_Y15_N10
\inst|Div1|auto_generated|divider|divider|StageOut[61]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[61]~83_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[61]~83_combout\);

-- Location: LCCOMB_X24_Y15_N28
\inst|Div1|auto_generated|divider|divider|StageOut[60]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[60]~119_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst|cur\(7))) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(7),
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[60]~119_combout\);

-- Location: LCCOMB_X27_Y15_N24
\inst|Div1|auto_generated|divider|divider|StageOut[59]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[59]~85_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[59]~85_combout\);

-- Location: LCCOMB_X26_Y15_N12
\inst|Div1|auto_generated|divider|divider|StageOut[58]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X28_Y15_N14
\inst|Div1|auto_generated|divider|divider|StageOut[57]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[57]~88_combout\ = (\inst|cur\(4) & \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cur\(4),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[57]~88_combout\);

-- Location: LCCOMB_X24_Y15_N6
\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\inst|Div1|auto_generated|divider|divider|StageOut[57]~91_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[57]~88_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[57]~91_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[57]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[57]~91_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datad => VCC,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X24_Y15_N10
\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\inst|Div1|auto_generated|divider|divider|StageOut[59]~120_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[59]~85_combout\))))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[59]~120_combout\) # 
-- ((\inst|Div1|auto_generated|divider|divider|StageOut[59]~85_combout\) # (GND))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[59]~120_combout\) # ((\inst|Div1|auto_generated|divider|divider|StageOut[59]~85_combout\) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[59]~120_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[59]~85_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X24_Y15_N16
\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[62]~117_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[62]~82_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[62]~117_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[62]~82_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X24_Y15_N18
\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X20_Y15_N8
\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & VCC))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X20_Y15_N12
\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY(!\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y15_N14
\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y13_N20
\inst|Mod2|auto_generated|divider|divider|StageOut[47]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[47]~4_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[47]~4_combout\);

-- Location: LCCOMB_X21_Y13_N16
\inst|Mod2|auto_generated|divider|divider|StageOut[46]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[46]~7_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[46]~7_combout\);

-- Location: LCCOMB_X26_Y15_N8
\inst|Div1|auto_generated|divider|divider|StageOut[70]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[70]~110_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[61]~118_combout\) # 
-- ((\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[61]~118_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[70]~110_combout\);

-- Location: LCCOMB_X24_Y15_N20
\inst|Div1|auto_generated|divider|divider|StageOut[69]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[69]~111_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[60]~119_combout\) # 
-- ((\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|StageOut[60]~119_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[69]~111_combout\);

-- Location: LCCOMB_X24_Y15_N0
\inst|Div1|auto_generated|divider|divider|StageOut[68]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[68]~94_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[68]~94_combout\);

-- Location: LCCOMB_X24_Y13_N0
\inst|Div1|auto_generated|divider|divider|StageOut[67]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[67]~121_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst|cur\(5))) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \inst|cur\(5),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[67]~121_combout\);

-- Location: LCCOMB_X24_Y13_N24
\inst|Div1|auto_generated|divider|divider|StageOut[66]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[66]~96_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[66]~96_combout\);

-- Location: LCCOMB_X20_Y15_N4
\inst|Div1|auto_generated|divider|divider|StageOut[56]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\ = (\inst|cur\(3) & !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(3),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\);

-- Location: LCCOMB_X20_Y15_N28
\inst|Div1|auto_generated|divider|divider|StageOut[56]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[56]~98_combout\ = (\inst|cur\(3) & \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cur\(3),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[56]~98_combout\);

-- Location: LCCOMB_X20_Y15_N22
\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ = (\inst|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[56]~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|StageOut[56]~98_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\);

-- Location: LCCOMB_X20_Y15_N18
\inst|Div1|auto_generated|divider|divider|StageOut[65]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[65]~100_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[65]~100_combout\);

-- Location: LCCOMB_X24_Y13_N12
\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[70]~92_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[70]~110_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[70]~92_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[70]~110_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X24_Y13_N14
\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\);

-- Location: LCCOMB_X21_Y13_N12
\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\ = !\inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\);

-- Location: LCCOMB_X21_Y13_N8
\inst|Mod2|auto_generated|divider|divider|StageOut[45]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\ = (!\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[0]~10_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[45]~1_combout\);

-- Location: LCCOMB_X20_Y15_N26
\inst|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & ((!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & (\inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X20_Y13_N12
\inst|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\inst|cnt_sel\(1) & ((\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & ((\inst|Mux3~1_combout\))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & 
-- (\inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst|cnt_sel\(1),
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (\inst|Mux3~2_combout\) # ((\inst|Mux3~0_combout\ & (\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~0_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datac => \inst|Mux3~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X19_Y14_N2
\inst|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~6_combout\ = (\inst|Mux3~4_combout\) # ((\inst|Mux3~3_combout\) # ((\inst|Mux3~5_combout\ & \inst|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~5_combout\,
	datab => \inst|Mux0~2_combout\,
	datac => \inst|Mux3~4_combout\,
	datad => \inst|Mux3~3_combout\,
	combout => \inst|Mux3~6_combout\);

-- Location: LCCOMB_X19_Y14_N30
\inst|data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data\(3) = (\inst|Mux8~0_combout\ & (\inst|data\(3))) # (!\inst|Mux8~0_combout\ & ((\inst|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datac => \inst|Mux8~0_combout\,
	datad => \inst|Mux3~6_combout\,
	combout => \inst|data\(3));

-- Location: LCCOMB_X20_Y13_N24
\inst|Decoder2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder2~0_combout\ = (!\inst|data\(2) & (!\inst|data\(3) & (\inst|data\(1) & !\inst|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(3),
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst|Decoder2~0_combout\);

-- Location: LCCOMB_X20_Y13_N26
\inst|lit[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit\(4) = (GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & ((\inst|Decoder2~0_combout\))) # (!GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & (\inst|lit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lit\(4),
	datac => \inst|WideOr6~0clkctrl_outclk\,
	datad => \inst|Decoder2~0_combout\,
	combout => \inst|lit\(4));

-- Location: LCCOMB_X19_Y13_N8
\inst|WideOr12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr12~0_combout\ = (!\inst|data\(3) & ((\inst|data\(2) & (\inst|data\(1) $ (!\inst|data\(0)))) # (!\inst|data\(2) & (!\inst|data\(1) & \inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(2),
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst|WideOr12~0_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst|lit[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit\(3) = (GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & ((\inst|WideOr12~0_combout\))) # (!GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & (\inst|lit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lit\(3),
	datac => \inst|WideOr6~0clkctrl_outclk\,
	datad => \inst|WideOr12~0_combout\,
	combout => \inst|lit\(3));

-- Location: LCCOMB_X20_Y13_N28
\inst|WideOr14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr14~0_combout\ = (\inst|data\(0)) # ((\inst|data\(1) & ((\inst|data\(3)))) # (!\inst|data\(1) & (\inst|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(3),
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst|WideOr14~0_combout\);

-- Location: LCCOMB_X20_Y13_N14
\inst|lit[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit\(2) = (GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & ((\inst|WideOr14~0_combout\))) # (!GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & (\inst|lit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lit\(2),
	datac => \inst|WideOr6~0clkctrl_outclk\,
	datad => \inst|WideOr14~0_combout\,
	combout => \inst|lit\(2));

-- Location: LCCOMB_X20_Y13_N18
\inst|WideOr16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr16~0_combout\ = (!\inst|data\(3) & ((\inst|data\(2) & (\inst|data\(1) & \inst|data\(0))) # (!\inst|data\(2) & ((\inst|data\(1)) # (\inst|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(3),
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst|WideOr16~0_combout\);

-- Location: LCCOMB_X20_Y13_N22
\inst|lit[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit\(1) = (GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & ((\inst|WideOr16~0_combout\))) # (!GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & (\inst|lit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lit\(1),
	datac => \inst|WideOr6~0clkctrl_outclk\,
	datad => \inst|WideOr16~0_combout\,
	combout => \inst|lit\(1));

-- Location: LCCOMB_X20_Y13_N10
\inst|WideOr18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr18~0_combout\ = (\inst|data\(3)) # ((\inst|data\(2) & ((!\inst|data\(0)) # (!\inst|data\(1)))) # (!\inst|data\(2) & (\inst|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(1),
	datac => \inst|data\(3),
	datad => \inst|data\(0),
	combout => \inst|WideOr18~0_combout\);

-- Location: LCCOMB_X20_Y13_N30
\inst|lit[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|lit\(0) = (GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & ((!\inst|WideOr18~0_combout\))) # (!GLOBAL(\inst|WideOr6~0clkctrl_outclk\) & (\inst|lit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lit\(0),
	datac => \inst|WideOr6~0clkctrl_outclk\,
	datad => \inst|WideOr18~0_combout\,
	combout => \inst|lit\(0));

ww_en(5) <= \en[5]~output_o\;

ww_en(4) <= \en[4]~output_o\;

ww_en(3) <= \en[3]~output_o\;

ww_en(2) <= \en[2]~output_o\;

ww_en(1) <= \en[1]~output_o\;

ww_en(0) <= \en[0]~output_o\;

ww_light(3) <= \light[3]~output_o\;

ww_light(2) <= \light[2]~output_o\;

ww_light(1) <= \light[1]~output_o\;

ww_light(0) <= \light[0]~output_o\;

ww_lit(7) <= \lit[7]~output_o\;

ww_lit(6) <= \lit[6]~output_o\;

ww_lit(5) <= \lit[5]~output_o\;

ww_lit(4) <= \lit[4]~output_o\;

ww_lit(3) <= \lit[3]~output_o\;

ww_lit(2) <= \lit[2]~output_o\;

ww_lit(1) <= \lit[1]~output_o\;

ww_lit(0) <= \lit[0]~output_o\;
END structure;



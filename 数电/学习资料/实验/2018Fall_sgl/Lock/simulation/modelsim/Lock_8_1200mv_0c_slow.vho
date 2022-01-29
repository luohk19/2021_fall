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

-- DATE "12/25/2018 13:48:51"

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

ENTITY 	Lock IS
    PORT (
	number_input : IN std_logic_vector(8 DOWNTO 0);
	delete_input : IN std_logic;
	clear_input : IN std_logic;
	clock : IN std_logic;
	successful_output : OUT std_logic;
	failed_output : OUT std_logic;
	show_num1 : OUT std_logic_vector(6 DOWNTO 0);
	show_num2 : OUT std_logic_vector(6 DOWNTO 0);
	show_num3 : OUT std_logic_vector(6 DOWNTO 0);
	show_num4 : OUT std_logic_vector(6 DOWNTO 0);
	whether_locked_forever : OUT std_logic
	);
END Lock;

-- Design Ports Information
-- successful_output	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- failed_output	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num1[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num1[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num1[2]	=>  Location: PIN_175,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num1[3]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num1[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num1[5]	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num1[6]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num2[0]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num2[1]	=>  Location: PIN_148,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num2[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num2[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num2[4]	=>  Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num2[5]	=>  Location: PIN_117,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num2[6]	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num3[0]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num3[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num3[2]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num3[3]	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num3[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num3[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num3[6]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num4[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num4[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num4[2]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num4[3]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num4[4]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num4[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- show_num4[6]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- whether_locked_forever	=>  Location: PIN_236,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number_input[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number_input[7]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number_input[8]	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number_input[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number_input[1]	=>  Location: PIN_139,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number_input[2]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number_input[5]	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number_input[6]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- number_input[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delete_input	=>  Location: PIN_107,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_input	=>  Location: PIN_147,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_number_input : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_delete_input : std_logic;
SIGNAL ww_clear_input : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_successful_output : std_logic;
SIGNAL ww_failed_output : std_logic;
SIGNAL ww_show_num1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_show_num2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_show_num3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_show_num4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_whether_locked_forever : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_module|input_signal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \change_module|compare_signal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \compare_module|always0~1_combout\ : std_logic;
SIGNAL \input_module|input_signal~q\ : std_logic;
SIGNAL \change_module|control_reg.0000~q\ : std_logic;
SIGNAL \input_module|WideOr1~1_combout\ : std_logic;
SIGNAL \input_module|WideOr0~0_combout\ : std_logic;
SIGNAL \input_module|number_hex~22_combout\ : std_logic;
SIGNAL \input_module|input_signal~5_combout\ : std_logic;
SIGNAL \input_module|input_signal~6_combout\ : std_logic;
SIGNAL \input_module|WideOr3~0_combout\ : std_logic;
SIGNAL \input_module|input_signal~7_combout\ : std_logic;
SIGNAL \input_module|input_signal~8_combout\ : std_logic;
SIGNAL \change_module|control_reg~9_combout\ : std_logic;
SIGNAL \input_module|input_signal~9_combout\ : std_logic;
SIGNAL \input_module|input_signal~10_combout\ : std_logic;
SIGNAL \number_input[4]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \input_module|input_signal~clkctrl_outclk\ : std_logic;
SIGNAL \successful_output~output_o\ : std_logic;
SIGNAL \failed_output~output_o\ : std_logic;
SIGNAL \show_num1[0]~output_o\ : std_logic;
SIGNAL \show_num1[1]~output_o\ : std_logic;
SIGNAL \show_num1[2]~output_o\ : std_logic;
SIGNAL \show_num1[3]~output_o\ : std_logic;
SIGNAL \show_num1[4]~output_o\ : std_logic;
SIGNAL \show_num1[5]~output_o\ : std_logic;
SIGNAL \show_num1[6]~output_o\ : std_logic;
SIGNAL \show_num2[0]~output_o\ : std_logic;
SIGNAL \show_num2[1]~output_o\ : std_logic;
SIGNAL \show_num2[2]~output_o\ : std_logic;
SIGNAL \show_num2[3]~output_o\ : std_logic;
SIGNAL \show_num2[4]~output_o\ : std_logic;
SIGNAL \show_num2[5]~output_o\ : std_logic;
SIGNAL \show_num2[6]~output_o\ : std_logic;
SIGNAL \show_num3[0]~output_o\ : std_logic;
SIGNAL \show_num3[1]~output_o\ : std_logic;
SIGNAL \show_num3[2]~output_o\ : std_logic;
SIGNAL \show_num3[3]~output_o\ : std_logic;
SIGNAL \show_num3[4]~output_o\ : std_logic;
SIGNAL \show_num3[5]~output_o\ : std_logic;
SIGNAL \show_num3[6]~output_o\ : std_logic;
SIGNAL \show_num4[0]~output_o\ : std_logic;
SIGNAL \show_num4[1]~output_o\ : std_logic;
SIGNAL \show_num4[2]~output_o\ : std_logic;
SIGNAL \show_num4[3]~output_o\ : std_logic;
SIGNAL \show_num4[4]~output_o\ : std_logic;
SIGNAL \show_num4[5]~output_o\ : std_logic;
SIGNAL \show_num4[6]~output_o\ : std_logic;
SIGNAL \whether_locked_forever~output_o\ : std_logic;
SIGNAL \clear_input~input_o\ : std_logic;
SIGNAL \input_module|number_hex~19_combout\ : std_logic;
SIGNAL \number_input[7]~input_o\ : std_logic;
SIGNAL \number_input[3]~input_o\ : std_logic;
SIGNAL \number_input[8]~input_o\ : std_logic;
SIGNAL \input_module|WideOr1~0_combout\ : std_logic;
SIGNAL \number_input[0]~input_o\ : std_logic;
SIGNAL \input_module|number_hex~20_combout\ : std_logic;
SIGNAL \number_input[6]~input_o\ : std_logic;
SIGNAL \number_input[2]~input_o\ : std_logic;
SIGNAL \input_module|number_hex~8_combout\ : std_logic;
SIGNAL \input_module|number_hex~9_combout\ : std_logic;
SIGNAL \input_module|number_hex~7_combout\ : std_logic;
SIGNAL \number_input[5]~input_o\ : std_logic;
SIGNAL \input_module|number_hex~3_combout\ : std_logic;
SIGNAL \delete_input~input_o\ : std_logic;
SIGNAL \input_module|number_hex~25_combout\ : std_logic;
SIGNAL \number_input[1]~input_o\ : std_logic;
SIGNAL \input_module|input_signal~4_combout\ : std_logic;
SIGNAL \input_module|number_hex~18_combout\ : std_logic;
SIGNAL \input_module|number_hex~21_combout\ : std_logic;
SIGNAL \change_module|always0~1_combout\ : std_logic;
SIGNAL \change_module|control_reg.1111~feeder_combout\ : std_logic;
SIGNAL \change_module|control_reg.1111~q\ : std_logic;
SIGNAL \change_module|Equal0~0_combout\ : std_logic;
SIGNAL \change_module|always0~2_combout\ : std_logic;
SIGNAL \change_module|compare_signal~0_combout\ : std_logic;
SIGNAL \change_module|compare_signal~1_combout\ : std_logic;
SIGNAL \change_module|compare_signal~q\ : std_logic;
SIGNAL \change_module|compare_signal~clkctrl_outclk\ : std_logic;
SIGNAL \change_module|input_reg1~0_combout\ : std_logic;
SIGNAL \change_module|input_reg4[0]~feeder_combout\ : std_logic;
SIGNAL \change_module|control_reg~10_combout\ : std_logic;
SIGNAL \change_module|control_reg.0001~q\ : std_logic;
SIGNAL \change_module|control_reg~11_combout\ : std_logic;
SIGNAL \change_module|control_reg.0011~q\ : std_logic;
SIGNAL \change_module|control_reg~12_combout\ : std_logic;
SIGNAL \change_module|control_reg.0111~q\ : std_logic;
SIGNAL \change_module|input_reg4[3]~0_combout\ : std_logic;
SIGNAL \input_module|number_hex~23_combout\ : std_logic;
SIGNAL \input_module|number_hex~24_combout\ : std_logic;
SIGNAL \change_module|input_reg1~6_combout\ : std_logic;
SIGNAL \change_module|input_reg4[3]~feeder_combout\ : std_logic;
SIGNAL \change_module|input_reg1~5_combout\ : std_logic;
SIGNAL \change_module|input_reg4[2]~feeder_combout\ : std_logic;
SIGNAL \compare_module|always0~0_combout\ : std_logic;
SIGNAL \change_module|input_reg2[3]~0_combout\ : std_logic;
SIGNAL \change_module|input_reg2[3]~1_combout\ : std_logic;
SIGNAL \compare_module|always0~2_combout\ : std_logic;
SIGNAL \change_module|input_reg1[2]~feeder_combout\ : std_logic;
SIGNAL \change_module|input_reg1[3]~1_combout\ : std_logic;
SIGNAL \change_module|input_reg1[3]~2_combout\ : std_logic;
SIGNAL \change_module|input_reg1[3]~3_combout\ : std_logic;
SIGNAL \change_module|input_reg1[0]~feeder_combout\ : std_logic;
SIGNAL \change_module|input_reg1[3]~feeder_combout\ : std_logic;
SIGNAL \compare_module|always0~3_combout\ : std_logic;
SIGNAL \compare_module|always0~4_combout\ : std_logic;
SIGNAL \compare_module|success_output~q\ : std_logic;
SIGNAL \compare_module|failure_output~0_combout\ : std_logic;
SIGNAL \compare_module|failure_output~q\ : std_logic;
SIGNAL \change_module|input_reg1~4_combout\ : std_logic;
SIGNAL \change_module|input_reg1[1]~feeder_combout\ : std_logic;
SIGNAL \show_module1|Mux6~0_combout\ : std_logic;
SIGNAL \show_module1|Mux5~0_combout\ : std_logic;
SIGNAL \show_module1|Mux4~0_combout\ : std_logic;
SIGNAL \show_module1|Mux3~0_combout\ : std_logic;
SIGNAL \show_module1|Mux2~0_combout\ : std_logic;
SIGNAL \show_module1|Mux1~0_combout\ : std_logic;
SIGNAL \show_module1|Mux0~0_combout\ : std_logic;
SIGNAL \show_module2|Mux6~0_combout\ : std_logic;
SIGNAL \show_module2|Mux5~0_combout\ : std_logic;
SIGNAL \show_module2|Mux4~0_combout\ : std_logic;
SIGNAL \show_module2|Mux3~0_combout\ : std_logic;
SIGNAL \show_module2|Mux2~0_combout\ : std_logic;
SIGNAL \show_module2|Mux1~0_combout\ : std_logic;
SIGNAL \show_module2|Mux0~0_combout\ : std_logic;
SIGNAL \change_module|input_reg3[3]~0_combout\ : std_logic;
SIGNAL \change_module|input_reg3[3]~1_combout\ : std_logic;
SIGNAL \change_module|input_reg3[2]~feeder_combout\ : std_logic;
SIGNAL \change_module|input_reg3[1]~feeder_combout\ : std_logic;
SIGNAL \show_module3|Mux6~0_combout\ : std_logic;
SIGNAL \show_module3|Mux5~0_combout\ : std_logic;
SIGNAL \show_module3|Mux4~0_combout\ : std_logic;
SIGNAL \show_module3|Mux3~0_combout\ : std_logic;
SIGNAL \show_module3|Mux2~0_combout\ : std_logic;
SIGNAL \show_module3|Mux1~0_combout\ : std_logic;
SIGNAL \show_module3|Mux0~0_combout\ : std_logic;
SIGNAL \change_module|input_reg4[1]~feeder_combout\ : std_logic;
SIGNAL \show_module4|Mux6~0_combout\ : std_logic;
SIGNAL \show_module4|Mux5~0_combout\ : std_logic;
SIGNAL \show_module4|Mux4~0_combout\ : std_logic;
SIGNAL \show_module4|Mux3~0_combout\ : std_logic;
SIGNAL \show_module4|Mux2~0_combout\ : std_logic;
SIGNAL \show_module4|Mux1~0_combout\ : std_logic;
SIGNAL \show_module4|Mux0~0_combout\ : std_logic;
SIGNAL \input_module|number_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \change_module|input_reg4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \change_module|input_reg3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \change_module|input_reg2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \change_module|input_reg1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \show_module4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \show_module4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \show_module4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \show_module4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \show_module4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \show_module4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \show_module4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \show_module3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \show_module3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \show_module3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \show_module3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \show_module3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \show_module3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \show_module3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \show_module2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \show_module2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \show_module2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \show_module2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \show_module2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \show_module2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \show_module2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \show_module1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \show_module1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \show_module1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \show_module1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \show_module1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \show_module1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \show_module1|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_number_input <= number_input;
ww_delete_input <= delete_input;
ww_clear_input <= clear_input;
ww_clock <= clock;
successful_output <= ww_successful_output;
failed_output <= ww_failed_output;
show_num1 <= ww_show_num1;
show_num2 <= ww_show_num2;
show_num3 <= ww_show_num3;
show_num4 <= ww_show_num4;
whether_locked_forever <= ww_whether_locked_forever;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\input_module|input_signal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_module|input_signal~q\);

\change_module|compare_signal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \change_module|compare_signal~q\);
\show_module4|ALT_INV_Mux0~0_combout\ <= NOT \show_module4|Mux0~0_combout\;
\show_module4|ALT_INV_Mux1~0_combout\ <= NOT \show_module4|Mux1~0_combout\;
\show_module4|ALT_INV_Mux2~0_combout\ <= NOT \show_module4|Mux2~0_combout\;
\show_module4|ALT_INV_Mux3~0_combout\ <= NOT \show_module4|Mux3~0_combout\;
\show_module4|ALT_INV_Mux4~0_combout\ <= NOT \show_module4|Mux4~0_combout\;
\show_module4|ALT_INV_Mux5~0_combout\ <= NOT \show_module4|Mux5~0_combout\;
\show_module4|ALT_INV_Mux6~0_combout\ <= NOT \show_module4|Mux6~0_combout\;
\show_module3|ALT_INV_Mux0~0_combout\ <= NOT \show_module3|Mux0~0_combout\;
\show_module3|ALT_INV_Mux1~0_combout\ <= NOT \show_module3|Mux1~0_combout\;
\show_module3|ALT_INV_Mux2~0_combout\ <= NOT \show_module3|Mux2~0_combout\;
\show_module3|ALT_INV_Mux3~0_combout\ <= NOT \show_module3|Mux3~0_combout\;
\show_module3|ALT_INV_Mux4~0_combout\ <= NOT \show_module3|Mux4~0_combout\;
\show_module3|ALT_INV_Mux5~0_combout\ <= NOT \show_module3|Mux5~0_combout\;
\show_module3|ALT_INV_Mux6~0_combout\ <= NOT \show_module3|Mux6~0_combout\;
\show_module2|ALT_INV_Mux0~0_combout\ <= NOT \show_module2|Mux0~0_combout\;
\show_module2|ALT_INV_Mux1~0_combout\ <= NOT \show_module2|Mux1~0_combout\;
\show_module2|ALT_INV_Mux2~0_combout\ <= NOT \show_module2|Mux2~0_combout\;
\show_module2|ALT_INV_Mux3~0_combout\ <= NOT \show_module2|Mux3~0_combout\;
\show_module2|ALT_INV_Mux4~0_combout\ <= NOT \show_module2|Mux4~0_combout\;
\show_module2|ALT_INV_Mux5~0_combout\ <= NOT \show_module2|Mux5~0_combout\;
\show_module2|ALT_INV_Mux6~0_combout\ <= NOT \show_module2|Mux6~0_combout\;
\show_module1|ALT_INV_Mux0~0_combout\ <= NOT \show_module1|Mux0~0_combout\;
\show_module1|ALT_INV_Mux1~0_combout\ <= NOT \show_module1|Mux1~0_combout\;
\show_module1|ALT_INV_Mux2~0_combout\ <= NOT \show_module1|Mux2~0_combout\;
\show_module1|ALT_INV_Mux3~0_combout\ <= NOT \show_module1|Mux3~0_combout\;
\show_module1|ALT_INV_Mux4~0_combout\ <= NOT \show_module1|Mux4~0_combout\;
\show_module1|ALT_INV_Mux5~0_combout\ <= NOT \show_module1|Mux5~0_combout\;
\show_module1|ALT_INV_Mux6~0_combout\ <= NOT \show_module1|Mux6~0_combout\;

-- Location: LCCOMB_X36_Y12_N22
\compare_module|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \compare_module|always0~1_combout\ = (!\change_module|input_reg3\(1) & (!\change_module|input_reg3\(2) & (!\change_module|input_reg3\(3) & !\change_module|input_reg3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg3\(1),
	datab => \change_module|input_reg3\(2),
	datac => \change_module|input_reg3\(3),
	datad => \change_module|input_reg3\(0),
	combout => \compare_module|always0~1_combout\);

-- Location: FF_X40_Y13_N9
\input_module|input_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \input_module|input_signal~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_module|input_signal~q\);

-- Location: FF_X40_Y12_N5
\change_module|control_reg.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|control_reg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|control_reg.0000~q\);

-- Location: LCCOMB_X38_Y12_N30
\input_module|WideOr1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|WideOr1~1_combout\ = (\number_input[6]~input_o\ & ((\number_input[2]~input_o\ & (\number_input[5]~input_o\ $ (\number_input[1]~input_o\))) # (!\number_input[2]~input_o\ & (\number_input[5]~input_o\ & \number_input[1]~input_o\)))) # 
-- (!\number_input[6]~input_o\ & (\number_input[2]~input_o\ & (\number_input[5]~input_o\ & \number_input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[6]~input_o\,
	datab => \number_input[2]~input_o\,
	datac => \number_input[5]~input_o\,
	datad => \number_input[1]~input_o\,
	combout => \input_module|WideOr1~1_combout\);

-- Location: LCCOMB_X40_Y13_N10
\input_module|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|WideOr0~0_combout\ = (\number_input[5]~input_o\ & ((\number_input[4]~input_o\ & (\number_input[3]~input_o\ $ (\number_input[6]~input_o\))) # (!\number_input[4]~input_o\ & (\number_input[3]~input_o\ & \number_input[6]~input_o\)))) # 
-- (!\number_input[5]~input_o\ & (\number_input[4]~input_o\ & (\number_input[3]~input_o\ & \number_input[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[5]~input_o\,
	datab => \number_input[4]~input_o\,
	datac => \number_input[3]~input_o\,
	datad => \number_input[6]~input_o\,
	combout => \input_module|WideOr0~0_combout\);

-- Location: LCCOMB_X38_Y12_N10
\input_module|number_hex~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~22_combout\ = (\number_input[4]~input_o\ & (\number_input[5]~input_o\ & (\number_input[3]~input_o\ & \number_input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[4]~input_o\,
	datab => \number_input[5]~input_o\,
	datac => \number_input[3]~input_o\,
	datad => \number_input[2]~input_o\,
	combout => \input_module|number_hex~22_combout\);

-- Location: LCCOMB_X40_Y13_N26
\input_module|input_signal~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|input_signal~5_combout\ = (\number_input[3]~input_o\ & ((\number_input[8]~input_o\ & (\number_input[7]~input_o\ $ (\number_input[6]~input_o\))) # (!\number_input[8]~input_o\ & (\number_input[7]~input_o\ & \number_input[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[8]~input_o\,
	datab => \number_input[7]~input_o\,
	datac => \number_input[3]~input_o\,
	datad => \number_input[6]~input_o\,
	combout => \input_module|input_signal~5_combout\);

-- Location: LCCOMB_X40_Y13_N0
\input_module|input_signal~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|input_signal~6_combout\ = (\number_input[5]~input_o\ & (\input_module|input_signal~4_combout\ & (\input_module|input_signal~5_combout\ & \number_input[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[5]~input_o\,
	datab => \input_module|input_signal~4_combout\,
	datac => \input_module|input_signal~5_combout\,
	datad => \number_input[4]~input_o\,
	combout => \input_module|input_signal~6_combout\);

-- Location: LCCOMB_X40_Y13_N22
\input_module|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|WideOr3~0_combout\ = (\number_input[3]~input_o\ & ((\number_input[2]~input_o\ & (\number_input[1]~input_o\ $ (\number_input[0]~input_o\))) # (!\number_input[2]~input_o\ & (\number_input[1]~input_o\ & \number_input[0]~input_o\)))) # 
-- (!\number_input[3]~input_o\ & (\number_input[2]~input_o\ & (\number_input[1]~input_o\ & \number_input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[3]~input_o\,
	datab => \number_input[2]~input_o\,
	datac => \number_input[1]~input_o\,
	datad => \number_input[0]~input_o\,
	combout => \input_module|WideOr3~0_combout\);

-- Location: LCCOMB_X40_Y13_N12
\input_module|input_signal~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|input_signal~7_combout\ = (\number_input[4]~input_o\ & ((\number_input[5]~input_o\ & (\input_module|WideOr3~0_combout\)) # (!\number_input[5]~input_o\ & ((\input_module|input_signal~10_combout\))))) # (!\number_input[4]~input_o\ & 
-- (((\input_module|input_signal~10_combout\ & \number_input[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_module|WideOr3~0_combout\,
	datab => \number_input[4]~input_o\,
	datac => \input_module|input_signal~10_combout\,
	datad => \number_input[5]~input_o\,
	combout => \input_module|input_signal~7_combout\);

-- Location: LCCOMB_X40_Y13_N8
\input_module|input_signal~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|input_signal~8_combout\ = ((\input_module|input_signal~6_combout\) # ((\input_module|input_signal~7_combout\ & \input_module|input_signal~9_combout\))) # (!\input_module|number_hex~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_module|input_signal~7_combout\,
	datab => \input_module|input_signal~9_combout\,
	datac => \input_module|number_hex~19_combout\,
	datad => \input_module|input_signal~6_combout\,
	combout => \input_module|input_signal~8_combout\);

-- Location: LCCOMB_X40_Y12_N4
\change_module|control_reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|control_reg~9_combout\ = (!\change_module|always0~2_combout\ & ((\change_module|always0~1_combout\) # ((\change_module|control_reg.0000~q\ & \change_module|input_reg1[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|always0~2_combout\,
	datab => \change_module|always0~1_combout\,
	datac => \change_module|control_reg.0000~q\,
	datad => \change_module|input_reg1[3]~2_combout\,
	combout => \change_module|control_reg~9_combout\);

-- Location: LCCOMB_X40_Y13_N24
\input_module|input_signal~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|input_signal~9_combout\ = (\number_input[8]~input_o\ & (\number_input[7]~input_o\ & \number_input[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[8]~input_o\,
	datac => \number_input[7]~input_o\,
	datad => \number_input[6]~input_o\,
	combout => \input_module|input_signal~9_combout\);

-- Location: LCCOMB_X40_Y13_N4
\input_module|input_signal~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|input_signal~10_combout\ = (\number_input[3]~input_o\ & (\number_input[2]~input_o\ & (\number_input[1]~input_o\ & \number_input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[3]~input_o\,
	datab => \number_input[2]~input_o\,
	datac => \number_input[1]~input_o\,
	datad => \number_input[0]~input_o\,
	combout => \input_module|input_signal~10_combout\);

-- Location: IOIBUF_X41_Y3_N22
\number_input[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number_input(4),
	o => \number_input[4]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: CLKCTRL_G5
\input_module|input_signal~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \input_module|input_signal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \input_module|input_signal~clkctrl_outclk\);

-- Location: IOOBUF_X41_Y19_N9
\successful_output~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \compare_module|success_output~q\,
	devoe => ww_devoe,
	o => \successful_output~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\failed_output~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \compare_module|failure_output~q\,
	devoe => ww_devoe,
	o => \failed_output~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\show_num1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \show_num1[0]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\show_num1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module1|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \show_num1[1]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\show_num1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module1|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \show_num1[2]~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\show_num1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module1|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \show_num1[3]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\show_num1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module1|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \show_num1[4]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\show_num1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \show_num1[5]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\show_num1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \show_num1[6]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\show_num2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \show_num2[0]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\show_num2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \show_num2[1]~output_o\);

-- Location: IOOBUF_X41_Y2_N2
\show_num2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module2|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \show_num2[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\show_num2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module2|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \show_num2[3]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\show_num2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \show_num2[4]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\show_num2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \show_num2[5]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\show_num2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \show_num2[6]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\show_num3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \show_num3[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\show_num3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module3|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \show_num3[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\show_num3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module3|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \show_num3[2]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\show_num3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module3|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \show_num3[3]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\show_num3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \show_num3[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\show_num3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module3|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \show_num3[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\show_num3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \show_num3[6]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\show_num4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \show_num4[0]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\show_num4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module4|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \show_num4[1]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\show_num4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module4|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \show_num4[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\show_num4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module4|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \show_num4[3]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\show_num4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module4|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \show_num4[4]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\show_num4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module4|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \show_num4[5]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\show_num4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_module4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \show_num4[6]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\whether_locked_forever~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \whether_locked_forever~output_o\);

-- Location: IOIBUF_X41_Y14_N8
\clear_input~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_input,
	o => \clear_input~input_o\);

-- Location: LCCOMB_X38_Y12_N0
\input_module|number_hex~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~19_combout\ = (!\delete_input~input_o\ & !\clear_input~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delete_input~input_o\,
	datad => \clear_input~input_o\,
	combout => \input_module|number_hex~19_combout\);

-- Location: IOIBUF_X0_Y14_N22
\number_input[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number_input(7),
	o => \number_input[7]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\number_input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number_input(3),
	o => \number_input[3]~input_o\);

-- Location: IOIBUF_X41_Y13_N8
\number_input[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number_input(8),
	o => \number_input[8]~input_o\);

-- Location: LCCOMB_X38_Y12_N16
\input_module|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|WideOr1~0_combout\ = (\number_input[4]~input_o\ & (\number_input[7]~input_o\ & (\number_input[3]~input_o\ & \number_input[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[4]~input_o\,
	datab => \number_input[7]~input_o\,
	datac => \number_input[3]~input_o\,
	datad => \number_input[8]~input_o\,
	combout => \input_module|WideOr1~0_combout\);

-- Location: IOIBUF_X41_Y13_N15
\number_input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number_input(0),
	o => \number_input[0]~input_o\);

-- Location: LCCOMB_X38_Y12_N14
\input_module|number_hex~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~20_combout\ = ((\input_module|WideOr1~1_combout\ & (\input_module|WideOr1~0_combout\ & \number_input[0]~input_o\))) # (!\input_module|number_hex~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_module|WideOr1~1_combout\,
	datab => \input_module|number_hex~19_combout\,
	datac => \input_module|WideOr1~0_combout\,
	datad => \number_input[0]~input_o\,
	combout => \input_module|number_hex~20_combout\);

-- Location: FF_X38_Y12_N15
\input_module|number_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \input_module|number_hex~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_module|number_hex\(1));

-- Location: IOIBUF_X41_Y13_N22
\number_input[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number_input(6),
	o => \number_input[6]~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\number_input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number_input(2),
	o => \number_input[2]~input_o\);

-- Location: LCCOMB_X40_Y12_N10
\input_module|number_hex~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~8_combout\ = (\number_input[0]~input_o\ & (\number_input[6]~input_o\ & (\number_input[8]~input_o\ & \number_input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[0]~input_o\,
	datab => \number_input[6]~input_o\,
	datac => \number_input[8]~input_o\,
	datad => \number_input[2]~input_o\,
	combout => \input_module|number_hex~8_combout\);

-- Location: LCCOMB_X39_Y12_N28
\input_module|number_hex~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~9_combout\ = (\number_input[6]~input_o\ & ((\number_input[0]~input_o\ & (\number_input[8]~input_o\ $ (\number_input[2]~input_o\))) # (!\number_input[0]~input_o\ & (\number_input[8]~input_o\ & \number_input[2]~input_o\)))) # 
-- (!\number_input[6]~input_o\ & (\number_input[0]~input_o\ & (\number_input[8]~input_o\ & \number_input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[6]~input_o\,
	datab => \number_input[0]~input_o\,
	datac => \number_input[8]~input_o\,
	datad => \number_input[2]~input_o\,
	combout => \input_module|number_hex~9_combout\);

-- Location: LCCOMB_X38_Y12_N12
\input_module|number_hex~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~7_combout\ = (\number_input[4]~input_o\ & ((\input_module|number_hex~9_combout\))) # (!\number_input[4]~input_o\ & (\input_module|number_hex~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[4]~input_o\,
	datab => \input_module|number_hex~8_combout\,
	datad => \input_module|number_hex~9_combout\,
	combout => \input_module|number_hex~7_combout\);

-- Location: IOIBUF_X41_Y14_N15
\number_input[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number_input(5),
	o => \number_input[5]~input_o\);

-- Location: LCCOMB_X38_Y12_N24
\input_module|number_hex~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~3_combout\ = (\number_input[1]~input_o\ & (\input_module|number_hex~7_combout\ & (\number_input[5]~input_o\ & \number_input[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[1]~input_o\,
	datab => \input_module|number_hex~7_combout\,
	datac => \number_input[5]~input_o\,
	datad => \number_input[7]~input_o\,
	combout => \input_module|number_hex~3_combout\);

-- Location: IOIBUF_X30_Y0_N15
\delete_input~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_delete_input,
	o => \delete_input~input_o\);

-- Location: LCCOMB_X38_Y12_N8
\input_module|number_hex~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~25_combout\ = (!\delete_input~input_o\ & ((\clear_input~input_o\) # ((\number_input[3]~input_o\ & \input_module|number_hex~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[3]~input_o\,
	datab => \input_module|number_hex~3_combout\,
	datac => \delete_input~input_o\,
	datad => \clear_input~input_o\,
	combout => \input_module|number_hex~25_combout\);

-- Location: FF_X38_Y12_N9
\input_module|number_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \input_module|number_hex~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_module|number_hex\(0));

-- Location: IOIBUF_X41_Y10_N1
\number_input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_number_input(1),
	o => \number_input[1]~input_o\);

-- Location: LCCOMB_X40_Y13_N20
\input_module|input_signal~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|input_signal~4_combout\ = (\number_input[0]~input_o\ & (\number_input[2]~input_o\ & \number_input[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[0]~input_o\,
	datab => \number_input[2]~input_o\,
	datac => \number_input[1]~input_o\,
	combout => \input_module|input_signal~4_combout\);

-- Location: LCCOMB_X40_Y13_N18
\input_module|number_hex~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~18_combout\ = (\number_input[7]~input_o\ & \number_input[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \number_input[7]~input_o\,
	datad => \number_input[8]~input_o\,
	combout => \input_module|number_hex~18_combout\);

-- Location: LCCOMB_X40_Y13_N30
\input_module|number_hex~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~21_combout\ = (\input_module|WideOr0~0_combout\ & (\input_module|input_signal~4_combout\ & (\input_module|number_hex~19_combout\ & \input_module|number_hex~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_module|WideOr0~0_combout\,
	datab => \input_module|input_signal~4_combout\,
	datac => \input_module|number_hex~19_combout\,
	datad => \input_module|number_hex~18_combout\,
	combout => \input_module|number_hex~21_combout\);

-- Location: FF_X38_Y12_N13
\input_module|number_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input_module|number_hex~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_module|number_hex\(2));

-- Location: LCCOMB_X38_Y12_N4
\change_module|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|always0~1_combout\ = (\input_module|number_hex\(3) & (!\input_module|number_hex\(1) & ((!\input_module|number_hex\(2))))) # (!\input_module|number_hex\(3) & ((\input_module|number_hex\(1)) # ((\input_module|number_hex\(0)) # 
-- (\input_module|number_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_module|number_hex\(3),
	datab => \input_module|number_hex\(1),
	datac => \input_module|number_hex\(0),
	datad => \input_module|number_hex\(2),
	combout => \change_module|always0~1_combout\);

-- Location: LCCOMB_X37_Y12_N8
\change_module|control_reg.1111~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|control_reg.1111~feeder_combout\ = \change_module|compare_signal~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \change_module|compare_signal~0_combout\,
	combout => \change_module|control_reg.1111~feeder_combout\);

-- Location: FF_X37_Y12_N9
\change_module|control_reg.1111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|control_reg.1111~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|control_reg.1111~q\);

-- Location: LCCOMB_X38_Y12_N22
\change_module|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|Equal0~0_combout\ = (\input_module|number_hex\(3) & (\input_module|number_hex\(1) & !\input_module|number_hex\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_module|number_hex\(3),
	datac => \input_module|number_hex\(1),
	datad => \input_module|number_hex\(2),
	combout => \change_module|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y12_N16
\change_module|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|always0~2_combout\ = (\change_module|control_reg.1111~q\) # ((\input_module|number_hex\(0) & \change_module|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_module|number_hex\(0),
	datac => \change_module|control_reg.1111~q\,
	datad => \change_module|Equal0~0_combout\,
	combout => \change_module|always0~2_combout\);

-- Location: LCCOMB_X38_Y12_N2
\change_module|compare_signal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|compare_signal~0_combout\ = (\change_module|control_reg.0111~q\ & (\change_module|always0~1_combout\ & !\change_module|always0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|control_reg.0111~q\,
	datab => \change_module|always0~1_combout\,
	datac => \change_module|always0~2_combout\,
	combout => \change_module|compare_signal~0_combout\);

-- Location: LCCOMB_X38_Y12_N28
\change_module|compare_signal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|compare_signal~1_combout\ = (\change_module|Equal0~0_combout\) # ((\change_module|always0~1_combout\) # (\change_module|control_reg.1111~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|Equal0~0_combout\,
	datac => \change_module|always0~1_combout\,
	datad => \change_module|control_reg.1111~q\,
	combout => \change_module|compare_signal~1_combout\);

-- Location: FF_X38_Y12_N1
\change_module|compare_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	asdata => \change_module|compare_signal~0_combout\,
	sload => VCC,
	ena => \change_module|compare_signal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|compare_signal~q\);

-- Location: CLKCTRL_G9
\change_module|compare_signal~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \change_module|compare_signal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \change_module|compare_signal~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y12_N30
\change_module|input_reg1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1~0_combout\ = (\change_module|always0~1_combout\ & (\input_module|number_hex\(0) & (!\change_module|control_reg.1111~q\ & !\change_module|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|always0~1_combout\,
	datab => \input_module|number_hex\(0),
	datac => \change_module|control_reg.1111~q\,
	datad => \change_module|Equal0~0_combout\,
	combout => \change_module|input_reg1~0_combout\);

-- Location: LCCOMB_X35_Y12_N28
\change_module|input_reg4[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg4[0]~feeder_combout\ = \change_module|input_reg1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \change_module|input_reg1~0_combout\,
	combout => \change_module|input_reg4[0]~feeder_combout\);

-- Location: LCCOMB_X39_Y12_N26
\change_module|control_reg~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|control_reg~10_combout\ = (!\change_module|always0~2_combout\ & ((\change_module|always0~1_combout\ & (!\change_module|control_reg.0000~q\)) # (!\change_module|always0~1_combout\ & ((\change_module|control_reg.0011~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|control_reg.0000~q\,
	datab => \change_module|always0~1_combout\,
	datac => \change_module|control_reg.0011~q\,
	datad => \change_module|always0~2_combout\,
	combout => \change_module|control_reg~10_combout\);

-- Location: FF_X39_Y12_N27
\change_module|control_reg.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|control_reg~10_combout\,
	ena => \change_module|compare_signal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|control_reg.0001~q\);

-- Location: LCCOMB_X38_Y12_N6
\change_module|control_reg~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|control_reg~11_combout\ = (!\change_module|always0~2_combout\ & ((\change_module|always0~1_combout\ & ((\change_module|control_reg.0001~q\))) # (!\change_module|always0~1_combout\ & (\change_module|control_reg.0111~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|control_reg.0111~q\,
	datab => \change_module|control_reg.0001~q\,
	datac => \change_module|always0~2_combout\,
	datad => \change_module|always0~1_combout\,
	combout => \change_module|control_reg~11_combout\);

-- Location: FF_X38_Y12_N7
\change_module|control_reg.0011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|control_reg~11_combout\,
	ena => \change_module|compare_signal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|control_reg.0011~q\);

-- Location: LCCOMB_X35_Y12_N30
\change_module|control_reg~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|control_reg~12_combout\ = (\change_module|always0~1_combout\ & (\change_module|control_reg.0011~q\ & !\change_module|always0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|always0~1_combout\,
	datac => \change_module|control_reg.0011~q\,
	datad => \change_module|always0~2_combout\,
	combout => \change_module|control_reg~12_combout\);

-- Location: FF_X35_Y12_N31
\change_module|control_reg.0111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|control_reg~12_combout\,
	ena => \change_module|compare_signal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|control_reg.0111~q\);

-- Location: LCCOMB_X35_Y12_N16
\change_module|input_reg4[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg4[3]~0_combout\ = (\change_module|always0~2_combout\) # ((\change_module|always0~1_combout\ & \change_module|control_reg.0111~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|always0~1_combout\,
	datac => \change_module|control_reg.0111~q\,
	datad => \change_module|always0~2_combout\,
	combout => \change_module|input_reg4[3]~0_combout\);

-- Location: FF_X35_Y12_N29
\change_module|input_reg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg4[0]~feeder_combout\,
	ena => \change_module|input_reg4[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg4\(0));

-- Location: LCCOMB_X38_Y12_N18
\input_module|number_hex~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~23_combout\ = (\number_input[0]~input_o\ & (\number_input[1]~input_o\ & (\number_input[7]~input_o\ $ (\number_input[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \number_input[0]~input_o\,
	datab => \number_input[7]~input_o\,
	datac => \number_input[8]~input_o\,
	datad => \number_input[1]~input_o\,
	combout => \input_module|number_hex~23_combout\);

-- Location: LCCOMB_X38_Y12_N26
\input_module|number_hex~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \input_module|number_hex~24_combout\ = ((\input_module|number_hex~22_combout\ & (\input_module|number_hex~23_combout\ & \number_input[6]~input_o\))) # (!\input_module|number_hex~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_module|number_hex~22_combout\,
	datab => \input_module|number_hex~23_combout\,
	datac => \input_module|number_hex~19_combout\,
	datad => \number_input[6]~input_o\,
	combout => \input_module|number_hex~24_combout\);

-- Location: FF_X38_Y12_N27
\input_module|number_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \input_module|number_hex~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_module|number_hex\(3));

-- Location: LCCOMB_X37_Y12_N10
\change_module|input_reg1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1~6_combout\ = (\change_module|always0~1_combout\ & (\input_module|number_hex\(3) & !\change_module|always0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|always0~1_combout\,
	datab => \input_module|number_hex\(3),
	datad => \change_module|always0~2_combout\,
	combout => \change_module|input_reg1~6_combout\);

-- Location: LCCOMB_X35_Y12_N22
\change_module|input_reg4[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg4[3]~feeder_combout\ = \change_module|input_reg1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \change_module|input_reg1~6_combout\,
	combout => \change_module|input_reg4[3]~feeder_combout\);

-- Location: FF_X35_Y12_N23
\change_module|input_reg4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg4[3]~feeder_combout\,
	ena => \change_module|input_reg4[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg4\(3));

-- Location: LCCOMB_X37_Y12_N0
\change_module|input_reg1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1~5_combout\ = (!\change_module|control_reg.1111~q\ & (\input_module|number_hex\(2) & !\input_module|number_hex\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|control_reg.1111~q\,
	datab => \input_module|number_hex\(2),
	datad => \input_module|number_hex\(3),
	combout => \change_module|input_reg1~5_combout\);

-- Location: LCCOMB_X35_Y12_N24
\change_module|input_reg4[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg4[2]~feeder_combout\ = \change_module|input_reg1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_module|input_reg1~5_combout\,
	combout => \change_module|input_reg4[2]~feeder_combout\);

-- Location: FF_X35_Y12_N25
\change_module|input_reg4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg4[2]~feeder_combout\,
	ena => \change_module|input_reg4[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg4\(2));

-- Location: LCCOMB_X35_Y12_N20
\compare_module|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \compare_module|always0~0_combout\ = (!\change_module|input_reg4\(1) & (!\change_module|input_reg4\(0) & (!\change_module|input_reg4\(3) & !\change_module|input_reg4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg4\(1),
	datab => \change_module|input_reg4\(0),
	datac => \change_module|input_reg4\(3),
	datad => \change_module|input_reg4\(2),
	combout => \compare_module|always0~0_combout\);

-- Location: LCCOMB_X37_Y12_N28
\change_module|input_reg2[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg2[3]~0_combout\ = ((\input_module|number_hex\(0)) # (!\change_module|control_reg.0011~q\)) # (!\change_module|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_module|Equal0~0_combout\,
	datac => \input_module|number_hex\(0),
	datad => \change_module|control_reg.0011~q\,
	combout => \change_module|input_reg2[3]~0_combout\);

-- Location: LCCOMB_X37_Y12_N18
\change_module|input_reg2[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg2[3]~1_combout\ = (\change_module|always0~2_combout\) # ((\change_module|always0~1_combout\ & (\change_module|control_reg.0001~q\)) # (!\change_module|always0~1_combout\ & ((!\change_module|input_reg2[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|always0~1_combout\,
	datab => \change_module|always0~2_combout\,
	datac => \change_module|control_reg.0001~q\,
	datad => \change_module|input_reg2[3]~0_combout\,
	combout => \change_module|input_reg2[3]~1_combout\);

-- Location: FF_X37_Y12_N5
\change_module|input_reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	asdata => \change_module|input_reg1~0_combout\,
	sload => VCC,
	ena => \change_module|input_reg2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg2\(0));

-- Location: FF_X37_Y12_N23
\change_module|input_reg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	asdata => \change_module|input_reg1~6_combout\,
	sload => VCC,
	ena => \change_module|input_reg2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg2\(3));

-- Location: FF_X37_Y12_N25
\change_module|input_reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	asdata => \change_module|input_reg1~5_combout\,
	sload => VCC,
	ena => \change_module|input_reg2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg2\(2));

-- Location: LCCOMB_X37_Y12_N14
\compare_module|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \compare_module|always0~2_combout\ = (!\change_module|input_reg2\(1) & (!\change_module|input_reg2\(0) & (!\change_module|input_reg2\(3) & !\change_module|input_reg2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg2\(1),
	datab => \change_module|input_reg2\(0),
	datac => \change_module|input_reg2\(3),
	datad => \change_module|input_reg2\(2),
	combout => \compare_module|always0~2_combout\);

-- Location: LCCOMB_X39_Y12_N16
\change_module|input_reg1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1[2]~feeder_combout\ = \change_module|input_reg1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \change_module|input_reg1~5_combout\,
	combout => \change_module|input_reg1[2]~feeder_combout\);

-- Location: LCCOMB_X38_Y12_N20
\change_module|input_reg1[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1[3]~1_combout\ = (\input_module|number_hex\(0)) # (!\input_module|number_hex\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_module|number_hex\(0),
	datad => \input_module|number_hex\(1),
	combout => \change_module|input_reg1[3]~1_combout\);

-- Location: LCCOMB_X39_Y12_N4
\change_module|input_reg1[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1[3]~2_combout\ = ((\input_module|number_hex\(2)) # ((\change_module|input_reg1[3]~1_combout\) # (!\change_module|control_reg.0001~q\))) # (!\input_module|number_hex\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_module|number_hex\(3),
	datab => \input_module|number_hex\(2),
	datac => \change_module|control_reg.0001~q\,
	datad => \change_module|input_reg1[3]~1_combout\,
	combout => \change_module|input_reg1[3]~2_combout\);

-- Location: LCCOMB_X39_Y12_N22
\change_module|input_reg1[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1[3]~3_combout\ = (\change_module|always0~2_combout\) # ((\change_module|always0~1_combout\ & (!\change_module|control_reg.0000~q\)) # (!\change_module|always0~1_combout\ & ((!\change_module|input_reg1[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|control_reg.0000~q\,
	datab => \change_module|always0~1_combout\,
	datac => \change_module|input_reg1[3]~2_combout\,
	datad => \change_module|always0~2_combout\,
	combout => \change_module|input_reg1[3]~3_combout\);

-- Location: FF_X39_Y12_N17
\change_module|input_reg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg1[2]~feeder_combout\,
	ena => \change_module|input_reg1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg1\(2));

-- Location: LCCOMB_X39_Y12_N8
\change_module|input_reg1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1[0]~feeder_combout\ = \change_module|input_reg1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_module|input_reg1~0_combout\,
	combout => \change_module|input_reg1[0]~feeder_combout\);

-- Location: FF_X39_Y12_N9
\change_module|input_reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg1[0]~feeder_combout\,
	ena => \change_module|input_reg1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg1\(0));

-- Location: LCCOMB_X39_Y12_N18
\change_module|input_reg1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1[3]~feeder_combout\ = \change_module|input_reg1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \change_module|input_reg1~6_combout\,
	combout => \change_module|input_reg1[3]~feeder_combout\);

-- Location: FF_X39_Y12_N19
\change_module|input_reg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg1[3]~feeder_combout\,
	ena => \change_module|input_reg1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg1\(3));

-- Location: LCCOMB_X39_Y12_N24
\compare_module|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \compare_module|always0~3_combout\ = (!\change_module|input_reg1\(1) & (!\change_module|input_reg1\(2) & (!\change_module|input_reg1\(0) & !\change_module|input_reg1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg1\(1),
	datab => \change_module|input_reg1\(2),
	datac => \change_module|input_reg1\(0),
	datad => \change_module|input_reg1\(3),
	combout => \compare_module|always0~3_combout\);

-- Location: LCCOMB_X36_Y12_N20
\compare_module|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \compare_module|always0~4_combout\ = (\compare_module|always0~1_combout\ & (\compare_module|always0~0_combout\ & (\compare_module|always0~2_combout\ & \compare_module|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compare_module|always0~1_combout\,
	datab => \compare_module|always0~0_combout\,
	datac => \compare_module|always0~2_combout\,
	datad => \compare_module|always0~3_combout\,
	combout => \compare_module|always0~4_combout\);

-- Location: FF_X36_Y12_N21
\compare_module|success_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \change_module|compare_signal~clkctrl_outclk\,
	d => \compare_module|always0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compare_module|success_output~q\);

-- Location: LCCOMB_X36_Y12_N2
\compare_module|failure_output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \compare_module|failure_output~0_combout\ = !\compare_module|always0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compare_module|always0~4_combout\,
	combout => \compare_module|failure_output~0_combout\);

-- Location: FF_X36_Y12_N3
\compare_module|failure_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \change_module|compare_signal~clkctrl_outclk\,
	d => \compare_module|failure_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compare_module|failure_output~q\);

-- Location: LCCOMB_X37_Y12_N26
\change_module|input_reg1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1~4_combout\ = (!\change_module|control_reg.1111~q\ & (\input_module|number_hex\(1) & !\input_module|number_hex\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|control_reg.1111~q\,
	datab => \input_module|number_hex\(1),
	datad => \input_module|number_hex\(3),
	combout => \change_module|input_reg1~4_combout\);

-- Location: LCCOMB_X39_Y12_N30
\change_module|input_reg1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg1[1]~feeder_combout\ = \change_module|input_reg1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_module|input_reg1~4_combout\,
	combout => \change_module|input_reg1[1]~feeder_combout\);

-- Location: FF_X39_Y12_N31
\change_module|input_reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg1[1]~feeder_combout\,
	ena => \change_module|input_reg1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg1\(1));

-- Location: LCCOMB_X40_Y12_N28
\show_module1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module1|Mux6~0_combout\ = (\change_module|input_reg1\(1) & (!\change_module|input_reg1\(3) & ((!\change_module|input_reg1\(2)) # (!\change_module|input_reg1\(0))))) # (!\change_module|input_reg1\(1) & ((\change_module|input_reg1\(3) $ 
-- (\change_module|input_reg1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg1\(0),
	datab => \change_module|input_reg1\(1),
	datac => \change_module|input_reg1\(3),
	datad => \change_module|input_reg1\(2),
	combout => \show_module1|Mux6~0_combout\);

-- Location: LCCOMB_X40_Y12_N22
\show_module1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module1|Mux5~0_combout\ = (\change_module|input_reg1\(1) & (!\change_module|input_reg1\(0) & (!\change_module|input_reg1\(3) & \change_module|input_reg1\(2)))) # (!\change_module|input_reg1\(1) & ((\change_module|input_reg1\(3) $ 
-- (\change_module|input_reg1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg1\(0),
	datab => \change_module|input_reg1\(1),
	datac => \change_module|input_reg1\(3),
	datad => \change_module|input_reg1\(2),
	combout => \show_module1|Mux5~0_combout\);

-- Location: LCCOMB_X40_Y12_N12
\show_module1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module1|Mux4~0_combout\ = (!\change_module|input_reg1\(0) & ((\change_module|input_reg1\(1) & (!\change_module|input_reg1\(3))) # (!\change_module|input_reg1\(1) & (\change_module|input_reg1\(3) & !\change_module|input_reg1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg1\(0),
	datab => \change_module|input_reg1\(1),
	datac => \change_module|input_reg1\(3),
	datad => \change_module|input_reg1\(2),
	combout => \show_module1|Mux4~0_combout\);

-- Location: LCCOMB_X40_Y12_N14
\show_module1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module1|Mux3~0_combout\ = (\change_module|input_reg1\(3) & (((!\change_module|input_reg1\(1) & !\change_module|input_reg1\(2))))) # (!\change_module|input_reg1\(3) & (\change_module|input_reg1\(1) $ (((\change_module|input_reg1\(0) & 
-- \change_module|input_reg1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg1\(0),
	datab => \change_module|input_reg1\(1),
	datac => \change_module|input_reg1\(3),
	datad => \change_module|input_reg1\(2),
	combout => \show_module1|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y12_N20
\show_module1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module1|Mux2~0_combout\ = (\change_module|input_reg1\(3) & (!\change_module|input_reg1\(1) & (!\change_module|input_reg1\(2)))) # (!\change_module|input_reg1\(3) & (((\change_module|input_reg1\(2)) # (\change_module|input_reg1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg1\(3),
	datab => \change_module|input_reg1\(1),
	datac => \change_module|input_reg1\(2),
	datad => \change_module|input_reg1\(0),
	combout => \show_module1|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y12_N20
\show_module1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module1|Mux1~0_combout\ = (\change_module|input_reg1\(1) & (!\change_module|input_reg1\(3) & ((\change_module|input_reg1\(0)) # (!\change_module|input_reg1\(2))))) # (!\change_module|input_reg1\(1) & (\change_module|input_reg1\(2) $ 
-- (((\change_module|input_reg1\(0)) # (\change_module|input_reg1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg1\(0),
	datab => \change_module|input_reg1\(1),
	datac => \change_module|input_reg1\(3),
	datad => \change_module|input_reg1\(2),
	combout => \show_module1|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y12_N18
\show_module1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module1|Mux0~0_combout\ = (\change_module|input_reg1\(1) & (((!\change_module|input_reg1\(3))))) # (!\change_module|input_reg1\(1) & ((\change_module|input_reg1\(3) & ((!\change_module|input_reg1\(2)))) # (!\change_module|input_reg1\(3) & 
-- (\change_module|input_reg1\(0) & \change_module|input_reg1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg1\(0),
	datab => \change_module|input_reg1\(1),
	datac => \change_module|input_reg1\(3),
	datad => \change_module|input_reg1\(2),
	combout => \show_module1|Mux0~0_combout\);

-- Location: FF_X37_Y12_N7
\change_module|input_reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	asdata => \change_module|input_reg1~4_combout\,
	sload => VCC,
	ena => \change_module|input_reg2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg2\(1));

-- Location: LCCOMB_X37_Y12_N6
\show_module2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module2|Mux6~0_combout\ = (\change_module|input_reg2\(1) & (!\change_module|input_reg2\(3) & ((!\change_module|input_reg2\(2)) # (!\change_module|input_reg2\(0))))) # (!\change_module|input_reg2\(1) & (\change_module|input_reg2\(3) $ 
-- (((\change_module|input_reg2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg2\(3),
	datab => \change_module|input_reg2\(0),
	datac => \change_module|input_reg2\(1),
	datad => \change_module|input_reg2\(2),
	combout => \show_module2|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y12_N24
\show_module2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module2|Mux5~0_combout\ = (\change_module|input_reg2\(1) & (!\change_module|input_reg2\(0) & (\change_module|input_reg2\(2) & !\change_module|input_reg2\(3)))) # (!\change_module|input_reg2\(1) & ((\change_module|input_reg2\(2) $ 
-- (\change_module|input_reg2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg2\(1),
	datab => \change_module|input_reg2\(0),
	datac => \change_module|input_reg2\(2),
	datad => \change_module|input_reg2\(3),
	combout => \show_module2|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y12_N4
\show_module2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module2|Mux4~0_combout\ = (!\change_module|input_reg2\(0) & ((\change_module|input_reg2\(1) & (!\change_module|input_reg2\(3))) # (!\change_module|input_reg2\(1) & (\change_module|input_reg2\(3) & !\change_module|input_reg2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg2\(1),
	datab => \change_module|input_reg2\(3),
	datac => \change_module|input_reg2\(0),
	datad => \change_module|input_reg2\(2),
	combout => \show_module2|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y12_N22
\show_module2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module2|Mux3~0_combout\ = (\change_module|input_reg2\(3) & (!\change_module|input_reg2\(1) & ((!\change_module|input_reg2\(2))))) # (!\change_module|input_reg2\(3) & (\change_module|input_reg2\(1) $ (((\change_module|input_reg2\(0) & 
-- \change_module|input_reg2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg2\(1),
	datab => \change_module|input_reg2\(0),
	datac => \change_module|input_reg2\(3),
	datad => \change_module|input_reg2\(2),
	combout => \show_module2|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y12_N12
\show_module2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module2|Mux2~0_combout\ = (\change_module|input_reg2\(3) & (!\change_module|input_reg2\(1) & ((!\change_module|input_reg2\(2))))) # (!\change_module|input_reg2\(3) & (((\change_module|input_reg2\(0)) # (\change_module|input_reg2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg2\(1),
	datab => \change_module|input_reg2\(0),
	datac => \change_module|input_reg2\(3),
	datad => \change_module|input_reg2\(2),
	combout => \show_module2|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y12_N2
\show_module2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module2|Mux1~0_combout\ = (\change_module|input_reg2\(1) & (!\change_module|input_reg2\(3) & ((\change_module|input_reg2\(0)) # (!\change_module|input_reg2\(2))))) # (!\change_module|input_reg2\(1) & (\change_module|input_reg2\(2) $ 
-- (((\change_module|input_reg2\(0)) # (\change_module|input_reg2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg2\(1),
	datab => \change_module|input_reg2\(0),
	datac => \change_module|input_reg2\(3),
	datad => \change_module|input_reg2\(2),
	combout => \show_module2|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y12_N20
\show_module2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module2|Mux0~0_combout\ = (\change_module|input_reg2\(1) & (((!\change_module|input_reg2\(3))))) # (!\change_module|input_reg2\(1) & ((\change_module|input_reg2\(3) & ((!\change_module|input_reg2\(2)))) # (!\change_module|input_reg2\(3) & 
-- (\change_module|input_reg2\(0) & \change_module|input_reg2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg2\(1),
	datab => \change_module|input_reg2\(0),
	datac => \change_module|input_reg2\(3),
	datad => \change_module|input_reg2\(2),
	combout => \show_module2|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y12_N8
\change_module|input_reg3[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg3[3]~0_combout\ = (\input_module|number_hex\(0)) # ((!\change_module|control_reg.0111~q\) # (!\change_module|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_module|number_hex\(0),
	datac => \change_module|Equal0~0_combout\,
	datad => \change_module|control_reg.0111~q\,
	combout => \change_module|input_reg3[3]~0_combout\);

-- Location: LCCOMB_X36_Y12_N18
\change_module|input_reg3[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg3[3]~1_combout\ = (\change_module|always0~2_combout\) # ((\change_module|always0~1_combout\ & (\change_module|control_reg.0011~q\)) # (!\change_module|always0~1_combout\ & ((!\change_module|input_reg3[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|always0~1_combout\,
	datab => \change_module|control_reg.0011~q\,
	datac => \change_module|input_reg3[3]~0_combout\,
	datad => \change_module|always0~2_combout\,
	combout => \change_module|input_reg3[3]~1_combout\);

-- Location: FF_X36_Y12_N27
\change_module|input_reg3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	asdata => \change_module|input_reg1~6_combout\,
	sload => VCC,
	ena => \change_module|input_reg3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg3\(3));

-- Location: LCCOMB_X36_Y12_N4
\change_module|input_reg3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg3[2]~feeder_combout\ = \change_module|input_reg1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_module|input_reg1~5_combout\,
	combout => \change_module|input_reg3[2]~feeder_combout\);

-- Location: FF_X36_Y12_N5
\change_module|input_reg3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg3[2]~feeder_combout\,
	ena => \change_module|input_reg3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg3\(2));

-- Location: FF_X36_Y12_N29
\change_module|input_reg3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	asdata => \change_module|input_reg1~0_combout\,
	sload => VCC,
	ena => \change_module|input_reg3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg3\(0));

-- Location: LCCOMB_X36_Y12_N10
\change_module|input_reg3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg3[1]~feeder_combout\ = \change_module|input_reg1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \change_module|input_reg1~4_combout\,
	combout => \change_module|input_reg3[1]~feeder_combout\);

-- Location: FF_X36_Y12_N11
\change_module|input_reg3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg3[1]~feeder_combout\,
	ena => \change_module|input_reg3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg3\(1));

-- Location: LCCOMB_X36_Y12_N28
\show_module3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module3|Mux6~0_combout\ = (\change_module|input_reg3\(2) & (!\change_module|input_reg3\(3) & ((!\change_module|input_reg3\(1)) # (!\change_module|input_reg3\(0))))) # (!\change_module|input_reg3\(2) & (\change_module|input_reg3\(3) $ 
-- (((\change_module|input_reg3\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg3\(3),
	datab => \change_module|input_reg3\(2),
	datac => \change_module|input_reg3\(0),
	datad => \change_module|input_reg3\(1),
	combout => \show_module3|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y12_N26
\show_module3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module3|Mux5~0_combout\ = (\change_module|input_reg3\(1) & (\change_module|input_reg3\(2) & (!\change_module|input_reg3\(3) & !\change_module|input_reg3\(0)))) # (!\change_module|input_reg3\(1) & (\change_module|input_reg3\(2) $ 
-- ((\change_module|input_reg3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg3\(1),
	datab => \change_module|input_reg3\(2),
	datac => \change_module|input_reg3\(3),
	datad => \change_module|input_reg3\(0),
	combout => \show_module3|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y12_N24
\show_module3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module3|Mux4~0_combout\ = (!\change_module|input_reg3\(0) & ((\change_module|input_reg3\(3) & (!\change_module|input_reg3\(2) & !\change_module|input_reg3\(1))) # (!\change_module|input_reg3\(3) & ((\change_module|input_reg3\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg3\(3),
	datab => \change_module|input_reg3\(0),
	datac => \change_module|input_reg3\(2),
	datad => \change_module|input_reg3\(1),
	combout => \show_module3|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y12_N30
\show_module3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module3|Mux3~0_combout\ = (\change_module|input_reg3\(3) & (((!\change_module|input_reg3\(2) & !\change_module|input_reg3\(1))))) # (!\change_module|input_reg3\(3) & (\change_module|input_reg3\(1) $ (((\change_module|input_reg3\(0) & 
-- \change_module|input_reg3\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg3\(3),
	datab => \change_module|input_reg3\(0),
	datac => \change_module|input_reg3\(2),
	datad => \change_module|input_reg3\(1),
	combout => \show_module3|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y12_N16
\show_module3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module3|Mux2~0_combout\ = (\change_module|input_reg3\(3) & (((!\change_module|input_reg3\(2) & !\change_module|input_reg3\(1))))) # (!\change_module|input_reg3\(3) & ((\change_module|input_reg3\(0)) # ((\change_module|input_reg3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg3\(3),
	datab => \change_module|input_reg3\(0),
	datac => \change_module|input_reg3\(2),
	datad => \change_module|input_reg3\(1),
	combout => \show_module3|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y12_N14
\show_module3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module3|Mux1~0_combout\ = (\change_module|input_reg3\(1) & (!\change_module|input_reg3\(3) & ((\change_module|input_reg3\(0)) # (!\change_module|input_reg3\(2))))) # (!\change_module|input_reg3\(1) & (\change_module|input_reg3\(2) $ 
-- (((\change_module|input_reg3\(3)) # (\change_module|input_reg3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg3\(3),
	datab => \change_module|input_reg3\(0),
	datac => \change_module|input_reg3\(2),
	datad => \change_module|input_reg3\(1),
	combout => \show_module3|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y12_N0
\show_module3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module3|Mux0~0_combout\ = (\change_module|input_reg3\(3) & (((!\change_module|input_reg3\(2) & !\change_module|input_reg3\(1))))) # (!\change_module|input_reg3\(3) & ((\change_module|input_reg3\(1)) # ((\change_module|input_reg3\(0) & 
-- \change_module|input_reg3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg3\(3),
	datab => \change_module|input_reg3\(0),
	datac => \change_module|input_reg3\(2),
	datad => \change_module|input_reg3\(1),
	combout => \show_module3|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y12_N6
\change_module|input_reg4[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_module|input_reg4[1]~feeder_combout\ = \change_module|input_reg1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \change_module|input_reg1~4_combout\,
	combout => \change_module|input_reg4[1]~feeder_combout\);

-- Location: FF_X35_Y12_N7
\change_module|input_reg4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_module|input_signal~clkctrl_outclk\,
	d => \change_module|input_reg4[1]~feeder_combout\,
	ena => \change_module|input_reg4[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_module|input_reg4\(1));

-- Location: LCCOMB_X40_Y12_N8
\show_module4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module4|Mux6~0_combout\ = (\change_module|input_reg4\(2) & (!\change_module|input_reg4\(3) & ((!\change_module|input_reg4\(1)) # (!\change_module|input_reg4\(0))))) # (!\change_module|input_reg4\(2) & ((\change_module|input_reg4\(3) $ 
-- (\change_module|input_reg4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg4\(2),
	datab => \change_module|input_reg4\(0),
	datac => \change_module|input_reg4\(3),
	datad => \change_module|input_reg4\(1),
	combout => \show_module4|Mux6~0_combout\);

-- Location: LCCOMB_X40_Y12_N6
\show_module4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module4|Mux5~0_combout\ = (\change_module|input_reg4\(2) & (!\change_module|input_reg4\(3) & ((!\change_module|input_reg4\(1)) # (!\change_module|input_reg4\(0))))) # (!\change_module|input_reg4\(2) & (((\change_module|input_reg4\(3) & 
-- !\change_module|input_reg4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg4\(2),
	datab => \change_module|input_reg4\(0),
	datac => \change_module|input_reg4\(3),
	datad => \change_module|input_reg4\(1),
	combout => \show_module4|Mux5~0_combout\);

-- Location: LCCOMB_X40_Y12_N16
\show_module4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module4|Mux4~0_combout\ = (!\change_module|input_reg4\(0) & ((\change_module|input_reg4\(3) & (!\change_module|input_reg4\(2) & !\change_module|input_reg4\(1))) # (!\change_module|input_reg4\(3) & ((\change_module|input_reg4\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg4\(2),
	datab => \change_module|input_reg4\(0),
	datac => \change_module|input_reg4\(3),
	datad => \change_module|input_reg4\(1),
	combout => \show_module4|Mux4~0_combout\);

-- Location: LCCOMB_X39_Y12_N10
\show_module4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module4|Mux3~0_combout\ = (\change_module|input_reg4\(3) & (((!\change_module|input_reg4\(1) & !\change_module|input_reg4\(2))))) # (!\change_module|input_reg4\(3) & (\change_module|input_reg4\(1) $ (((\change_module|input_reg4\(0) & 
-- \change_module|input_reg4\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg4\(0),
	datab => \change_module|input_reg4\(3),
	datac => \change_module|input_reg4\(1),
	datad => \change_module|input_reg4\(2),
	combout => \show_module4|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y12_N26
\show_module4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module4|Mux2~0_combout\ = (\change_module|input_reg4\(2) & (((!\change_module|input_reg4\(3))))) # (!\change_module|input_reg4\(2) & ((\change_module|input_reg4\(3) & ((!\change_module|input_reg4\(1)))) # (!\change_module|input_reg4\(3) & 
-- (\change_module|input_reg4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg4\(2),
	datab => \change_module|input_reg4\(0),
	datac => \change_module|input_reg4\(3),
	datad => \change_module|input_reg4\(1),
	combout => \show_module4|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y12_N24
\show_module4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module4|Mux1~0_combout\ = (\change_module|input_reg4\(1) & (!\change_module|input_reg4\(3) & ((\change_module|input_reg4\(0)) # (!\change_module|input_reg4\(2))))) # (!\change_module|input_reg4\(1) & (\change_module|input_reg4\(2) $ 
-- (((\change_module|input_reg4\(0)) # (\change_module|input_reg4\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg4\(2),
	datab => \change_module|input_reg4\(0),
	datac => \change_module|input_reg4\(3),
	datad => \change_module|input_reg4\(1),
	combout => \show_module4|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y12_N2
\show_module4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_module4|Mux0~0_combout\ = (\change_module|input_reg4\(2) & (!\change_module|input_reg4\(3) & ((\change_module|input_reg4\(0)) # (\change_module|input_reg4\(1))))) # (!\change_module|input_reg4\(2) & ((\change_module|input_reg4\(3) $ 
-- (\change_module|input_reg4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_module|input_reg4\(2),
	datab => \change_module|input_reg4\(0),
	datac => \change_module|input_reg4\(3),
	datad => \change_module|input_reg4\(1),
	combout => \show_module4|Mux0~0_combout\);

ww_successful_output <= \successful_output~output_o\;

ww_failed_output <= \failed_output~output_o\;

ww_show_num1(0) <= \show_num1[0]~output_o\;

ww_show_num1(1) <= \show_num1[1]~output_o\;

ww_show_num1(2) <= \show_num1[2]~output_o\;

ww_show_num1(3) <= \show_num1[3]~output_o\;

ww_show_num1(4) <= \show_num1[4]~output_o\;

ww_show_num1(5) <= \show_num1[5]~output_o\;

ww_show_num1(6) <= \show_num1[6]~output_o\;

ww_show_num2(0) <= \show_num2[0]~output_o\;

ww_show_num2(1) <= \show_num2[1]~output_o\;

ww_show_num2(2) <= \show_num2[2]~output_o\;

ww_show_num2(3) <= \show_num2[3]~output_o\;

ww_show_num2(4) <= \show_num2[4]~output_o\;

ww_show_num2(5) <= \show_num2[5]~output_o\;

ww_show_num2(6) <= \show_num2[6]~output_o\;

ww_show_num3(0) <= \show_num3[0]~output_o\;

ww_show_num3(1) <= \show_num3[1]~output_o\;

ww_show_num3(2) <= \show_num3[2]~output_o\;

ww_show_num3(3) <= \show_num3[3]~output_o\;

ww_show_num3(4) <= \show_num3[4]~output_o\;

ww_show_num3(5) <= \show_num3[5]~output_o\;

ww_show_num3(6) <= \show_num3[6]~output_o\;

ww_show_num4(0) <= \show_num4[0]~output_o\;

ww_show_num4(1) <= \show_num4[1]~output_o\;

ww_show_num4(2) <= \show_num4[2]~output_o\;

ww_show_num4(3) <= \show_num4[3]~output_o\;

ww_show_num4(4) <= \show_num4[4]~output_o\;

ww_show_num4(5) <= \show_num4[5]~output_o\;

ww_show_num4(6) <= \show_num4[6]~output_o\;

ww_whether_locked_forever <= \whether_locked_forever~output_o\;
END structure;



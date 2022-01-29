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

-- DATE "12/12/2021 11:11:50"

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
	led : OUT std_logic;
	clk : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	k : IN std_logic_vector(2 DOWNTO 0);
	en : OUT std_logic_vector(5 DOWNTO 0);
	light : OUT std_logic_vector(6 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- led	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[3]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[6]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light[0]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[1]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_174,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_175,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_152,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_led : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_k : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_en : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_light : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|Mux27~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|out[0]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Mux9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Add2~11_combout\ : std_logic;
SIGNAL \inst|Add2~13_combout\ : std_logic;
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
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|selnose[0]~0_combout\ : std_logic;
SIGNAL \inst|Mux5~5_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|selnose[5]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst|Add2~22_combout\ : std_logic;
SIGNAL \inst|Add2~25_combout\ : std_logic;
SIGNAL \inst|Add2~27_combout\ : std_logic;
SIGNAL \inst|flag~q\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Mux5~6_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \en[5]~output_o\ : std_logic;
SIGNAL \en[4]~output_o\ : std_logic;
SIGNAL \en[3]~output_o\ : std_logic;
SIGNAL \en[2]~output_o\ : std_logic;
SIGNAL \en[1]~output_o\ : std_logic;
SIGNAL \en[0]~output_o\ : std_logic;
SIGNAL \light[6]~output_o\ : std_logic;
SIGNAL \light[5]~output_o\ : std_logic;
SIGNAL \light[4]~output_o\ : std_logic;
SIGNAL \light[3]~output_o\ : std_logic;
SIGNAL \light[2]~output_o\ : std_logic;
SIGNAL \light[1]~output_o\ : std_logic;
SIGNAL \light[0]~output_o\ : std_logic;
SIGNAL \k[2]~input_o\ : std_logic;
SIGNAL \k[1]~input_o\ : std_logic;
SIGNAL \k[0]~input_o\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|out[0]~4_combout\ : std_logic;
SIGNAL \inst|out[0]~4clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Mux8~6_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Mux8~2_combout\ : std_logic;
SIGNAL \inst|Add2~30_combout\ : std_logic;
SIGNAL \inst|Mux8~3_combout\ : std_logic;
SIGNAL \inst|Add2~31_combout\ : std_logic;
SIGNAL \inst|Mux8~4_combout\ : std_logic;
SIGNAL \inst|Mux8~5_combout\ : std_logic;
SIGNAL \inst|Add2~2_cout\ : std_logic;
SIGNAL \inst|Add2~3_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst|Mux7~6_combout\ : std_logic;
SIGNAL \inst|Mux7~5_combout\ : std_logic;
SIGNAL \inst|Mux7~7_combout\ : std_logic;
SIGNAL \inst|Add2~29_combout\ : std_logic;
SIGNAL \inst|Mux7~9_combout\ : std_logic;
SIGNAL \inst|Mux7~10_combout\ : std_logic;
SIGNAL \inst|Mux7~8_combout\ : std_logic;
SIGNAL \inst|Add2~4\ : std_logic;
SIGNAL \inst|Add2~5_combout\ : std_logic;
SIGNAL \inst|Add2~28_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst|Add2~6\ : std_logic;
SIGNAL \inst|Add2~8\ : std_logic;
SIGNAL \inst|Add2~10\ : std_logic;
SIGNAL \inst|Add2~12\ : std_logic;
SIGNAL \inst|Add2~14\ : std_logic;
SIGNAL \inst|Add2~16\ : std_logic;
SIGNAL \inst|Add2~17_combout\ : std_logic;
SIGNAL \inst|Add2~19_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|cnt_sel~1_combout\ : std_logic;
SIGNAL \inst|cnt_sel~0_combout\ : std_logic;
SIGNAL \inst|cnt_sel~2_combout\ : std_logic;
SIGNAL \inst|cnt_sel[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst|Mux27~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|Mux23~1_combout\ : std_logic;
SIGNAL \inst|Mux23~2_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|Add2~20_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst|Add2~23_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst|Add2~15_combout\ : std_logic;
SIGNAL \inst|Add2~21_combout\ : std_logic;
SIGNAL \inst|Add2~7_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst|Add2~26_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|Mux20~1_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|Mux9~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|Mux19~1_combout\ : std_logic;
SIGNAL \inst|Add2~9_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|out[4]~2_combout\ : std_logic;
SIGNAL \inst|out[4]~3_combout\ : std_logic;
SIGNAL \inst|Add2~24_combout\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|Mux17~1_combout\ : std_logic;
SIGNAL \inst|Mux17~2_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux13~1_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Mux14~1_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux15~1_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|Mux16~1_combout\ : std_logic;
SIGNAL \inst|out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|light\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|en\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|data\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|cnt_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|cnt0\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);

BEGIN

led <= ww_led;
ww_clk <= clk;
ww_a <= a;
ww_b <= b;
ww_k <= k;
en <= ww_en;
light <= ww_light;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|Mux27~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Mux27~0_combout\);

\inst|out[0]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|out[0]~4_combout\);

\inst|Mux9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Mux9~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X40_Y20_N10
\inst|Mult0|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~0_combout\ = (\inst|Mult0|auto_generated|le3a\(2) & (\inst|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\inst|Mult0|auto_generated|le3a\(2) & (\inst|Mult0|auto_generated|le4a\(5) & VCC))
-- \inst|Mult0|auto_generated|op_1~1\ = CARRY((\inst|Mult0|auto_generated|le3a\(2) & \inst|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(2),
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X40_Y20_N18
\inst|Mult0|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~8_combout\ = ((\inst|Mult0|auto_generated|le5a\(2) $ (\inst|Mult0|auto_generated|le4a\(4) $ (!\inst|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~9\ = CARRY((\inst|Mult0|auto_generated|le5a\(2) & ((\inst|Mult0|auto_generated|le4a\(4)) # (!\inst|Mult0|auto_generated|op_1~7\))) # (!\inst|Mult0|auto_generated|le5a\(2) & (\inst|Mult0|auto_generated|le4a\(4) & 
-- !\inst|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(2),
	datab => \inst|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~7\,
	combout => \inst|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X40_Y19_N0
\inst|Mult0|auto_generated|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~0_combout\ = (\b[1]~input_o\ & (\inst|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\b[1]~input_o\ & (\inst|Mult0|auto_generated|le3a\(0) & VCC))
-- \inst|Mult0|auto_generated|op_3~1\ = CARRY((\b[1]~input_o\ & \inst|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \inst|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X40_Y19_N12
\inst|Mult0|auto_generated|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~12_combout\ = ((\inst|Mult0|auto_generated|op_1~8_combout\ $ (\b[1]~input_o\ $ (!\inst|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~13\ = CARRY((\inst|Mult0|auto_generated|op_1~8_combout\ & ((\b[1]~input_o\) # (!\inst|Mult0|auto_generated|op_3~11\))) # (!\inst|Mult0|auto_generated|op_1~8_combout\ & (\b[1]~input_o\ & 
-- !\inst|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~8_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~11\,
	combout => \inst|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X40_Y16_N12
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\ & (\inst|Add0~5\ & VCC)) # (!\a[3]~input_o\ & (!\inst|Add0~5\)))) # (!\b[3]~input_o\ & ((\a[3]~input_o\ & (!\inst|Add0~5\)) # (!\a[3]~input_o\ & ((\inst|Add0~5\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\b[3]~input_o\ & (!\a[3]~input_o\ & !\inst|Add0~5\)) # (!\b[3]~input_o\ & ((!\inst|Add0~5\) # (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X39_Y15_N14
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[1]~input_o\) # (GND)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\a[1]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X39_Y15_N16
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\b[1]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\b[1]~input_o\ & (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\b[1]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\b[1]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\b[1]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\b[1]~input_o\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X39_Y15_N18
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\b[2]~input_o\ $ (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\b[2]~input_o\ & (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\b[2]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X39_Y16_N20
\inst|Add2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~11_combout\ = (\inst|Mux3~1_combout\ & ((\inst|Mux1~0_combout\ & ((\inst|Add2~10\) # (GND))) # (!\inst|Mux1~0_combout\ & (!\inst|Add2~10\)))) # (!\inst|Mux3~1_combout\ & (((!\inst|Add2~10\))))
-- \inst|Add2~12\ = CARRY(((\inst|Mux3~1_combout\ & \inst|Mux1~0_combout\)) # (!\inst|Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst|Mux1~0_combout\,
	datad => VCC,
	cin => \inst|Add2~10\,
	combout => \inst|Add2~11_combout\,
	cout => \inst|Add2~12\);

-- Location: LCCOMB_X39_Y16_N22
\inst|Add2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~13_combout\ = (\inst|Add2~12\ & (((!\inst|Mux1~0_combout\) # (!\inst|Mux2~1_combout\)))) # (!\inst|Add2~12\ & ((((!\inst|Mux1~0_combout\) # (!\inst|Mux2~1_combout\)))))
-- \inst|Add2~14\ = CARRY((!\inst|Add2~12\ & ((!\inst|Mux1~0_combout\) # (!\inst|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datab => \inst|Mux1~0_combout\,
	datad => VCC,
	cin => \inst|Add2~12\,
	combout => \inst|Add2~13_combout\,
	cout => \inst|Add2~14\);

-- Location: FF_X33_Y28_N23
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

-- Location: FF_X33_Y28_N25
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

-- Location: FF_X33_Y28_N27
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

-- Location: FF_X33_Y28_N17
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

-- Location: FF_X33_Y28_N19
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

-- Location: FF_X33_Y28_N21
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

-- Location: FF_X33_Y28_N11
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

-- Location: FF_X33_Y28_N13
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

-- Location: FF_X33_Y28_N15
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

-- Location: FF_X33_Y28_N3
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

-- Location: FF_X33_Y28_N5
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

-- Location: FF_X33_Y28_N7
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

-- Location: FF_X33_Y28_N9
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

-- Location: LCCOMB_X33_Y28_N2
\inst|cnt0[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[0]~13_combout\ = \inst|cnt0\(0) $ (VCC)
-- \inst|cnt0[0]~14\ = CARRY(\inst|cnt0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(0),
	datad => VCC,
	combout => \inst|cnt0[0]~13_combout\,
	cout => \inst|cnt0[0]~14\);

-- Location: LCCOMB_X33_Y28_N4
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

-- Location: LCCOMB_X33_Y28_N6
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

-- Location: LCCOMB_X33_Y28_N8
\inst|cnt0[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[3]~19_combout\ = (\inst|cnt0\(3) & (!\inst|cnt0[2]~18\)) # (!\inst|cnt0\(3) & ((\inst|cnt0[2]~18\) # (GND)))
-- \inst|cnt0[3]~20\ = CARRY((!\inst|cnt0[2]~18\) # (!\inst|cnt0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(3),
	datad => VCC,
	cin => \inst|cnt0[2]~18\,
	combout => \inst|cnt0[3]~19_combout\,
	cout => \inst|cnt0[3]~20\);

-- Location: LCCOMB_X33_Y28_N10
\inst|cnt0[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[4]~21_combout\ = (\inst|cnt0\(4) & (\inst|cnt0[3]~20\ $ (GND))) # (!\inst|cnt0\(4) & (!\inst|cnt0[3]~20\ & VCC))
-- \inst|cnt0[4]~22\ = CARRY((\inst|cnt0\(4) & !\inst|cnt0[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(4),
	datad => VCC,
	cin => \inst|cnt0[3]~20\,
	combout => \inst|cnt0[4]~21_combout\,
	cout => \inst|cnt0[4]~22\);

-- Location: LCCOMB_X33_Y28_N12
\inst|cnt0[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[5]~23_combout\ = (\inst|cnt0\(5) & (!\inst|cnt0[4]~22\)) # (!\inst|cnt0\(5) & ((\inst|cnt0[4]~22\) # (GND)))
-- \inst|cnt0[5]~24\ = CARRY((!\inst|cnt0[4]~22\) # (!\inst|cnt0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(5),
	datad => VCC,
	cin => \inst|cnt0[4]~22\,
	combout => \inst|cnt0[5]~23_combout\,
	cout => \inst|cnt0[5]~24\);

-- Location: LCCOMB_X33_Y28_N14
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

-- Location: LCCOMB_X33_Y28_N16
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

-- Location: LCCOMB_X33_Y28_N18
\inst|cnt0[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt0[8]~29_combout\ = (\inst|cnt0\(8) & (\inst|cnt0[7]~28\ $ (GND))) # (!\inst|cnt0\(8) & (!\inst|cnt0[7]~28\ & VCC))
-- \inst|cnt0[8]~30\ = CARRY((\inst|cnt0\(8) & !\inst|cnt0[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt0\(8),
	datad => VCC,
	cin => \inst|cnt0[7]~28\,
	combout => \inst|cnt0[8]~29_combout\,
	cout => \inst|cnt0[8]~30\);

-- Location: LCCOMB_X33_Y28_N20
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

-- Location: LCCOMB_X33_Y28_N22
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

-- Location: LCCOMB_X33_Y28_N24
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

-- Location: LCCOMB_X33_Y28_N26
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

-- Location: LCCOMB_X40_Y16_N16
\inst|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\k[2]~input_o\ & ((\inst|Add1~8_combout\))) # (!\k[2]~input_o\ & (\inst|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(8),
	datab => \inst|Add1~8_combout\,
	datac => \k[2]~input_o\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X39_Y16_N8
\inst|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\k[2]~input_o\ & ((\k[0]~input_o\ & ((\inst|Mult0|auto_generated|op_3~14_combout\))) # (!\k[0]~input_o\ & (\inst|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~8_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \k[0]~input_o\,
	datad => \k[2]~input_o\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X39_Y16_N2
\inst|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\inst|Mux1~1_combout\) # ((\inst|out\(7) & !\k[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(7),
	datab => \k[2]~input_o\,
	datac => \inst|Mux1~1_combout\,
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X40_Y19_N20
\inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\k[2]~input_o\ & ((\k[0]~input_o\ & (\inst|Mult0|auto_generated|op_3~12_combout\)) # (!\k[0]~input_o\ & ((\inst|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \k[0]~input_o\,
	datac => \k[2]~input_o\,
	datad => \inst|Add1~8_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y16_N4
\inst|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux2~0_combout\) # ((!\k[2]~input_o\ & \inst|out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k[2]~input_o\,
	datac => \inst|out\(6),
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X40_Y19_N22
\inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\k[2]~input_o\ & ((\k[0]~input_o\ & ((\inst|Mult0|auto_generated|op_3~10_combout\))) # (!\k[0]~input_o\ & (\inst|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~input_o\,
	datab => \k[2]~input_o\,
	datac => \inst|Add1~8_combout\,
	datad => \inst|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y19_N24
\inst|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|Mux3~0_combout\) # ((!\k[2]~input_o\ & \inst|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k[2]~input_o\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|out\(5),
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X40_Y16_N20
\inst|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|out[4]~3_combout\) # ((!\inst|Add2~0_combout\ & (\inst|out\(4) & !\k[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \inst|out\(4),
	datac => \k[2]~input_o\,
	datad => \inst|out[4]~3_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y16_N20
\inst|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux5~4_combout\ = (\inst|out\(3) & ((!\k[0]~input_o\) # (!\k[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(3),
	datab => \k[1]~input_o\,
	datac => \k[0]~input_o\,
	combout => \inst|Mux5~4_combout\);

-- Location: LCCOMB_X39_Y17_N24
\inst|Div0|auto_generated|divider|divider|selnose[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|selnose[0]~0_combout\ = (\b[2]~input_o\) # ((\b[3]~input_o\) # ((!\a[3]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[3]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|selnose[0]~0_combout\);

-- Location: LCCOMB_X40_Y16_N18
\inst|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux5~5_combout\ = (\inst|Mux5~3_combout\) # ((!\k[2]~input_o\ & ((\inst|Mux5~6_combout\) # (\inst|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~6_combout\,
	datab => \k[2]~input_o\,
	datac => \inst|Mux5~3_combout\,
	datad => \inst|Mux5~4_combout\,
	combout => \inst|Mux5~5_combout\);

-- Location: LCCOMB_X40_Y17_N8
\inst|Div0|auto_generated|divider|divider|selnose[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\b[2]~input_o\) # ((\b[3]~input_o\) # ((!\a[3]~input_o\ & \b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[3]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X39_Y15_N0
\inst|Div0|auto_generated|divider|divider|selnose[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|selnose[5]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|selnose[5]~1_combout\) # ((!\a[2]~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datac => \a[2]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|selnose[5]~2_combout\);

-- Location: LCCOMB_X39_Y15_N30
\inst|Div0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\a[2]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|selnose[5]~1_combout\) # (!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datac => \a[2]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X39_Y15_N6
\inst|Div0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\b[3]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\b[3]~input_o\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \b[3]~input_o\,
	datad => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X39_Y15_N8
\inst|Div0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\b[3]~input_o\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # (!\b[3]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X39_Y15_N2
\inst|Div0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\b[3]~input_o\ & (((\a[1]~input_o\)))) # (!\b[3]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\a[1]~input_o\))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \a[1]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X40_Y20_N6
\inst|Mult0|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(3) = (\a[3]~input_o\ & ((\b[3]~input_o\) # ((\b[2]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X39_Y15_N12
\inst|Mult0|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(2) = (\a[2]~input_o\ & ((\b[3]~input_o\) # ((\b[2]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X40_Y20_N30
\inst|Mult0|auto_generated|cs2a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|cs2a[1]~0_combout\ = \b[2]~input_o\ $ (\b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X40_Y20_N22
\inst|Mult0|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(1) = (\a[1]~input_o\ & ((\b[3]~input_o\) # ((\b[2]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X40_Y20_N2
\inst|Mult0|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(2) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst|Mult0|auto_generated|le4a\(5) $ ((\a[2]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst|Mult0|auto_generated|le4a\(5) & 
-- ((!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datac => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X40_Y20_N26
\inst|Mult0|auto_generated|le3a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(2) = (\b[0]~input_o\ & (\a[2]~input_o\ $ (((\b[1]~input_o\))))) # (!\b[0]~input_o\ & (((!\a[1]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X40_Y19_N26
\inst|Mult0|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(0) = (\a[0]~input_o\ & ((\b[3]~input_o\) # ((\b[2]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X40_Y19_N16
\inst|Mult0|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(1) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\a[1]~input_o\ $ (\inst|Mult0|auto_generated|le4a\(5))))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\a[0]~input_o\ & 
-- ((\inst|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \a[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \inst|Mult0|auto_generated|le4a\(5),
	combout => \inst|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X40_Y19_N28
\inst|Mult0|auto_generated|le3a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(1) = (\b[0]~input_o\ & (\b[1]~input_o\ $ ((\a[1]~input_o\)))) # (!\b[0]~input_o\ & (\b[1]~input_o\ & ((!\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X39_Y16_N0
\inst|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~22_combout\ = (\inst|Mult0|auto_generated|op_3~12_combout\ & ((\inst|Add2~20_combout\) # ((\inst|Mux0~1_combout\ & \inst|Add2~13_combout\)))) # (!\inst|Mult0|auto_generated|op_3~12_combout\ & (((\inst|Mux0~1_combout\ & 
-- \inst|Add2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \inst|Add2~20_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Add2~13_combout\,
	combout => \inst|Add2~22_combout\);

-- Location: LCCOMB_X40_Y17_N10
\inst|Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~25_combout\ = (!\k[2]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|selnose[0]~0_combout\ & !\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|selnose[0]~0_combout\,
	datac => \b[1]~input_o\,
	combout => \inst|Add2~25_combout\);

-- Location: LCCOMB_X39_Y15_N26
\inst|Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~27_combout\ = (!\inst|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ & (!\k[2]~input_o\ & ((\a[2]~input_o\) # (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datac => \a[2]~input_o\,
	datad => \k[2]~input_o\,
	combout => \inst|Add2~27_combout\);

-- Location: FF_X33_Y28_N31
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

-- Location: LCCOMB_X32_Y28_N24
\inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|cnt0\(3) & (((!\inst|cnt0\(0)) # (!\inst|cnt0\(1))) # (!\inst|cnt0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(2),
	datab => \inst|cnt0\(1),
	datac => \inst|cnt0\(3),
	datad => \inst|cnt0\(0),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y28_N0
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|cnt0\(4) & (!\inst|cnt0\(6) & (!\inst|cnt0\(5) & \inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(4),
	datab => \inst|cnt0\(6),
	datac => \inst|cnt0\(5),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y28_N28
\inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|cnt0\(8) & (\inst|cnt0\(7) & (\inst|cnt0\(9) & !\inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(8),
	datab => \inst|cnt0\(7),
	datac => \inst|cnt0\(9),
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y28_N30
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|cnt0\(12) & ((\inst|cnt0\(10)) # ((\inst|cnt0\(11)) # (\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt0\(10),
	datab => \inst|cnt0\(11),
	datac => \inst|cnt0\(12),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y17_N14
\inst|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux5~6_combout\ = (\k[0]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|selnose[0]~0_combout\ & (\k[1]~input_o\ & !\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|selnose[0]~0_combout\,
	datac => \k[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|Mux5~6_combout\);

-- Location: LCCOMB_X39_Y16_N30
\inst|out[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out\(6) = (GLOBAL(\inst|out[0]~4clkctrl_outclk\) & (\inst|Add2~22_combout\)) # (!GLOBAL(\inst|out[0]~4clkctrl_outclk\) & ((\inst|out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~22_combout\,
	datac => \inst|out\(6),
	datad => \inst|out[0]~4clkctrl_outclk\,
	combout => \inst|out\(6));

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

-- Location: IOOBUF_X41_Y13_N23
\led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\en[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|en\(5),
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
	i => \inst|en\(3),
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

-- Location: IOOBUF_X0_Y3_N2
\light[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|light\(6),
	devoe => ww_devoe,
	o => \light[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\light[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|light\(5),
	devoe => ww_devoe,
	o => \light[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\light[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|light\(4),
	devoe => ww_devoe,
	o => \light[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X7_Y0_N30
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

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X3_Y0_N9
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

-- Location: IOIBUF_X41_Y3_N22
\k[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(2),
	o => \k[2]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\k[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(1),
	o => \k[1]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\k[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(0),
	o => \k[0]~input_o\);

-- Location: LCCOMB_X40_Y17_N4
\inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\k[1]~input_o\ & ((!\k[0]~input_o\))) # (!\k[1]~input_o\ & (!\k[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \k[1]~input_o\,
	datac => \k[0]~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: IOIBUF_X41_Y18_N15
\a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X41_Y25_N15
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X41_Y27_N22
\b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X40_Y18_N18
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\a[0]~input_o\ & ((GND) # (!\b[0]~input_o\))) # (!\a[0]~input_o\ & (\b[0]~input_o\ $ (GND)))
-- \inst|Add1~1\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X40_Y18_N20
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\a[1]~input_o\ & ((\b[1]~input_o\ & (!\inst|Add1~1\)) # (!\b[1]~input_o\ & (\inst|Add1~1\ & VCC)))) # (!\a[1]~input_o\ & ((\b[1]~input_o\ & ((\inst|Add1~1\) # (GND))) # (!\b[1]~input_o\ & (!\inst|Add1~1\))))
-- \inst|Add1~3\ = CARRY((\a[1]~input_o\ & (\b[1]~input_o\ & !\inst|Add1~1\)) # (!\a[1]~input_o\ & ((\b[1]~input_o\) # (!\inst|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X40_Y18_N22
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = ((\a[2]~input_o\ $ (\b[2]~input_o\ $ (\inst|Add1~3\)))) # (GND)
-- \inst|Add1~5\ = CARRY((\a[2]~input_o\ & ((!\inst|Add1~3\) # (!\b[2]~input_o\))) # (!\a[2]~input_o\ & (!\b[2]~input_o\ & !\inst|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X40_Y18_N24
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\ & (!\inst|Add1~5\)) # (!\a[3]~input_o\ & ((\inst|Add1~5\) # (GND))))) # (!\b[3]~input_o\ & ((\a[3]~input_o\ & (\inst|Add1~5\ & VCC)) # (!\a[3]~input_o\ & (!\inst|Add1~5\))))
-- \inst|Add1~7\ = CARRY((\b[3]~input_o\ & ((!\inst|Add1~5\) # (!\a[3]~input_o\))) # (!\b[3]~input_o\ & (!\a[3]~input_o\ & !\inst|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X40_Y18_N26
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = \inst|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\);

-- Location: LCCOMB_X40_Y15_N6
\inst|out[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out[0]~4_combout\ = (\k[2]~input_o\) # ((\inst|Mux0~1_combout\) # ((\k[0]~input_o\ & \k[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~input_o\,
	datab => \k[2]~input_o\,
	datac => \k[1]~input_o\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst|out[0]~4_combout\);

-- Location: CLKCTRL_G8
\inst|out[0]~4clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|out[0]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|out[0]~4clkctrl_outclk\);

-- Location: LCCOMB_X39_Y19_N20
\inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\k[2]~input_o\ & ((\k[1]~input_o\))) # (!\k[2]~input_o\ & ((!\k[1]~input_o\) # (!\k[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datac => \k[0]~input_o\,
	datad => \k[1]~input_o\,
	combout => \inst|Mux1~0_combout\);

-- Location: IOIBUF_X41_Y19_N8
\a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X40_Y19_N30
\inst|Mult0|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(0) = \b[3]~input_o\ $ (((\b[2]~input_o\ & ((\a[0]~input_o\) # (\b[1]~input_o\))) # (!\b[2]~input_o\ & (\a[0]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X40_Y19_N18
\inst|Mult0|auto_generated|le3a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(0) = \b[1]~input_o\ $ (((\b[0]~input_o\ & \a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X40_Y19_N2
\inst|Mult0|auto_generated|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~2_combout\ = (\inst|Mult0|auto_generated|le3a\(1) & (!\inst|Mult0|auto_generated|op_3~1\)) # (!\inst|Mult0|auto_generated|le3a\(1) & ((\inst|Mult0|auto_generated|op_3~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_3~3\ = CARRY((!\inst|Mult0|auto_generated|op_3~1\) # (!\inst|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~1\,
	combout => \inst|Mult0|auto_generated|op_3~2_combout\,
	cout => \inst|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X40_Y19_N4
\inst|Mult0|auto_generated|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~4_combout\ = ((\inst|Mult0|auto_generated|op_1~0_combout\ $ (\inst|Mult0|auto_generated|le4a\(0) $ (!\inst|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~5\ = CARRY((\inst|Mult0|auto_generated|op_1~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(0)) # (!\inst|Mult0|auto_generated|op_3~3\))) # (!\inst|Mult0|auto_generated|op_1~0_combout\ & (\inst|Mult0|auto_generated|le4a\(0) 
-- & !\inst|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~0_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~3\,
	combout => \inst|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst|Mult0|auto_generated|op_3~5\);

-- Location: IOIBUF_X41_Y19_N1
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X40_Y16_N6
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & VCC))
-- \inst|Add0~1\ = CARRY((\b[0]~input_o\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X40_Y16_N8
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\ & (\inst|Add0~1\ & VCC)) # (!\a[1]~input_o\ & (!\inst|Add0~1\)))) # (!\b[1]~input_o\ & ((\a[1]~input_o\ & (!\inst|Add0~1\)) # (!\a[1]~input_o\ & ((\inst|Add0~1\) # (GND)))))
-- \inst|Add0~3\ = CARRY((\b[1]~input_o\ & (!\a[1]~input_o\ & !\inst|Add0~1\)) # (!\b[1]~input_o\ & ((!\inst|Add0~1\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X40_Y16_N10
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = ((\a[2]~input_o\ $ (\b[2]~input_o\ $ (!\inst|Add0~3\)))) # (GND)
-- \inst|Add0~5\ = CARRY((\a[2]~input_o\ & ((\b[2]~input_o\) # (!\inst|Add0~3\))) # (!\a[2]~input_o\ & (\b[2]~input_o\ & !\inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X40_Y16_N28
\inst|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (\k[0]~input_o\ & (\inst|Add0~4_combout\ & ((!\k[1]~input_o\)))) # (!\k[0]~input_o\ & (((\inst|Add1~4_combout\ & \k[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~input_o\,
	datab => \inst|Add0~4_combout\,
	datac => \inst|Add1~4_combout\,
	datad => \k[1]~input_o\,
	combout => \inst|Mux6~1_combout\);

-- Location: LCCOMB_X40_Y16_N30
\inst|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = (\k[2]~input_o\ & ((\inst|Mux6~1_combout\) # ((\inst|Add2~0_combout\ & \inst|Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \k[2]~input_o\,
	datac => \inst|Mult0|auto_generated|op_3~4_combout\,
	datad => \inst|Mux6~1_combout\,
	combout => \inst|Mux6~2_combout\);

-- Location: LCCOMB_X40_Y17_N2
\inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\k[0]~input_o\ & \k[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k[0]~input_o\,
	datac => \k[1]~input_o\,
	combout => \inst|Add2~0_combout\);

-- Location: IOIBUF_X41_Y18_N1
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X39_Y15_N10
\inst|Div0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\b[1]~input_o\ & (!\a[2]~input_o\ & \b[0]~input_o\)) # (!\b[1]~input_o\ & ((!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: IOIBUF_X41_Y25_N22
\b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X39_Y15_N28
\inst|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\a[3]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\) # ((\b[3]~input_o\) # (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \b[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X39_Y15_N20
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X39_Y15_N24
\inst|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux7~4_combout\ = (!\b[3]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & !\k[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \k[2]~input_o\,
	combout => \inst|Mux7~4_combout\);

-- Location: LCCOMB_X40_Y17_N20
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X40_Y17_N22
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (\b[1]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\b[1]~input_o\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X40_Y17_N24
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # (!\b[2]~input_o\))) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & (!\b[2]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X40_Y17_N26
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (\b[3]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\b[3]~input_o\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X40_Y17_N28
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X40_Y17_N18
\inst|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux8~6_combout\ = (\k[1]~input_o\ & (!\k[0]~input_o\ & ((\inst|Add1~0_combout\) # (!\k[2]~input_o\)))) # (!\k[1]~input_o\ & (!\k[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \k[1]~input_o\,
	datac => \k[0]~input_o\,
	datad => \inst|Add1~0_combout\,
	combout => \inst|Mux8~6_combout\);

-- Location: LCCOMB_X40_Y17_N14
\inst|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux8~2_combout\ = (\k[0]~input_o\ & ((\k[1]~input_o\ & (\inst|Mult0|auto_generated|op_3~0_combout\)) # (!\k[1]~input_o\ & ((\inst|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~0_combout\,
	datab => \k[0]~input_o\,
	datac => \k[1]~input_o\,
	datad => \inst|Add0~0_combout\,
	combout => \inst|Mux8~2_combout\);

-- Location: LCCOMB_X40_Y17_N16
\inst|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~30_combout\ = (\inst|Mux0~1_combout\ & ((\inst|Add2~0_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))) # (!\inst|Add2~0_combout\ & (\inst|out\(0))))) # (!\inst|Mux0~1_combout\ & 
-- (((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(0),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Add2~0_combout\,
	combout => \inst|Add2~30_combout\);

-- Location: LCCOMB_X40_Y17_N12
\inst|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_combout\ = (\inst|Add1~0_combout\ & (!\k[0]~input_o\ & \k[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \k[0]~input_o\,
	datac => \k[1]~input_o\,
	combout => \inst|Mux8~3_combout\);

-- Location: LCCOMB_X40_Y17_N6
\inst|Add2~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~31_combout\ = (\k[2]~input_o\ & ((\inst|Mux8~2_combout\) # ((\inst|Mux8~3_combout\)))) # (!\k[2]~input_o\ & (((\inst|Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \inst|Mux8~2_combout\,
	datac => \inst|Add2~30_combout\,
	datad => \inst|Mux8~3_combout\,
	combout => \inst|Add2~31_combout\);

-- Location: LCCOMB_X40_Y18_N30
\inst|out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out\(0) = (GLOBAL(\inst|out[0]~4clkctrl_outclk\) & (\inst|Add2~31_combout\)) # (!GLOBAL(\inst|out[0]~4clkctrl_outclk\) & ((\inst|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~31_combout\,
	datac => \inst|out\(0),
	datad => \inst|out[0]~4clkctrl_outclk\,
	combout => \inst|out\(0));

-- Location: LCCOMB_X40_Y17_N30
\inst|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux8~4_combout\ = (\k[2]~input_o\ & ((\inst|Mux8~6_combout\) # ((\inst|Mux8~2_combout\)))) # (!\k[2]~input_o\ & (\inst|Mux8~6_combout\ & ((\inst|out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \inst|Mux8~6_combout\,
	datac => \inst|Mux8~2_combout\,
	datad => \inst|out\(0),
	combout => \inst|Mux8~4_combout\);

-- Location: LCCOMB_X40_Y17_N0
\inst|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux8~5_combout\ = (\inst|Mux8~4_combout\) # ((!\k[2]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & \inst|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|Mux8~4_combout\,
	datad => \inst|Add2~0_combout\,
	combout => \inst|Mux8~5_combout\);

-- Location: LCCOMB_X39_Y16_N10
\inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_cout\ = CARRY(!\inst|Mux8~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux8~5_combout\,
	datad => VCC,
	cout => \inst|Add2~2_cout\);

-- Location: LCCOMB_X39_Y16_N12
\inst|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~3_combout\ = (\inst|Mux7~8_combout\ & ((\inst|Add2~2_cout\) # (GND))) # (!\inst|Mux7~8_combout\ & (!\inst|Add2~2_cout\))
-- \inst|Add2~4\ = CARRY((\inst|Mux7~8_combout\) # (!\inst|Add2~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux7~8_combout\,
	datad => VCC,
	cin => \inst|Add2~2_cout\,
	combout => \inst|Add2~3_combout\,
	cout => \inst|Add2~4\);

-- Location: LCCOMB_X39_Y19_N0
\inst|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux7~6_combout\ = (\k[0]~input_o\ & ((\k[1]~input_o\ & ((\inst|Mult0|auto_generated|op_3~2_combout\))) # (!\k[1]~input_o\ & (\inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~input_o\,
	datab => \k[1]~input_o\,
	datac => \inst|Add0~2_combout\,
	datad => \inst|Mult0|auto_generated|op_3~2_combout\,
	combout => \inst|Mux7~6_combout\);

-- Location: LCCOMB_X39_Y19_N6
\inst|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux7~5_combout\ = (!\k[0]~input_o\ & \k[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \k[0]~input_o\,
	datad => \k[1]~input_o\,
	combout => \inst|Mux7~5_combout\);

-- Location: LCCOMB_X39_Y19_N26
\inst|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux7~7_combout\ = (\k[2]~input_o\ & ((\inst|Mux7~6_combout\) # ((\inst|Add1~2_combout\ & \inst|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \inst|Add1~2_combout\,
	datac => \inst|Mux7~6_combout\,
	datad => \inst|Mux7~5_combout\,
	combout => \inst|Mux7~7_combout\);

-- Location: LCCOMB_X38_Y16_N12
\inst|Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~29_combout\ = (\inst|Mux0~1_combout\ & (((\inst|Add2~3_combout\)))) # (!\inst|Mux0~1_combout\ & ((\inst|Mux7~4_combout\) # ((\inst|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~4_combout\,
	datab => \inst|Add2~3_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux7~7_combout\,
	combout => \inst|Add2~29_combout\);

-- Location: LCCOMB_X38_Y16_N16
\inst|out[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out\(1) = (GLOBAL(\inst|out[0]~4clkctrl_outclk\) & ((\inst|Add2~29_combout\))) # (!GLOBAL(\inst|out[0]~4clkctrl_outclk\) & (\inst|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|out\(1),
	datac => \inst|Add2~29_combout\,
	datad => \inst|out[0]~4clkctrl_outclk\,
	combout => \inst|out\(1));

-- Location: LCCOMB_X39_Y19_N22
\inst|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux7~9_combout\ = (\k[2]~input_o\ & (\k[1]~input_o\ & (!\k[0]~input_o\))) # (!\k[2]~input_o\ & (\inst|out\(1) & ((!\k[0]~input_o\) # (!\k[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \k[1]~input_o\,
	datac => \k[0]~input_o\,
	datad => \inst|out\(1),
	combout => \inst|Mux7~9_combout\);

-- Location: LCCOMB_X39_Y19_N12
\inst|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux7~10_combout\ = (\k[2]~input_o\ & ((\inst|Mux7~6_combout\) # ((\inst|Add1~2_combout\ & \inst|Mux7~9_combout\)))) # (!\k[2]~input_o\ & (((\inst|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \k[2]~input_o\,
	datac => \inst|Mux7~9_combout\,
	datad => \inst|Mux7~6_combout\,
	combout => \inst|Mux7~10_combout\);

-- Location: LCCOMB_X39_Y19_N16
\inst|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux7~8_combout\ = (\inst|Mux7~10_combout\) # ((\k[0]~input_o\ & (\k[1]~input_o\ & \inst|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~input_o\,
	datab => \k[1]~input_o\,
	datac => \inst|Mux7~4_combout\,
	datad => \inst|Mux7~10_combout\,
	combout => \inst|Mux7~8_combout\);

-- Location: LCCOMB_X39_Y16_N14
\inst|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~5_combout\ = (\inst|Mux6~3_combout\ & (!\inst|Add2~4\ & VCC)) # (!\inst|Mux6~3_combout\ & (\inst|Add2~4\ $ (GND)))
-- \inst|Add2~6\ = CARRY((!\inst|Mux6~3_combout\ & !\inst|Add2~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux6~3_combout\,
	datad => VCC,
	cin => \inst|Add2~4\,
	combout => \inst|Add2~5_combout\,
	cout => \inst|Add2~6\);

-- Location: LCCOMB_X36_Y16_N14
\inst|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~28_combout\ = (\inst|Mux0~1_combout\ & (((\inst|Add2~5_combout\)))) # (!\inst|Mux0~1_combout\ & ((\inst|Add2~27_combout\) # ((\inst|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~27_combout\,
	datab => \inst|Mux0~1_combout\,
	datac => \inst|Mux6~2_combout\,
	datad => \inst|Add2~5_combout\,
	combout => \inst|Add2~28_combout\);

-- Location: LCCOMB_X36_Y16_N6
\inst|out[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out\(2) = (GLOBAL(\inst|out[0]~4clkctrl_outclk\) & ((\inst|Add2~28_combout\))) # (!GLOBAL(\inst|out[0]~4clkctrl_outclk\) & (\inst|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(2),
	datab => \inst|Add2~28_combout\,
	datad => \inst|out[0]~4clkctrl_outclk\,
	combout => \inst|out\(2));

-- Location: LCCOMB_X36_Y16_N0
\inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (!\k[2]~input_o\ & ((\inst|Add2~0_combout\ & (!\inst|Div0|auto_generated|divider|divider|selnose[5]~2_combout\)) # (!\inst|Add2~0_combout\ & ((\inst|out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|selnose[5]~2_combout\,
	datab => \k[2]~input_o\,
	datac => \inst|Add2~0_combout\,
	datad => \inst|out\(2),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y16_N6
\inst|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux6~3_combout\ = (\inst|Mux6~2_combout\) # (\inst|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux6~2_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst|Mux6~3_combout\);

-- Location: LCCOMB_X39_Y16_N16
\inst|Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~7_combout\ = (\inst|Mux5~5_combout\ & ((\inst|Add2~6\) # (GND))) # (!\inst|Mux5~5_combout\ & (!\inst|Add2~6\))
-- \inst|Add2~8\ = CARRY((\inst|Mux5~5_combout\) # (!\inst|Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~5_combout\,
	datad => VCC,
	cin => \inst|Add2~6\,
	combout => \inst|Add2~7_combout\,
	cout => \inst|Add2~8\);

-- Location: LCCOMB_X39_Y16_N18
\inst|Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~9_combout\ = (\inst|Mux4~0_combout\ & (!\inst|Add2~8\ & VCC)) # (!\inst|Mux4~0_combout\ & (\inst|Add2~8\ $ (GND)))
-- \inst|Add2~10\ = CARRY((!\inst|Mux4~0_combout\ & !\inst|Add2~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~0_combout\,
	datad => VCC,
	cin => \inst|Add2~8\,
	combout => \inst|Add2~9_combout\,
	cout => \inst|Add2~10\);

-- Location: LCCOMB_X39_Y16_N24
\inst|Add2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~15_combout\ = (\inst|Mux1~2_combout\ & ((\inst|Mux1~0_combout\ & ((\inst|Add2~14\) # (GND))) # (!\inst|Mux1~0_combout\ & (!\inst|Add2~14\)))) # (!\inst|Mux1~2_combout\ & (((!\inst|Add2~14\))))
-- \inst|Add2~16\ = CARRY(((\inst|Mux1~2_combout\ & \inst|Mux1~0_combout\)) # (!\inst|Add2~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~2_combout\,
	datab => \inst|Mux1~0_combout\,
	datad => VCC,
	cin => \inst|Add2~14\,
	combout => \inst|Add2~15_combout\,
	cout => \inst|Add2~16\);

-- Location: LCCOMB_X39_Y16_N26
\inst|Add2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~17_combout\ = \inst|Add2~16\ $ (((\inst|Mux0~2_combout\ & \inst|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~2_combout\,
	datad => \inst|Mux0~0_combout\,
	cin => \inst|Add2~16\,
	combout => \inst|Add2~17_combout\);

-- Location: LCCOMB_X40_Y18_N6
\inst|Add2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~19_combout\ = (\inst|Mux0~1_combout\ & \inst|Add2~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~1_combout\,
	datad => \inst|Add2~17_combout\,
	combout => \inst|Add2~19_combout\);

-- Location: LCCOMB_X40_Y18_N14
\inst|out[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out\(8) = (GLOBAL(\inst|out[0]~4clkctrl_outclk\) & ((\inst|Add2~19_combout\))) # (!GLOBAL(\inst|out[0]~4clkctrl_outclk\) & (\inst|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|out\(8),
	datac => \inst|out[0]~4clkctrl_outclk\,
	datad => \inst|Add2~19_combout\,
	combout => \inst|out\(8));

-- Location: LCCOMB_X40_Y18_N12
\inst|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst|Mux0~0_combout\ & ((\k[2]~input_o\ & (\inst|Add1~8_combout\)) # (!\k[2]~input_o\ & ((\inst|out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \inst|Mux0~0_combout\,
	datac => \inst|Add1~8_combout\,
	datad => \inst|out\(8),
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X37_Y16_N2
\inst|cnt_sel~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt_sel~1_combout\ = (!\inst|cnt_sel\(2) & (\inst|cnt_sel\(0) $ (\inst|cnt_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datac => \inst|cnt_sel\(1),
	datad => \inst|cnt_sel\(2),
	combout => \inst|cnt_sel~1_combout\);

-- Location: FF_X37_Y16_N3
\inst|cnt_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|flag~q\,
	d => \inst|cnt_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt_sel\(1));

-- Location: LCCOMB_X37_Y16_N16
\inst|cnt_sel~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt_sel~0_combout\ = (\inst|cnt_sel\(0) & (!\inst|cnt_sel\(2) & \inst|cnt_sel\(1))) # (!\inst|cnt_sel\(0) & (\inst|cnt_sel\(2) & !\inst|cnt_sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datac => \inst|cnt_sel\(2),
	datad => \inst|cnt_sel\(1),
	combout => \inst|cnt_sel~0_combout\);

-- Location: FF_X37_Y16_N17
\inst|cnt_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|flag~q\,
	d => \inst|cnt_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt_sel\(2));

-- Location: LCCOMB_X37_Y16_N18
\inst|cnt_sel~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt_sel~2_combout\ = (!\inst|cnt_sel\(0) & ((!\inst|cnt_sel\(1)) # (!\inst|cnt_sel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datab => \inst|cnt_sel\(2),
	datad => \inst|cnt_sel\(1),
	combout => \inst|cnt_sel~2_combout\);

-- Location: LCCOMB_X37_Y16_N6
\inst|cnt_sel[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt_sel[0]~feeder_combout\ = \inst|cnt_sel~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|cnt_sel~2_combout\,
	combout => \inst|cnt_sel[0]~feeder_combout\);

-- Location: FF_X37_Y16_N7
\inst|cnt_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|flag~q\,
	d => \inst|cnt_sel[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt_sel\(0));

-- Location: LCCOMB_X37_Y16_N24
\inst|Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux27~0_combout\ = ((!\inst|cnt_sel\(1) & !\inst|cnt_sel\(0))) # (!\inst|cnt_sel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt_sel\(1),
	datac => \inst|cnt_sel\(2),
	datad => \inst|cnt_sel\(0),
	combout => \inst|Mux27~0_combout\);

-- Location: CLKCTRL_G6
\inst|Mux27~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Mux27~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Mux27~0clkctrl_outclk\);

-- Location: LCCOMB_X37_Y16_N10
\inst|en[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|en\(5) = (GLOBAL(\inst|Mux27~0clkctrl_outclk\) & (!\inst|cnt_sel\(2))) # (!GLOBAL(\inst|Mux27~0clkctrl_outclk\) & ((\inst|en\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(2),
	datac => \inst|en\(5),
	datad => \inst|Mux27~0clkctrl_outclk\,
	combout => \inst|en\(5));

-- Location: LCCOMB_X37_Y16_N22
\inst|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = (\inst|cnt_sel\(0) & \inst|cnt_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datad => \inst|cnt_sel\(1),
	combout => \inst|Mux23~0_combout\);

-- Location: LCCOMB_X31_Y16_N8
\inst|en[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|en\(3) = (GLOBAL(\inst|Mux27~0clkctrl_outclk\) & (!\inst|Mux23~0_combout\)) # (!GLOBAL(\inst|Mux27~0clkctrl_outclk\) & ((\inst|en\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux23~0_combout\,
	datac => \inst|en\(3),
	datad => \inst|Mux27~0clkctrl_outclk\,
	combout => \inst|en\(3));

-- Location: LCCOMB_X37_Y16_N26
\inst|Mux23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux23~1_combout\ = (\inst|cnt_sel\(1) & !\inst|cnt_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt_sel\(1),
	datad => \inst|cnt_sel\(0),
	combout => \inst|Mux23~1_combout\);

-- Location: LCCOMB_X36_Y16_N8
\inst|en[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|en\(2) = (GLOBAL(\inst|Mux27~0clkctrl_outclk\) & (!\inst|Mux23~1_combout\)) # (!GLOBAL(\inst|Mux27~0clkctrl_outclk\) & ((\inst|en\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~1_combout\,
	datac => \inst|en\(2),
	datad => \inst|Mux27~0clkctrl_outclk\,
	combout => \inst|en\(2));

-- Location: LCCOMB_X37_Y16_N12
\inst|Mux23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux23~2_combout\ = (\inst|cnt_sel\(0) & !\inst|cnt_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datac => \inst|cnt_sel\(1),
	combout => \inst|Mux23~2_combout\);

-- Location: LCCOMB_X31_Y16_N30
\inst|en[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|en\(1) = (GLOBAL(\inst|Mux27~0clkctrl_outclk\) & (!\inst|Mux23~2_combout\)) # (!GLOBAL(\inst|Mux27~0clkctrl_outclk\) & ((\inst|en\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~2_combout\,
	datac => \inst|en\(1),
	datad => \inst|Mux27~0clkctrl_outclk\,
	combout => \inst|en\(1));

-- Location: LCCOMB_X37_Y16_N20
\inst|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = (!\inst|cnt_sel\(2) & (!\inst|cnt_sel\(0) & !\inst|cnt_sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(2),
	datab => \inst|cnt_sel\(0),
	datac => \inst|cnt_sel\(1),
	combout => \inst|Mux22~0_combout\);

-- Location: LCCOMB_X30_Y16_N16
\inst|en[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|en\(0) = (GLOBAL(\inst|Mux27~0clkctrl_outclk\) & ((!\inst|Mux22~0_combout\))) # (!GLOBAL(\inst|Mux27~0clkctrl_outclk\) & (\inst|en\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|en\(0),
	datac => \inst|Mux22~0_combout\,
	datad => \inst|Mux27~0clkctrl_outclk\,
	combout => \inst|en\(0));

-- Location: LCCOMB_X38_Y16_N22
\inst|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~20_combout\ = (\k[2]~input_o\ & (\k[0]~input_o\ & \k[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datac => \k[0]~input_o\,
	datad => \k[1]~input_o\,
	combout => \inst|Add2~20_combout\);

-- Location: LCCOMB_X40_Y20_N28
\inst|Mult0|auto_generated|le4a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(5) = \b[3]~input_o\ $ (((\b[2]~input_o\ & \b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X40_Y20_N8
\inst|Mult0|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(3) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\a[3]~input_o\ $ (((\inst|Mult0|auto_generated|le4a\(5)))))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\a[2]~input_o\ & 
-- \inst|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \a[3]~input_o\,
	datac => \a[2]~input_o\,
	datad => \inst|Mult0|auto_generated|le4a\(5),
	combout => \inst|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X40_Y20_N4
\inst|Mult0|auto_generated|le3a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(4) = (\b[1]~input_o\ & ((\b[0]~input_o\) # (!\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X40_Y20_N0
\inst|Mult0|auto_generated|le3a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(3) = (\b[0]~input_o\ & ((\b[1]~input_o\ $ (\a[3]~input_o\)))) # (!\b[0]~input_o\ & (!\a[2]~input_o\ & (\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X40_Y20_N12
\inst|Mult0|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~2_combout\ = (\inst|Mult0|auto_generated|le3a\(3) & (!\inst|Mult0|auto_generated|op_1~1\)) # (!\inst|Mult0|auto_generated|le3a\(3) & ((\inst|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_1~3\ = CARRY((!\inst|Mult0|auto_generated|op_1~1\) # (!\inst|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~1\,
	combout => \inst|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X40_Y20_N14
\inst|Mult0|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~4_combout\ = ((\inst|Mult0|auto_generated|le4a\(2) $ (\inst|Mult0|auto_generated|le3a\(4) $ (!\inst|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~5\ = CARRY((\inst|Mult0|auto_generated|le4a\(2) & ((\inst|Mult0|auto_generated|le3a\(4)) # (!\inst|Mult0|auto_generated|op_1~3\))) # (!\inst|Mult0|auto_generated|le4a\(2) & (\inst|Mult0|auto_generated|le3a\(4) & 
-- !\inst|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(2),
	datab => \inst|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~3\,
	combout => \inst|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X40_Y20_N16
\inst|Mult0|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~6_combout\ = (\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|le4a\(3) & (\inst|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|op_1~5\)))) # 
-- (!\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \inst|Mult0|auto_generated|op_1~7\ = CARRY((\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|le4a\(3) & !\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le5a\(1) & ((!\inst|Mult0|auto_generated|op_1~5\) # 
-- (!\inst|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(1),
	datab => \inst|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~5\,
	combout => \inst|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X40_Y19_N6
\inst|Mult0|auto_generated|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~6_combout\ = (\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_1~2_combout\ & (\inst|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\inst|Mult0|auto_generated|op_3~5\)))) # (!\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_1~2_combout\ & (!\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & ((\inst|Mult0|auto_generated|op_3~5\) 
-- # (GND)))))
-- \inst|Mult0|auto_generated|op_3~7\ = CARRY((\inst|Mult0|auto_generated|le4a\(1) & (!\inst|Mult0|auto_generated|op_1~2_combout\ & !\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|le4a\(1) & ((!\inst|Mult0|auto_generated|op_3~5\) # 
-- (!\inst|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(1),
	datab => \inst|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~5\,
	combout => \inst|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X40_Y19_N8
\inst|Mult0|auto_generated|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~8_combout\ = ((\inst|Mult0|auto_generated|le5a\(0) $ (\inst|Mult0|auto_generated|op_1~4_combout\ $ (!\inst|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~9\ = CARRY((\inst|Mult0|auto_generated|le5a\(0) & ((\inst|Mult0|auto_generated|op_1~4_combout\) # (!\inst|Mult0|auto_generated|op_3~7\))) # (!\inst|Mult0|auto_generated|le5a\(0) & (\inst|Mult0|auto_generated|op_1~4_combout\ 
-- & !\inst|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(0),
	datab => \inst|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~7\,
	combout => \inst|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X40_Y19_N10
\inst|Mult0|auto_generated|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~10_combout\ = (\b[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~6_combout\ & (\inst|Mult0|auto_generated|op_3~9\ & VCC)) # (!\inst|Mult0|auto_generated|op_1~6_combout\ & (!\inst|Mult0|auto_generated|op_3~9\)))) # 
-- (!\b[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~6_combout\ & (!\inst|Mult0|auto_generated|op_3~9\)) # (!\inst|Mult0|auto_generated|op_1~6_combout\ & ((\inst|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \inst|Mult0|auto_generated|op_3~11\ = CARRY((\b[1]~input_o\ & (!\inst|Mult0|auto_generated|op_1~6_combout\ & !\inst|Mult0|auto_generated|op_3~9\)) # (!\b[1]~input_o\ & ((!\inst|Mult0|auto_generated|op_3~9\) # 
-- (!\inst|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~9\,
	combout => \inst|Mult0|auto_generated|op_3~10_combout\,
	cout => \inst|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X38_Y16_N28
\inst|Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~23_combout\ = (\inst|Add2~11_combout\ & ((\inst|Mux0~1_combout\) # ((\inst|Add2~20_combout\ & \inst|Mult0|auto_generated|op_3~10_combout\)))) # (!\inst|Add2~11_combout\ & (((\inst|Add2~20_combout\ & 
-- \inst|Mult0|auto_generated|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~11_combout\,
	datab => \inst|Mux0~1_combout\,
	datac => \inst|Add2~20_combout\,
	datad => \inst|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst|Add2~23_combout\);

-- Location: LCCOMB_X38_Y16_N4
\inst|out[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out\(5) = (GLOBAL(\inst|out[0]~4clkctrl_outclk\) & ((\inst|Add2~23_combout\))) # (!GLOBAL(\inst|out[0]~4clkctrl_outclk\) & (\inst|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|out\(5),
	datac => \inst|out[0]~4clkctrl_outclk\,
	datad => \inst|Add2~23_combout\,
	combout => \inst|out\(5));

-- Location: LCCOMB_X38_Y16_N18
\inst|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (\inst|cnt_sel\(0) & ((\inst|cnt_sel\(1)) # ((\inst|out\(5))))) # (!\inst|cnt_sel\(0) & (!\inst|cnt_sel\(1) & ((\inst|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datab => \inst|cnt_sel\(1),
	datac => \inst|out\(5),
	datad => \inst|out\(1),
	combout => \inst|Mux18~0_combout\);

-- Location: LCCOMB_X38_Y16_N2
\inst|Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux18~1_combout\ = (\inst|cnt_sel\(2) & (\a[1]~input_o\)) # (!\inst|cnt_sel\(2) & ((\inst|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \inst|Mux18~0_combout\,
	datad => \inst|cnt_sel\(2),
	combout => \inst|Mux18~1_combout\);

-- Location: LCCOMB_X38_Y16_N24
\inst|data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data\(1) = (GLOBAL(\inst|Mux27~0clkctrl_outclk\) & ((\inst|Mux18~1_combout\))) # (!GLOBAL(\inst|Mux27~0clkctrl_outclk\) & (\inst|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|data\(1),
	datac => \inst|Mux18~1_combout\,
	datad => \inst|Mux27~0clkctrl_outclk\,
	combout => \inst|data\(1));

-- Location: LCCOMB_X40_Y20_N24
\inst|Mult0|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(4) = (\a[3]~input_o\ & (\b[3]~input_o\ & (\b[2]~input_o\ $ (\b[1]~input_o\)))) # (!\a[3]~input_o\ & (\b[3]~input_o\ $ (((\b[2]~input_o\ & \b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[3]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X40_Y20_N20
\inst|Mult0|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~10_combout\ = \inst|Mult0|auto_generated|le5a\(3) $ (\inst|Mult0|auto_generated|op_1~9\ $ (!\inst|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(3),
	datad => \inst|Mult0|auto_generated|le4a\(5),
	cin => \inst|Mult0|auto_generated|op_1~9\,
	combout => \inst|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X40_Y19_N14
\inst|Mult0|auto_generated|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~14_combout\ = \inst|Mult0|auto_generated|op_1~10_combout\ $ (\inst|Mult0|auto_generated|op_3~13\ $ (!\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|op_1~10_combout\,
	datad => \b[1]~input_o\,
	cin => \inst|Mult0|auto_generated|op_3~13\,
	combout => \inst|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X38_Y16_N8
\inst|Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~21_combout\ = (\inst|Mux0~1_combout\ & ((\inst|Add2~15_combout\) # ((\inst|Mult0|auto_generated|op_3~14_combout\ & \inst|Add2~20_combout\)))) # (!\inst|Mux0~1_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~1_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst|Add2~20_combout\,
	datad => \inst|Add2~15_combout\,
	combout => \inst|Add2~21_combout\);

-- Location: LCCOMB_X38_Y16_N14
\inst|out[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out\(7) = (GLOBAL(\inst|out[0]~4clkctrl_outclk\) & ((\inst|Add2~21_combout\))) # (!GLOBAL(\inst|out[0]~4clkctrl_outclk\) & (\inst|out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|out\(7),
	datac => \inst|out[0]~4clkctrl_outclk\,
	datad => \inst|Add2~21_combout\,
	combout => \inst|out\(7));

-- Location: LCCOMB_X40_Y16_N26
\inst|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\k[0]~input_o\ & (\inst|Add0~6_combout\ & ((!\k[1]~input_o\)))) # (!\k[0]~input_o\ & (((\inst|Add1~6_combout\ & \k[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datab => \k[0]~input_o\,
	datac => \inst|Add1~6_combout\,
	datad => \k[1]~input_o\,
	combout => \inst|Mux5~2_combout\);

-- Location: LCCOMB_X40_Y16_N4
\inst|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux5~3_combout\ = (\k[2]~input_o\ & ((\inst|Mux5~2_combout\) # ((\inst|Add2~0_combout\ & \inst|Mult0|auto_generated|op_3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \k[2]~input_o\,
	datac => \inst|Mult0|auto_generated|op_3~6_combout\,
	datad => \inst|Mux5~2_combout\,
	combout => \inst|Mux5~3_combout\);

-- Location: LCCOMB_X39_Y16_N28
\inst|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~26_combout\ = (\inst|Mux0~1_combout\ & (((\inst|Add2~7_combout\)))) # (!\inst|Mux0~1_combout\ & ((\inst|Add2~25_combout\) # ((\inst|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~25_combout\,
	datab => \inst|Add2~7_combout\,
	datac => \inst|Mux5~3_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst|Add2~26_combout\);

-- Location: LCCOMB_X38_Y16_N26
\inst|out[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out\(3) = (GLOBAL(\inst|out[0]~4clkctrl_outclk\) & ((\inst|Add2~26_combout\))) # (!GLOBAL(\inst|out[0]~4clkctrl_outclk\) & (\inst|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(3),
	datab => \inst|Add2~26_combout\,
	datac => \inst|out[0]~4clkctrl_outclk\,
	combout => \inst|out\(3));

-- Location: LCCOMB_X38_Y16_N10
\inst|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (\inst|cnt_sel\(0) & ((\inst|out\(7)) # ((\inst|cnt_sel\(1))))) # (!\inst|cnt_sel\(0) & (((\inst|out\(3) & !\inst|cnt_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(0),
	datab => \inst|out\(7),
	datac => \inst|out\(3),
	datad => \inst|cnt_sel\(1),
	combout => \inst|Mux20~0_combout\);

-- Location: LCCOMB_X38_Y16_N6
\inst|Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux20~1_combout\ = (\inst|cnt_sel\(2) & (\a[3]~input_o\)) # (!\inst|cnt_sel\(2) & ((\inst|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(2),
	datac => \a[3]~input_o\,
	datad => \inst|Mux20~0_combout\,
	combout => \inst|Mux20~1_combout\);

-- Location: LCCOMB_X38_Y16_N30
\inst|data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data\(3) = (\inst|Mux27~0_combout\ & ((\inst|Mux20~1_combout\))) # (!\inst|Mux27~0_combout\ & (\inst|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|Mux27~0_combout\,
	datad => \inst|Mux20~1_combout\,
	combout => \inst|data\(3));

-- Location: LCCOMB_X37_Y16_N8
\inst|data[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data\(4) = (\inst|Mux27~0_combout\ & ((\inst|Mux23~0_combout\))) # (!\inst|Mux27~0_combout\ & (\inst|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(4),
	datac => \inst|Mux27~0_combout\,
	datad => \inst|Mux23~0_combout\,
	combout => \inst|data\(4));

-- Location: LCCOMB_X37_Y16_N30
\inst|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (\inst|data\(4) & (((!\inst|data\(3)) # (!\inst|data\(1))) # (!\inst|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(1),
	datac => \inst|data\(3),
	datad => \inst|data\(4),
	combout => \inst|Mux9~0_combout\);

-- Location: CLKCTRL_G7
\inst|Mux9~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Mux9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Mux9~0clkctrl_outclk\);

-- Location: LCCOMB_X37_Y16_N28
\inst|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (\inst|cnt_sel\(1) & (((\inst|cnt_sel\(0))))) # (!\inst|cnt_sel\(1) & ((\inst|cnt_sel\(0) & (\inst|out\(6))) # (!\inst|cnt_sel\(0) & ((\inst|out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(6),
	datab => \inst|out\(2),
	datac => \inst|cnt_sel\(1),
	datad => \inst|cnt_sel\(0),
	combout => \inst|Mux19~0_combout\);

-- Location: LCCOMB_X37_Y16_N0
\inst|Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux19~1_combout\ = (\inst|cnt_sel\(2) & (\a[2]~input_o\)) # (!\inst|cnt_sel\(2) & ((\inst|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \inst|cnt_sel\(2),
	datad => \inst|Mux19~0_combout\,
	combout => \inst|Mux19~1_combout\);

-- Location: LCCOMB_X37_Y16_N14
\inst|data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data\(2) = (\inst|Mux27~0_combout\ & ((\inst|Mux19~1_combout\))) # (!\inst|Mux27~0_combout\ & (\inst|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux27~0_combout\,
	datac => \inst|data\(2),
	datad => \inst|Mux19~1_combout\,
	combout => \inst|data\(2));

-- Location: LCCOMB_X40_Y16_N14
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = !\inst|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\);

-- Location: LCCOMB_X40_Y16_N22
\inst|out[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out[4]~2_combout\ = (\k[1]~input_o\ & (!\k[0]~input_o\ & ((\inst|Add1~8_combout\)))) # (!\k[1]~input_o\ & (\k[0]~input_o\ & (\inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[1]~input_o\,
	datab => \k[0]~input_o\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Add1~8_combout\,
	combout => \inst|out[4]~2_combout\);

-- Location: LCCOMB_X40_Y16_N24
\inst|out[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out[4]~3_combout\ = (\k[2]~input_o\ & ((\inst|out[4]~2_combout\) # ((\inst|Add2~0_combout\ & \inst|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~8_combout\,
	datac => \inst|out[4]~2_combout\,
	datad => \k[2]~input_o\,
	combout => \inst|out[4]~3_combout\);

-- Location: LCCOMB_X40_Y16_N0
\inst|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~24_combout\ = (\inst|Mux0~1_combout\ & (\inst|Add2~9_combout\)) # (!\inst|Mux0~1_combout\ & ((\inst|out[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~9_combout\,
	datac => \inst|out[4]~3_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst|Add2~24_combout\);

-- Location: LCCOMB_X40_Y16_N2
\inst|out[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out\(4) = (GLOBAL(\inst|out[0]~4clkctrl_outclk\) & ((\inst|Add2~24_combout\))) # (!GLOBAL(\inst|out[0]~4clkctrl_outclk\) & (\inst|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|out\(4),
	datac => \inst|Add2~24_combout\,
	datad => \inst|out[0]~4clkctrl_outclk\,
	combout => \inst|out\(4));

-- Location: LCCOMB_X40_Y18_N2
\inst|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (\inst|cnt_sel\(0) & (((\inst|cnt_sel\(1)) # (\inst|out\(4))))) # (!\inst|cnt_sel\(0) & (\inst|out\(0) & (!\inst|cnt_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(0),
	datab => \inst|cnt_sel\(0),
	datac => \inst|cnt_sel\(1),
	datad => \inst|out\(4),
	combout => \inst|Mux17~0_combout\);

-- Location: LCCOMB_X40_Y18_N0
\inst|Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux17~1_combout\ = (\inst|cnt_sel\(1) & ((\inst|Mux17~0_combout\ & ((\inst|Mux0~1_combout\))) # (!\inst|Mux17~0_combout\ & (\inst|out\(8))))) # (!\inst|cnt_sel\(1) & (((\inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt_sel\(1),
	datab => \inst|out\(8),
	datac => \inst|Mux17~0_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst|Mux17~1_combout\);

-- Location: LCCOMB_X40_Y18_N16
\inst|Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux17~2_combout\ = (\inst|cnt_sel\(2) & (\a[0]~input_o\)) # (!\inst|cnt_sel\(2) & ((\inst|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \inst|cnt_sel\(2),
	datad => \inst|Mux17~1_combout\,
	combout => \inst|Mux17~2_combout\);

-- Location: LCCOMB_X40_Y18_N28
\inst|data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|data\(0) = (GLOBAL(\inst|Mux27~0clkctrl_outclk\) & ((\inst|Mux17~2_combout\))) # (!GLOBAL(\inst|Mux27~0clkctrl_outclk\) & (\inst|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|data\(0),
	datac => \inst|Mux27~0clkctrl_outclk\,
	datad => \inst|Mux17~2_combout\,
	combout => \inst|data\(0));

-- Location: LCCOMB_X39_Y18_N0
\inst|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (\inst|data\(3) & (\inst|data\(0) & (\inst|data\(1) $ (\inst|data\(2))))) # (!\inst|data\(3) & (!\inst|data\(1) & (\inst|data\(2) $ (\inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(1),
	datac => \inst|data\(2),
	datad => \inst|data\(0),
	combout => \inst|Mux10~0_combout\);

-- Location: LCCOMB_X39_Y18_N2
\inst|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux10~1_combout\ = (\inst|data\(4)) # (\inst|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(4),
	datad => \inst|Mux10~0_combout\,
	combout => \inst|Mux10~1_combout\);

-- Location: LCCOMB_X39_Y18_N8
\inst|light[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|light\(6) = (GLOBAL(\inst|Mux9~0clkctrl_outclk\) & (\inst|light\(6))) # (!GLOBAL(\inst|Mux9~0clkctrl_outclk\) & ((\inst|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|light\(6),
	datac => \inst|Mux9~0clkctrl_outclk\,
	datad => \inst|Mux10~1_combout\,
	combout => \inst|light\(6));

-- Location: LCCOMB_X39_Y18_N12
\inst|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\inst|data\(3) & ((\inst|data\(0) & (\inst|data\(1))) # (!\inst|data\(0) & ((\inst|data\(2)))))) # (!\inst|data\(3) & (\inst|data\(2) & (\inst|data\(1) $ (\inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(1),
	datac => \inst|data\(2),
	datad => \inst|data\(0),
	combout => \inst|Mux11~0_combout\);

-- Location: LCCOMB_X39_Y18_N14
\inst|light[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|light\(5) = (GLOBAL(\inst|Mux9~0clkctrl_outclk\) & (\inst|light\(5))) # (!GLOBAL(\inst|Mux9~0clkctrl_outclk\) & ((\inst|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|light\(5),
	datac => \inst|Mux11~0_combout\,
	datad => \inst|Mux9~0clkctrl_outclk\,
	combout => \inst|light\(5));

-- Location: LCCOMB_X39_Y18_N30
\inst|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|data\(3) & (\inst|data\(2) & ((\inst|data\(1)) # (!\inst|data\(0))))) # (!\inst|data\(3) & (\inst|data\(1) & (!\inst|data\(2) & !\inst|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(1),
	datac => \inst|data\(2),
	datad => \inst|data\(0),
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X39_Y18_N16
\inst|light[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|light\(4) = (GLOBAL(\inst|Mux9~0clkctrl_outclk\) & (\inst|light\(4))) # (!GLOBAL(\inst|Mux9~0clkctrl_outclk\) & ((\inst|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|light\(4),
	datac => \inst|Mux9~0clkctrl_outclk\,
	datad => \inst|Mux12~0_combout\,
	combout => \inst|light\(4));

-- Location: LCCOMB_X39_Y18_N24
\inst|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst|data\(1) & ((\inst|data\(2) & ((\inst|data\(0)))) # (!\inst|data\(2) & (\inst|data\(3) & !\inst|data\(0))))) # (!\inst|data\(1) & (!\inst|data\(3) & (\inst|data\(2) $ (\inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(1),
	datac => \inst|data\(2),
	datad => \inst|data\(0),
	combout => \inst|Mux13~0_combout\);

-- Location: LCCOMB_X39_Y18_N6
\inst|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux13~1_combout\ = (\inst|data\(4)) # (\inst|Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(4),
	datad => \inst|Mux13~0_combout\,
	combout => \inst|Mux13~1_combout\);

-- Location: LCCOMB_X39_Y18_N22
\inst|light[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|light\(3) = (GLOBAL(\inst|Mux9~0clkctrl_outclk\) & (\inst|light\(3))) # (!GLOBAL(\inst|Mux9~0clkctrl_outclk\) & ((\inst|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|light\(3),
	datac => \inst|Mux9~0clkctrl_outclk\,
	datad => \inst|Mux13~1_combout\,
	combout => \inst|light\(3));

-- Location: LCCOMB_X39_Y18_N20
\inst|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (\inst|data\(1) & (!\inst|data\(3) & ((\inst|data\(0))))) # (!\inst|data\(1) & ((\inst|data\(2) & (!\inst|data\(3))) # (!\inst|data\(2) & ((\inst|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(1),
	datac => \inst|data\(2),
	datad => \inst|data\(0),
	combout => \inst|Mux14~0_combout\);

-- Location: LCCOMB_X39_Y18_N18
\inst|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux14~1_combout\ = (\inst|data\(4)) # (\inst|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(4),
	datad => \inst|Mux14~0_combout\,
	combout => \inst|Mux14~1_combout\);

-- Location: LCCOMB_X39_Y18_N4
\inst|light[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|light\(2) = (GLOBAL(\inst|Mux9~0clkctrl_outclk\) & (\inst|light\(2))) # (!GLOBAL(\inst|Mux9~0clkctrl_outclk\) & ((\inst|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|light\(2),
	datac => \inst|Mux9~0clkctrl_outclk\,
	datad => \inst|Mux14~1_combout\,
	combout => \inst|light\(2));

-- Location: LCCOMB_X39_Y18_N28
\inst|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst|data\(1) & (!\inst|data\(3) & ((\inst|data\(0)) # (!\inst|data\(2))))) # (!\inst|data\(1) & (\inst|data\(0) & (\inst|data\(3) $ (!\inst|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(1),
	datac => \inst|data\(2),
	datad => \inst|data\(0),
	combout => \inst|Mux15~0_combout\);

-- Location: LCCOMB_X39_Y18_N10
\inst|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux15~1_combout\ = (\inst|data\(4)) # (\inst|Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(4),
	datad => \inst|Mux15~0_combout\,
	combout => \inst|Mux15~1_combout\);

-- Location: LCCOMB_X39_Y18_N26
\inst|light[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|light\(1) = (GLOBAL(\inst|Mux9~0clkctrl_outclk\) & (\inst|light\(1))) # (!GLOBAL(\inst|Mux9~0clkctrl_outclk\) & ((\inst|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|light\(1),
	datac => \inst|Mux9~0clkctrl_outclk\,
	datad => \inst|Mux15~1_combout\,
	combout => \inst|light\(1));

-- Location: LCCOMB_X40_Y18_N10
\inst|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|data\(4) & (\inst|data\(2) & (\inst|data\(1) & !\inst|data\(0)))) # (!\inst|data\(4) & (\inst|data\(1) $ (((!\inst|data\(0)) # (!\inst|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(4),
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst|Mux16~0_combout\);

-- Location: LCCOMB_X40_Y18_N4
\inst|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux16~1_combout\ = (\inst|Mux16~0_combout\ & (\inst|data\(3) $ (((\inst|data\(0)) # (!\inst|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(0),
	datac => \inst|data\(2),
	datad => \inst|Mux16~0_combout\,
	combout => \inst|Mux16~1_combout\);

-- Location: LCCOMB_X40_Y18_N8
\inst|light[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|light\(0) = (GLOBAL(\inst|Mux9~0clkctrl_outclk\) & (\inst|light\(0))) # (!GLOBAL(\inst|Mux9~0clkctrl_outclk\) & ((\inst|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|light\(0),
	datac => \inst|Mux16~1_combout\,
	datad => \inst|Mux9~0clkctrl_outclk\,
	combout => \inst|light\(0));

ww_led <= \led~output_o\;

ww_en(5) <= \en[5]~output_o\;

ww_en(4) <= \en[4]~output_o\;

ww_en(3) <= \en[3]~output_o\;

ww_en(2) <= \en[2]~output_o\;

ww_en(1) <= \en[1]~output_o\;

ww_en(0) <= \en[0]~output_o\;

ww_light(6) <= \light[6]~output_o\;

ww_light(5) <= \light[5]~output_o\;

ww_light(4) <= \light[4]~output_o\;

ww_light(3) <= \light[3]~output_o\;

ww_light(2) <= \light[2]~output_o\;

ww_light(1) <= \light[1]~output_o\;

ww_light(0) <= \light[0]~output_o\;
END structure;



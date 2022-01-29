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

-- DATE "12/05/2018 10:39:44"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Calculator IS
    PORT (
	sel : IN std_logic_vector(1 DOWNTO 0);
	i0 : IN std_logic_vector(3 DOWNTO 0);
	i1 : IN std_logic_vector(3 DOWNTO 0);
	ans_r : OUT std_logic_vector(7 DOWNTO 0);
	btn_control : IN std_logic_vector(1 DOWNTO 0);
	show_num : OUT std_logic_vector(6 DOWNTO 0);
	show_place : OUT std_logic_vector(5 DOWNTO 0)
	);
END Calculator;

-- Design Ports Information
-- ans_r[0]	=>  Location: PIN_108,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans_r[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans_r[2]	=>  Location: PIN_148,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans_r[3]	=>  Location: PIN_147,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans_r[4]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans_r[5]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans_r[6]	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans_r[7]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- sel[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1[1]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1[0]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i0[0]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i0[1]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1[2]	=>  Location: PIN_175,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i0[2]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1[3]	=>  Location: PIN_174,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i0[3]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_control[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_control[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Calculator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ans_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_btn_control : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_show_num : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_show_place : std_logic_vector(5 DOWNTO 0);
SIGNAL \show_mux|Mux10~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \plus_mux|sum[1]~2_combout\ : std_logic;
SIGNAL \minus_mux|sum[2]~4_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \minus_mux|sum[3]~6_combout\ : std_logic;
SIGNAL \plus_mux|sum[3]~7\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \plus_mux|sum[4]~8_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \show_mux|Mux3~0_combout\ : std_logic;
SIGNAL \show_mux|Mux4~0_combout\ : std_logic;
SIGNAL \ans_r[0]~output_o\ : std_logic;
SIGNAL \ans_r[1]~output_o\ : std_logic;
SIGNAL \ans_r[2]~output_o\ : std_logic;
SIGNAL \ans_r[3]~output_o\ : std_logic;
SIGNAL \ans_r[4]~output_o\ : std_logic;
SIGNAL \ans_r[5]~output_o\ : std_logic;
SIGNAL \ans_r[6]~output_o\ : std_logic;
SIGNAL \ans_r[7]~output_o\ : std_logic;
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
SIGNAL \i0[0]~input_o\ : std_logic;
SIGNAL \plus_mux|sum[0]~0_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \select_mux|Mux7~0_combout\ : std_logic;
SIGNAL \minus_mux|sum[0]~0_combout\ : std_logic;
SIGNAL \select_mux|Mux7~1_combout\ : std_logic;
SIGNAL \i0[1]~input_o\ : std_logic;
SIGNAL \minus_mux|sum[0]~1\ : std_logic;
SIGNAL \minus_mux|sum[1]~2_combout\ : std_logic;
SIGNAL \i1[0]~input_o\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \select_mux|Mux6~0_combout\ : std_logic;
SIGNAL \select_mux|Mux6~1_combout\ : std_logic;
SIGNAL \i0[2]~input_o\ : std_logic;
SIGNAL \plus_mux|sum[0]~1\ : std_logic;
SIGNAL \plus_mux|sum[1]~3\ : std_logic;
SIGNAL \plus_mux|sum[2]~4_combout\ : std_logic;
SIGNAL \select_mux|Mux5~0_combout\ : std_logic;
SIGNAL \i1[3]~input_o\ : std_logic;
SIGNAL \i1[1]~input_o\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \select_mux|Mux5~1_combout\ : std_logic;
SIGNAL \i0[3]~input_o\ : std_logic;
SIGNAL \plus_mux|sum[2]~5\ : std_logic;
SIGNAL \plus_mux|sum[3]~6_combout\ : std_logic;
SIGNAL \select_mux|Mux4~0_combout\ : std_logic;
SIGNAL \i1[2]~input_o\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \select_mux|Mux4~1_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \minus_mux|sum[1]~3\ : std_logic;
SIGNAL \minus_mux|sum[2]~5\ : std_logic;
SIGNAL \minus_mux|sum[3]~7\ : std_logic;
SIGNAL \minus_mux|Add0~0_combout\ : std_logic;
SIGNAL \select_mux|Mux3~0_combout\ : std_logic;
SIGNAL \select_mux|Mux3~1_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \select_mux|Mux2~0_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \select_mux|Mux1~0_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \select_mux|Mux0~0_combout\ : std_logic;
SIGNAL \btn_control[1]~input_o\ : std_logic;
SIGNAL \show_mux|Mux3~1_combout\ : std_logic;
SIGNAL \btn_control[0]~input_o\ : std_logic;
SIGNAL \show_mux|Mux10~0_combout\ : std_logic;
SIGNAL \show_mux|Mux10~1_combout\ : std_logic;
SIGNAL \show_mux|Mux10~2_combout\ : std_logic;
SIGNAL \show_mux|Mux10~3_combout\ : std_logic;
SIGNAL \show_mux|Mux10~3clkctrl_outclk\ : std_logic;
SIGNAL \show_mux|Mux5~0_combout\ : std_logic;
SIGNAL \show_mux|Mux4~1_combout\ : std_logic;
SIGNAL \show_mux|Mux9~0_combout\ : std_logic;
SIGNAL \show_mux|Mux7~0_combout\ : std_logic;
SIGNAL \show_mux|Decoder0~0_combout\ : std_logic;
SIGNAL \show_mux|Decoder0~1_combout\ : std_logic;
SIGNAL \show_mux|Decoder0~2_combout\ : std_logic;
SIGNAL \show_mux|Decoder0~3_combout\ : std_logic;
SIGNAL \multiply_mux|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \multiply_mux|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \multiply_mux|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \show_mux|show_num\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \show_mux|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \show_mux|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \show_mux|ALT_INV_Decoder0~0_combout\ : std_logic;

BEGIN

ww_sel <= sel;
ww_i0 <= i0;
ww_i1 <= i1;
ans_r <= ww_ans_r;
ww_btn_control <= btn_control;
show_num <= ww_show_num;
show_place <= ww_show_place;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\show_mux|Mux10~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \show_mux|Mux10~3_combout\);
\show_mux|ALT_INV_Decoder0~2_combout\ <= NOT \show_mux|Decoder0~2_combout\;
\show_mux|ALT_INV_Decoder0~1_combout\ <= NOT \show_mux|Decoder0~1_combout\;
\show_mux|ALT_INV_Decoder0~0_combout\ <= NOT \show_mux|Decoder0~0_combout\;

-- Location: LCCOMB_X27_Y14_N4
\multiply_mux|Mult0|auto_generated|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_3~0_combout\ = (\i1[1]~input_o\ & (\multiply_mux|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\i1[1]~input_o\ & (\multiply_mux|Mult0|auto_generated|le3a\(0) & VCC))
-- \multiply_mux|Mult0|auto_generated|op_3~1\ = CARRY((\i1[1]~input_o\ & \multiply_mux|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datab => \multiply_mux|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \multiply_mux|Mult0|auto_generated|op_3~0_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X27_Y15_N20
\plus_mux|sum[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plus_mux|sum[1]~2_combout\ = (\i1[1]~input_o\ & ((\i0[1]~input_o\ & (\plus_mux|sum[0]~1\ & VCC)) # (!\i0[1]~input_o\ & (!\plus_mux|sum[0]~1\)))) # (!\i1[1]~input_o\ & ((\i0[1]~input_o\ & (!\plus_mux|sum[0]~1\)) # (!\i0[1]~input_o\ & 
-- ((\plus_mux|sum[0]~1\) # (GND)))))
-- \plus_mux|sum[1]~3\ = CARRY((\i1[1]~input_o\ & (!\i0[1]~input_o\ & !\plus_mux|sum[0]~1\)) # (!\i1[1]~input_o\ & ((!\plus_mux|sum[0]~1\) # (!\i0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datab => \i0[1]~input_o\,
	datad => VCC,
	cin => \plus_mux|sum[0]~1\,
	combout => \plus_mux|sum[1]~2_combout\,
	cout => \plus_mux|sum[1]~3\);

-- Location: LCCOMB_X27_Y15_N4
\minus_mux|sum[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minus_mux|sum[2]~4_combout\ = ((\i1[2]~input_o\ $ (\i0[2]~input_o\ $ (\minus_mux|sum[1]~3\)))) # (GND)
-- \minus_mux|sum[2]~5\ = CARRY((\i1[2]~input_o\ & (\i0[2]~input_o\ & !\minus_mux|sum[1]~3\)) # (!\i1[2]~input_o\ & ((\i0[2]~input_o\) # (!\minus_mux|sum[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1[2]~input_o\,
	datab => \i0[2]~input_o\,
	datad => VCC,
	cin => \minus_mux|sum[1]~3\,
	combout => \minus_mux|sum[2]~4_combout\,
	cout => \minus_mux|sum[2]~5\);

-- Location: LCCOMB_X30_Y14_N14
\multiply_mux|Mult0|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_1~0_combout\ = (\multiply_mux|Mult0|auto_generated|le4a\(5) & (\multiply_mux|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\multiply_mux|Mult0|auto_generated|le4a\(5) & (\multiply_mux|Mult0|auto_generated|le3a\(2) & 
-- VCC))
-- \multiply_mux|Mult0|auto_generated|op_1~1\ = CARRY((\multiply_mux|Mult0|auto_generated|le4a\(5) & \multiply_mux|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|le4a\(5),
	datab => \multiply_mux|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \multiply_mux|Mult0|auto_generated|op_1~0_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X27_Y15_N6
\minus_mux|sum[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minus_mux|sum[3]~6_combout\ = (\i1[3]~input_o\ & ((\i0[3]~input_o\ & (!\minus_mux|sum[2]~5\)) # (!\i0[3]~input_o\ & ((\minus_mux|sum[2]~5\) # (GND))))) # (!\i1[3]~input_o\ & ((\i0[3]~input_o\ & (\minus_mux|sum[2]~5\ & VCC)) # (!\i0[3]~input_o\ & 
-- (!\minus_mux|sum[2]~5\))))
-- \minus_mux|sum[3]~7\ = CARRY((\i1[3]~input_o\ & ((!\minus_mux|sum[2]~5\) # (!\i0[3]~input_o\))) # (!\i1[3]~input_o\ & (!\i0[3]~input_o\ & !\minus_mux|sum[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1[3]~input_o\,
	datab => \i0[3]~input_o\,
	datad => VCC,
	cin => \minus_mux|sum[2]~5\,
	combout => \minus_mux|sum[3]~6_combout\,
	cout => \minus_mux|sum[3]~7\);

-- Location: LCCOMB_X27_Y15_N24
\plus_mux|sum[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plus_mux|sum[3]~6_combout\ = (\i1[3]~input_o\ & ((\i0[3]~input_o\ & (\plus_mux|sum[2]~5\ & VCC)) # (!\i0[3]~input_o\ & (!\plus_mux|sum[2]~5\)))) # (!\i1[3]~input_o\ & ((\i0[3]~input_o\ & (!\plus_mux|sum[2]~5\)) # (!\i0[3]~input_o\ & 
-- ((\plus_mux|sum[2]~5\) # (GND)))))
-- \plus_mux|sum[3]~7\ = CARRY((\i1[3]~input_o\ & (!\i0[3]~input_o\ & !\plus_mux|sum[2]~5\)) # (!\i1[3]~input_o\ & ((!\plus_mux|sum[2]~5\) # (!\i0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1[3]~input_o\,
	datab => \i0[3]~input_o\,
	datad => VCC,
	cin => \plus_mux|sum[2]~5\,
	combout => \plus_mux|sum[3]~6_combout\,
	cout => \plus_mux|sum[3]~7\);

-- Location: LCCOMB_X30_Y14_N16
\multiply_mux|Mult0|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_1~2_combout\ = (\multiply_mux|Mult0|auto_generated|le3a\(3) & (!\multiply_mux|Mult0|auto_generated|op_1~1\)) # (!\multiply_mux|Mult0|auto_generated|le3a\(3) & ((\multiply_mux|Mult0|auto_generated|op_1~1\) # (GND)))
-- \multiply_mux|Mult0|auto_generated|op_1~3\ = CARRY((!\multiply_mux|Mult0|auto_generated|op_1~1\) # (!\multiply_mux|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_1~1\,
	combout => \multiply_mux|Mult0|auto_generated|op_1~2_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X27_Y15_N26
\plus_mux|sum[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plus_mux|sum[4]~8_combout\ = !\plus_mux|sum[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \plus_mux|sum[3]~7\,
	combout => \plus_mux|sum[4]~8_combout\);

-- Location: LCCOMB_X30_Y14_N18
\multiply_mux|Mult0|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_1~4_combout\ = ((\multiply_mux|Mult0|auto_generated|le3a\(4) $ (\multiply_mux|Mult0|auto_generated|le4a\(2) $ (!\multiply_mux|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \multiply_mux|Mult0|auto_generated|op_1~5\ = CARRY((\multiply_mux|Mult0|auto_generated|le3a\(4) & ((\multiply_mux|Mult0|auto_generated|le4a\(2)) # (!\multiply_mux|Mult0|auto_generated|op_1~3\))) # (!\multiply_mux|Mult0|auto_generated|le3a\(4) & 
-- (\multiply_mux|Mult0|auto_generated|le4a\(2) & !\multiply_mux|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|le3a\(4),
	datab => \multiply_mux|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_1~3\,
	combout => \multiply_mux|Mult0|auto_generated|op_1~4_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X30_Y14_N22
\multiply_mux|Mult0|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_1~8_combout\ = ((\multiply_mux|Mult0|auto_generated|le5a\(2) $ (\multiply_mux|Mult0|auto_generated|le4a\(4) $ (!\multiply_mux|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \multiply_mux|Mult0|auto_generated|op_1~9\ = CARRY((\multiply_mux|Mult0|auto_generated|le5a\(2) & ((\multiply_mux|Mult0|auto_generated|le4a\(4)) # (!\multiply_mux|Mult0|auto_generated|op_1~7\))) # (!\multiply_mux|Mult0|auto_generated|le5a\(2) & 
-- (\multiply_mux|Mult0|auto_generated|le4a\(4) & !\multiply_mux|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|le5a\(2),
	datab => \multiply_mux|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_1~7\,
	combout => \multiply_mux|Mult0|auto_generated|op_1~8_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X30_Y14_N24
\multiply_mux|Mult0|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_1~10_combout\ = \multiply_mux|Mult0|auto_generated|le4a\(5) $ (\multiply_mux|Mult0|auto_generated|op_1~9\ $ (!\multiply_mux|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|le4a\(5),
	datad => \multiply_mux|Mult0|auto_generated|le5a\(3),
	cin => \multiply_mux|Mult0|auto_generated|op_1~9\,
	combout => \multiply_mux|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X27_Y14_N26
\multiply_mux|Mult0|auto_generated|le3a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le3a\(1) = (\i1[0]~input_o\ & (\i1[1]~input_o\ $ (((\i0[1]~input_o\))))) # (!\i1[0]~input_o\ & (\i1[1]~input_o\ & (!\i0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datab => \i0[0]~input_o\,
	datac => \i0[1]~input_o\,
	datad => \i1[0]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X30_Y14_N30
\multiply_mux|Mult0|auto_generated|le3a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le3a\(3) = (\i1[0]~input_o\ & (\i1[1]~input_o\ $ ((\i0[3]~input_o\)))) # (!\i1[0]~input_o\ & (\i1[1]~input_o\ & ((!\i0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datab => \i0[3]~input_o\,
	datac => \i0[2]~input_o\,
	datad => \i1[0]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X30_Y14_N26
\multiply_mux|Mult0|auto_generated|le3a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le3a\(4) = (\i1[1]~input_o\ & ((\i1[0]~input_o\) # (!\i0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datac => \i0[3]~input_o\,
	datad => \i1[0]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X30_Y14_N6
\multiply_mux|Mult0|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le4a\(3) = (\multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\ & (\multiply_mux|Mult0|auto_generated|le4a\(5) $ ((\i0[3]~input_o\)))) # (!\multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (\multiply_mux|Mult0|auto_generated|le4a\(5) & ((!\i0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|le4a\(5),
	datab => \i0[3]~input_o\,
	datac => \i0[2]~input_o\,
	datad => \multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \multiply_mux|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X30_Y14_N10
\multiply_mux|Mult0|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le5a\(2) = (\i0[2]~input_o\ & ((\i1[3]~input_o\) # ((\i1[2]~input_o\ & \i1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[3]~input_o\,
	datab => \i1[2]~input_o\,
	datac => \i0[2]~input_o\,
	datad => \i1[1]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X30_Y14_N0
\multiply_mux|Mult0|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le5a\(3) = (\i0[3]~input_o\ & ((\i1[3]~input_o\) # ((\i1[2]~input_o\ & \i1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[3]~input_o\,
	datab => \i1[2]~input_o\,
	datac => \i0[3]~input_o\,
	datad => \i1[1]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X40_Y2_N8
\show_mux|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux3~0_combout\ = (\btn_control[0]~input_o\ & (((\btn_control[1]~input_o\) # (\i1[1]~input_o\)))) # (!\btn_control[0]~input_o\ & (\i0[1]~input_o\ & (!\btn_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_control[0]~input_o\,
	datab => \i0[1]~input_o\,
	datac => \btn_control[1]~input_o\,
	datad => \i1[1]~input_o\,
	combout => \show_mux|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y2_N20
\show_mux|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux4~0_combout\ = (\btn_control[0]~input_o\ & (((\btn_control[1]~input_o\) # (\i1[0]~input_o\)))) # (!\btn_control[0]~input_o\ & (\i0[0]~input_o\ & (!\btn_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_control[0]~input_o\,
	datab => \i0[0]~input_o\,
	datac => \btn_control[1]~input_o\,
	datad => \i1[0]~input_o\,
	combout => \show_mux|Mux4~0_combout\);

-- Location: IOOBUF_X30_Y0_N9
\ans_r[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_mux|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \ans_r[0]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\ans_r[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_mux|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \ans_r[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\ans_r[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_mux|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \ans_r[2]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\ans_r[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_mux|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \ans_r[3]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\ans_r[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_mux|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \ans_r[4]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\ans_r[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_mux|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ans_r[5]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\ans_r[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_mux|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ans_r[6]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\ans_r[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_mux|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ans_r[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\show_num[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \show_mux|show_num\(0),
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
	i => \show_mux|show_num\(1),
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
	i => \show_mux|show_num\(2),
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
	i => \show_mux|show_num\(3),
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
	i => \show_mux|show_num\(4),
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
	i => GND,
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
	i => \show_mux|show_num\(3),
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
	i => \show_mux|ALT_INV_Decoder0~0_combout\,
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
	i => \show_mux|ALT_INV_Decoder0~1_combout\,
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
	i => \show_mux|ALT_INV_Decoder0~2_combout\,
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
	i => \show_mux|Decoder0~3_combout\,
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

-- Location: IOIBUF_X41_Y19_N8
\i0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i0(0),
	o => \i0[0]~input_o\);

-- Location: LCCOMB_X27_Y15_N18
\plus_mux|sum[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plus_mux|sum[0]~0_combout\ = (\i1[0]~input_o\ & (\i0[0]~input_o\ $ (VCC))) # (!\i1[0]~input_o\ & (\i0[0]~input_o\ & VCC))
-- \plus_mux|sum[0]~1\ = CARRY((\i1[0]~input_o\ & \i0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[0]~input_o\,
	datab => \i0[0]~input_o\,
	datad => VCC,
	combout => \plus_mux|sum[0]~0_combout\,
	cout => \plus_mux|sum[0]~1\);

-- Location: IOIBUF_X37_Y0_N29
\sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X27_Y13_N12
\select_mux|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux7~0_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\ & (\multiply_mux|Mult0|auto_generated|op_3~0_combout\)) # (!\sel[1]~input_o\ & ((\plus_mux|sum[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|op_3~0_combout\,
	datab => \plus_mux|sum[0]~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \select_mux|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y15_N0
\minus_mux|sum[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minus_mux|sum[0]~0_combout\ = (\i1[0]~input_o\ & (\i0[0]~input_o\ $ (VCC))) # (!\i1[0]~input_o\ & ((\i0[0]~input_o\) # (GND)))
-- \minus_mux|sum[0]~1\ = CARRY((\i0[0]~input_o\) # (!\i1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[0]~input_o\,
	datab => \i0[0]~input_o\,
	datad => VCC,
	combout => \minus_mux|sum[0]~0_combout\,
	cout => \minus_mux|sum[0]~1\);

-- Location: LCCOMB_X27_Y13_N10
\select_mux|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux7~1_combout\ = (\select_mux|Mux7~0_combout\) # ((\sel[1]~input_o\ & (\minus_mux|sum[0]~0_combout\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_mux|Mux7~0_combout\,
	datab => \sel[1]~input_o\,
	datac => \minus_mux|sum[0]~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \select_mux|Mux7~1_combout\);

-- Location: IOIBUF_X41_Y19_N1
\i0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i0(1),
	o => \i0[1]~input_o\);

-- Location: LCCOMB_X27_Y15_N2
\minus_mux|sum[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minus_mux|sum[1]~2_combout\ = (\i1[1]~input_o\ & ((\i0[1]~input_o\ & (!\minus_mux|sum[0]~1\)) # (!\i0[1]~input_o\ & ((\minus_mux|sum[0]~1\) # (GND))))) # (!\i1[1]~input_o\ & ((\i0[1]~input_o\ & (\minus_mux|sum[0]~1\ & VCC)) # (!\i0[1]~input_o\ & 
-- (!\minus_mux|sum[0]~1\))))
-- \minus_mux|sum[1]~3\ = CARRY((\i1[1]~input_o\ & ((!\minus_mux|sum[0]~1\) # (!\i0[1]~input_o\))) # (!\i1[1]~input_o\ & (!\i0[1]~input_o\ & !\minus_mux|sum[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datab => \i0[1]~input_o\,
	datad => VCC,
	cin => \minus_mux|sum[0]~1\,
	combout => \minus_mux|sum[1]~2_combout\,
	cout => \minus_mux|sum[1]~3\);

-- Location: IOIBUF_X41_Y27_N22
\i1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1(0),
	o => \i1[0]~input_o\);

-- Location: LCCOMB_X27_Y14_N0
\multiply_mux|Mult0|auto_generated|le3a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le3a\(0) = \i1[1]~input_o\ $ (((\i0[0]~input_o\ & \i1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datab => \i0[0]~input_o\,
	datad => \i1[0]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X27_Y14_N6
\multiply_mux|Mult0|auto_generated|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_3~2_combout\ = (\multiply_mux|Mult0|auto_generated|le3a\(1) & (!\multiply_mux|Mult0|auto_generated|op_3~1\)) # (!\multiply_mux|Mult0|auto_generated|le3a\(1) & ((\multiply_mux|Mult0|auto_generated|op_3~1\) # (GND)))
-- \multiply_mux|Mult0|auto_generated|op_3~3\ = CARRY((!\multiply_mux|Mult0|auto_generated|op_3~1\) # (!\multiply_mux|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_3~1\,
	combout => \multiply_mux|Mult0|auto_generated|op_3~2_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X26_Y15_N8
\select_mux|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux6~0_combout\ = (\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((\multiply_mux|Mult0|auto_generated|op_3~2_combout\))) # (!\sel[1]~input_o\ & (\plus_mux|sum[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plus_mux|sum[1]~2_combout\,
	datab => \multiply_mux|Mult0|auto_generated|op_3~2_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \select_mux|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y15_N10
\select_mux|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux6~1_combout\ = (\select_mux|Mux6~0_combout\) # ((\minus_mux|sum[1]~2_combout\ & (!\sel[0]~input_o\ & \sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minus_mux|sum[1]~2_combout\,
	datab => \select_mux|Mux6~0_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \select_mux|Mux6~1_combout\);

-- Location: IOIBUF_X41_Y18_N1
\i0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i0(2),
	o => \i0[2]~input_o\);

-- Location: LCCOMB_X27_Y15_N22
\plus_mux|sum[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plus_mux|sum[2]~4_combout\ = ((\i1[2]~input_o\ $ (\i0[2]~input_o\ $ (!\plus_mux|sum[1]~3\)))) # (GND)
-- \plus_mux|sum[2]~5\ = CARRY((\i1[2]~input_o\ & ((\i0[2]~input_o\) # (!\plus_mux|sum[1]~3\))) # (!\i1[2]~input_o\ & (\i0[2]~input_o\ & !\plus_mux|sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1[2]~input_o\,
	datab => \i0[2]~input_o\,
	datad => VCC,
	cin => \plus_mux|sum[1]~3\,
	combout => \plus_mux|sum[2]~4_combout\,
	cout => \plus_mux|sum[2]~5\);

-- Location: LCCOMB_X26_Y15_N12
\select_mux|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux5~0_combout\ = (\sel[0]~input_o\ & (((\plus_mux|sum[2]~4_combout\ & !\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (\minus_mux|sum[2]~4_combout\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minus_mux|sum[2]~4_combout\,
	datab => \plus_mux|sum[2]~4_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \select_mux|Mux5~0_combout\);

-- Location: IOIBUF_X41_Y25_N22
\i1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1(3),
	o => \i1[3]~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\i1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1(1),
	o => \i1[1]~input_o\);

-- Location: LCCOMB_X27_Y15_N28
\multiply_mux|Mult0|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le4a\(0) = \i1[3]~input_o\ $ (((\i1[2]~input_o\ & ((\i0[0]~input_o\) # (\i1[1]~input_o\))) # (!\i1[2]~input_o\ & (\i0[0]~input_o\ & \i1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[2]~input_o\,
	datab => \i0[0]~input_o\,
	datac => \i1[3]~input_o\,
	datad => \i1[1]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X27_Y14_N8
\multiply_mux|Mult0|auto_generated|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_3~4_combout\ = ((\multiply_mux|Mult0|auto_generated|op_1~0_combout\ $ (\multiply_mux|Mult0|auto_generated|le4a\(0) $ (!\multiply_mux|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \multiply_mux|Mult0|auto_generated|op_3~5\ = CARRY((\multiply_mux|Mult0|auto_generated|op_1~0_combout\ & ((\multiply_mux|Mult0|auto_generated|le4a\(0)) # (!\multiply_mux|Mult0|auto_generated|op_3~3\))) # 
-- (!\multiply_mux|Mult0|auto_generated|op_1~0_combout\ & (\multiply_mux|Mult0|auto_generated|le4a\(0) & !\multiply_mux|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|op_1~0_combout\,
	datab => \multiply_mux|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_3~3\,
	combout => \multiply_mux|Mult0|auto_generated|op_3~4_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X26_Y15_N22
\select_mux|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux5~1_combout\ = (\select_mux|Mux5~0_combout\) # ((\multiply_mux|Mult0|auto_generated|op_3~4_combout\ & (\sel[0]~input_o\ & \sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_mux|Mux5~0_combout\,
	datab => \multiply_mux|Mult0|auto_generated|op_3~4_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \select_mux|Mux5~1_combout\);

-- Location: IOIBUF_X41_Y18_N15
\i0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i0(3),
	o => \i0[3]~input_o\);

-- Location: LCCOMB_X26_Y15_N20
\select_mux|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux4~0_combout\ = (\sel[0]~input_o\ & (((\plus_mux|sum[3]~6_combout\ & !\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (\minus_mux|sum[3]~6_combout\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minus_mux|sum[3]~6_combout\,
	datab => \plus_mux|sum[3]~6_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \select_mux|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y15_N10
\multiply_mux|Mult0|auto_generated|le4a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le4a\(5) = \i1[3]~input_o\ $ (((\i1[2]~input_o\ & \i1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[2]~input_o\,
	datac => \i1[3]~input_o\,
	datad => \i1[1]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le4a\(5));

-- Location: IOIBUF_X41_Y25_N15
\i1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1(2),
	o => \i1[2]~input_o\);

-- Location: LCCOMB_X30_Y14_N12
\multiply_mux|Mult0|auto_generated|cs2a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\ = \i1[2]~input_o\ $ (\i1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1[2]~input_o\,
	datad => \i1[1]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X27_Y14_N24
\multiply_mux|Mult0|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le4a\(1) = (\multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\ & (\i0[1]~input_o\ $ ((\multiply_mux|Mult0|auto_generated|le4a\(5))))) # (!\multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (((\multiply_mux|Mult0|auto_generated|le4a\(5) & !\i0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0[1]~input_o\,
	datab => \multiply_mux|Mult0|auto_generated|le4a\(5),
	datac => \multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \i0[0]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X27_Y14_N10
\multiply_mux|Mult0|auto_generated|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_3~6_combout\ = (\multiply_mux|Mult0|auto_generated|op_1~2_combout\ & ((\multiply_mux|Mult0|auto_generated|le4a\(1) & (\multiply_mux|Mult0|auto_generated|op_3~5\ & VCC)) # (!\multiply_mux|Mult0|auto_generated|le4a\(1) 
-- & (!\multiply_mux|Mult0|auto_generated|op_3~5\)))) # (!\multiply_mux|Mult0|auto_generated|op_1~2_combout\ & ((\multiply_mux|Mult0|auto_generated|le4a\(1) & (!\multiply_mux|Mult0|auto_generated|op_3~5\)) # (!\multiply_mux|Mult0|auto_generated|le4a\(1) & 
-- ((\multiply_mux|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \multiply_mux|Mult0|auto_generated|op_3~7\ = CARRY((\multiply_mux|Mult0|auto_generated|op_1~2_combout\ & (!\multiply_mux|Mult0|auto_generated|le4a\(1) & !\multiply_mux|Mult0|auto_generated|op_3~5\)) # (!\multiply_mux|Mult0|auto_generated|op_1~2_combout\ & 
-- ((!\multiply_mux|Mult0|auto_generated|op_3~5\) # (!\multiply_mux|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|op_1~2_combout\,
	datab => \multiply_mux|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_3~5\,
	combout => \multiply_mux|Mult0|auto_generated|op_3~6_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X26_Y15_N6
\select_mux|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux4~1_combout\ = (\select_mux|Mux4~0_combout\) # ((\sel[1]~input_o\ & (\sel[0]~input_o\ & \multiply_mux|Mult0|auto_generated|op_3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \select_mux|Mux4~0_combout\,
	datac => \sel[0]~input_o\,
	datad => \multiply_mux|Mult0|auto_generated|op_3~6_combout\,
	combout => \select_mux|Mux4~1_combout\);

-- Location: LCCOMB_X27_Y15_N30
\multiply_mux|Mult0|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le5a\(0) = (\i0[0]~input_o\ & ((\i1[3]~input_o\) # ((\i1[2]~input_o\ & \i1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[2]~input_o\,
	datab => \i0[0]~input_o\,
	datac => \i1[3]~input_o\,
	datad => \i1[1]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X27_Y14_N12
\multiply_mux|Mult0|auto_generated|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_3~8_combout\ = ((\multiply_mux|Mult0|auto_generated|op_1~4_combout\ $ (\multiply_mux|Mult0|auto_generated|le5a\(0) $ (!\multiply_mux|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \multiply_mux|Mult0|auto_generated|op_3~9\ = CARRY((\multiply_mux|Mult0|auto_generated|op_1~4_combout\ & ((\multiply_mux|Mult0|auto_generated|le5a\(0)) # (!\multiply_mux|Mult0|auto_generated|op_3~7\))) # 
-- (!\multiply_mux|Mult0|auto_generated|op_1~4_combout\ & (\multiply_mux|Mult0|auto_generated|le5a\(0) & !\multiply_mux|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|op_1~4_combout\,
	datab => \multiply_mux|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_3~7\,
	combout => \multiply_mux|Mult0|auto_generated|op_3~8_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X27_Y15_N8
\minus_mux|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \minus_mux|Add0~0_combout\ = \minus_mux|sum[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \minus_mux|sum[3]~7\,
	combout => \minus_mux|Add0~0_combout\);

-- Location: LCCOMB_X27_Y13_N4
\select_mux|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux3~0_combout\ = (\sel[1]~input_o\ & (((\minus_mux|Add0~0_combout\ & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\plus_mux|sum[4]~8_combout\ & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plus_mux|sum[4]~8_combout\,
	datab => \minus_mux|Add0~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \select_mux|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y13_N26
\select_mux|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux3~1_combout\ = (\select_mux|Mux3~0_combout\) # ((\multiply_mux|Mult0|auto_generated|op_3~8_combout\ & (\sel[1]~input_o\ & \sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|op_3~8_combout\,
	datab => \sel[1]~input_o\,
	datac => \select_mux|Mux3~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \select_mux|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y15_N16
\multiply_mux|Mult0|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le5a\(1) = (\i0[1]~input_o\ & ((\i1[3]~input_o\) # ((\i1[2]~input_o\ & \i1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[2]~input_o\,
	datab => \i0[1]~input_o\,
	datac => \i1[3]~input_o\,
	datad => \i1[1]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X30_Y14_N28
\multiply_mux|Mult0|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le4a\(2) = (\multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\ & (\multiply_mux|Mult0|auto_generated|le4a\(5) $ (((\i0[2]~input_o\))))) # (!\multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (\multiply_mux|Mult0|auto_generated|le4a\(5) & (!\i0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|le4a\(5),
	datab => \i0[1]~input_o\,
	datac => \i0[2]~input_o\,
	datad => \multiply_mux|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \multiply_mux|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X30_Y14_N4
\multiply_mux|Mult0|auto_generated|le3a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le3a\(2) = (\i1[0]~input_o\ & (\i1[1]~input_o\ $ (((\i0[2]~input_o\))))) # (!\i1[0]~input_o\ & (\i1[1]~input_o\ & (!\i0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datab => \i0[1]~input_o\,
	datac => \i0[2]~input_o\,
	datad => \i1[0]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X30_Y14_N20
\multiply_mux|Mult0|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_1~6_combout\ = (\multiply_mux|Mult0|auto_generated|le4a\(3) & ((\multiply_mux|Mult0|auto_generated|le5a\(1) & (\multiply_mux|Mult0|auto_generated|op_1~5\ & VCC)) # (!\multiply_mux|Mult0|auto_generated|le5a\(1) & 
-- (!\multiply_mux|Mult0|auto_generated|op_1~5\)))) # (!\multiply_mux|Mult0|auto_generated|le4a\(3) & ((\multiply_mux|Mult0|auto_generated|le5a\(1) & (!\multiply_mux|Mult0|auto_generated|op_1~5\)) # (!\multiply_mux|Mult0|auto_generated|le5a\(1) & 
-- ((\multiply_mux|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \multiply_mux|Mult0|auto_generated|op_1~7\ = CARRY((\multiply_mux|Mult0|auto_generated|le4a\(3) & (!\multiply_mux|Mult0|auto_generated|le5a\(1) & !\multiply_mux|Mult0|auto_generated|op_1~5\)) # (!\multiply_mux|Mult0|auto_generated|le4a\(3) & 
-- ((!\multiply_mux|Mult0|auto_generated|op_1~5\) # (!\multiply_mux|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|le4a\(3),
	datab => \multiply_mux|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_1~5\,
	combout => \multiply_mux|Mult0|auto_generated|op_1~6_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X27_Y14_N14
\multiply_mux|Mult0|auto_generated|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_3~10_combout\ = (\i1[1]~input_o\ & ((\multiply_mux|Mult0|auto_generated|op_1~6_combout\ & (\multiply_mux|Mult0|auto_generated|op_3~9\ & VCC)) # (!\multiply_mux|Mult0|auto_generated|op_1~6_combout\ & 
-- (!\multiply_mux|Mult0|auto_generated|op_3~9\)))) # (!\i1[1]~input_o\ & ((\multiply_mux|Mult0|auto_generated|op_1~6_combout\ & (!\multiply_mux|Mult0|auto_generated|op_3~9\)) # (!\multiply_mux|Mult0|auto_generated|op_1~6_combout\ & 
-- ((\multiply_mux|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \multiply_mux|Mult0|auto_generated|op_3~11\ = CARRY((\i1[1]~input_o\ & (!\multiply_mux|Mult0|auto_generated|op_1~6_combout\ & !\multiply_mux|Mult0|auto_generated|op_3~9\)) # (!\i1[1]~input_o\ & ((!\multiply_mux|Mult0|auto_generated|op_3~9\) # 
-- (!\multiply_mux|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datab => \multiply_mux|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_3~9\,
	combout => \multiply_mux|Mult0|auto_generated|op_3~10_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X27_Y13_N20
\select_mux|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux2~0_combout\ = (\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\multiply_mux|Mult0|auto_generated|op_3~10_combout\)) # (!\sel[0]~input_o\ & ((\minus_mux|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|op_3~10_combout\,
	datab => \minus_mux|Add0~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \select_mux|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y14_N8
\multiply_mux|Mult0|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|le4a\(4) = (\i0[3]~input_o\ & (\i1[3]~input_o\ & (\i1[2]~input_o\ $ (\i1[1]~input_o\)))) # (!\i0[3]~input_o\ & (\i1[3]~input_o\ $ (((\i1[2]~input_o\ & \i1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[3]~input_o\,
	datab => \i1[2]~input_o\,
	datac => \i0[3]~input_o\,
	datad => \i1[1]~input_o\,
	combout => \multiply_mux|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X27_Y14_N16
\multiply_mux|Mult0|auto_generated|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_3~12_combout\ = ((\i1[1]~input_o\ $ (\multiply_mux|Mult0|auto_generated|op_1~8_combout\ $ (!\multiply_mux|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \multiply_mux|Mult0|auto_generated|op_3~13\ = CARRY((\i1[1]~input_o\ & ((\multiply_mux|Mult0|auto_generated|op_1~8_combout\) # (!\multiply_mux|Mult0|auto_generated|op_3~11\))) # (!\i1[1]~input_o\ & (\multiply_mux|Mult0|auto_generated|op_1~8_combout\ & 
-- !\multiply_mux|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1[1]~input_o\,
	datab => \multiply_mux|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \multiply_mux|Mult0|auto_generated|op_3~11\,
	combout => \multiply_mux|Mult0|auto_generated|op_3~12_combout\,
	cout => \multiply_mux|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X27_Y13_N2
\select_mux|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux1~0_combout\ = (\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\multiply_mux|Mult0|auto_generated|op_3~12_combout\)) # (!\sel[0]~input_o\ & ((\minus_mux|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|op_3~12_combout\,
	datab => \sel[1]~input_o\,
	datac => \minus_mux|Add0~0_combout\,
	datad => \sel[0]~input_o\,
	combout => \select_mux|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y14_N18
\multiply_mux|Mult0|auto_generated|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_mux|Mult0|auto_generated|op_3~14_combout\ = \multiply_mux|Mult0|auto_generated|op_1~10_combout\ $ (\multiply_mux|Mult0|auto_generated|op_3~13\ $ (!\i1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|op_1~10_combout\,
	datad => \i1[1]~input_o\,
	cin => \multiply_mux|Mult0|auto_generated|op_3~13\,
	combout => \multiply_mux|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X27_Y13_N16
\select_mux|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \select_mux|Mux0~0_combout\ = (\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\multiply_mux|Mult0|auto_generated|op_3~14_combout\)) # (!\sel[0]~input_o\ & ((\minus_mux|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_mux|Mult0|auto_generated|op_3~14_combout\,
	datab => \minus_mux|Add0~0_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \select_mux|Mux0~0_combout\);

-- Location: IOIBUF_X41_Y3_N22
\btn_control[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_control(1),
	o => \btn_control[1]~input_o\);

-- Location: LCCOMB_X40_Y2_N22
\show_mux|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux3~1_combout\ = (\show_mux|Mux3~0_combout\ & (((\select_mux|Mux6~1_combout\) # (!\btn_control[1]~input_o\)))) # (!\show_mux|Mux3~0_combout\ & (\select_mux|Mux2~0_combout\ & (\btn_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mux3~0_combout\,
	datab => \select_mux|Mux2~0_combout\,
	datac => \btn_control[1]~input_o\,
	datad => \select_mux|Mux6~1_combout\,
	combout => \show_mux|Mux3~1_combout\);

-- Location: IOIBUF_X41_Y2_N1
\btn_control[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_control(0),
	o => \btn_control[0]~input_o\);

-- Location: LCCOMB_X40_Y15_N18
\show_mux|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux10~0_combout\ = (\btn_control[0]~input_o\ & (((\i1[2]~input_o\)))) # (!\btn_control[0]~input_o\ & ((\i0[3]~input_o\) # ((\i0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0[3]~input_o\,
	datab => \i1[2]~input_o\,
	datac => \i0[2]~input_o\,
	datad => \btn_control[0]~input_o\,
	combout => \show_mux|Mux10~0_combout\);

-- Location: LCCOMB_X40_Y15_N0
\show_mux|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux10~1_combout\ = (\btn_control[1]~input_o\ & (((\btn_control[0]~input_o\)))) # (!\btn_control[1]~input_o\ & ((\show_mux|Mux10~0_combout\) # ((\i1[3]~input_o\ & \btn_control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1[3]~input_o\,
	datab => \btn_control[1]~input_o\,
	datac => \btn_control[0]~input_o\,
	datad => \show_mux|Mux10~0_combout\,
	combout => \show_mux|Mux10~1_combout\);

-- Location: LCCOMB_X40_Y15_N26
\show_mux|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux10~2_combout\ = (\btn_control[1]~input_o\ & ((\select_mux|Mux1~0_combout\) # ((\select_mux|Mux0~0_combout\) # (\show_mux|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_mux|Mux1~0_combout\,
	datab => \btn_control[1]~input_o\,
	datac => \select_mux|Mux0~0_combout\,
	datad => \show_mux|Mux10~1_combout\,
	combout => \show_mux|Mux10~2_combout\);

-- Location: LCCOMB_X40_Y15_N6
\show_mux|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux10~3_combout\ = (\show_mux|Mux10~2_combout\ & ((\select_mux|Mux4~1_combout\) # ((\select_mux|Mux5~1_combout\) # (!\show_mux|Mux10~1_combout\)))) # (!\show_mux|Mux10~2_combout\ & (((\show_mux|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_mux|Mux4~1_combout\,
	datab => \select_mux|Mux5~1_combout\,
	datac => \show_mux|Mux10~2_combout\,
	datad => \show_mux|Mux10~1_combout\,
	combout => \show_mux|Mux10~3_combout\);

-- Location: CLKCTRL_G9
\show_mux|Mux10~3clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \show_mux|Mux10~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \show_mux|Mux10~3clkctrl_outclk\);

-- Location: LCCOMB_X40_Y2_N14
\show_mux|show_num[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_num\(0) = (GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & ((\show_mux|show_num\(0)))) # (!GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & (!\show_mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Mux3~1_combout\,
	datac => \show_mux|show_num\(0),
	datad => \show_mux|Mux10~3clkctrl_outclk\,
	combout => \show_mux|show_num\(0));

-- Location: LCCOMB_X40_Y2_N28
\show_mux|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux5~0_combout\ = (\show_mux|Mux4~1_combout\) # (\show_mux|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mux4~1_combout\,
	datad => \show_mux|Mux3~1_combout\,
	combout => \show_mux|Mux5~0_combout\);

-- Location: LCCOMB_X40_Y2_N16
\show_mux|show_num[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_num\(1) = (GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & ((\show_mux|show_num\(1)))) # (!GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & (\show_mux|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mux5~0_combout\,
	datab => \show_mux|show_num\(1),
	datad => \show_mux|Mux10~3clkctrl_outclk\,
	combout => \show_mux|show_num\(1));

-- Location: LCCOMB_X40_Y2_N18
\show_mux|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux4~1_combout\ = (\show_mux|Mux4~0_combout\ & ((\select_mux|Mux7~1_combout\) # ((!\btn_control[1]~input_o\)))) # (!\show_mux|Mux4~0_combout\ & (((\btn_control[1]~input_o\ & \select_mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mux4~0_combout\,
	datab => \select_mux|Mux7~1_combout\,
	datac => \btn_control[1]~input_o\,
	datad => \select_mux|Mux3~1_combout\,
	combout => \show_mux|Mux4~1_combout\);

-- Location: LCCOMB_X40_Y2_N30
\show_mux|show_num[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_num\(2) = (GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & ((\show_mux|show_num\(2)))) # (!GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & (\show_mux|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Mux4~1_combout\,
	datac => \show_mux|show_num\(2),
	datad => \show_mux|Mux10~3clkctrl_outclk\,
	combout => \show_mux|show_num\(2));

-- Location: LCCOMB_X40_Y2_N6
\show_mux|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux9~0_combout\ = (\show_mux|Mux4~1_combout\ & !\show_mux|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mux4~1_combout\,
	datad => \show_mux|Mux3~1_combout\,
	combout => \show_mux|Mux9~0_combout\);

-- Location: LCCOMB_X40_Y2_N4
\show_mux|show_num[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_num\(3) = (GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & ((\show_mux|show_num\(3)))) # (!GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & (\show_mux|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \show_mux|Mux9~0_combout\,
	datac => \show_mux|show_num\(3),
	datad => \show_mux|Mux10~3clkctrl_outclk\,
	combout => \show_mux|show_num\(3));

-- Location: LCCOMB_X40_Y2_N24
\show_mux|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Mux7~0_combout\ = (!\show_mux|Mux4~1_combout\ & \show_mux|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mux4~1_combout\,
	datad => \show_mux|Mux3~1_combout\,
	combout => \show_mux|Mux7~0_combout\);

-- Location: LCCOMB_X40_Y2_N26
\show_mux|show_num[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|show_num\(4) = (GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & ((\show_mux|show_num\(4)))) # (!GLOBAL(\show_mux|Mux10~3clkctrl_outclk\) & (\show_mux|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_mux|Mux7~0_combout\,
	datac => \show_mux|show_num\(4),
	datad => \show_mux|Mux10~3clkctrl_outclk\,
	combout => \show_mux|show_num\(4));

-- Location: LCCOMB_X7_Y4_N0
\show_mux|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Decoder0~0_combout\ = (\btn_control[0]~input_o\ & \btn_control[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_control[0]~input_o\,
	datad => \btn_control[1]~input_o\,
	combout => \show_mux|Decoder0~0_combout\);

-- Location: LCCOMB_X7_Y4_N22
\show_mux|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Decoder0~1_combout\ = (!\btn_control[0]~input_o\ & \btn_control[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_control[0]~input_o\,
	datad => \btn_control[1]~input_o\,
	combout => \show_mux|Decoder0~1_combout\);

-- Location: LCCOMB_X7_Y4_N12
\show_mux|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Decoder0~2_combout\ = (\btn_control[0]~input_o\ & !\btn_control[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_control[0]~input_o\,
	datad => \btn_control[1]~input_o\,
	combout => \show_mux|Decoder0~2_combout\);

-- Location: LCCOMB_X7_Y4_N2
\show_mux|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_mux|Decoder0~3_combout\ = (\btn_control[0]~input_o\) # (\btn_control[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_control[0]~input_o\,
	datad => \btn_control[1]~input_o\,
	combout => \show_mux|Decoder0~3_combout\);

ww_ans_r(0) <= \ans_r[0]~output_o\;

ww_ans_r(1) <= \ans_r[1]~output_o\;

ww_ans_r(2) <= \ans_r[2]~output_o\;

ww_ans_r(3) <= \ans_r[3]~output_o\;

ww_ans_r(4) <= \ans_r[4]~output_o\;

ww_ans_r(5) <= \ans_r[5]~output_o\;

ww_ans_r(6) <= \ans_r[6]~output_o\;

ww_ans_r(7) <= \ans_r[7]~output_o\;

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



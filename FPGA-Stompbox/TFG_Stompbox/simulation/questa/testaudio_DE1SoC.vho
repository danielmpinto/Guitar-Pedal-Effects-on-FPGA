-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "03/31/2025 19:19:05"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testaudio_DE1SoC IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	AUD_XCK : OUT std_logic;
	AUD_BCLK : IN std_logic;
	AUD_ADCLRCK : IN std_logic;
	AUD_DACLRCK : IN std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_DACDAT : OUT std_logic;
	FPGA_I2C_SCLK : OUT std_logic;
	FPGA_I2C_SDAT : INOUT std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	ADC_SCLK : OUT std_logic;
	ADC_CS_N : OUT std_logic;
	ADC_DOUT : IN std_logic;
	ADC_DIN : OUT std_logic;
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6)
	);
END testaudio_DE1SoC;

-- Design Ports Information
-- AUD_XCK	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_I2C_SCLK	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SCLK	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DIN	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_I2C_SDAT	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DOUT	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testaudio_DE1SoC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_FPGA_I2C_SCLK : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_DOUT : std_logic;
SIGNAL ww_ADC_DIN : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL \inst5|s1|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst5|s1|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst5|s1|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst5|s1|Mult0~8_resulta\ : std_logic;
SIGNAL \inst5|s1|Mult0~9\ : std_logic;
SIGNAL \inst5|s1|Mult0~10\ : std_logic;
SIGNAL \inst5|s1|Mult0~11\ : std_logic;
SIGNAL \inst5|s1|Mult0~12\ : std_logic;
SIGNAL \inst5|s1|Mult0~13\ : std_logic;
SIGNAL \inst5|s1|Mult0~14\ : std_logic;
SIGNAL \inst5|s1|Mult0~15\ : std_logic;
SIGNAL \inst5|s1|Mult0~16\ : std_logic;
SIGNAL \inst5|s1|Mult0~17\ : std_logic;
SIGNAL \inst5|s1|Mult0~18\ : std_logic;
SIGNAL \inst5|s1|Mult0~19\ : std_logic;
SIGNAL \inst5|s1|Mult0~20\ : std_logic;
SIGNAL \inst5|s1|Mult0~21\ : std_logic;
SIGNAL \inst5|s1|Mult0~22\ : std_logic;
SIGNAL \inst5|s1|Mult0~24\ : std_logic;
SIGNAL \inst5|s1|Mult0~25\ : std_logic;
SIGNAL \inst5|s1|Mult0~26\ : std_logic;
SIGNAL \inst5|s1|Mult0~27\ : std_logic;
SIGNAL \inst5|s1|Mult0~28\ : std_logic;
SIGNAL \inst5|s1|Mult0~29\ : std_logic;
SIGNAL \inst5|s1|Mult0~30\ : std_logic;
SIGNAL \inst5|s1|Mult0~31\ : std_logic;
SIGNAL \inst5|s1|Mult0~32\ : std_logic;
SIGNAL \inst5|s1|Mult0~33\ : std_logic;
SIGNAL \inst5|s1|Mult0~34\ : std_logic;
SIGNAL \inst5|s1|Mult0~35\ : std_logic;
SIGNAL \inst5|s1|Mult0~36\ : std_logic;
SIGNAL \inst5|s1|Mult0~37\ : std_logic;
SIGNAL \inst5|s1|Mult0~38\ : std_logic;
SIGNAL \inst5|s1|Mult0~39\ : std_logic;
SIGNAL \inst5|s1|Mult0~40\ : std_logic;
SIGNAL \inst5|s1|Mult0~41\ : std_logic;
SIGNAL \inst5|s1|Mult0~42\ : std_logic;
SIGNAL \inst5|s1|Mult0~43\ : std_logic;
SIGNAL \inst5|s1|Mult0~44\ : std_logic;
SIGNAL \inst5|s1|Mult0~45\ : std_logic;
SIGNAL \inst5|s1|Mult0~46\ : std_logic;
SIGNAL \inst5|s1|Mult0~47\ : std_logic;
SIGNAL \inst5|s1|Mult0~48\ : std_logic;
SIGNAL \inst5|s1|Mult0~49\ : std_logic;
SIGNAL \inst5|s1|Mult0~50\ : std_logic;
SIGNAL \inst5|s1|Mult0~51\ : std_logic;
SIGNAL \inst5|s1|Mult0~52\ : std_logic;
SIGNAL \inst5|s1|Mult0~53\ : std_logic;
SIGNAL \inst5|s1|Mult0~54\ : std_logic;
SIGNAL \inst5|s1|Mult0~55\ : std_logic;
SIGNAL \inst5|s1|Mult0~56\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst1|Add2~9_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst1|Add2~18\ : std_logic;
SIGNAL \inst1|Add2~13_sumout\ : std_logic;
SIGNAL \FPGA_I2C_SDAT~input_o\ : std_logic;
SIGNAL \inst1|Selector3~1_combout\ : std_logic;
SIGNAL \inst1|ep.e3~q\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|ep.e0~q\ : std_logic;
SIGNAL \inst1|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst1|cbits[3]~1_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|incbits~0_combout\ : std_logic;
SIGNAL \inst1|incbits~1_combout\ : std_logic;
SIGNAL \inst1|cbits[1]~2_combout\ : std_logic;
SIGNAL \inst1|cbits[2]~4_combout\ : std_logic;
SIGNAL \inst1|stop~0_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|ep.e1~q\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|ep.e2~q\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|caddr[0]~2_combout\ : std_logic;
SIGNAL \inst1|caddr[2]~0_combout\ : std_logic;
SIGNAL \inst1|caddr[1]~1_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|ep.e5~0_combout\ : std_logic;
SIGNAL \inst1|ep.e5~q\ : std_logic;
SIGNAL \inst1|Add2~14\ : std_logic;
SIGNAL \inst1|Add2~5_sumout\ : std_logic;
SIGNAL \inst1|Add2~6\ : std_logic;
SIGNAL \inst1|Add2~1_sumout\ : std_logic;
SIGNAL \inst1|ctmp~0_combout\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|settmp~0_combout\ : std_logic;
SIGNAL \inst1|settmp~combout\ : std_logic;
SIGNAL \inst1|Add2~10\ : std_logic;
SIGNAL \inst1|Add2~29_sumout\ : std_logic;
SIGNAL \inst1|Add2~30\ : std_logic;
SIGNAL \inst1|Add2~25_sumout\ : std_logic;
SIGNAL \inst1|Add2~26\ : std_logic;
SIGNAL \inst1|Add2~21_sumout\ : std_logic;
SIGNAL \inst1|Add2~22\ : std_logic;
SIGNAL \inst1|Add2~17_sumout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|ep.e4~0_combout\ : std_logic;
SIGNAL \inst1|ep.e4~q\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|cbits[4]~0_combout\ : std_logic;
SIGNAL \inst1|Mux12~1_combout\ : std_logic;
SIGNAL \inst1|sdat~2_combout\ : std_logic;
SIGNAL \inst1|sdat~0_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|sdat~1_combout\ : std_logic;
SIGNAL \inst1|sdat~4_combout\ : std_logic;
SIGNAL \inst1|ep.e4~1_combout\ : std_logic;
SIGNAL \inst1|sdat~3_combout\ : std_logic;
SIGNAL \inst1|sdat~q\ : std_logic;
SIGNAL \inst1|ep.e2~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|setbitz~combout\ : std_logic;
SIGNAL \inst4|clkdiv[0]~0_combout\ : std_logic;
SIGNAL \inst1|cclkdiv[1]~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[3]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \inst2|adcdats~q\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \inst2|bclks~q\ : std_logic;
SIGNAL \inst2|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst2|cbits[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|cbits[1]~0_combout\ : std_logic;
SIGNAL \inst2|cbits[2]~2_combout\ : std_logic;
SIGNAL \inst2|cbits[3]~1_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|ep.e4~q\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \inst2|adclrcs~q\ : std_logic;
SIGNAL \inst2|es.e5~0_combout\ : std_logic;
SIGNAL \inst2|ep.e5~q\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|ep.e0~q\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|ep.e1~q\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|ep.e2~q\ : std_logic;
SIGNAL \inst2|es.e3~0_combout\ : std_logic;
SIGNAL \inst2|ep.e3~q\ : std_logic;
SIGNAL \inst2|srdato[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|srdato[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|srdato[7]~DUPLICATE_q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[2]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \inst5|Add0~22\ : std_logic;
SIGNAL \inst5|Add0~18\ : std_logic;
SIGNAL \inst5|Add0~14\ : std_logic;
SIGNAL \inst5|Add0~10\ : std_logic;
SIGNAL \inst5|Add0~6\ : std_logic;
SIGNAL \inst5|Add0~34\ : std_logic;
SIGNAL \inst5|Add0~30\ : std_logic;
SIGNAL \inst5|Add0~26\ : std_logic;
SIGNAL \inst5|Add0~1_sumout\ : std_logic;
SIGNAL \inst5|Add0~2\ : std_logic;
SIGNAL \inst5|Add0~37_sumout\ : std_logic;
SIGNAL \inst2|srdato[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|LessThan0~7_combout\ : std_logic;
SIGNAL \inst5|LessThan0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~33_sumout\ : std_logic;
SIGNAL \inst5|Add0~25_sumout\ : std_logic;
SIGNAL \inst5|Add0~29_sumout\ : std_logic;
SIGNAL \inst5|LessThan0~5_combout\ : std_logic;
SIGNAL \inst5|Add0~13_sumout\ : std_logic;
SIGNAL \inst2|srdato[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~17_sumout\ : std_logic;
SIGNAL \inst5|Add0~21_sumout\ : std_logic;
SIGNAL \inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|srdato[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~5_sumout\ : std_logic;
SIGNAL \inst5|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|srdato[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|LessThan0~6_combout\ : std_logic;
SIGNAL \inst5|LessThan1~3_combout\ : std_logic;
SIGNAL \inst5|LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|LessThan1~5_combout\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|LessThan1~4_combout\ : std_logic;
SIGNAL \inst5|LessThan1~2_combout\ : std_logic;
SIGNAL \inst5|LessThan1~6_combout\ : std_logic;
SIGNAL \inst5|LessThan1~7_combout\ : std_logic;
SIGNAL \inst5|LessThan1~9_combout\ : std_logic;
SIGNAL \inst5|LessThan1~8_combout\ : std_logic;
SIGNAL \inst5|LessThan1~10_combout\ : std_logic;
SIGNAL \inst5|LessThan1~11_combout\ : std_logic;
SIGNAL \inst5|signal_dist[0]~36_combout\ : std_logic;
SIGNAL \inst5|signal_dist[1]~32_combout\ : std_logic;
SIGNAL \inst5|signal_dist[2]~28_combout\ : std_logic;
SIGNAL \inst5|signal_dist[3]~24_combout\ : std_logic;
SIGNAL \inst5|signal_dist[4]~20_combout\ : std_logic;
SIGNAL \inst5|signal_dist[5]~16_combout\ : std_logic;
SIGNAL \inst5|signal_dist[6]~12_combout\ : std_logic;
SIGNAL \inst5|signal_dist[7]~8_combout\ : std_logic;
SIGNAL \inst2|srdato[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|signal_dist[8]~0_combout\ : std_logic;
SIGNAL \inst5|signal_dist[9]~1_combout\ : std_logic;
SIGNAL \inst5|signal_dist[10]~2_combout\ : std_logic;
SIGNAL \inst5|signal_dist[11]~3_combout\ : std_logic;
SIGNAL \inst5|signal_dist[12]~4_combout\ : std_logic;
SIGNAL \inst5|signal_dist[13]~5_combout\ : std_logic;
SIGNAL \inst5|signal_dist[14]~6_combout\ : std_logic;
SIGNAL \inst5|signal_dist[15]~7_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0~23\ : std_logic;
SIGNAL \inst3|srdato[16]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[15]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[14]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[13]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|srdato[1]~feeder_combout\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \inst3|daclrcs~q\ : std_logic;
SIGNAL \inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|ep.e0~q\ : std_logic;
SIGNAL \inst3|es.e1~0_combout\ : std_logic;
SIGNAL \inst3|ep.e1~q\ : std_logic;
SIGNAL \inst3|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst3|cbits[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|cbits[2]~1_combout\ : std_logic;
SIGNAL \inst3|cbits[3]~0_combout\ : std_logic;
SIGNAL \inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst3|ep.e2~q\ : std_logic;
SIGNAL \inst3|es.e3~0_combout\ : std_logic;
SIGNAL \inst3|ep.e3~q\ : std_logic;
SIGNAL \inst3|es.e4~0_combout\ : std_logic;
SIGNAL \inst3|ep.e4~q\ : std_logic;
SIGNAL \inst3|cbits[1]~2_combout\ : std_logic;
SIGNAL \inst3|cbits[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst3|ep.e5~q\ : std_logic;
SIGNAL \inst3|es.e6~0_combout\ : std_logic;
SIGNAL \inst3|ep.e6~q\ : std_logic;
SIGNAL \inst3|srdato~1_combout\ : std_logic;
SIGNAL \inst3|srdato[1]~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \LEDR[0]$latch~combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \LEDR[1]$latch~combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \LEDR[2]$latch~combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \LEDR[3]$latch~combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \LEDR[4]$latch~combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \LEDR[5]$latch~combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \LEDR[6]$latch~combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \LEDR[7]$latch~combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \LEDR[8]$latch~combout\ : std_logic;
SIGNAL \LEDR[9]$latch~combout\ : std_logic;
SIGNAL \inst4|Add0~41_sumout\ : std_logic;
SIGNAL \inst4|Add0~42\ : std_logic;
SIGNAL \inst4|Add0~37_sumout\ : std_logic;
SIGNAL \inst4|Add0~38\ : std_logic;
SIGNAL \inst4|Add0~33_sumout\ : std_logic;
SIGNAL \inst4|Add0~34\ : std_logic;
SIGNAL \inst4|Add0~29_sumout\ : std_logic;
SIGNAL \inst4|Add0~30\ : std_logic;
SIGNAL \inst4|Add0~25_sumout\ : std_logic;
SIGNAL \inst4|Add0~26\ : std_logic;
SIGNAL \inst4|Add0~21_sumout\ : std_logic;
SIGNAL \inst4|Add0~22\ : std_logic;
SIGNAL \inst4|Add0~17_sumout\ : std_logic;
SIGNAL \inst4|Add0~18\ : std_logic;
SIGNAL \inst4|Add0~13_sumout\ : std_logic;
SIGNAL \inst4|Add0~14\ : std_logic;
SIGNAL \inst4|Add0~9_sumout\ : std_logic;
SIGNAL \inst4|Add0~10\ : std_logic;
SIGNAL \inst4|Add0~5_sumout\ : std_logic;
SIGNAL \inst4|Add0~6\ : std_logic;
SIGNAL \inst4|Add0~1_sumout\ : std_logic;
SIGNAL \inst4|cs_cycle[2]~2_combout\ : std_logic;
SIGNAL \inst4|cs_cycle[3]~1_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \ADC_DOUT~input_o\ : std_logic;
SIGNAL \inst4|sr_dout[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[10]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[13]~feeder_combout\ : std_logic;
SIGNAL \inst4|es.sready~0_combout\ : std_logic;
SIGNAL \inst4|ep.sready~q\ : std_logic;
SIGNAL \inst4|cmd_addr[1]~0_combout\ : std_logic;
SIGNAL \inst4|es.conf0~0_combout\ : std_logic;
SIGNAL \inst4|ep.conf0~q\ : std_logic;
SIGNAL \inst4|cmd_addr[0]~1_combout\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|ep.idle~q\ : std_logic;
SIGNAL \inst4|Selector2~0_combout\ : std_logic;
SIGNAL \inst4|ep.rd0~q\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|ep.rd1~q\ : std_logic;
SIGNAL \inst4|cs_cycle[1]~3_combout\ : std_logic;
SIGNAL \inst4|es.save~0_combout\ : std_logic;
SIGNAL \inst4|ep.save~q\ : std_logic;
SIGNAL \inst4|cs_cycle[0]~0_combout\ : std_logic;
SIGNAL \inst4|cs_cycle[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|ep.conf1~q\ : std_logic;
SIGNAL \inst4|cs~combout\ : std_logic;
SIGNAL \inst4|cmd_addr[1]~_wirecell_combout\ : std_logic;
SIGNAL \inst4|sr_din[13]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_din[12]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_din[10]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_din[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_din[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_din[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_din[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_din[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_din~8_combout\ : std_logic;
SIGNAL \inst4|sr_din[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_din[9]~1_combout\ : std_logic;
SIGNAL \inst4|sr_din~7_combout\ : std_logic;
SIGNAL \inst4|sr_din~6_combout\ : std_logic;
SIGNAL \inst4|sr_din~5_combout\ : std_logic;
SIGNAL \inst4|sr_din~4_combout\ : std_logic;
SIGNAL \inst4|sr_din~3_combout\ : std_logic;
SIGNAL \inst4|sr_din~2_combout\ : std_logic;
SIGNAL \inst4|sr_din~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \HEX0[6]$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \HEX0[5]$latch~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \HEX0[4]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \HEX0[3]$latch~combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \HEX0[2]$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \HEX0[1]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \HEX0[0]$latch~combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \HEX1[6]$latch~combout\ : std_logic;
SIGNAL \HEX1[5]$latch~combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \HEX2[6]$latch~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \HEX2[5]$latch~combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \HEX2[4]$latch~combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \HEX2[3]$latch~combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \HEX2[2]$latch~combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \HEX2[1]$latch~combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \HEX2[0]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \HEX3[6]$latch~combout\ : std_logic;
SIGNAL \HEX3[5]$latch~combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \HEX4[6]$latch~combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \HEX4[5]$latch~combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \HEX4[4]$latch~combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \HEX4[3]$latch~combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \HEX4[2]$latch~combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \HEX4[1]$latch~combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \HEX4[0]$latch~combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \HEX5[6]$latch~combout\ : std_logic;
SIGNAL \HEX5[5]$latch~combout\ : std_logic;
SIGNAL \inst2|cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|sr_dout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst4|cmd_addr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|srdato\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|cs_cycle\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ataque_value : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|s1|sample_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|cclkdiv\ : std_logic_vector(1 DOWNTO 0);
SIGNAL volume_value : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ctmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|cbits\ : std_logic_vector(4 DOWNTO 0);
SIGNAL velocidade_value : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|srdato\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst4|sr_din\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|clkdiv\ : std_logic_vector(11 DOWNTO 0);
SIGNAL distortion_value : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|caddr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|s1|ALT_INV_sample_out\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst1|ALT_INV_ctmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|ALT_INV_srdato\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst2|ALT_INV_cbits[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_cbits[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_cbits[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e2~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_ADC_DOUT~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_I2C_SDAT~input_o\ : std_logic;
SIGNAL \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_HEX5[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX5[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX4[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX4[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX4[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX4[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX4[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX4[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX4[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX3[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX3[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX2[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX2[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX2[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX2[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX2[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX2[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX2[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX1[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX1[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX0[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX0[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX0[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX0[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX0[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX0[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_HEX0[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sr_din~8_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sr_dout\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst4|ALT_INV_clkdiv\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst4|ALT_INV_sr_din\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst2|ALT_INV_ep.e5~q\ : std_logic;
SIGNAL \inst2|ALT_INV_ep.e0~q\ : std_logic;
SIGNAL \inst2|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_ep.e1~q\ : std_logic;
SIGNAL \inst2|ALT_INV_adclrcs~q\ : std_logic;
SIGNAL \inst2|ALT_INV_ep.e4~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ep.e2~q\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e4~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.sready~q\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_incbits~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_incbits~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e2~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_ep.e3~q\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.idle~q\ : std_logic;
SIGNAL \inst4|ALT_INV_cmd_addr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e3~q\ : std_logic;
SIGNAL \inst1|ALT_INV_stop~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_cbits\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ALT_INV_ep.e1~q\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e5~q\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e3~q\ : std_logic;
SIGNAL \inst3|ALT_INV_daclrcs~q\ : std_logic;
SIGNAL \inst2|ALT_INV_bclks~q\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e0~q\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.rd0~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.conf0~q\ : std_logic;
SIGNAL \inst4|ALT_INV_cs_cycle\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e4~q\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_caddr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e2~q\ : std_logic;
SIGNAL \inst1|ALT_INV_settmp~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e0~q\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e5~q\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e6~q\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e4~q\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e1~q\ : std_logic;
SIGNAL \inst4|ALT_INV_cs~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.save~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.rd1~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.conf1~q\ : std_logic;
SIGNAL \inst1|ALT_INV_cclkdiv\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst1|ALT_INV_sdat~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_distortion_value : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_velocidade_value : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_ataque_value : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_volume_value : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \inst5|s1|ALT_INV_Mult0~23\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
AUD_XCK <= ww_AUD_XCK;
ww_AUD_BCLK <= AUD_BCLK;
ww_AUD_ADCLRCK <= AUD_ADCLRCK;
ww_AUD_DACLRCK <= AUD_DACLRCK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACDAT <= ww_AUD_DACDAT;
FPGA_I2C_SCLK <= ww_FPGA_I2C_SCLK;
ww_SW <= SW;
LEDR <= ww_LEDR;
ADC_SCLK <= ww_ADC_SCLK;
ADC_CS_N <= ww_ADC_CS_N;
ww_ADC_DOUT <= ADC_DOUT;
ADC_DIN <= ww_ADC_DIN;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|s1|Mult0~8_AX_bus\ <= (gnd & gnd & volume_value(7) & volume_value(6) & volume_value(5) & volume_value(4) & volume_value(3) & volume_value(2) & volume_value(1) & volume_value(0) & vcc & vcc & vcc & vcc & vcc);

\inst5|s1|Mult0~8_AY_bus\ <= (\inst5|signal_dist[15]~7_combout\ & \inst5|signal_dist[15]~7_combout\ & \inst5|signal_dist[15]~7_combout\ & \inst5|signal_dist[15]~7_combout\ & \inst5|signal_dist[14]~6_combout\ & \inst5|signal_dist[13]~5_combout\ & 
\inst5|signal_dist[12]~4_combout\ & \inst5|signal_dist[11]~3_combout\ & \inst5|signal_dist[10]~2_combout\ & \inst5|signal_dist[9]~1_combout\ & \inst5|signal_dist[8]~0_combout\ & \inst5|signal_dist[7]~8_combout\ & \inst5|signal_dist[6]~12_combout\ & 
\inst5|signal_dist[5]~16_combout\ & \inst5|signal_dist[4]~20_combout\ & \inst5|signal_dist[3]~24_combout\ & \inst5|signal_dist[2]~28_combout\ & \inst5|signal_dist[1]~32_combout\ & \inst5|signal_dist[0]~36_combout\);

\inst5|s1|Mult0~8_resulta\ <= \inst5|s1|Mult0~8_RESULTA_bus\(0);
\inst5|s1|Mult0~9\ <= \inst5|s1|Mult0~8_RESULTA_bus\(1);
\inst5|s1|Mult0~10\ <= \inst5|s1|Mult0~8_RESULTA_bus\(2);
\inst5|s1|Mult0~11\ <= \inst5|s1|Mult0~8_RESULTA_bus\(3);
\inst5|s1|Mult0~12\ <= \inst5|s1|Mult0~8_RESULTA_bus\(4);
\inst5|s1|Mult0~13\ <= \inst5|s1|Mult0~8_RESULTA_bus\(5);
\inst5|s1|Mult0~14\ <= \inst5|s1|Mult0~8_RESULTA_bus\(6);
\inst5|s1|Mult0~15\ <= \inst5|s1|Mult0~8_RESULTA_bus\(7);
\inst5|s1|sample_out\(0) <= \inst5|s1|Mult0~8_RESULTA_bus\(8);
\inst5|s1|sample_out\(1) <= \inst5|s1|Mult0~8_RESULTA_bus\(9);
\inst5|s1|sample_out\(2) <= \inst5|s1|Mult0~8_RESULTA_bus\(10);
\inst5|s1|sample_out\(3) <= \inst5|s1|Mult0~8_RESULTA_bus\(11);
\inst5|s1|sample_out\(4) <= \inst5|s1|Mult0~8_RESULTA_bus\(12);
\inst5|s1|sample_out\(5) <= \inst5|s1|Mult0~8_RESULTA_bus\(13);
\inst5|s1|sample_out\(6) <= \inst5|s1|Mult0~8_RESULTA_bus\(14);
\inst5|s1|sample_out\(7) <= \inst5|s1|Mult0~8_RESULTA_bus\(15);
\inst5|s1|sample_out\(8) <= \inst5|s1|Mult0~8_RESULTA_bus\(16);
\inst5|s1|sample_out\(9) <= \inst5|s1|Mult0~8_RESULTA_bus\(17);
\inst5|s1|sample_out\(10) <= \inst5|s1|Mult0~8_RESULTA_bus\(18);
\inst5|s1|sample_out\(11) <= \inst5|s1|Mult0~8_RESULTA_bus\(19);
\inst5|s1|sample_out\(12) <= \inst5|s1|Mult0~8_RESULTA_bus\(20);
\inst5|s1|sample_out\(13) <= \inst5|s1|Mult0~8_RESULTA_bus\(21);
\inst5|s1|sample_out\(14) <= \inst5|s1|Mult0~8_RESULTA_bus\(22);
\inst5|s1|Mult0~16\ <= \inst5|s1|Mult0~8_RESULTA_bus\(23);
\inst5|s1|Mult0~17\ <= \inst5|s1|Mult0~8_RESULTA_bus\(24);
\inst5|s1|Mult0~18\ <= \inst5|s1|Mult0~8_RESULTA_bus\(25);
\inst5|s1|Mult0~19\ <= \inst5|s1|Mult0~8_RESULTA_bus\(26);
\inst5|s1|Mult0~20\ <= \inst5|s1|Mult0~8_RESULTA_bus\(27);
\inst5|s1|Mult0~21\ <= \inst5|s1|Mult0~8_RESULTA_bus\(28);
\inst5|s1|Mult0~22\ <= \inst5|s1|Mult0~8_RESULTA_bus\(29);
\inst5|s1|Mult0~23\ <= \inst5|s1|Mult0~8_RESULTA_bus\(30);
\inst5|s1|Mult0~24\ <= \inst5|s1|Mult0~8_RESULTA_bus\(31);
\inst5|s1|Mult0~25\ <= \inst5|s1|Mult0~8_RESULTA_bus\(32);
\inst5|s1|Mult0~26\ <= \inst5|s1|Mult0~8_RESULTA_bus\(33);
\inst5|s1|Mult0~27\ <= \inst5|s1|Mult0~8_RESULTA_bus\(34);
\inst5|s1|Mult0~28\ <= \inst5|s1|Mult0~8_RESULTA_bus\(35);
\inst5|s1|Mult0~29\ <= \inst5|s1|Mult0~8_RESULTA_bus\(36);
\inst5|s1|Mult0~30\ <= \inst5|s1|Mult0~8_RESULTA_bus\(37);
\inst5|s1|Mult0~31\ <= \inst5|s1|Mult0~8_RESULTA_bus\(38);
\inst5|s1|Mult0~32\ <= \inst5|s1|Mult0~8_RESULTA_bus\(39);
\inst5|s1|Mult0~33\ <= \inst5|s1|Mult0~8_RESULTA_bus\(40);
\inst5|s1|Mult0~34\ <= \inst5|s1|Mult0~8_RESULTA_bus\(41);
\inst5|s1|Mult0~35\ <= \inst5|s1|Mult0~8_RESULTA_bus\(42);
\inst5|s1|Mult0~36\ <= \inst5|s1|Mult0~8_RESULTA_bus\(43);
\inst5|s1|Mult0~37\ <= \inst5|s1|Mult0~8_RESULTA_bus\(44);
\inst5|s1|Mult0~38\ <= \inst5|s1|Mult0~8_RESULTA_bus\(45);
\inst5|s1|Mult0~39\ <= \inst5|s1|Mult0~8_RESULTA_bus\(46);
\inst5|s1|Mult0~40\ <= \inst5|s1|Mult0~8_RESULTA_bus\(47);
\inst5|s1|Mult0~41\ <= \inst5|s1|Mult0~8_RESULTA_bus\(48);
\inst5|s1|Mult0~42\ <= \inst5|s1|Mult0~8_RESULTA_bus\(49);
\inst5|s1|Mult0~43\ <= \inst5|s1|Mult0~8_RESULTA_bus\(50);
\inst5|s1|Mult0~44\ <= \inst5|s1|Mult0~8_RESULTA_bus\(51);
\inst5|s1|Mult0~45\ <= \inst5|s1|Mult0~8_RESULTA_bus\(52);
\inst5|s1|Mult0~46\ <= \inst5|s1|Mult0~8_RESULTA_bus\(53);
\inst5|s1|Mult0~47\ <= \inst5|s1|Mult0~8_RESULTA_bus\(54);
\inst5|s1|Mult0~48\ <= \inst5|s1|Mult0~8_RESULTA_bus\(55);
\inst5|s1|Mult0~49\ <= \inst5|s1|Mult0~8_RESULTA_bus\(56);
\inst5|s1|Mult0~50\ <= \inst5|s1|Mult0~8_RESULTA_bus\(57);
\inst5|s1|Mult0~51\ <= \inst5|s1|Mult0~8_RESULTA_bus\(58);
\inst5|s1|Mult0~52\ <= \inst5|s1|Mult0~8_RESULTA_bus\(59);
\inst5|s1|Mult0~53\ <= \inst5|s1|Mult0~8_RESULTA_bus\(60);
\inst5|s1|Mult0~54\ <= \inst5|s1|Mult0~8_RESULTA_bus\(61);
\inst5|s1|Mult0~55\ <= \inst5|s1|Mult0~8_RESULTA_bus\(62);
\inst5|s1|Mult0~56\ <= \inst5|s1|Mult0~8_RESULTA_bus\(63);
\inst5|s1|ALT_INV_sample_out\(14) <= NOT \inst5|s1|sample_out\(14);
\inst5|s1|ALT_INV_sample_out\(13) <= NOT \inst5|s1|sample_out\(13);
\inst5|s1|ALT_INV_sample_out\(12) <= NOT \inst5|s1|sample_out\(12);
\inst5|s1|ALT_INV_sample_out\(11) <= NOT \inst5|s1|sample_out\(11);
\inst5|s1|ALT_INV_sample_out\(10) <= NOT \inst5|s1|sample_out\(10);
\inst5|s1|ALT_INV_sample_out\(9) <= NOT \inst5|s1|sample_out\(9);
\inst5|s1|ALT_INV_sample_out\(8) <= NOT \inst5|s1|sample_out\(8);
\inst5|s1|ALT_INV_sample_out\(7) <= NOT \inst5|s1|sample_out\(7);
\inst5|s1|ALT_INV_sample_out\(6) <= NOT \inst5|s1|sample_out\(6);
\inst5|s1|ALT_INV_sample_out\(5) <= NOT \inst5|s1|sample_out\(5);
\inst5|s1|ALT_INV_sample_out\(4) <= NOT \inst5|s1|sample_out\(4);
\inst5|s1|ALT_INV_sample_out\(3) <= NOT \inst5|s1|sample_out\(3);
\inst5|s1|ALT_INV_sample_out\(2) <= NOT \inst5|s1|sample_out\(2);
\inst5|s1|ALT_INV_sample_out\(1) <= NOT \inst5|s1|sample_out\(1);
\inst5|s1|ALT_INV_sample_out\(0) <= NOT \inst5|s1|sample_out\(0);
\inst1|ALT_INV_ctmp\(7) <= NOT \inst1|ctmp\(7);
\inst3|ALT_INV_srdato\(16) <= NOT \inst3|srdato\(16);
\inst2|ALT_INV_cbits[0]~DUPLICATE_q\ <= NOT \inst2|cbits[0]~DUPLICATE_q\;
\inst3|ALT_INV_cbits[0]~DUPLICATE_q\ <= NOT \inst3|cbits[0]~DUPLICATE_q\;
\inst3|ALT_INV_cbits[1]~DUPLICATE_q\ <= NOT \inst3|cbits[1]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[6]~DUPLICATE_q\ <= NOT \inst2|srdato[6]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[7]~DUPLICATE_q\ <= NOT \inst2|srdato[7]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[2]~DUPLICATE_q\ <= NOT \inst2|srdato[2]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[3]~DUPLICATE_q\ <= NOT \inst2|srdato[3]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[4]~DUPLICATE_q\ <= NOT \inst2|srdato[4]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[8]~DUPLICATE_q\ <= NOT \inst2|srdato[8]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[15]~DUPLICATE_q\ <= NOT \inst2|srdato[15]~DUPLICATE_q\;
\inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\ <= NOT \inst4|cs_cycle[0]~DUPLICATE_q\;
\inst1|ALT_INV_ep.e2~DUPLICATE_q\ <= NOT \inst1|ep.e2~DUPLICATE_q\;
\ALT_INV_KEY[2]~inputCLKENA0_outclk\ <= NOT \KEY[2]~inputCLKENA0_outclk\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_KEY[1]~inputCLKENA0_outclk\ <= NOT \KEY[1]~inputCLKENA0_outclk\;
\ALT_INV_KEY[3]~inputCLKENA0_outclk\ <= NOT \KEY[3]~inputCLKENA0_outclk\;
\ALT_INV_ADC_DOUT~input_o\ <= NOT \ADC_DOUT~input_o\;
\ALT_INV_FPGA_I2C_SDAT~input_o\ <= NOT \FPGA_I2C_SDAT~input_o\;
\inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\ <= NOT \inst4|cmd_addr[1]~_wirecell_combout\;
\ALT_INV_HEX5[5]$latch~combout\ <= NOT \HEX5[5]$latch~combout\;
\ALT_INV_HEX5[6]$latch~combout\ <= NOT \HEX5[6]$latch~combout\;
\ALT_INV_HEX4[0]$latch~combout\ <= NOT \HEX4[0]$latch~combout\;
\ALT_INV_HEX4[1]$latch~combout\ <= NOT \HEX4[1]$latch~combout\;
\ALT_INV_HEX4[2]$latch~combout\ <= NOT \HEX4[2]$latch~combout\;
\ALT_INV_HEX4[3]$latch~combout\ <= NOT \HEX4[3]$latch~combout\;
\ALT_INV_HEX4[4]$latch~combout\ <= NOT \HEX4[4]$latch~combout\;
\ALT_INV_HEX4[5]$latch~combout\ <= NOT \HEX4[5]$latch~combout\;
\ALT_INV_HEX4[6]$latch~combout\ <= NOT \HEX4[6]$latch~combout\;
\ALT_INV_HEX3[5]$latch~combout\ <= NOT \HEX3[5]$latch~combout\;
\ALT_INV_HEX3[6]$latch~combout\ <= NOT \HEX3[6]$latch~combout\;
\ALT_INV_HEX2[0]$latch~combout\ <= NOT \HEX2[0]$latch~combout\;
\ALT_INV_HEX2[1]$latch~combout\ <= NOT \HEX2[1]$latch~combout\;
\ALT_INV_HEX2[2]$latch~combout\ <= NOT \HEX2[2]$latch~combout\;
\ALT_INV_HEX2[3]$latch~combout\ <= NOT \HEX2[3]$latch~combout\;
\ALT_INV_HEX2[4]$latch~combout\ <= NOT \HEX2[4]$latch~combout\;
\ALT_INV_HEX2[5]$latch~combout\ <= NOT \HEX2[5]$latch~combout\;
\ALT_INV_HEX2[6]$latch~combout\ <= NOT \HEX2[6]$latch~combout\;
\ALT_INV_HEX1[5]$latch~combout\ <= NOT \HEX1[5]$latch~combout\;
\ALT_INV_HEX1[6]$latch~combout\ <= NOT \HEX1[6]$latch~combout\;
\ALT_INV_HEX0[0]$latch~combout\ <= NOT \HEX0[0]$latch~combout\;
\ALT_INV_HEX0[1]$latch~combout\ <= NOT \HEX0[1]$latch~combout\;
\ALT_INV_HEX0[2]$latch~combout\ <= NOT \HEX0[2]$latch~combout\;
\ALT_INV_HEX0[3]$latch~combout\ <= NOT \HEX0[3]$latch~combout\;
\ALT_INV_HEX0[4]$latch~combout\ <= NOT \HEX0[4]$latch~combout\;
\ALT_INV_HEX0[5]$latch~combout\ <= NOT \HEX0[5]$latch~combout\;
\ALT_INV_HEX0[6]$latch~combout\ <= NOT \HEX0[6]$latch~combout\;
\ALT_INV_LEDR[9]$latch~combout\ <= NOT \LEDR[9]$latch~combout\;
\ALT_INV_LEDR[8]$latch~combout\ <= NOT \LEDR[8]$latch~combout\;
\ALT_INV_LEDR[7]$latch~combout\ <= NOT \LEDR[7]$latch~combout\;
\ALT_INV_LEDR[6]$latch~combout\ <= NOT \LEDR[6]$latch~combout\;
\ALT_INV_LEDR[5]$latch~combout\ <= NOT \LEDR[5]$latch~combout\;
\ALT_INV_LEDR[4]$latch~combout\ <= NOT \LEDR[4]$latch~combout\;
\ALT_INV_LEDR[3]$latch~combout\ <= NOT \LEDR[3]$latch~combout\;
\ALT_INV_LEDR[2]$latch~combout\ <= NOT \LEDR[2]$latch~combout\;
\ALT_INV_LEDR[1]$latch~combout\ <= NOT \LEDR[1]$latch~combout\;
\ALT_INV_LEDR[0]$latch~combout\ <= NOT \LEDR[0]$latch~combout\;
\ALT_INV_Mux43~4_combout\ <= NOT \Mux43~4_combout\;
\ALT_INV_Mux43~3_combout\ <= NOT \Mux43~3_combout\;
\ALT_INV_Mux43~2_combout\ <= NOT \Mux43~2_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\ALT_INV_Mux1~4_combout\ <= NOT \Mux1~4_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux21~4_combout\ <= NOT \Mux21~4_combout\;
\ALT_INV_Mux21~3_combout\ <= NOT \Mux21~3_combout\;
\ALT_INV_Mux21~2_combout\ <= NOT \Mux21~2_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux32~4_combout\ <= NOT \Mux32~4_combout\;
\ALT_INV_Mux32~3_combout\ <= NOT \Mux32~3_combout\;
\ALT_INV_Mux32~2_combout\ <= NOT \Mux32~2_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\inst4|ALT_INV_sr_din~8_combout\ <= NOT \inst4|sr_din~8_combout\;
\inst4|ALT_INV_sr_dout\(0) <= NOT \inst4|sr_dout\(0);
\inst4|ALT_INV_sr_dout\(1) <= NOT \inst4|sr_dout\(1);
\inst4|ALT_INV_sr_dout\(2) <= NOT \inst4|sr_dout\(2);
\inst4|ALT_INV_clkdiv\(1) <= NOT \inst4|clkdiv\(1);
\inst4|ALT_INV_sr_dout\(3) <= NOT \inst4|sr_dout\(3);
\inst4|ALT_INV_clkdiv\(2) <= NOT \inst4|clkdiv\(2);
\inst4|ALT_INV_clkdiv\(3) <= NOT \inst4|clkdiv\(3);
\inst4|ALT_INV_clkdiv\(4) <= NOT \inst4|clkdiv\(4);
\inst4|ALT_INV_sr_din\(7) <= NOT \inst4|sr_din\(7);
\inst4|ALT_INV_clkdiv\(5) <= NOT \inst4|clkdiv\(5);
\inst4|ALT_INV_sr_din\(8) <= NOT \inst4|sr_din\(8);
\inst4|ALT_INV_clkdiv\(6) <= NOT \inst4|clkdiv\(6);
\inst2|ALT_INV_ep.e5~q\ <= NOT \inst2|ep.e5~q\;
\inst4|ALT_INV_clkdiv\(7) <= NOT \inst4|clkdiv\(7);
\inst2|ALT_INV_ep.e0~q\ <= NOT \inst2|ep.e0~q\;
\inst2|ALT_INV_Selector3~0_combout\ <= NOT \inst2|Selector3~0_combout\;
\inst2|ALT_INV_cbits\(2) <= NOT \inst2|cbits\(2);
\inst2|ALT_INV_cbits\(3) <= NOT \inst2|cbits\(3);
\inst2|ALT_INV_cbits\(0) <= NOT \inst2|cbits\(0);
\inst2|ALT_INV_cbits\(1) <= NOT \inst2|cbits\(1);
\inst4|ALT_INV_sr_dout\(9) <= NOT \inst4|sr_dout\(9);
\inst4|ALT_INV_clkdiv\(8) <= NOT \inst4|clkdiv\(8);
\inst2|ALT_INV_ep.e1~q\ <= NOT \inst2|ep.e1~q\;
\inst2|ALT_INV_adclrcs~q\ <= NOT \inst2|adclrcs~q\;
\inst2|ALT_INV_ep.e4~q\ <= NOT \inst2|ep.e4~q\;
\inst4|ALT_INV_clkdiv\(9) <= NOT \inst4|clkdiv\(9);
\inst3|ALT_INV_Selector1~0_combout\ <= NOT \inst3|Selector1~0_combout\;
\inst2|ALT_INV_ep.e2~q\ <= NOT \inst2|ep.e2~q\;
\inst1|ALT_INV_sdat~2_combout\ <= NOT \inst1|sdat~2_combout\;
\inst1|ALT_INV_Mux12~1_combout\ <= NOT \inst1|Mux12~1_combout\;
\inst1|ALT_INV_sdat~1_combout\ <= NOT \inst1|sdat~1_combout\;
\inst1|ALT_INV_Mux12~0_combout\ <= NOT \inst1|Mux12~0_combout\;
\inst1|ALT_INV_sdat~0_combout\ <= NOT \inst1|sdat~0_combout\;
\inst1|ALT_INV_ep.e4~1_combout\ <= NOT \inst1|ep.e4~1_combout\;
\inst4|ALT_INV_ep.sready~q\ <= NOT \inst4|ep.sready~q\;
\inst4|ALT_INV_clkdiv\(10) <= NOT \inst4|clkdiv\(10);
\inst1|ALT_INV_Add0~1_combout\ <= NOT \inst1|Add0~1_combout\;
\inst1|ALT_INV_incbits~1_combout\ <= NOT \inst1|incbits~1_combout\;
\inst1|ALT_INV_incbits~0_combout\ <= NOT \inst1|incbits~0_combout\;
\inst1|ALT_INV_Add0~0_combout\ <= NOT \inst1|Add0~0_combout\;
\inst1|ALT_INV_Selector0~1_combout\ <= NOT \inst1|Selector0~1_combout\;
\inst3|ALT_INV_ep.e2~q\ <= NOT \inst3|ep.e2~q\;
\inst3|ALT_INV_Selector2~0_combout\ <= NOT \inst3|Selector2~0_combout\;
\inst3|ALT_INV_cbits\(0) <= NOT \inst3|cbits\(0);
\inst3|ALT_INV_cbits\(1) <= NOT \inst3|cbits\(1);
\inst3|ALT_INV_cbits\(2) <= NOT \inst3|cbits\(2);
\inst3|ALT_INV_cbits\(3) <= NOT \inst3|cbits\(3);
\inst2|ALT_INV_ep.e3~q\ <= NOT \inst2|ep.e3~q\;
\inst1|ALT_INV_sdat~q\ <= NOT \inst1|sdat~q\;
\inst4|ALT_INV_sr_dout\(12) <= NOT \inst4|sr_dout\(12);
\inst4|ALT_INV_sr_dout\(13) <= NOT \inst4|sr_dout\(13);
\inst4|ALT_INV_ep.idle~q\ <= NOT \inst4|ep.idle~q\;
\inst4|ALT_INV_cmd_addr\(0) <= NOT \inst4|cmd_addr\(0);
\inst4|ALT_INV_cmd_addr\(1) <= NOT \inst4|cmd_addr\(1);
\inst4|ALT_INV_Equal2~0_combout\ <= NOT \inst4|Equal2~0_combout\;
\inst1|ALT_INV_Equal2~0_combout\ <= NOT \inst1|Equal2~0_combout\;
\inst1|ALT_INV_ep.e3~q\ <= NOT \inst1|ep.e3~q\;
\inst1|ALT_INV_stop~0_combout\ <= NOT \inst1|stop~0_combout\;
\inst1|ALT_INV_cbits\(0) <= NOT \inst1|cbits\(0);
\inst1|ALT_INV_cbits\(1) <= NOT \inst1|cbits\(1);
\inst1|ALT_INV_cbits\(2) <= NOT \inst1|cbits\(2);
\inst1|ALT_INV_cbits\(3) <= NOT \inst1|cbits\(3);
\inst1|ALT_INV_cbits\(4) <= NOT \inst1|cbits\(4);
\inst1|ALT_INV_ep.e1~q\ <= NOT \inst1|ep.e1~q\;
\inst1|ALT_INV_Equal5~0_combout\ <= NOT \inst1|Equal5~0_combout\;
\inst3|ALT_INV_ep.e5~q\ <= NOT \inst3|ep.e5~q\;
\inst3|ALT_INV_ep.e3~q\ <= NOT \inst3|ep.e3~q\;
\inst3|ALT_INV_daclrcs~q\ <= NOT \inst3|daclrcs~q\;
\inst2|ALT_INV_bclks~q\ <= NOT \inst2|bclks~q\;
\inst3|ALT_INV_ep.e0~q\ <= NOT \inst3|ep.e0~q\;
\inst5|ALT_INV_LessThan1~11_combout\ <= NOT \inst5|LessThan1~11_combout\;
\inst5|ALT_INV_LessThan1~10_combout\ <= NOT \inst5|LessThan1~10_combout\;
\inst5|ALT_INV_LessThan1~9_combout\ <= NOT \inst5|LessThan1~9_combout\;
\inst5|ALT_INV_LessThan1~8_combout\ <= NOT \inst5|LessThan1~8_combout\;
\inst5|ALT_INV_LessThan1~7_combout\ <= NOT \inst5|LessThan1~7_combout\;
\inst5|ALT_INV_LessThan1~6_combout\ <= NOT \inst5|LessThan1~6_combout\;
\inst5|ALT_INV_LessThan1~5_combout\ <= NOT \inst5|LessThan1~5_combout\;
\inst5|ALT_INV_LessThan1~4_combout\ <= NOT \inst5|LessThan1~4_combout\;
\inst5|ALT_INV_LessThan1~3_combout\ <= NOT \inst5|LessThan1~3_combout\;
\inst5|ALT_INV_LessThan1~2_combout\ <= NOT \inst5|LessThan1~2_combout\;
\inst5|ALT_INV_LessThan1~1_combout\ <= NOT \inst5|LessThan1~1_combout\;
\inst5|ALT_INV_LessThan1~0_combout\ <= NOT \inst5|LessThan1~0_combout\;
\inst5|ALT_INV_LessThan0~8_combout\ <= NOT \inst5|LessThan0~8_combout\;
\inst5|ALT_INV_LessThan0~7_combout\ <= NOT \inst5|LessThan0~7_combout\;
\inst2|ALT_INV_srdato\(10) <= NOT \inst2|srdato\(10);
\inst2|ALT_INV_srdato\(11) <= NOT \inst2|srdato\(11);
\inst2|ALT_INV_srdato\(12) <= NOT \inst2|srdato\(12);
\inst2|ALT_INV_srdato\(13) <= NOT \inst2|srdato\(13);
\inst2|ALT_INV_srdato\(14) <= NOT \inst2|srdato\(14);
\inst2|ALT_INV_srdato\(9) <= NOT \inst2|srdato\(9);
\inst5|ALT_INV_LessThan0~6_combout\ <= NOT \inst5|LessThan0~6_combout\;
\inst5|ALT_INV_LessThan0~5_combout\ <= NOT \inst5|LessThan0~5_combout\;
\inst5|ALT_INV_LessThan0~4_combout\ <= NOT \inst5|LessThan0~4_combout\;
\inst2|ALT_INV_srdato\(5) <= NOT \inst2|srdato\(5);
\inst2|ALT_INV_srdato\(6) <= NOT \inst2|srdato\(6);
\inst2|ALT_INV_srdato\(7) <= NOT \inst2|srdato\(7);
\inst5|ALT_INV_LessThan0~3_combout\ <= NOT \inst5|LessThan0~3_combout\;
\inst5|ALT_INV_LessThan0~2_combout\ <= NOT \inst5|LessThan0~2_combout\;
\inst2|ALT_INV_srdato\(1) <= NOT \inst2|srdato\(1);
\inst5|ALT_INV_LessThan0~1_combout\ <= NOT \inst5|LessThan0~1_combout\;
\inst2|ALT_INV_srdato\(3) <= NOT \inst2|srdato\(3);
\inst2|ALT_INV_srdato\(4) <= NOT \inst2|srdato\(4);
\inst5|ALT_INV_LessThan0~0_combout\ <= NOT \inst5|LessThan0~0_combout\;
\inst2|ALT_INV_srdato\(8) <= NOT \inst2|srdato\(8);
\inst2|ALT_INV_srdato\(15) <= NOT \inst2|srdato\(15);
\inst2|ALT_INV_srdato\(0) <= NOT \inst2|srdato\(0);
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux32~1_combout\ <= NOT \Mux32~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\inst4|ALT_INV_sr_din\(14) <= NOT \inst4|sr_din\(14);
\inst4|ALT_INV_ep.rd0~q\ <= NOT \inst4|ep.rd0~q\;
\inst4|ALT_INV_ep.conf0~q\ <= NOT \inst4|ep.conf0~q\;
\inst4|ALT_INV_cs_cycle\(1) <= NOT \inst4|cs_cycle\(1);
\inst4|ALT_INV_cs_cycle\(2) <= NOT \inst4|cs_cycle\(2);
\inst4|ALT_INV_cs_cycle\(3) <= NOT \inst4|cs_cycle\(3);
\inst4|ALT_INV_cs_cycle\(0) <= NOT \inst4|cs_cycle\(0);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Mux39~0_combout\ <= NOT \Mux39~0_combout\;
\ALT_INV_Mux38~0_combout\ <= NOT \Mux38~0_combout\;
\ALT_INV_Mux37~0_combout\ <= NOT \Mux37~0_combout\;
\ALT_INV_Mux36~0_combout\ <= NOT \Mux36~0_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux43~1_combout\ <= NOT \Mux43~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Mux43~0_combout\ <= NOT \Mux43~0_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\inst1|ALT_INV_Selector5~0_combout\ <= NOT \inst1|Selector5~0_combout\;
\inst1|ALT_INV_ep.e4~q\ <= NOT \inst1|ep.e4~q\;
\inst1|ALT_INV_Equal3~0_combout\ <= NOT \inst1|Equal3~0_combout\;
\inst1|ALT_INV_caddr\(0) <= NOT \inst1|caddr\(0);
\inst1|ALT_INV_caddr\(1) <= NOT \inst1|caddr\(1);
\inst1|ALT_INV_caddr\(2) <= NOT \inst1|caddr\(2);
\inst1|ALT_INV_Selector3~0_combout\ <= NOT \inst1|Selector3~0_combout\;
\inst1|ALT_INV_ep.e2~q\ <= NOT \inst1|ep.e2~q\;
\inst1|ALT_INV_settmp~0_combout\ <= NOT \inst1|settmp~0_combout\;
\inst1|ALT_INV_ep.e0~q\ <= NOT \inst1|ep.e0~q\;
\inst1|ALT_INV_Equal4~0_combout\ <= NOT \inst1|Equal4~0_combout\;
\inst1|ALT_INV_ep.e5~q\ <= NOT \inst1|ep.e5~q\;
\inst3|ALT_INV_ep.e6~q\ <= NOT \inst3|ep.e6~q\;
\inst3|ALT_INV_ep.e4~q\ <= NOT \inst3|ep.e4~q\;
\inst3|ALT_INV_ep.e1~q\ <= NOT \inst3|ep.e1~q\;
\inst4|ALT_INV_clkdiv\(0) <= NOT \inst4|clkdiv\(0);
\inst4|ALT_INV_cs~combout\ <= NOT \inst4|cs~combout\;
\inst4|ALT_INV_ep.save~q\ <= NOT \inst4|ep.save~q\;
\inst4|ALT_INV_ep.rd1~q\ <= NOT \inst4|ep.rd1~q\;
\inst4|ALT_INV_ep.conf1~q\ <= NOT \inst4|ep.conf1~q\;
\inst4|ALT_INV_clkdiv\(11) <= NOT \inst4|clkdiv\(11);
\inst1|ALT_INV_cclkdiv\(1) <= NOT \inst1|cclkdiv\(1);
\inst1|ALT_INV_sdat~4_combout\ <= NOT \inst1|sdat~4_combout\;
\inst3|ALT_INV_srdato\(0) <= NOT \inst3|srdato\(0);
\inst4|ALT_INV_sr_din\(0) <= NOT \inst4|sr_din\(0);
\inst4|ALT_INV_sr_din\(3) <= NOT \inst4|sr_din\(3);
\inst4|ALT_INV_sr_din\(6) <= NOT \inst4|sr_din\(6);
\inst4|ALT_INV_sr_din\(10) <= NOT \inst4|sr_din\(10);
\inst4|ALT_INV_sr_din\(13) <= NOT \inst4|sr_din\(13);
\inst5|ALT_INV_Add0~37_sumout\ <= NOT \inst5|Add0~37_sumout\;
\inst5|ALT_INV_Add0~33_sumout\ <= NOT \inst5|Add0~33_sumout\;
\inst5|ALT_INV_Add0~29_sumout\ <= NOT \inst5|Add0~29_sumout\;
\inst5|ALT_INV_Add0~25_sumout\ <= NOT \inst5|Add0~25_sumout\;
\inst5|ALT_INV_Add0~21_sumout\ <= NOT \inst5|Add0~21_sumout\;
\inst5|ALT_INV_Add0~17_sumout\ <= NOT \inst5|Add0~17_sumout\;
\inst5|ALT_INV_Add0~13_sumout\ <= NOT \inst5|Add0~13_sumout\;
\inst5|ALT_INV_Add0~9_sumout\ <= NOT \inst5|Add0~9_sumout\;
\inst5|ALT_INV_Add0~5_sumout\ <= NOT \inst5|Add0~5_sumout\;
\inst5|ALT_INV_Add0~1_sumout\ <= NOT \inst5|Add0~1_sumout\;
ALT_INV_distortion_value(6) <= NOT distortion_value(6);
ALT_INV_distortion_value(5) <= NOT distortion_value(5);
ALT_INV_distortion_value(7) <= NOT distortion_value(7);
ALT_INV_distortion_value(0) <= NOT distortion_value(0);
ALT_INV_distortion_value(3) <= NOT distortion_value(3);
ALT_INV_distortion_value(1) <= NOT distortion_value(1);
ALT_INV_distortion_value(2) <= NOT distortion_value(2);
ALT_INV_distortion_value(4) <= NOT distortion_value(4);
ALT_INV_velocidade_value(6) <= NOT velocidade_value(6);
ALT_INV_velocidade_value(5) <= NOT velocidade_value(5);
ALT_INV_velocidade_value(7) <= NOT velocidade_value(7);
ALT_INV_velocidade_value(4) <= NOT velocidade_value(4);
ALT_INV_velocidade_value(2) <= NOT velocidade_value(2);
ALT_INV_velocidade_value(3) <= NOT velocidade_value(3);
ALT_INV_velocidade_value(0) <= NOT velocidade_value(0);
ALT_INV_velocidade_value(1) <= NOT velocidade_value(1);
ALT_INV_ataque_value(6) <= NOT ataque_value(6);
ALT_INV_ataque_value(5) <= NOT ataque_value(5);
ALT_INV_ataque_value(7) <= NOT ataque_value(7);
ALT_INV_ataque_value(4) <= NOT ataque_value(4);
ALT_INV_ataque_value(2) <= NOT ataque_value(2);
ALT_INV_ataque_value(3) <= NOT ataque_value(3);
ALT_INV_ataque_value(0) <= NOT ataque_value(0);
ALT_INV_ataque_value(1) <= NOT ataque_value(1);
ALT_INV_volume_value(6) <= NOT volume_value(6);
ALT_INV_volume_value(5) <= NOT volume_value(5);
ALT_INV_volume_value(7) <= NOT volume_value(7);
ALT_INV_volume_value(2) <= NOT volume_value(2);
ALT_INV_volume_value(3) <= NOT volume_value(3);
ALT_INV_volume_value(4) <= NOT volume_value(4);
ALT_INV_volume_value(0) <= NOT volume_value(0);
ALT_INV_volume_value(1) <= NOT volume_value(1);
\inst1|ALT_INV_ctmp\(1) <= NOT \inst1|ctmp\(1);
\inst1|ALT_INV_ctmp\(2) <= NOT \inst1|ctmp\(2);
\inst1|ALT_INV_ctmp\(3) <= NOT \inst1|ctmp\(3);
\inst1|ALT_INV_ctmp\(4) <= NOT \inst1|ctmp\(4);
\inst1|ALT_INV_ctmp\(5) <= NOT \inst1|ctmp\(5);
\inst1|ALT_INV_ctmp\(6) <= NOT \inst1|ctmp\(6);
\inst1|ALT_INV_ctmp\(0) <= NOT \inst1|ctmp\(0);
\inst1|ALT_INV_Add2~1_sumout\ <= NOT \inst1|Add2~1_sumout\;
\inst5|s1|ALT_INV_Mult0~23\ <= NOT \inst5|s1|Mult0~23\;

-- Location: IOOBUF_X89_Y16_N39
\AUD_XCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cclkdiv\(1),
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X89_Y15_N39
\AUD_DACDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|srdato\(16),
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X89_Y13_N22
\FPGA_I2C_SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ctmp\(7),
	devoe => ww_devoe,
	o => ww_FPGA_I2C_SCLK);

-- Location: IOOBUF_X89_Y11_N45
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X89_Y9_N22
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X86_Y0_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X88_Y0_N37
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X78_Y0_N36
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X86_Y0_N36
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X88_Y0_N54
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X74_Y0_N59
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y9_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X86_Y0_N2
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y15_N22
\ADC_SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|clkdiv\(11),
	devoe => ww_devoe,
	o => ww_ADC_SCLK);

-- Location: IOOBUF_X89_Y6_N22
\ADC_CS_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_cs~combout\,
	devoe => ww_devoe,
	o => ww_ADC_CS_N);

-- Location: IOOBUF_X89_Y8_N22
\ADC_DIN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sr_din\(15),
	devoe => ww_devoe,
	o => ww_ADC_DIN);

-- Location: IOOBUF_X56_Y0_N53
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X58_Y0_N76
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X56_Y0_N36
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N76
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X50_Y0_N93
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X80_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X60_Y0_N2
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X50_Y0_N42
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X66_Y0_N42
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X64_Y0_N19
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X52_Y0_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X52_Y0_N2
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X52_Y0_N53
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X52_Y0_N19
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X50_Y0_N59
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X72_Y0_N2
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X68_Y0_N2
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X68_Y0_N19
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X56_Y0_N19
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X88_Y0_N3
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X82_Y0_N42
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X72_Y0_N19
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X76_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X84_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X76_Y0_N19
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X80_Y0_N19
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X84_Y0_N2
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X66_Y0_N93
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X74_Y0_N42
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X64_Y0_N36
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y0_N2
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X66_Y0_N76
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X82_Y0_N59
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X88_Y0_N20
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X62_Y0_N2
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X66_Y0_N59
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X62_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X70_Y0_N2
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X54_Y0_N2
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X70_Y0_N19
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y13_N5
\FPGA_I2C_SDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sdat~q\,
	oe => \inst1|setbitz~combout\,
	devoe => ww_devoe,
	o => FPGA_I2C_SDAT);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G5
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X87_Y12_N0
\inst1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~9_sumout\ = SUM(( \inst1|ctmp\(0) ) + ( VCC ) + ( !VCC ))
-- \inst1|Add2~10\ = CARRY(( \inst1|ctmp\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_ctmp\(0),
	cin => GND,
	sumout => \inst1|Add2~9_sumout\,
	cout => \inst1|Add2~10\);

-- Location: LABCELL_X88_Y12_N12
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: MLABCELL_X87_Y12_N12
\inst1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~17_sumout\ = SUM(( \inst1|ctmp\(4) ) + ( GND ) + ( \inst1|Add2~22\ ))
-- \inst1|Add2~18\ = CARRY(( \inst1|ctmp\(4) ) + ( GND ) + ( \inst1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_ctmp\(4),
	cin => \inst1|Add2~22\,
	sumout => \inst1|Add2~17_sumout\,
	cout => \inst1|Add2~18\);

-- Location: MLABCELL_X87_Y12_N15
\inst1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~13_sumout\ = SUM(( \inst1|ctmp\(5) ) + ( GND ) + ( \inst1|Add2~18\ ))
-- \inst1|Add2~14\ = CARRY(( \inst1|ctmp\(5) ) + ( GND ) + ( \inst1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_ctmp\(5),
	cin => \inst1|Add2~18\,
	sumout => \inst1|Add2~13_sumout\,
	cout => \inst1|Add2~14\);

-- Location: IOIBUF_X89_Y13_N4
\FPGA_I2C_SDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FPGA_I2C_SDAT,
	o => \FPGA_I2C_SDAT~input_o\);

-- Location: LABCELL_X85_Y12_N36
\inst1|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~1_combout\ = ( \inst1|ep.e3~q\ & ( \inst1|Equal4~0_combout\ & ( (!\inst1|ctmp\(7)) # (!\inst1|ctmp\(0)) ) ) ) # ( !\inst1|ep.e3~q\ & ( \inst1|Equal4~0_combout\ & ( (!\inst1|ctmp\(7) & (!\FPGA_I2C_SDAT~input_o\ & (\inst1|ep.e2~q\ & 
-- \inst1|ctmp\(0)))) ) ) ) # ( \inst1|ep.e3~q\ & ( !\inst1|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(7),
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_ep.e2~q\,
	datad => \inst1|ALT_INV_ctmp\(0),
	datae => \inst1|ALT_INV_ep.e3~q\,
	dataf => \inst1|ALT_INV_Equal4~0_combout\,
	combout => \inst1|Selector3~1_combout\);

-- Location: FF_X85_Y12_N38
\inst1|ep.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e3~q\);

-- Location: LABCELL_X85_Y12_N24
\inst1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = ( \inst1|ctmp\(7) & ( (\inst1|Equal4~0_combout\ & \inst1|ctmp\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Equal4~0_combout\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|Equal5~0_combout\);

-- Location: LABCELL_X85_Y12_N30
\inst1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = ( \inst1|ep.e0~q\ & ( \inst1|Selector3~0_combout\ & ( (!\FPGA_I2C_SDAT~input_o\ & (((!\inst1|Equal5~0_combout\) # (!\inst1|ep.e4~q\)) # (\inst1|Equal3~0_combout\))) ) ) ) # ( !\inst1|ep.e0~q\ & ( \inst1|Selector3~0_combout\ & 
-- ( (!\FPGA_I2C_SDAT~input_o\ & (\inst1|Equal5~0_combout\ & ((!\inst1|ep.e4~q\) # (\inst1|Equal3~0_combout\)))) ) ) ) # ( \inst1|ep.e0~q\ & ( !\inst1|Selector3~0_combout\ & ( ((!\inst1|Equal5~0_combout\) # (!\inst1|ep.e4~q\)) # (\inst1|Equal3~0_combout\) ) 
-- ) ) # ( !\inst1|ep.e0~q\ & ( !\inst1|Selector3~0_combout\ & ( (\inst1|Equal5~0_combout\ & ((!\inst1|ep.e4~q\) # (\inst1|Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101111111111111010100001100000001001100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal3~0_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_Equal5~0_combout\,
	datad => \inst1|ALT_INV_ep.e4~q\,
	datae => \inst1|ALT_INV_ep.e0~q\,
	dataf => \inst1|ALT_INV_Selector3~0_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X85_Y12_N32
\inst1|ep.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e0~q\);

-- Location: MLABCELL_X84_Y12_N27
\inst1|cbits[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[0]~3_combout\ = ( \inst1|Selector0~1_combout\ & ( (\inst1|incbits~1_combout\ & !\inst1|cbits\(0)) ) ) # ( !\inst1|Selector0~1_combout\ & ( (!\inst1|incbits~1_combout\ & (\inst1|cbits\(0) & ((!\FPGA_I2C_SDAT~input_o\) # 
-- (!\inst1|Selector3~0_combout\)))) # (\inst1|incbits~1_combout\ & (((!\inst1|cbits\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111100000000011111110000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datab => \inst1|ALT_INV_Selector3~0_combout\,
	datac => \inst1|ALT_INV_incbits~1_combout\,
	datad => \inst1|ALT_INV_cbits\(0),
	dataf => \inst1|ALT_INV_Selector0~1_combout\,
	combout => \inst1|cbits[0]~3_combout\);

-- Location: FF_X84_Y12_N29
\inst1|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(0));

-- Location: LABCELL_X88_Y12_N6
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = ( \inst1|cbits\(1) & ( \inst1|cbits\(0) & ( \inst1|cbits\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_cbits\(2),
	datae => \inst1|ALT_INV_cbits\(1),
	dataf => \inst1|ALT_INV_cbits\(0),
	combout => \inst1|Add0~1_combout\);

-- Location: LABCELL_X88_Y12_N30
\inst1|cbits[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[3]~1_combout\ = ( \inst1|cbits\(3) & ( \inst1|Selector0~1_combout\ & ( (\inst1|incbits~1_combout\ & !\inst1|Add0~1_combout\) ) ) ) # ( !\inst1|cbits\(3) & ( \inst1|Selector0~1_combout\ & ( (\inst1|incbits~1_combout\ & \inst1|Add0~1_combout\) 
-- ) ) ) # ( \inst1|cbits\(3) & ( !\inst1|Selector0~1_combout\ & ( (!\inst1|incbits~1_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # ((!\inst1|Selector3~0_combout\)))) # (\inst1|incbits~1_combout\ & (((!\inst1|Add0~1_combout\)))) ) ) ) # ( !\inst1|cbits\(3) & ( 
-- !\inst1|Selector0~1_combout\ & ( (\inst1|incbits~1_combout\ & \inst1|Add0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111011111110000000000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datab => \inst1|ALT_INV_Selector3~0_combout\,
	datac => \inst1|ALT_INV_incbits~1_combout\,
	datad => \inst1|ALT_INV_Add0~1_combout\,
	datae => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_Selector0~1_combout\,
	combout => \inst1|cbits[3]~1_combout\);

-- Location: FF_X88_Y12_N32
\inst1|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(3));

-- Location: LABCELL_X85_Y12_N42
\inst1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = ( !\inst1|cbits\(1) & ( (\inst1|cbits\(4) & (!\inst1|cbits\(0) & (!\inst1|cbits\(2) & \inst1|cbits\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(4),
	datab => \inst1|ALT_INV_cbits\(0),
	datac => \inst1|ALT_INV_cbits\(2),
	datad => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(1),
	combout => \inst1|Equal2~0_combout\);

-- Location: LABCELL_X85_Y12_N18
\inst1|incbits~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|incbits~0_combout\ = ( \inst1|cbits\(3) & ( \inst1|cbits\(2) & ( \inst1|ep.e1~q\ ) ) ) # ( !\inst1|cbits\(3) & ( \inst1|cbits\(2) & ( \inst1|ep.e1~q\ ) ) ) # ( \inst1|cbits\(3) & ( !\inst1|cbits\(2) & ( (\inst1|ep.e1~q\ & ((\inst1|cbits\(0)) # 
-- (\inst1|cbits\(1)))) ) ) ) # ( !\inst1|cbits\(3) & ( !\inst1|cbits\(2) & ( (\inst1|ep.e1~q\ & (((!\inst1|cbits\(4)) # (\inst1|cbits\(0))) # (\inst1|cbits\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010101000100010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e1~q\,
	datab => \inst1|ALT_INV_cbits\(1),
	datac => \inst1|ALT_INV_cbits\(4),
	datad => \inst1|ALT_INV_cbits\(0),
	datae => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(2),
	combout => \inst1|incbits~0_combout\);

-- Location: LABCELL_X85_Y12_N54
\inst1|incbits~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|incbits~1_combout\ = ( \inst1|ep.e3~q\ & ( \inst1|ctmp\(7) & ( (\inst1|Equal4~0_combout\ & (\inst1|ctmp\(0) & ((!\inst1|Equal2~0_combout\) # (\inst1|incbits~0_combout\)))) ) ) ) # ( !\inst1|ep.e3~q\ & ( \inst1|ctmp\(7) & ( (\inst1|Equal4~0_combout\ 
-- & (\inst1|incbits~0_combout\ & \inst1|ctmp\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_Equal2~0_combout\,
	datac => \inst1|ALT_INV_incbits~0_combout\,
	datad => \inst1|ALT_INV_ctmp\(0),
	datae => \inst1|ALT_INV_ep.e3~q\,
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|incbits~1_combout\);

-- Location: MLABCELL_X84_Y12_N6
\inst1|cbits[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[1]~2_combout\ = ( \inst1|cbits\(1) & ( \inst1|cbits\(0) & ( (!\inst1|Selector0~1_combout\ & (!\inst1|incbits~1_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\)))) ) ) ) # ( !\inst1|cbits\(1) & ( \inst1|cbits\(0) & ( 
-- \inst1|incbits~1_combout\ ) ) ) # ( \inst1|cbits\(1) & ( !\inst1|cbits\(0) & ( ((!\inst1|Selector0~1_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\)))) # (\inst1|incbits~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010001111111100000000111111111010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector0~1_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_Selector3~0_combout\,
	datad => \inst1|ALT_INV_incbits~1_combout\,
	datae => \inst1|ALT_INV_cbits\(1),
	dataf => \inst1|ALT_INV_cbits\(0),
	combout => \inst1|cbits[1]~2_combout\);

-- Location: FF_X84_Y12_N8
\inst1|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(1));

-- Location: MLABCELL_X84_Y12_N36
\inst1|cbits[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[2]~4_combout\ = ( !\inst1|incbits~1_combout\ & ( (!\inst1|Selector0~1_combout\ & (((\inst1|cbits\(2) & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))))) ) ) # ( \inst1|incbits~1_combout\ & ( ((!\inst1|cbits\(2) $ 
-- (((!\inst1|cbits\(1)) # (!\inst1|cbits\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000111110101000101010001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector0~1_combout\,
	datab => \inst1|ALT_INV_Selector3~0_combout\,
	datac => \inst1|ALT_INV_cbits\(1),
	datad => \inst1|ALT_INV_cbits\(0),
	datae => \inst1|ALT_INV_incbits~1_combout\,
	dataf => \inst1|ALT_INV_cbits\(2),
	datag => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	combout => \inst1|cbits[2]~4_combout\);

-- Location: FF_X84_Y12_N38
\inst1|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(2));

-- Location: LABCELL_X85_Y12_N27
\inst1|stop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|stop~0_combout\ = ( !\inst1|cbits\(0) & ( (!\inst1|cbits\(2) & (!\inst1|cbits\(1) & ((\inst1|cbits\(4)) # (\inst1|cbits\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(2),
	datab => \inst1|ALT_INV_cbits\(1),
	datac => \inst1|ALT_INV_cbits\(3),
	datad => \inst1|ALT_INV_cbits\(4),
	dataf => \inst1|ALT_INV_cbits\(0),
	combout => \inst1|stop~0_combout\);

-- Location: LABCELL_X85_Y12_N0
\inst1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = ( \inst1|ep.e1~q\ & ( \inst1|Equal5~0_combout\ & ( (!\inst1|ep.e0~q\) # ((!\inst1|stop~0_combout\) # ((\inst1|ep.e3~q\ & !\inst1|Equal2~0_combout\))) ) ) ) # ( !\inst1|ep.e1~q\ & ( \inst1|Equal5~0_combout\ & ( 
-- (!\inst1|ep.e0~q\) # ((\inst1|ep.e3~q\ & !\inst1|Equal2~0_combout\)) ) ) ) # ( \inst1|ep.e1~q\ & ( !\inst1|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111011101110011001111110111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e3~q\,
	datab => \inst1|ALT_INV_ep.e0~q\,
	datac => \inst1|ALT_INV_stop~0_combout\,
	datad => \inst1|ALT_INV_Equal2~0_combout\,
	datae => \inst1|ALT_INV_ep.e1~q\,
	dataf => \inst1|ALT_INV_Equal5~0_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X85_Y12_N2
\inst1|ep.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e1~q\);

-- Location: LABCELL_X85_Y12_N6
\inst1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = ( \inst1|ep.e2~q\ & ( \inst1|ctmp\(7) ) ) # ( !\inst1|ep.e2~q\ & ( \inst1|ctmp\(7) & ( (\inst1|ep.e1~q\ & (\inst1|ctmp\(0) & (\inst1|Equal4~0_combout\ & \inst1|stop~0_combout\))) ) ) ) # ( \inst1|ep.e2~q\ & ( !\inst1|ctmp\(7) 
-- & ( (!\inst1|ctmp\(0)) # (!\inst1|Equal4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e1~q\,
	datab => \inst1|ALT_INV_ctmp\(0),
	datac => \inst1|ALT_INV_Equal4~0_combout\,
	datad => \inst1|ALT_INV_stop~0_combout\,
	datae => \inst1|ALT_INV_ep.e2~q\,
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X85_Y12_N7
\inst1|ep.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e2~q\);

-- Location: LABCELL_X85_Y12_N12
\inst1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = ( !\inst1|ctmp\(7) & ( (\inst1|Equal4~0_combout\ & (\inst1|ctmp\(0) & \inst1|ep.e2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(0),
	datad => \inst1|ALT_INV_ep.e2~q\,
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|Selector3~0_combout\);

-- Location: MLABCELL_X84_Y12_N24
\inst1|caddr[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|caddr[0]~2_combout\ = ( \inst1|Selector5~0_combout\ & ( (!\inst1|caddr\(0)) # ((\inst1|Equal3~0_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\)))) ) ) # ( !\inst1|Selector5~0_combout\ & ( (\inst1|caddr\(0) & 
-- ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111011111111000011101111111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datab => \inst1|ALT_INV_Selector3~0_combout\,
	datac => \inst1|ALT_INV_Equal3~0_combout\,
	datad => \inst1|ALT_INV_caddr\(0),
	dataf => \inst1|ALT_INV_Selector5~0_combout\,
	combout => \inst1|caddr[0]~2_combout\);

-- Location: FF_X84_Y12_N26
\inst1|caddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|caddr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|caddr\(0));

-- Location: MLABCELL_X84_Y12_N42
\inst1|caddr[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|caddr[2]~0_combout\ = ( \inst1|caddr\(2) & ( \inst1|Selector3~0_combout\ & ( (!\FPGA_I2C_SDAT~input_o\) # ((\inst1|Selector5~0_combout\ & ((!\inst1|caddr\(1)) # (!\inst1|caddr\(0))))) ) ) ) # ( !\inst1|caddr\(2) & ( \inst1|Selector3~0_combout\ & ( 
-- (\inst1|caddr\(1) & (\inst1|Selector5~0_combout\ & \inst1|caddr\(0))) ) ) ) # ( \inst1|caddr\(2) & ( !\inst1|Selector3~0_combout\ ) ) # ( !\inst1|caddr\(2) & ( !\inst1|Selector3~0_combout\ & ( (\inst1|caddr\(1) & (\inst1|Selector5~0_combout\ & 
-- \inst1|caddr\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111111111111100000000000001011100111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(1),
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_caddr\(0),
	datae => \inst1|ALT_INV_caddr\(2),
	dataf => \inst1|ALT_INV_Selector3~0_combout\,
	combout => \inst1|caddr[2]~0_combout\);

-- Location: FF_X84_Y12_N44
\inst1|caddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|caddr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|caddr\(2));

-- Location: MLABCELL_X84_Y12_N48
\inst1|caddr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|caddr[1]~1_combout\ = ( \inst1|caddr\(1) & ( \inst1|Selector3~0_combout\ & ( (!\inst1|Selector5~0_combout\ & (((!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|Selector5~0_combout\ & ((!\inst1|caddr\(0)) # ((\inst1|caddr\(2) & !\FPGA_I2C_SDAT~input_o\)))) ) 
-- ) ) # ( !\inst1|caddr\(1) & ( \inst1|Selector3~0_combout\ & ( (\inst1|caddr\(0) & \inst1|Selector5~0_combout\) ) ) ) # ( \inst1|caddr\(1) & ( !\inst1|Selector3~0_combout\ & ( (!\inst1|caddr\(0)) # ((!\inst1|Selector5~0_combout\) # (\inst1|caddr\(2))) ) ) 
-- ) # ( !\inst1|caddr\(1) & ( !\inst1|Selector3~0_combout\ & ( (\inst1|caddr\(0) & \inst1|Selector5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110111111101100000101000001011111101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(0),
	datab => \inst1|ALT_INV_caddr\(2),
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datae => \inst1|ALT_INV_caddr\(1),
	dataf => \inst1|ALT_INV_Selector3~0_combout\,
	combout => \inst1|caddr[1]~1_combout\);

-- Location: FF_X84_Y12_N50
\inst1|caddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|caddr[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|caddr\(1));

-- Location: MLABCELL_X84_Y12_N3
\inst1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (\inst1|caddr\(1) & (\inst1|caddr\(2) & \inst1|caddr\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(1),
	datac => \inst1|ALT_INV_caddr\(2),
	datad => \inst1|ALT_INV_caddr\(0),
	combout => \inst1|Equal3~0_combout\);

-- Location: MLABCELL_X87_Y12_N30
\inst1|ep.e5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ep.e5~0_combout\ = ( \inst1|ep.e5~q\ & ( \inst1|ep.e4~q\ ) ) # ( !\inst1|ep.e5~q\ & ( \inst1|ep.e4~q\ & ( (\inst1|ctmp\(7) & (\inst1|Equal4~0_combout\ & (\inst1|ctmp\(0) & \inst1|Equal3~0_combout\))) ) ) ) # ( \inst1|ep.e5~q\ & ( !\inst1|ep.e4~q\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(7),
	datab => \inst1|ALT_INV_Equal4~0_combout\,
	datac => \inst1|ALT_INV_ctmp\(0),
	datad => \inst1|ALT_INV_Equal3~0_combout\,
	datae => \inst1|ALT_INV_ep.e5~q\,
	dataf => \inst1|ALT_INV_ep.e4~q\,
	combout => \inst1|ep.e5~0_combout\);

-- Location: FF_X87_Y12_N32
\inst1|ep.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|ep.e5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e5~q\);

-- Location: FF_X87_Y12_N16
\inst1|ctmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~13_sumout\,
	asdata => \~GND~combout\,
	sload => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(5));

-- Location: MLABCELL_X87_Y12_N18
\inst1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~5_sumout\ = SUM(( \inst1|ctmp\(6) ) + ( GND ) + ( \inst1|Add2~14\ ))
-- \inst1|Add2~6\ = CARRY(( \inst1|ctmp\(6) ) + ( GND ) + ( \inst1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_ctmp\(6),
	cin => \inst1|Add2~14\,
	sumout => \inst1|Add2~5_sumout\,
	cout => \inst1|Add2~6\);

-- Location: FF_X87_Y12_N20
\inst1|ctmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~5_sumout\,
	asdata => \~GND~combout\,
	sload => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(6));

-- Location: MLABCELL_X87_Y12_N21
\inst1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~1_sumout\ = SUM(( \inst1|ctmp\(7) ) + ( GND ) + ( \inst1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(7),
	cin => \inst1|Add2~6\,
	sumout => \inst1|Add2~1_sumout\);

-- Location: MLABCELL_X87_Y12_N24
\inst1|ctmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ctmp~0_combout\ = ( \inst1|ep.e5~q\ & ( \inst1|ctmp\(7) ) ) # ( !\inst1|ep.e5~q\ & ( \inst1|Add2~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Add2~1_sumout\,
	datad => \inst1|ALT_INV_ctmp\(7),
	dataf => \inst1|ALT_INV_ep.e5~q\,
	combout => \inst1|ctmp~0_combout\);

-- Location: FF_X87_Y12_N26
\inst1|ctmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|ctmp~0_combout\,
	asdata => VCC,
	sload => \inst1|settmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(7));

-- Location: MLABCELL_X87_Y12_N51
\inst1|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = ( \inst1|ctmp\(7) & ( (\inst1|ep.e4~q\ & (\inst1|Equal4~0_combout\ & \inst1|ctmp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e4~q\,
	datac => \inst1|ALT_INV_Equal4~0_combout\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|Selector5~0_combout\);

-- Location: MLABCELL_X87_Y12_N42
\inst1|settmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|settmp~0_combout\ = ( \inst1|ctmp\(7) & ( (\inst1|Equal4~0_combout\ & (!\inst1|ep.e0~q\ & \inst1|ctmp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_Equal4~0_combout\,
	datac => \inst1|ALT_INV_ep.e0~q\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|settmp~0_combout\);

-- Location: MLABCELL_X87_Y12_N27
\inst1|settmp\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|settmp~combout\ = ( \inst1|Selector3~0_combout\ & ( (((\inst1|Selector5~0_combout\ & !\inst1|Equal3~0_combout\)) # (\FPGA_I2C_SDAT~input_o\)) # (\inst1|settmp~0_combout\) ) ) # ( !\inst1|Selector3~0_combout\ & ( ((\inst1|Selector5~0_combout\ & 
-- !\inst1|Equal3~0_combout\)) # (\inst1|settmp~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_Equal3~0_combout\,
	datac => \inst1|ALT_INV_settmp~0_combout\,
	datad => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	dataf => \inst1|ALT_INV_Selector3~0_combout\,
	combout => \inst1|settmp~combout\);

-- Location: FF_X87_Y12_N2
\inst1|ctmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~9_sumout\,
	asdata => \~GND~combout\,
	sload => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(0));

-- Location: MLABCELL_X87_Y12_N3
\inst1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~29_sumout\ = SUM(( \inst1|ctmp\(1) ) + ( GND ) + ( \inst1|Add2~10\ ))
-- \inst1|Add2~30\ = CARRY(( \inst1|ctmp\(1) ) + ( GND ) + ( \inst1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_ctmp\(1),
	cin => \inst1|Add2~10\,
	sumout => \inst1|Add2~29_sumout\,
	cout => \inst1|Add2~30\);

-- Location: FF_X87_Y12_N4
\inst1|ctmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~29_sumout\,
	asdata => \~GND~combout\,
	sload => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(1));

-- Location: MLABCELL_X87_Y12_N6
\inst1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~25_sumout\ = SUM(( \inst1|ctmp\(2) ) + ( GND ) + ( \inst1|Add2~30\ ))
-- \inst1|Add2~26\ = CARRY(( \inst1|ctmp\(2) ) + ( GND ) + ( \inst1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_ctmp\(2),
	cin => \inst1|Add2~30\,
	sumout => \inst1|Add2~25_sumout\,
	cout => \inst1|Add2~26\);

-- Location: FF_X87_Y12_N8
\inst1|ctmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~25_sumout\,
	asdata => \~GND~combout\,
	sload => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(2));

-- Location: MLABCELL_X87_Y12_N9
\inst1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~21_sumout\ = SUM(( \inst1|ctmp\(3) ) + ( GND ) + ( \inst1|Add2~26\ ))
-- \inst1|Add2~22\ = CARRY(( \inst1|ctmp\(3) ) + ( GND ) + ( \inst1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_ctmp\(3),
	cin => \inst1|Add2~26\,
	sumout => \inst1|Add2~21_sumout\,
	cout => \inst1|Add2~22\);

-- Location: FF_X87_Y12_N10
\inst1|ctmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~21_sumout\,
	asdata => \~GND~combout\,
	sload => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(3));

-- Location: FF_X87_Y12_N14
\inst1|ctmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~17_sumout\,
	asdata => \~GND~combout\,
	sload => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(4));

-- Location: MLABCELL_X87_Y12_N36
\inst1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = ( \inst1|ctmp\(3) & ( \inst1|ctmp\(5) & ( (\inst1|ctmp\(4) & (\inst1|ctmp\(6) & (\inst1|ctmp\(1) & \inst1|ctmp\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(4),
	datab => \inst1|ALT_INV_ctmp\(6),
	datac => \inst1|ALT_INV_ctmp\(1),
	datad => \inst1|ALT_INV_ctmp\(2),
	datae => \inst1|ALT_INV_ctmp\(3),
	dataf => \inst1|ALT_INV_ctmp\(5),
	combout => \inst1|Equal4~0_combout\);

-- Location: LABCELL_X85_Y12_N48
\inst1|ep.e4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ep.e4~0_combout\ = ( \inst1|ep.e4~q\ & ( \inst1|ctmp\(7) & ( (!\inst1|Equal4~0_combout\) # ((!\inst1|ctmp\(0)) # ((\inst1|Equal2~0_combout\ & \inst1|ep.e3~q\))) ) ) ) # ( !\inst1|ep.e4~q\ & ( \inst1|ctmp\(7) & ( (\inst1|Equal4~0_combout\ & 
-- (\inst1|Equal2~0_combout\ & (\inst1|ep.e3~q\ & \inst1|ctmp\(0)))) ) ) ) # ( \inst1|ep.e4~q\ & ( !\inst1|ctmp\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_Equal2~0_combout\,
	datac => \inst1|ALT_INV_ep.e3~q\,
	datad => \inst1|ALT_INV_ctmp\(0),
	datae => \inst1|ALT_INV_ep.e4~q\,
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|ep.e4~0_combout\);

-- Location: FF_X85_Y12_N49
\inst1|ep.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|ep.e4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e4~q\);

-- Location: MLABCELL_X87_Y12_N48
\inst1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = ( \inst1|ctmp\(7) & ( (\inst1|ep.e4~q\ & (\inst1|Equal4~0_combout\ & (!\inst1|Equal3~0_combout\ & \inst1|ctmp\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e4~q\,
	datab => \inst1|ALT_INV_Equal4~0_combout\,
	datac => \inst1|ALT_INV_Equal3~0_combout\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|Selector0~1_combout\);

-- Location: MLABCELL_X84_Y12_N15
\inst1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = ( \inst1|cbits\(2) & ( (\inst1|cbits\(0) & (\inst1|cbits\(1) & \inst1|cbits\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(1),
	datac => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(2),
	combout => \inst1|Add0~0_combout\);

-- Location: MLABCELL_X84_Y12_N9
\inst1|cbits[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[4]~0_combout\ = ( \inst1|cbits\(4) & ( \inst1|Add0~0_combout\ & ( (!\inst1|Selector0~1_combout\ & (!\inst1|incbits~1_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\)))) ) ) ) # ( !\inst1|cbits\(4) & ( 
-- \inst1|Add0~0_combout\ & ( \inst1|incbits~1_combout\ ) ) ) # ( \inst1|cbits\(4) & ( !\inst1|Add0~0_combout\ & ( ((!\inst1|Selector0~1_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\)))) # (\inst1|incbits~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111000111100001111000011111010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector0~1_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_incbits~1_combout\,
	datad => \inst1|ALT_INV_Selector3~0_combout\,
	datae => \inst1|ALT_INV_cbits\(4),
	dataf => \inst1|ALT_INV_Add0~0_combout\,
	combout => \inst1|cbits[4]~0_combout\);

-- Location: FF_X84_Y12_N11
\inst1|cbits[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(4));

-- Location: MLABCELL_X84_Y12_N54
\inst1|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~1_combout\ = ( \inst1|cbits\(0) & ( \inst1|caddr\(1) & ( (\inst1|cbits\(1) & (\inst1|caddr\(0) & (!\inst1|caddr\(2) $ (\inst1|cbits\(2))))) ) ) ) # ( \inst1|cbits\(0) & ( !\inst1|caddr\(1) & ( (!\inst1|caddr\(2) & (\inst1|caddr\(0) & 
-- (!\inst1|cbits\(1) $ (\inst1|cbits\(2))))) # (\inst1|caddr\(2) & ((!\inst1|caddr\(0) $ (\inst1|cbits\(2))) # (\inst1|cbits\(1)))) ) ) ) # ( !\inst1|cbits\(0) & ( !\inst1|caddr\(1) & ( (\inst1|caddr\(2) & ((!\inst1|cbits\(1) & (!\inst1|caddr\(0) & 
-- \inst1|cbits\(2))) # (\inst1|cbits\(1) & (!\inst1|caddr\(0) $ (\inst1|cbits\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100001001110010001011100000000000000000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(1),
	datab => \inst1|ALT_INV_caddr\(2),
	datac => \inst1|ALT_INV_caddr\(0),
	datad => \inst1|ALT_INV_cbits\(2),
	datae => \inst1|ALT_INV_cbits\(0),
	dataf => \inst1|ALT_INV_caddr\(1),
	combout => \inst1|Mux12~1_combout\);

-- Location: MLABCELL_X84_Y12_N0
\inst1|sdat~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~2_combout\ = (\inst1|cbits\(4) & (\inst1|Mux12~1_combout\ & !\inst1|cbits\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_cbits\(4),
	datac => \inst1|ALT_INV_Mux12~1_combout\,
	datad => \inst1|ALT_INV_cbits\(3),
	combout => \inst1|sdat~2_combout\);

-- Location: MLABCELL_X87_Y12_N45
\inst1|sdat~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~0_combout\ = ( \inst1|ep.e4~q\ & ( (!\inst1|sdat~q\ & ((!\inst1|ctmp\(0)) # ((!\inst1|Equal4~0_combout\) # (!\inst1|ctmp\(7))))) ) ) # ( !\inst1|ep.e4~q\ & ( !\inst1|sdat~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(0),
	datab => \inst1|ALT_INV_Equal4~0_combout\,
	datac => \inst1|ALT_INV_ctmp\(7),
	datad => \inst1|ALT_INV_sdat~q\,
	dataf => \inst1|ALT_INV_ep.e4~q\,
	combout => \inst1|sdat~0_combout\);

-- Location: MLABCELL_X84_Y12_N12
\inst1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = ( \inst1|caddr\(1) & ( (!\inst1|cbits\(0) & (!\inst1|caddr\(2) $ (((!\inst1|caddr\(0)) # (\inst1|cbits\(1)))))) ) ) # ( !\inst1|caddr\(1) & ( (!\inst1|caddr\(0) & ((!\inst1|caddr\(2) & ((!\inst1|cbits\(1)))) # (\inst1|caddr\(2) & 
-- (\inst1|cbits\(0))))) # (\inst1|caddr\(0) & (!\inst1|caddr\(2) $ (((\inst1|cbits\(0) & \inst1|cbits\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111001010001110011100101000100001000101000100000100010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(1),
	datac => \inst1|ALT_INV_caddr\(0),
	datad => \inst1|ALT_INV_caddr\(2),
	dataf => \inst1|ALT_INV_caddr\(1),
	combout => \inst1|Mux12~0_combout\);

-- Location: MLABCELL_X84_Y12_N18
\inst1|sdat~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~1_combout\ = ( \inst1|cbits\(0) & ( \inst1|caddr\(1) & ( (\inst1|cbits\(1) & (!\inst1|cbits\(2) & (!\inst1|caddr\(0) $ (\inst1|caddr\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(0),
	datab => \inst1|ALT_INV_cbits\(1),
	datac => \inst1|ALT_INV_cbits\(2),
	datad => \inst1|ALT_INV_caddr\(2),
	datae => \inst1|ALT_INV_cbits\(0),
	dataf => \inst1|ALT_INV_caddr\(1),
	combout => \inst1|sdat~1_combout\);

-- Location: MLABCELL_X84_Y12_N30
\inst1|sdat~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~4_combout\ = ( !\inst1|cbits\(3) & ( (!\inst1|cbits\(4) & ((!\inst1|cbits\(2) & (((\inst1|cbits\(1))))) # (\inst1|cbits\(2) & (\inst1|cbits\(0) & (!\inst1|cbits\(1)))))) ) ) # ( \inst1|cbits\(3) & ( ((!\inst1|cbits\(4) & (((\inst1|cbits\(2) & 
-- \inst1|Mux12~0_combout\)) # (\inst1|sdat~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101000000000000001010000000000011010000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(2),
	datab => \inst1|ALT_INV_cbits\(0),
	datac => \inst1|ALT_INV_Mux12~0_combout\,
	datad => \inst1|ALT_INV_cbits\(4),
	datae => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_sdat~1_combout\,
	datag => \inst1|ALT_INV_cbits\(1),
	combout => \inst1|sdat~4_combout\);

-- Location: LABCELL_X85_Y12_N15
\inst1|ep.e4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ep.e4~1_combout\ = ( \inst1|ctmp\(7) & ( (\inst1|Equal4~0_combout\ & (\inst1|ctmp\(0) & (\inst1|Equal2~0_combout\ & \inst1|ep.e3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(0),
	datac => \inst1|ALT_INV_Equal2~0_combout\,
	datad => \inst1|ALT_INV_ep.e3~q\,
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|ep.e4~1_combout\);

-- Location: MLABCELL_X87_Y12_N54
\inst1|sdat~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~3_combout\ = ( \inst1|incbits~1_combout\ & ( \inst1|ep.e4~1_combout\ & ( (\inst1|sdat~4_combout\) # (\inst1|sdat~2_combout\) ) ) ) # ( \inst1|incbits~1_combout\ & ( !\inst1|ep.e4~1_combout\ & ( (\inst1|sdat~4_combout\) # 
-- (\inst1|sdat~2_combout\) ) ) ) # ( !\inst1|incbits~1_combout\ & ( !\inst1|ep.e4~1_combout\ & ( (!\inst1|settmp~0_combout\ & !\inst1|sdat~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000010101011111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_sdat~2_combout\,
	datab => \inst1|ALT_INV_settmp~0_combout\,
	datac => \inst1|ALT_INV_sdat~0_combout\,
	datad => \inst1|ALT_INV_sdat~4_combout\,
	datae => \inst1|ALT_INV_incbits~1_combout\,
	dataf => \inst1|ALT_INV_ep.e4~1_combout\,
	combout => \inst1|sdat~3_combout\);

-- Location: FF_X87_Y12_N55
\inst1|sdat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|sdat~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sdat~q\);

-- Location: FF_X85_Y12_N8
\inst1|ep.e2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e2~DUPLICATE_q\);

-- Location: LABCELL_X85_Y12_N45
\inst1|setbitz\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|setbitz~combout\ = ( !\inst1|ep.e2~DUPLICATE_q\ & ( !\inst1|ep.e3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_ep.e3~q\,
	dataf => \inst1|ALT_INV_ep.e2~DUPLICATE_q\,
	combout => \inst1|setbitz~combout\);

-- Location: LABCELL_X85_Y11_N54
\inst4|clkdiv[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[0]~0_combout\ = !\inst4|clkdiv\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_clkdiv\(0),
	combout => \inst4|clkdiv[0]~0_combout\);

-- Location: FF_X85_Y11_N55
\inst4|clkdiv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|clkdiv[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(0));

-- Location: LABCELL_X85_Y11_N45
\inst1|cclkdiv[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cclkdiv[1]~0_combout\ = ( \inst1|cclkdiv\(1) & ( !\inst4|clkdiv\(0) ) ) # ( !\inst1|cclkdiv\(1) & ( \inst4|clkdiv\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clkdiv\(0),
	dataf => \inst1|ALT_INV_cclkdiv\(1),
	combout => \inst1|cclkdiv[1]~0_combout\);

-- Location: FF_X85_Y11_N32
\inst1|cclkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst1|cclkdiv[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cclkdiv\(1));

-- Location: IOIBUF_X36_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: CLKCTRL_G6
\KEY[3]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[3]~input_o\,
	outclk => \KEY[3]~inputCLKENA0_outclk\);

-- Location: MLABCELL_X87_Y6_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( volume_value(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~6\ = CARRY(( volume_value(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_volume_value(0),
	cin => GND,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X87_Y6_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( volume_value(1) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( volume_value(1) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_volume_value(1),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X87_Y6_N35
\volume_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => volume_value(1));

-- Location: MLABCELL_X87_Y6_N36
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( volume_value(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~18\ = CARRY(( volume_value(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_volume_value(2),
	cin => \Add0~2\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X87_Y6_N38
\volume_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => volume_value(2));

-- Location: MLABCELL_X87_Y6_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( volume_value(3) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( volume_value(3) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_volume_value(3),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X87_Y6_N41
\volume_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => volume_value(3));

-- Location: MLABCELL_X87_Y6_N42
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( volume_value(4) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( volume_value(4) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_volume_value(4),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X87_Y6_N44
\volume_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => volume_value(4));

-- Location: MLABCELL_X87_Y6_N45
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( volume_value(5) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~26\ = CARRY(( volume_value(5) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_volume_value(5),
	cin => \Add0~10\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X87_Y6_N47
\volume_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => volume_value(5));

-- Location: MLABCELL_X87_Y6_N48
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( volume_value(6) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( volume_value(6) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_volume_value(6),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X87_Y6_N50
\volume_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => volume_value(6));

-- Location: MLABCELL_X87_Y6_N51
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( volume_value(7) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_volume_value(7),
	cin => \Add0~30\,
	sumout => \Add0~21_sumout\);

-- Location: FF_X87_Y6_N53
\volume_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => volume_value(7));

-- Location: MLABCELL_X87_Y6_N9
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( volume_value(7) & ( volume_value(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_volume_value(5),
	dataf => ALT_INV_volume_value(7),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X85_Y4_N45
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !volume_value(0) & ( (volume_value(1) & (!volume_value(2) & (volume_value(3) & volume_value(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(1),
	datab => ALT_INV_volume_value(2),
	datac => ALT_INV_volume_value(3),
	datad => ALT_INV_volume_value(4),
	dataf => ALT_INV_volume_value(0),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X87_Y6_N6
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( volume_value(6) & ( (\Equal0~0_combout\ & \Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_volume_value(6),
	combout => \Equal0~2_combout\);

-- Location: FF_X87_Y6_N32
\volume_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => volume_value(0));

-- Location: IOIBUF_X89_Y6_N38
\AUD_ADCDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: FF_X87_Y6_N4
\inst2|adcdats\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_ADCDAT~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|adcdats~q\);

-- Location: IOIBUF_X89_Y15_N55
\AUD_BCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: FF_X88_Y13_N38
\inst2|bclks\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_BCLK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|bclks~q\);

-- Location: FF_X87_Y9_N23
\inst2|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[0]~3_combout\,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(0));

-- Location: MLABCELL_X87_Y9_N21
\inst2|cbits[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[0]~3_combout\ = ( !\inst2|cbits\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|cbits[0]~3_combout\);

-- Location: FF_X87_Y9_N22
\inst2|cbits[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[0]~3_combout\,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y9_N15
\inst2|cbits[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[1]~0_combout\ = ( \inst2|cbits\(1) & ( \inst2|cbits[0]~DUPLICATE_q\ & ( !\inst2|ep.e3~q\ ) ) ) # ( !\inst2|cbits\(1) & ( \inst2|cbits[0]~DUPLICATE_q\ & ( \inst2|ep.e3~q\ ) ) ) # ( \inst2|cbits\(1) & ( !\inst2|cbits[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_ep.e3~q\,
	datae => \inst2|ALT_INV_cbits\(1),
	dataf => \inst2|ALT_INV_cbits[0]~DUPLICATE_q\,
	combout => \inst2|cbits[1]~0_combout\);

-- Location: FF_X87_Y9_N17
\inst2|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(1));

-- Location: MLABCELL_X87_Y9_N3
\inst2|cbits[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[2]~2_combout\ = ( \inst2|cbits\(2) & ( \inst2|ep.e3~q\ & ( (!\inst2|cbits\(0)) # (!\inst2|cbits\(1)) ) ) ) # ( !\inst2|cbits\(2) & ( \inst2|ep.e3~q\ & ( (\inst2|cbits\(0) & \inst2|cbits\(1)) ) ) ) # ( \inst2|cbits\(2) & ( !\inst2|ep.e3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010001000100011110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cbits\(0),
	datab => \inst2|ALT_INV_cbits\(1),
	datae => \inst2|ALT_INV_cbits\(2),
	dataf => \inst2|ALT_INV_ep.e3~q\,
	combout => \inst2|cbits[2]~2_combout\);

-- Location: FF_X87_Y9_N5
\inst2|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(2));

-- Location: MLABCELL_X87_Y9_N24
\inst2|cbits[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[3]~1_combout\ = ( \inst2|cbits\(3) & ( \inst2|ep.e3~q\ & ( (!\inst2|cbits\(2)) # ((!\inst2|cbits\(1)) # (!\inst2|cbits[0]~DUPLICATE_q\)) ) ) ) # ( !\inst2|cbits\(3) & ( \inst2|ep.e3~q\ & ( (\inst2|cbits\(2) & (\inst2|cbits\(1) & 
-- \inst2|cbits[0]~DUPLICATE_q\)) ) ) ) # ( \inst2|cbits\(3) & ( !\inst2|ep.e3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100011111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cbits\(2),
	datab => \inst2|ALT_INV_cbits\(1),
	datad => \inst2|ALT_INV_cbits[0]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_cbits\(3),
	dataf => \inst2|ALT_INV_ep.e3~q\,
	combout => \inst2|cbits[3]~1_combout\);

-- Location: FF_X87_Y9_N25
\inst2|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(3));

-- Location: MLABCELL_X87_Y9_N36
\inst2|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = ( \inst2|cbits\(2) & ( \inst2|cbits\(1) & ( (\inst2|cbits[0]~DUPLICATE_q\ & \inst2|cbits\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cbits[0]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_cbits\(3),
	datae => \inst2|ALT_INV_cbits\(2),
	dataf => \inst2|ALT_INV_cbits\(1),
	combout => \inst2|Selector3~0_combout\);

-- Location: MLABCELL_X87_Y9_N6
\inst2|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = ( \inst2|ep.e3~q\ & ( (!\inst2|Selector3~0_combout\) # ((\inst2|bclks~q\ & \inst2|ep.e4~q\)) ) ) # ( !\inst2|ep.e3~q\ & ( (\inst2|bclks~q\ & \inst2|ep.e4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datac => \inst2|ALT_INV_Selector3~0_combout\,
	datad => \inst2|ALT_INV_ep.e4~q\,
	dataf => \inst2|ALT_INV_ep.e3~q\,
	combout => \inst2|Selector3~1_combout\);

-- Location: FF_X87_Y9_N8
\inst2|ep.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e4~q\);

-- Location: IOIBUF_X89_Y6_N55
\AUD_ADCLRCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: FF_X85_Y9_N35
\inst2|adclrcs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_ADCLRCK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|adclrcs~q\);

-- Location: MLABCELL_X87_Y9_N45
\inst2|es.e5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|es.e5~0_combout\ = ( \inst2|ep.e3~q\ & ( (\inst2|cbits\(2) & (\inst2|cbits\(3) & (\inst2|cbits[0]~DUPLICATE_q\ & \inst2|cbits\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cbits\(2),
	datab => \inst2|ALT_INV_cbits\(3),
	datac => \inst2|ALT_INV_cbits[0]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_cbits\(1),
	dataf => \inst2|ALT_INV_ep.e3~q\,
	combout => \inst2|es.e5~0_combout\);

-- Location: FF_X87_Y9_N46
\inst2|ep.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|es.e5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e5~q\);

-- Location: MLABCELL_X87_Y9_N42
\inst2|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = ( \inst2|adclrcs~q\ & ( (!\inst2|ep.e5~q\ & \inst2|ep.e0~q\) ) ) # ( !\inst2|adclrcs~q\ & ( !\inst2|ep.e5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ep.e5~q\,
	datad => \inst2|ALT_INV_ep.e0~q\,
	dataf => \inst2|ALT_INV_adclrcs~q\,
	combout => \inst2|Selector0~0_combout\);

-- Location: FF_X87_Y9_N44
\inst2|ep.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e0~q\);

-- Location: MLABCELL_X87_Y9_N33
\inst2|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = ( \inst2|adclrcs~q\ & ( (\inst2|bclks~q\ & \inst2|ep.e1~q\) ) ) # ( !\inst2|adclrcs~q\ & ( (!\inst2|ep.e0~q\) # (\inst2|ep.e1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datac => \inst2|ALT_INV_ep.e0~q\,
	datad => \inst2|ALT_INV_ep.e1~q\,
	dataf => \inst2|ALT_INV_adclrcs~q\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X87_Y9_N34
\inst2|ep.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e1~q\);

-- Location: MLABCELL_X87_Y9_N9
\inst2|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = ( \inst2|ep.e1~q\ & ( (!\inst2|bclks~q\ & (((\inst2|ep.e2~q\) # (\inst2|adclrcs~q\)) # (\inst2|ep.e4~q\))) ) ) # ( !\inst2|ep.e1~q\ & ( (!\inst2|bclks~q\ & ((\inst2|ep.e2~q\) # (\inst2|ep.e4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datab => \inst2|ALT_INV_ep.e4~q\,
	datac => \inst2|ALT_INV_adclrcs~q\,
	datad => \inst2|ALT_INV_ep.e2~q\,
	dataf => \inst2|ALT_INV_ep.e1~q\,
	combout => \inst2|Selector2~0_combout\);

-- Location: FF_X87_Y9_N11
\inst2|ep.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e2~q\);

-- Location: MLABCELL_X87_Y9_N30
\inst2|es.e3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|es.e3~0_combout\ = (\inst2|bclks~q\ & \inst2|ep.e2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datab => \inst2|ALT_INV_ep.e2~q\,
	combout => \inst2|es.e3~0_combout\);

-- Location: FF_X87_Y9_N32
\inst2|ep.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|es.e3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e3~q\);

-- Location: FF_X82_Y6_N5
\inst2|srdato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|adcdats~q\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(0));

-- Location: FF_X82_Y6_N52
\inst2|srdato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(0),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(1));

-- Location: FF_X82_Y6_N44
\inst2|srdato[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(1),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(2));

-- Location: FF_X80_Y6_N53
\inst2|srdato[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(2),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(3));

-- Location: FF_X82_Y6_N40
\inst2|srdato[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(3),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[4]~DUPLICATE_q\);

-- Location: FF_X80_Y6_N5
\inst2|srdato[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(5));

-- Location: FF_X80_Y6_N28
\inst2|srdato[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(5),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[6]~DUPLICATE_q\);

-- Location: FF_X80_Y6_N35
\inst2|srdato[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[7]~DUPLICATE_q\);

-- Location: FF_X80_Y6_N10
\inst2|srdato[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(8));

-- Location: FF_X81_Y6_N50
\inst2|srdato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(8),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(9));

-- Location: IOIBUF_X36_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: CLKCTRL_G4
\KEY[2]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[2]~input_o\,
	outclk => \KEY[2]~inputCLKENA0_outclk\);

-- Location: LABCELL_X79_Y6_N30
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( distortion_value(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~18\ = CARRY(( distortion_value(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(0),
	cin => GND,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X78_Y6_N36
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( distortion_value(3) & ( (!distortion_value(0) & (!distortion_value(2) & (distortion_value(1) & distortion_value(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(2),
	datac => ALT_INV_distortion_value(1),
	datad => ALT_INV_distortion_value(4),
	dataf => ALT_INV_distortion_value(3),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X80_Y6_N30
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( distortion_value(7) & ( distortion_value(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_distortion_value(5),
	datae => ALT_INV_distortion_value(7),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X80_Y6_N42
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( \Equal1~0_combout\ & ( (distortion_value(6) & \Equal1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(6),
	datab => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X79_Y6_N32
\distortion_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(0));

-- Location: LABCELL_X79_Y6_N33
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( distortion_value(1) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~10\ = CARRY(( distortion_value(1) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(1),
	cin => \Add1~18\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X79_Y6_N35
\distortion_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(1));

-- Location: LABCELL_X79_Y6_N36
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( distortion_value(2) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( distortion_value(2) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(2),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X79_Y6_N38
\distortion_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(2));

-- Location: LABCELL_X79_Y6_N39
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( distortion_value(3) ) + ( VCC ) + ( \Add1~6\ ))
-- \Add1~14\ = CARRY(( distortion_value(3) ) + ( VCC ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(3),
	cin => \Add1~6\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X79_Y6_N41
\distortion_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(3));

-- Location: LABCELL_X79_Y6_N42
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( distortion_value(4) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~2\ = CARRY(( distortion_value(4) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(4),
	cin => \Add1~14\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X79_Y6_N44
\distortion_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(4));

-- Location: LABCELL_X79_Y6_N45
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( distortion_value(5) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~26\ = CARRY(( distortion_value(5) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(5),
	cin => \Add1~2\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X79_Y6_N47
\distortion_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(5));

-- Location: LABCELL_X79_Y6_N48
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( distortion_value(6) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( distortion_value(6) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(6),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X79_Y6_N50
\distortion_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(6));

-- Location: LABCELL_X79_Y6_N51
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( distortion_value(7) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(7),
	cin => \Add1~30\,
	sumout => \Add1~21_sumout\);

-- Location: FF_X79_Y6_N53
\distortion_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(7));

-- Location: LABCELL_X83_Y6_N30
\inst5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~21_sumout\ = SUM(( !distortion_value(0) ) + ( VCC ) + ( !VCC ))
-- \inst5|Add0~22\ = CARRY(( !distortion_value(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_distortion_value(0),
	cin => GND,
	sumout => \inst5|Add0~21_sumout\,
	cout => \inst5|Add0~22\);

-- Location: LABCELL_X83_Y6_N33
\inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~17_sumout\ = SUM(( !distortion_value(1) ) + ( GND ) + ( \inst5|Add0~22\ ))
-- \inst5|Add0~18\ = CARRY(( !distortion_value(1) ) + ( GND ) + ( \inst5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_distortion_value(1),
	cin => \inst5|Add0~22\,
	sumout => \inst5|Add0~17_sumout\,
	cout => \inst5|Add0~18\);

-- Location: LABCELL_X83_Y6_N36
\inst5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~13_sumout\ = SUM(( !distortion_value(2) ) + ( GND ) + ( \inst5|Add0~18\ ))
-- \inst5|Add0~14\ = CARRY(( !distortion_value(2) ) + ( GND ) + ( \inst5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_distortion_value(2),
	cin => \inst5|Add0~18\,
	sumout => \inst5|Add0~13_sumout\,
	cout => \inst5|Add0~14\);

-- Location: LABCELL_X83_Y6_N39
\inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~9_sumout\ = SUM(( !distortion_value(3) ) + ( GND ) + ( \inst5|Add0~14\ ))
-- \inst5|Add0~10\ = CARRY(( !distortion_value(3) ) + ( GND ) + ( \inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_distortion_value(3),
	cin => \inst5|Add0~14\,
	sumout => \inst5|Add0~9_sumout\,
	cout => \inst5|Add0~10\);

-- Location: LABCELL_X83_Y6_N42
\inst5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~5_sumout\ = SUM(( !distortion_value(4) ) + ( GND ) + ( \inst5|Add0~10\ ))
-- \inst5|Add0~6\ = CARRY(( !distortion_value(4) ) + ( GND ) + ( \inst5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_distortion_value(4),
	cin => \inst5|Add0~10\,
	sumout => \inst5|Add0~5_sumout\,
	cout => \inst5|Add0~6\);

-- Location: LABCELL_X83_Y6_N45
\inst5|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~33_sumout\ = SUM(( !distortion_value(5) ) + ( GND ) + ( \inst5|Add0~6\ ))
-- \inst5|Add0~34\ = CARRY(( !distortion_value(5) ) + ( GND ) + ( \inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(5),
	cin => \inst5|Add0~6\,
	sumout => \inst5|Add0~33_sumout\,
	cout => \inst5|Add0~34\);

-- Location: LABCELL_X83_Y6_N48
\inst5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~29_sumout\ = SUM(( !distortion_value(6) ) + ( GND ) + ( \inst5|Add0~34\ ))
-- \inst5|Add0~30\ = CARRY(( !distortion_value(6) ) + ( GND ) + ( \inst5|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_distortion_value(6),
	cin => \inst5|Add0~34\,
	sumout => \inst5|Add0~29_sumout\,
	cout => \inst5|Add0~30\);

-- Location: LABCELL_X83_Y6_N51
\inst5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~25_sumout\ = SUM(( !distortion_value(7) ) + ( GND ) + ( \inst5|Add0~30\ ))
-- \inst5|Add0~26\ = CARRY(( !distortion_value(7) ) + ( GND ) + ( \inst5|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_distortion_value(7),
	cin => \inst5|Add0~30\,
	sumout => \inst5|Add0~25_sumout\,
	cout => \inst5|Add0~26\);

-- Location: LABCELL_X83_Y6_N54
\inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst5|Add0~26\ ))
-- \inst5|Add0~2\ = CARRY(( VCC ) + ( GND ) + ( \inst5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Add0~26\,
	sumout => \inst5|Add0~1_sumout\,
	cout => \inst5|Add0~2\);

-- Location: LABCELL_X83_Y6_N57
\inst5|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~37_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst5|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Add0~2\,
	sumout => \inst5|Add0~37_sumout\);

-- Location: FF_X81_Y6_N5
\inst2|srdato[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(9),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(10));

-- Location: FF_X81_Y6_N14
\inst2|srdato[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(10),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(11));

-- Location: FF_X81_Y6_N10
\inst2|srdato[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(11),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[12]~DUPLICATE_q\);

-- Location: FF_X81_Y6_N2
\inst2|srdato[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[12]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(13));

-- Location: FF_X81_Y6_N59
\inst2|srdato[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(13),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(14));

-- Location: FF_X81_Y6_N11
\inst2|srdato[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(11),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(12));

-- Location: LABCELL_X81_Y6_N12
\inst5|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~7_combout\ = ( \inst2|srdato\(12) & ( (\inst2|srdato\(11) & (\inst2|srdato\(14) & (\inst2|srdato\(13) & \inst2|srdato\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(11),
	datab => \inst2|ALT_INV_srdato\(14),
	datac => \inst2|ALT_INV_srdato\(13),
	datad => \inst2|ALT_INV_srdato\(10),
	dataf => \inst2|ALT_INV_srdato\(12),
	combout => \inst5|LessThan0~7_combout\);

-- Location: LABCELL_X81_Y6_N6
\inst5|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~8_combout\ = ( \inst5|Add0~37_sumout\ & ( \inst5|LessThan0~7_combout\ & ( (!\inst2|srdato\(9)) # ((!\inst2|srdato\(8) & \inst5|Add0~1_sumout\)) ) ) ) # ( !\inst5|Add0~37_sumout\ & ( \inst5|LessThan0~7_combout\ ) ) # ( 
-- \inst5|Add0~37_sumout\ & ( !\inst5|LessThan0~7_combout\ ) ) # ( !\inst5|Add0~37_sumout\ & ( !\inst5|LessThan0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_srdato\(8),
	datac => \inst2|ALT_INV_srdato\(9),
	datad => \inst5|ALT_INV_Add0~1_sumout\,
	datae => \inst5|ALT_INV_Add0~37_sumout\,
	dataf => \inst5|ALT_INV_LessThan0~7_combout\,
	combout => \inst5|LessThan0~8_combout\);

-- Location: LABCELL_X80_Y6_N48
\inst5|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~5_combout\ = ( \inst5|Add0~29_sumout\ & ( \inst2|srdato[7]~DUPLICATE_q\ & ( (\inst5|Add0~25_sumout\ & ((!\inst2|srdato[6]~DUPLICATE_q\) # ((\inst5|Add0~33_sumout\ & !\inst2|srdato\(5))))) ) ) ) # ( !\inst5|Add0~29_sumout\ & ( 
-- \inst2|srdato[7]~DUPLICATE_q\ & ( (\inst5|Add0~33_sumout\ & (!\inst2|srdato[6]~DUPLICATE_q\ & (!\inst2|srdato\(5) & \inst5|Add0~25_sumout\))) ) ) ) # ( \inst5|Add0~29_sumout\ & ( !\inst2|srdato[7]~DUPLICATE_q\ & ( (!\inst2|srdato[6]~DUPLICATE_q\) # 
-- (((\inst5|Add0~33_sumout\ & !\inst2|srdato\(5))) # (\inst5|Add0~25_sumout\)) ) ) ) # ( !\inst5|Add0~29_sumout\ & ( !\inst2|srdato[7]~DUPLICATE_q\ & ( ((\inst5|Add0~33_sumout\ & (!\inst2|srdato[6]~DUPLICATE_q\ & !\inst2|srdato\(5)))) # 
-- (\inst5|Add0~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111111110111001111111100000000010000000000000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~33_sumout\,
	datab => \inst2|ALT_INV_srdato[6]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_srdato\(5),
	datad => \inst5|ALT_INV_Add0~25_sumout\,
	datae => \inst5|ALT_INV_Add0~29_sumout\,
	dataf => \inst2|ALT_INV_srdato[7]~DUPLICATE_q\,
	combout => \inst5|LessThan0~5_combout\);

-- Location: FF_X82_Y6_N43
\inst2|srdato[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(1),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[2]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y6_N45
\inst5|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~2_combout\ = ( \inst2|srdato\(0) & ( \inst5|Add0~21_sumout\ & ( (!\inst2|srdato\(1) & (\inst5|Add0~17_sumout\ & (!\inst5|Add0~13_sumout\ $ (\inst2|srdato[2]~DUPLICATE_q\)))) ) ) ) # ( !\inst2|srdato\(0) & ( \inst5|Add0~21_sumout\ & ( 
-- (!\inst2|srdato\(1) & (!\inst5|Add0~13_sumout\ $ ((\inst2|srdato[2]~DUPLICATE_q\)))) # (\inst2|srdato\(1) & (\inst5|Add0~17_sumout\ & (!\inst5|Add0~13_sumout\ $ (\inst2|srdato[2]~DUPLICATE_q\)))) ) ) ) # ( \inst2|srdato\(0) & ( !\inst5|Add0~21_sumout\ & ( 
-- (!\inst2|srdato\(1) & (\inst5|Add0~17_sumout\ & (!\inst5|Add0~13_sumout\ $ (\inst2|srdato[2]~DUPLICATE_q\)))) ) ) ) # ( !\inst2|srdato\(0) & ( !\inst5|Add0~21_sumout\ & ( (!\inst2|srdato\(1) & (\inst5|Add0~17_sumout\ & (!\inst5|Add0~13_sumout\ $ 
-- (\inst2|srdato[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100000000001000010010000100101001010000000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~13_sumout\,
	datab => \inst2|ALT_INV_srdato\(1),
	datac => \inst2|ALT_INV_srdato[2]~DUPLICATE_q\,
	datad => \inst5|ALT_INV_Add0~17_sumout\,
	datae => \inst2|ALT_INV_srdato\(0),
	dataf => \inst5|ALT_INV_Add0~21_sumout\,
	combout => \inst5|LessThan0~2_combout\);

-- Location: FF_X80_Y6_N11
\inst2|srdato[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[8]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y6_N45
\inst5|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = ( \inst2|srdato[8]~DUPLICATE_q\ & ( !\inst5|Add0~1_sumout\ ) ) # ( !\inst2|srdato[8]~DUPLICATE_q\ & ( \inst5|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_Add0~1_sumout\,
	dataf => \inst2|ALT_INV_srdato[8]~DUPLICATE_q\,
	combout => \inst5|LessThan0~0_combout\);

-- Location: LABCELL_X80_Y6_N24
\inst5|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~4_combout\ = ( \inst2|srdato\(5) & ( \inst5|Add0~33_sumout\ & ( (!\inst5|Add0~29_sumout\ & (!\inst2|srdato[6]~DUPLICATE_q\ & (!\inst2|srdato[7]~DUPLICATE_q\ $ (\inst5|Add0~25_sumout\)))) # (\inst5|Add0~29_sumout\ & 
-- (\inst2|srdato[6]~DUPLICATE_q\ & (!\inst2|srdato[7]~DUPLICATE_q\ $ (\inst5|Add0~25_sumout\)))) ) ) ) # ( !\inst2|srdato\(5) & ( !\inst5|Add0~33_sumout\ & ( (!\inst5|Add0~29_sumout\ & (!\inst2|srdato[6]~DUPLICATE_q\ & (!\inst2|srdato[7]~DUPLICATE_q\ $ 
-- (\inst5|Add0~25_sumout\)))) # (\inst5|Add0~29_sumout\ & (\inst2|srdato[6]~DUPLICATE_q\ & (!\inst2|srdato[7]~DUPLICATE_q\ $ (\inst5|Add0~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~29_sumout\,
	datab => \inst2|ALT_INV_srdato[6]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_srdato[7]~DUPLICATE_q\,
	datad => \inst5|ALT_INV_Add0~25_sumout\,
	datae => \inst2|ALT_INV_srdato\(5),
	dataf => \inst5|ALT_INV_Add0~33_sumout\,
	combout => \inst5|LessThan0~4_combout\);

-- Location: FF_X80_Y6_N52
\inst2|srdato[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(2),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[3]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y6_N0
\inst5|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~3_combout\ = ( \inst2|srdato[3]~DUPLICATE_q\ & ( \inst5|Add0~13_sumout\ & ( (!\inst5|Add0~5_sumout\ & (!\inst2|srdato[2]~DUPLICATE_q\ & (\inst5|Add0~9_sumout\ & !\inst2|srdato[4]~DUPLICATE_q\))) # (\inst5|Add0~5_sumout\ & 
-- ((!\inst2|srdato[4]~DUPLICATE_q\) # ((!\inst2|srdato[2]~DUPLICATE_q\ & \inst5|Add0~9_sumout\)))) ) ) ) # ( !\inst2|srdato[3]~DUPLICATE_q\ & ( \inst5|Add0~13_sumout\ & ( (!\inst5|Add0~5_sumout\ & (!\inst2|srdato[4]~DUPLICATE_q\ & 
-- ((!\inst2|srdato[2]~DUPLICATE_q\) # (\inst5|Add0~9_sumout\)))) # (\inst5|Add0~5_sumout\ & ((!\inst2|srdato[2]~DUPLICATE_q\) # ((!\inst2|srdato[4]~DUPLICATE_q\) # (\inst5|Add0~9_sumout\)))) ) ) ) # ( \inst2|srdato[3]~DUPLICATE_q\ & ( 
-- !\inst5|Add0~13_sumout\ & ( (\inst5|Add0~5_sumout\ & !\inst2|srdato[4]~DUPLICATE_q\) ) ) ) # ( !\inst2|srdato[3]~DUPLICATE_q\ & ( !\inst5|Add0~13_sumout\ & ( (!\inst5|Add0~5_sumout\ & (\inst5|Add0~9_sumout\ & !\inst2|srdato[4]~DUPLICATE_q\)) # 
-- (\inst5|Add0~5_sumout\ & ((!\inst2|srdato[4]~DUPLICATE_q\) # (\inst5|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010101010000000011011111010001010101110100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~5_sumout\,
	datab => \inst2|ALT_INV_srdato[2]~DUPLICATE_q\,
	datac => \inst5|ALT_INV_Add0~9_sumout\,
	datad => \inst2|ALT_INV_srdato[4]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_srdato[3]~DUPLICATE_q\,
	dataf => \inst5|ALT_INV_Add0~13_sumout\,
	combout => \inst5|LessThan0~3_combout\);

-- Location: MLABCELL_X82_Y6_N6
\inst5|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = ( \inst5|Add0~9_sumout\ & ( (\inst2|srdato[3]~DUPLICATE_q\ & (!\inst5|Add0~5_sumout\ $ (\inst2|srdato[4]~DUPLICATE_q\))) ) ) # ( !\inst5|Add0~9_sumout\ & ( (!\inst2|srdato[3]~DUPLICATE_q\ & (!\inst5|Add0~5_sumout\ $ 
-- (\inst2|srdato[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato[3]~DUPLICATE_q\,
	datac => \inst5|ALT_INV_Add0~5_sumout\,
	datad => \inst2|ALT_INV_srdato[4]~DUPLICATE_q\,
	dataf => \inst5|ALT_INV_Add0~9_sumout\,
	combout => \inst5|LessThan0~1_combout\);

-- Location: MLABCELL_X82_Y6_N24
\inst5|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~6_combout\ = ( \inst5|LessThan0~3_combout\ & ( \inst5|LessThan0~1_combout\ & ( (!\inst5|LessThan0~0_combout\ & ((\inst5|LessThan0~4_combout\) # (\inst5|LessThan0~5_combout\))) ) ) ) # ( !\inst5|LessThan0~3_combout\ & ( 
-- \inst5|LessThan0~1_combout\ & ( (!\inst5|LessThan0~0_combout\ & (((\inst5|LessThan0~2_combout\ & \inst5|LessThan0~4_combout\)) # (\inst5|LessThan0~5_combout\))) ) ) ) # ( \inst5|LessThan0~3_combout\ & ( !\inst5|LessThan0~1_combout\ & ( 
-- (!\inst5|LessThan0~0_combout\ & ((\inst5|LessThan0~4_combout\) # (\inst5|LessThan0~5_combout\))) ) ) ) # ( !\inst5|LessThan0~3_combout\ & ( !\inst5|LessThan0~1_combout\ & ( (\inst5|LessThan0~5_combout\ & !\inst5|LessThan0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100001111000001010000011100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_LessThan0~2_combout\,
	datac => \inst5|ALT_INV_LessThan0~0_combout\,
	datad => \inst5|ALT_INV_LessThan0~4_combout\,
	datae => \inst5|ALT_INV_LessThan0~3_combout\,
	dataf => \inst5|ALT_INV_LessThan0~1_combout\,
	combout => \inst5|LessThan0~6_combout\);

-- Location: FF_X81_Y6_N52
\inst2|srdato[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(14),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(15));

-- Location: MLABCELL_X82_Y6_N9
\inst5|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~3_combout\ = ( distortion_value(1) & ( (\inst2|srdato\(1) & (!distortion_value(0) & \inst2|srdato\(0))) ) ) # ( !distortion_value(1) & ( ((!distortion_value(0) & \inst2|srdato\(0))) # (\inst2|srdato\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_srdato\(1),
	datac => ALT_INV_distortion_value(0),
	datad => \inst2|ALT_INV_srdato\(0),
	dataf => ALT_INV_distortion_value(1),
	combout => \inst5|LessThan1~3_combout\);

-- Location: LABCELL_X80_Y6_N39
\inst5|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~1_combout\ = ( distortion_value(5) & ( !\inst2|srdato\(5) ) ) # ( !distortion_value(5) & ( \inst2|srdato\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_srdato\(5),
	dataf => ALT_INV_distortion_value(5),
	combout => \inst5|LessThan1~1_combout\);

-- Location: LABCELL_X80_Y6_N18
\inst5|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~5_combout\ = ( \inst2|srdato[2]~DUPLICATE_q\ & ( (!distortion_value(2) & ((!distortion_value(3)) # (\inst2|srdato[3]~DUPLICATE_q\))) # (distortion_value(2) & (\inst2|srdato[3]~DUPLICATE_q\ & !distortion_value(3))) ) ) # ( 
-- !\inst2|srdato[2]~DUPLICATE_q\ & ( (\inst2|srdato[3]~DUPLICATE_q\ & !distortion_value(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000010111011001000101011101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(2),
	datab => \inst2|ALT_INV_srdato[3]~DUPLICATE_q\,
	datad => ALT_INV_distortion_value(3),
	dataf => \inst2|ALT_INV_srdato[2]~DUPLICATE_q\,
	combout => \inst5|LessThan1~5_combout\);

-- Location: LABCELL_X80_Y6_N6
\inst5|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = ( distortion_value(7) & ( \inst2|srdato[7]~DUPLICATE_q\ & ( !\inst2|srdato[6]~DUPLICATE_q\ $ (distortion_value(6)) ) ) ) # ( !distortion_value(7) & ( !\inst2|srdato[7]~DUPLICATE_q\ & ( !\inst2|srdato[6]~DUPLICATE_q\ $ 
-- (distortion_value(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000000000000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_srdato[6]~DUPLICATE_q\,
	datac => ALT_INV_distortion_value(6),
	datae => ALT_INV_distortion_value(7),
	dataf => \inst2|ALT_INV_srdato[7]~DUPLICATE_q\,
	combout => \inst5|LessThan1~0_combout\);

-- Location: LABCELL_X80_Y6_N21
\inst5|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~4_combout\ = ( \inst2|srdato[2]~DUPLICATE_q\ & ( (distortion_value(2) & (!\inst2|srdato[3]~DUPLICATE_q\ $ (distortion_value(3)))) ) ) # ( !\inst2|srdato[2]~DUPLICATE_q\ & ( (!distortion_value(2) & (!\inst2|srdato[3]~DUPLICATE_q\ $ 
-- (distortion_value(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(2),
	datab => \inst2|ALT_INV_srdato[3]~DUPLICATE_q\,
	datac => ALT_INV_distortion_value(3),
	dataf => \inst2|ALT_INV_srdato[2]~DUPLICATE_q\,
	combout => \inst5|LessThan1~4_combout\);

-- Location: LABCELL_X80_Y6_N15
\inst5|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~2_combout\ = ( \inst2|srdato[4]~DUPLICATE_q\ & ( !distortion_value(4) ) ) # ( !\inst2|srdato[4]~DUPLICATE_q\ & ( distortion_value(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(4),
	dataf => \inst2|ALT_INV_srdato[4]~DUPLICATE_q\,
	combout => \inst5|LessThan1~2_combout\);

-- Location: LABCELL_X80_Y6_N0
\inst5|LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~6_combout\ = ( \inst5|LessThan1~4_combout\ & ( !\inst5|LessThan1~2_combout\ & ( (!\inst5|LessThan1~1_combout\ & (\inst5|LessThan1~0_combout\ & ((\inst5|LessThan1~5_combout\) # (\inst5|LessThan1~3_combout\)))) ) ) ) # ( 
-- !\inst5|LessThan1~4_combout\ & ( !\inst5|LessThan1~2_combout\ & ( (!\inst5|LessThan1~1_combout\ & (\inst5|LessThan1~5_combout\ & \inst5|LessThan1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan1~3_combout\,
	datab => \inst5|ALT_INV_LessThan1~1_combout\,
	datac => \inst5|ALT_INV_LessThan1~5_combout\,
	datad => \inst5|ALT_INV_LessThan1~0_combout\,
	datae => \inst5|ALT_INV_LessThan1~4_combout\,
	dataf => \inst5|ALT_INV_LessThan1~2_combout\,
	combout => \inst5|LessThan1~6_combout\);

-- Location: LABCELL_X80_Y6_N12
\inst5|LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~7_combout\ = ( \inst2|srdato[4]~DUPLICATE_q\ & ( !distortion_value(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(4),
	dataf => \inst2|ALT_INV_srdato[4]~DUPLICATE_q\,
	combout => \inst5|LessThan1~7_combout\);

-- Location: FF_X80_Y6_N29
\inst2|srdato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(5),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(6));

-- Location: LABCELL_X80_Y6_N36
\inst5|LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~9_combout\ = ( \inst2|srdato[7]~DUPLICATE_q\ & ( (!\inst2|srdato[8]~DUPLICATE_q\ & (distortion_value(7) & ((!\inst2|srdato\(6)) # (distortion_value(6))))) ) ) # ( !\inst2|srdato[7]~DUPLICATE_q\ & ( (!\inst2|srdato[8]~DUPLICATE_q\ & 
-- ((!\inst2|srdato\(6)) # ((distortion_value(7)) # (distortion_value(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011001100100011001100110000000000100011000000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(6),
	datab => \inst2|ALT_INV_srdato[8]~DUPLICATE_q\,
	datac => ALT_INV_distortion_value(6),
	datad => ALT_INV_distortion_value(7),
	dataf => \inst2|ALT_INV_srdato[7]~DUPLICATE_q\,
	combout => \inst5|LessThan1~9_combout\);

-- Location: LABCELL_X81_Y6_N48
\inst5|LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~8_combout\ = ( !\inst2|srdato\(9) & ( !\inst2|srdato\(14) & ( (!\inst2|srdato\(10) & (!\inst2|srdato\(11) & (!\inst2|srdato\(13) & !\inst2|srdato\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(10),
	datab => \inst2|ALT_INV_srdato\(11),
	datac => \inst2|ALT_INV_srdato\(13),
	datad => \inst2|ALT_INV_srdato\(12),
	datae => \inst2|ALT_INV_srdato\(9),
	dataf => \inst2|ALT_INV_srdato\(14),
	combout => \inst5|LessThan1~8_combout\);

-- Location: LABCELL_X80_Y6_N54
\inst5|LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~10_combout\ = ( \inst5|LessThan1~9_combout\ & ( \inst5|LessThan1~8_combout\ & ( (!\inst5|LessThan1~0_combout\) # ((!\inst2|srdato\(5) & ((!\inst5|LessThan1~7_combout\) # (distortion_value(5)))) # (\inst2|srdato\(5) & (distortion_value(5) 
-- & !\inst5|LessThan1~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(5),
	datab => \inst5|ALT_INV_LessThan1~0_combout\,
	datac => ALT_INV_distortion_value(5),
	datad => \inst5|ALT_INV_LessThan1~7_combout\,
	datae => \inst5|ALT_INV_LessThan1~9_combout\,
	dataf => \inst5|ALT_INV_LessThan1~8_combout\,
	combout => \inst5|LessThan1~10_combout\);

-- Location: LABCELL_X81_Y6_N15
\inst5|LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~11_combout\ = ( \inst5|LessThan1~10_combout\ & ( \inst5|LessThan1~6_combout\ ) ) # ( !\inst5|LessThan1~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_LessThan1~6_combout\,
	dataf => \inst5|ALT_INV_LessThan1~10_combout\,
	combout => \inst5|LessThan1~11_combout\);

-- Location: MLABCELL_X82_Y6_N54
\inst5|signal_dist[0]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[0]~36_combout\ = ( !\inst2|srdato\(15) & ( ((!\inst5|LessThan1~11_combout\ & (\inst2|srdato\(0))) # (\inst5|LessThan1~11_combout\ & (((distortion_value(0)))))) ) ) # ( \inst2|srdato\(15) & ( (!\inst5|LessThan0~8_combout\ & 
-- ((!\inst5|LessThan0~6_combout\ & (\inst2|srdato\(0))) # (\inst5|LessThan0~6_combout\ & (((\inst5|Add0~21_sumout\)))))) # (\inst5|LessThan0~8_combout\ & ((((\inst5|Add0~21_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101000001011111010000000100000001010000010111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(0),
	datab => \inst5|ALT_INV_LessThan0~8_combout\,
	datac => \inst5|ALT_INV_LessThan0~6_combout\,
	datad => ALT_INV_distortion_value(0),
	datae => \inst2|ALT_INV_srdato\(15),
	dataf => \inst5|ALT_INV_Add0~21_sumout\,
	datag => \inst5|ALT_INV_LessThan1~11_combout\,
	combout => \inst5|signal_dist[0]~36_combout\);

-- Location: MLABCELL_X82_Y6_N18
\inst5|signal_dist[1]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[1]~32_combout\ = ( !\inst2|srdato\(15) & ( (!\inst5|LessThan1~11_combout\ & (\inst2|srdato\(1))) # (\inst5|LessThan1~11_combout\ & (((distortion_value(1))))) ) ) # ( \inst2|srdato\(15) & ( ((!\inst5|LessThan0~8_combout\ & 
-- ((!\inst5|LessThan0~6_combout\ & (\inst2|srdato\(1))) # (\inst5|LessThan0~6_combout\ & ((\inst5|Add0~17_sumout\))))) # (\inst5|LessThan0~8_combout\ & (((\inst5|Add0~17_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100100111001100110000111100100111001001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan1~11_combout\,
	datab => \inst2|ALT_INV_srdato\(1),
	datac => \inst5|ALT_INV_Add0~17_sumout\,
	datad => \inst5|ALT_INV_LessThan0~8_combout\,
	datae => \inst2|ALT_INV_srdato\(15),
	dataf => \inst5|ALT_INV_LessThan0~6_combout\,
	datag => ALT_INV_distortion_value(1),
	combout => \inst5|signal_dist[1]~32_combout\);

-- Location: MLABCELL_X82_Y6_N12
\inst5|signal_dist[2]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[2]~28_combout\ = ( !\inst2|srdato\(15) & ( (!\inst5|LessThan1~11_combout\ & (\inst2|srdato[2]~DUPLICATE_q\)) # (\inst5|LessThan1~11_combout\ & (((distortion_value(2))))) ) ) # ( \inst2|srdato\(15) & ( ((!\inst5|LessThan0~8_combout\ & 
-- ((!\inst5|LessThan0~6_combout\ & (\inst2|srdato[2]~DUPLICATE_q\)) # (\inst5|LessThan0~6_combout\ & ((\inst5|Add0~13_sumout\))))) # (\inst5|LessThan0~8_combout\ & (((\inst5|Add0~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100100111001100110000111100100111001001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan1~11_combout\,
	datab => \inst2|ALT_INV_srdato[2]~DUPLICATE_q\,
	datac => \inst5|ALT_INV_Add0~13_sumout\,
	datad => \inst5|ALT_INV_LessThan0~8_combout\,
	datae => \inst2|ALT_INV_srdato\(15),
	dataf => \inst5|ALT_INV_LessThan0~6_combout\,
	datag => ALT_INV_distortion_value(2),
	combout => \inst5|signal_dist[2]~28_combout\);

-- Location: MLABCELL_X82_Y6_N36
\inst5|signal_dist[3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[3]~24_combout\ = ( !\inst2|srdato\(15) & ( ((!\inst5|LessThan1~11_combout\ & (((\inst2|srdato\(3))))) # (\inst5|LessThan1~11_combout\ & (distortion_value(3)))) ) ) # ( \inst2|srdato\(15) & ( (!\inst5|LessThan0~6_combout\ & 
-- (((!\inst5|LessThan0~8_combout\ & ((\inst2|srdato\(3)))) # (\inst5|LessThan0~8_combout\ & (\inst5|Add0~9_sumout\))))) # (\inst5|LessThan0~6_combout\ & (((\inst5|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000001010000111111001111110011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~6_combout\,
	datab => \inst5|ALT_INV_LessThan1~11_combout\,
	datac => \inst5|ALT_INV_Add0~9_sumout\,
	datad => \inst5|ALT_INV_LessThan0~8_combout\,
	datae => \inst2|ALT_INV_srdato\(15),
	dataf => \inst2|ALT_INV_srdato\(3),
	datag => ALT_INV_distortion_value(3),
	combout => \inst5|signal_dist[3]~24_combout\);

-- Location: FF_X82_Y6_N41
\inst2|srdato[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(3),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(4));

-- Location: MLABCELL_X82_Y6_N30
\inst5|signal_dist[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[4]~20_combout\ = ( !\inst2|srdato\(15) & ( ((!\inst5|LessThan1~11_combout\ & (((\inst2|srdato\(4))))) # (\inst5|LessThan1~11_combout\ & (distortion_value(4)))) ) ) # ( \inst2|srdato\(15) & ( (!\inst5|LessThan0~6_combout\ & 
-- (((!\inst5|LessThan0~8_combout\ & ((\inst2|srdato\(4)))) # (\inst5|LessThan0~8_combout\ & (\inst5|Add0~5_sumout\))))) # (\inst5|LessThan0~6_combout\ & (((\inst5|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000001010000111111001111110011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~6_combout\,
	datab => \inst5|ALT_INV_LessThan1~11_combout\,
	datac => \inst5|ALT_INV_Add0~5_sumout\,
	datad => \inst5|ALT_INV_LessThan0~8_combout\,
	datae => \inst2|ALT_INV_srdato\(15),
	dataf => \inst2|ALT_INV_srdato\(4),
	datag => ALT_INV_distortion_value(4),
	combout => \inst5|signal_dist[4]~20_combout\);

-- Location: LABCELL_X81_Y6_N45
\inst5|signal_dist[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[5]~16_combout\ = ( !\inst2|srdato\(15) & ( (((!\inst5|LessThan1~11_combout\ & (\inst2|srdato\(5))) # (\inst5|LessThan1~11_combout\ & ((distortion_value(5)))))) ) ) # ( \inst2|srdato\(15) & ( (!\inst5|LessThan0~8_combout\ & 
-- ((!\inst5|LessThan0~6_combout\ & (\inst2|srdato\(5))) # (\inst5|LessThan0~6_combout\ & (((\inst5|Add0~33_sumout\)))))) # (\inst5|LessThan0~8_combout\ & (((\inst5|Add0~33_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010001110000111100001111000011110100011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(5),
	datab => \inst5|ALT_INV_LessThan0~8_combout\,
	datac => \inst5|ALT_INV_Add0~33_sumout\,
	datad => \inst5|ALT_INV_LessThan0~6_combout\,
	datae => \inst2|ALT_INV_srdato\(15),
	dataf => \inst5|ALT_INV_LessThan1~11_combout\,
	datag => ALT_INV_distortion_value(5),
	combout => \inst5|signal_dist[5]~16_combout\);

-- Location: LABCELL_X81_Y6_N36
\inst5|signal_dist[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[6]~12_combout\ = ( !\inst2|srdato\(15) & ( (((!\inst5|LessThan1~11_combout\ & (\inst2|srdato\(6))) # (\inst5|LessThan1~11_combout\ & ((distortion_value(6)))))) ) ) # ( \inst2|srdato\(15) & ( (!\inst5|LessThan0~6_combout\ & 
-- ((!\inst5|LessThan0~8_combout\ & (\inst2|srdato\(6))) # (\inst5|LessThan0~8_combout\ & (((\inst5|Add0~29_sumout\)))))) # (\inst5|LessThan0~6_combout\ & (((\inst5|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001001110000111100001111000011110010011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~6_combout\,
	datab => \inst2|ALT_INV_srdato\(6),
	datac => \inst5|ALT_INV_Add0~29_sumout\,
	datad => \inst5|ALT_INV_LessThan0~8_combout\,
	datae => \inst2|ALT_INV_srdato\(15),
	dataf => \inst5|ALT_INV_LessThan1~11_combout\,
	datag => ALT_INV_distortion_value(6),
	combout => \inst5|signal_dist[6]~12_combout\);

-- Location: FF_X80_Y6_N34
\inst2|srdato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(7));

-- Location: LABCELL_X81_Y6_N30
\inst5|signal_dist[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[7]~8_combout\ = ( !\inst2|srdato\(15) & ( ((!\inst5|LessThan1~11_combout\ & (\inst2|srdato\(7))) # (\inst5|LessThan1~11_combout\ & (((distortion_value(7)))))) ) ) # ( \inst2|srdato\(15) & ( (!\inst5|LessThan0~6_combout\ & 
-- (((!\inst5|LessThan0~8_combout\ & (\inst2|srdato\(7))) # (\inst5|LessThan0~8_combout\ & ((\inst5|Add0~25_sumout\)))))) # (\inst5|LessThan0~6_combout\ & (((\inst5|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001111001001110010011100110011000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~6_combout\,
	datab => \inst2|ALT_INV_srdato\(7),
	datac => \inst5|ALT_INV_Add0~25_sumout\,
	datad => \inst5|ALT_INV_LessThan1~11_combout\,
	datae => \inst2|ALT_INV_srdato\(15),
	dataf => \inst5|ALT_INV_LessThan0~8_combout\,
	datag => ALT_INV_distortion_value(7),
	combout => \inst5|signal_dist[7]~8_combout\);

-- Location: FF_X81_Y6_N53
\inst2|srdato[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(14),
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[15]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N21
\inst5|signal_dist[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[8]~0_combout\ = ( \inst5|Add0~1_sumout\ & ( (!\inst2|srdato[15]~DUPLICATE_q\ & (((\inst2|srdato\(8) & !\inst5|LessThan1~11_combout\)))) # (\inst2|srdato[15]~DUPLICATE_q\ & (((\inst2|srdato\(8))) # (\inst5|LessThan0~8_combout\))) ) ) # ( 
-- !\inst5|Add0~1_sumout\ & ( (\inst2|srdato\(8) & ((!\inst2|srdato[15]~DUPLICATE_q\ & ((!\inst5|LessThan1~11_combout\))) # (\inst2|srdato[15]~DUPLICATE_q\ & (!\inst5|LessThan0~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000100000011100000010000011111000101010001111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato[15]~DUPLICATE_q\,
	datab => \inst5|ALT_INV_LessThan0~8_combout\,
	datac => \inst2|ALT_INV_srdato\(8),
	datad => \inst5|ALT_INV_LessThan1~11_combout\,
	dataf => \inst5|ALT_INV_Add0~1_sumout\,
	combout => \inst5|signal_dist[8]~0_combout\);

-- Location: LABCELL_X81_Y6_N54
\inst5|signal_dist[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[9]~1_combout\ = ( \inst2|srdato\(9) & ( \inst5|LessThan1~11_combout\ & ( (\inst2|srdato\(15) & (((!\inst5|LessThan0~6_combout\ & !\inst5|LessThan0~8_combout\)) # (\inst5|Add0~37_sumout\))) ) ) ) # ( !\inst2|srdato\(9) & ( 
-- \inst5|LessThan1~11_combout\ & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~8_combout\) # (\inst5|LessThan0~6_combout\)))) ) ) ) # ( \inst2|srdato\(9) & ( !\inst5|LessThan1~11_combout\ & ( ((!\inst2|srdato\(15)) # 
-- ((!\inst5|LessThan0~6_combout\ & !\inst5|LessThan0~8_combout\))) # (\inst5|Add0~37_sumout\) ) ) ) # ( !\inst2|srdato\(9) & ( !\inst5|LessThan1~11_combout\ & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~8_combout\) # 
-- (\inst5|LessThan0~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001111111011101110100000001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~37_sumout\,
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_LessThan0~6_combout\,
	datad => \inst5|ALT_INV_LessThan0~8_combout\,
	datae => \inst2|ALT_INV_srdato\(9),
	dataf => \inst5|ALT_INV_LessThan1~11_combout\,
	combout => \inst5|signal_dist[9]~1_combout\);

-- Location: LABCELL_X81_Y6_N3
\inst5|signal_dist[10]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[10]~2_combout\ = ( \inst2|srdato\(10) & ( \inst5|LessThan1~11_combout\ & ( (\inst2|srdato\(15) & (((!\inst5|LessThan0~8_combout\ & !\inst5|LessThan0~6_combout\)) # (\inst5|Add0~37_sumout\))) ) ) ) # ( !\inst2|srdato\(10) & ( 
-- \inst5|LessThan1~11_combout\ & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~6_combout\) # (\inst5|LessThan0~8_combout\)))) ) ) ) # ( \inst2|srdato\(10) & ( !\inst5|LessThan1~11_combout\ & ( ((!\inst2|srdato\(15)) # 
-- ((!\inst5|LessThan0~8_combout\ & !\inst5|LessThan0~6_combout\))) # (\inst5|Add0~37_sumout\) ) ) ) # ( !\inst2|srdato\(10) & ( !\inst5|LessThan1~11_combout\ & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~6_combout\) # 
-- (\inst5|LessThan0~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001111111011101110100000001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~37_sumout\,
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_LessThan0~8_combout\,
	datad => \inst5|ALT_INV_LessThan0~6_combout\,
	datae => \inst2|ALT_INV_srdato\(10),
	dataf => \inst5|ALT_INV_LessThan1~11_combout\,
	combout => \inst5|signal_dist[10]~2_combout\);

-- Location: LABCELL_X81_Y6_N24
\inst5|signal_dist[11]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[11]~3_combout\ = ( \inst5|LessThan1~11_combout\ & ( \inst2|srdato\(11) & ( (\inst2|srdato\(15) & (((!\inst5|LessThan0~6_combout\ & !\inst5|LessThan0~8_combout\)) # (\inst5|Add0~37_sumout\))) ) ) ) # ( !\inst5|LessThan1~11_combout\ & ( 
-- \inst2|srdato\(11) & ( ((!\inst2|srdato\(15)) # ((!\inst5|LessThan0~6_combout\ & !\inst5|LessThan0~8_combout\))) # (\inst5|Add0~37_sumout\) ) ) ) # ( \inst5|LessThan1~11_combout\ & ( !\inst2|srdato\(11) & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & 
-- ((\inst5|LessThan0~8_combout\) # (\inst5|LessThan0~6_combout\)))) ) ) ) # ( !\inst5|LessThan1~11_combout\ & ( !\inst2|srdato\(11) & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~8_combout\) # (\inst5|LessThan0~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000111111101110111010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~37_sumout\,
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_LessThan0~6_combout\,
	datad => \inst5|ALT_INV_LessThan0~8_combout\,
	datae => \inst5|ALT_INV_LessThan1~11_combout\,
	dataf => \inst2|ALT_INV_srdato\(11),
	combout => \inst5|signal_dist[11]~3_combout\);

-- Location: LABCELL_X81_Y6_N27
\inst5|signal_dist[12]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[12]~4_combout\ = ( \inst5|LessThan1~11_combout\ & ( \inst2|srdato\(12) & ( (\inst2|srdato\(15) & (((!\inst5|LessThan0~8_combout\ & !\inst5|LessThan0~6_combout\)) # (\inst5|Add0~37_sumout\))) ) ) ) # ( !\inst5|LessThan1~11_combout\ & ( 
-- \inst2|srdato\(12) & ( ((!\inst2|srdato\(15)) # ((!\inst5|LessThan0~8_combout\ & !\inst5|LessThan0~6_combout\))) # (\inst5|Add0~37_sumout\) ) ) ) # ( \inst5|LessThan1~11_combout\ & ( !\inst2|srdato\(12) & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & 
-- ((\inst5|LessThan0~6_combout\) # (\inst5|LessThan0~8_combout\)))) ) ) ) # ( !\inst5|LessThan1~11_combout\ & ( !\inst2|srdato\(12) & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~6_combout\) # (\inst5|LessThan0~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000111111101110111010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~37_sumout\,
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_LessThan0~8_combout\,
	datad => \inst5|ALT_INV_LessThan0~6_combout\,
	datae => \inst5|ALT_INV_LessThan1~11_combout\,
	dataf => \inst2|ALT_INV_srdato\(12),
	combout => \inst5|signal_dist[12]~4_combout\);

-- Location: LABCELL_X81_Y6_N0
\inst5|signal_dist[13]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[13]~5_combout\ = ( \inst2|srdato\(13) & ( \inst5|LessThan1~11_combout\ & ( (\inst2|srdato\(15) & (((!\inst5|LessThan0~6_combout\ & !\inst5|LessThan0~8_combout\)) # (\inst5|Add0~37_sumout\))) ) ) ) # ( !\inst2|srdato\(13) & ( 
-- \inst5|LessThan1~11_combout\ & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~8_combout\) # (\inst5|LessThan0~6_combout\)))) ) ) ) # ( \inst2|srdato\(13) & ( !\inst5|LessThan1~11_combout\ & ( ((!\inst2|srdato\(15)) # 
-- ((!\inst5|LessThan0~6_combout\ & !\inst5|LessThan0~8_combout\))) # (\inst5|Add0~37_sumout\) ) ) ) # ( !\inst2|srdato\(13) & ( !\inst5|LessThan1~11_combout\ & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~8_combout\) # 
-- (\inst5|LessThan0~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001111111011101110100000001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~37_sumout\,
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_LessThan0~6_combout\,
	datad => \inst5|ALT_INV_LessThan0~8_combout\,
	datae => \inst2|ALT_INV_srdato\(13),
	dataf => \inst5|ALT_INV_LessThan1~11_combout\,
	combout => \inst5|signal_dist[13]~5_combout\);

-- Location: LABCELL_X81_Y6_N57
\inst5|signal_dist[14]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[14]~6_combout\ = ( \inst2|srdato\(14) & ( \inst5|LessThan1~11_combout\ & ( (\inst2|srdato\(15) & (((!\inst5|LessThan0~8_combout\ & !\inst5|LessThan0~6_combout\)) # (\inst5|Add0~37_sumout\))) ) ) ) # ( !\inst2|srdato\(14) & ( 
-- \inst5|LessThan1~11_combout\ & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~6_combout\) # (\inst5|LessThan0~8_combout\)))) ) ) ) # ( \inst2|srdato\(14) & ( !\inst5|LessThan1~11_combout\ & ( ((!\inst2|srdato\(15)) # 
-- ((!\inst5|LessThan0~8_combout\ & !\inst5|LessThan0~6_combout\))) # (\inst5|Add0~37_sumout\) ) ) ) # ( !\inst2|srdato\(14) & ( !\inst5|LessThan1~11_combout\ & ( (\inst5|Add0~37_sumout\ & (\inst2|srdato\(15) & ((\inst5|LessThan0~6_combout\) # 
-- (\inst5|LessThan0~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001111111011101110100000001000100010011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~37_sumout\,
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_LessThan0~8_combout\,
	datad => \inst5|ALT_INV_LessThan0~6_combout\,
	datae => \inst2|ALT_INV_srdato\(14),
	dataf => \inst5|ALT_INV_LessThan1~11_combout\,
	combout => \inst5|signal_dist[14]~6_combout\);

-- Location: LABCELL_X81_Y6_N18
\inst5|signal_dist[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[15]~7_combout\ = (\inst2|srdato[15]~DUPLICATE_q\ & (((!\inst5|LessThan0~8_combout\ & !\inst5|LessThan0~6_combout\)) # (\inst5|Add0~37_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000101010001010000010101000101000001010100010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato[15]~DUPLICATE_q\,
	datab => \inst5|ALT_INV_LessThan0~8_combout\,
	datac => \inst5|ALT_INV_Add0~37_sumout\,
	datad => \inst5|ALT_INV_LessThan0~6_combout\,
	combout => \inst5|signal_dist[15]~7_combout\);

-- Location: DSP_X86_Y6_N0
\inst5|s1|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \inst5|s1|Mult0~8_AX_bus\,
	ay => \inst5|s1|Mult0~8_AY_bus\,
	resulta => \inst5|s1|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X88_Y8_N30
\inst3|srdato[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[16]~feeder_combout\ = \inst5|s1|Mult0~23\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_Mult0~23\,
	combout => \inst3|srdato[16]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N33
\inst3|srdato[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[15]~feeder_combout\ = \inst5|s1|sample_out\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|ALT_INV_sample_out\(14),
	combout => \inst3|srdato[15]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N6
\inst3|srdato[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[14]~feeder_combout\ = \inst5|s1|sample_out\(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|ALT_INV_sample_out\(13),
	combout => \inst3|srdato[14]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N9
\inst3|srdato[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[13]~feeder_combout\ = \inst5|s1|sample_out\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|ALT_INV_sample_out\(12),
	combout => \inst3|srdato[13]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N12
\inst3|srdato[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[12]~feeder_combout\ = \inst5|s1|sample_out\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|ALT_INV_sample_out\(11),
	combout => \inst3|srdato[12]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N15
\inst3|srdato[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[11]~feeder_combout\ = \inst5|s1|sample_out\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|ALT_INV_sample_out\(10),
	combout => \inst3|srdato[11]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N18
\inst3|srdato[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[10]~feeder_combout\ = ( \inst5|s1|sample_out\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(9),
	combout => \inst3|srdato[10]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N21
\inst3|srdato[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[9]~feeder_combout\ = \inst5|s1|sample_out\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_sample_out\(8),
	combout => \inst3|srdato[9]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N54
\inst3|srdato[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[8]~feeder_combout\ = \inst5|s1|sample_out\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_sample_out\(7),
	combout => \inst3|srdato[8]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N57
\inst3|srdato[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[7]~feeder_combout\ = \inst5|s1|sample_out\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_sample_out\(6),
	combout => \inst3|srdato[7]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N0
\inst3|srdato[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[6]~feeder_combout\ = ( \inst5|s1|sample_out\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(5),
	combout => \inst3|srdato[6]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N3
\inst3|srdato[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[5]~feeder_combout\ = \inst5|s1|sample_out\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_sample_out\(4),
	combout => \inst3|srdato[5]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N36
\inst3|srdato[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[4]~feeder_combout\ = \inst5|s1|sample_out\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s1|ALT_INV_sample_out\(3),
	combout => \inst3|srdato[4]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N39
\inst3|srdato[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[3]~feeder_combout\ = ( \inst5|s1|sample_out\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(2),
	combout => \inst3|srdato[3]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N42
\inst3|srdato[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[2]~feeder_combout\ = ( \inst5|s1|sample_out\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(1),
	combout => \inst3|srdato[2]~feeder_combout\);

-- Location: LABCELL_X88_Y8_N45
\inst3|srdato[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[1]~feeder_combout\ = ( \inst5|s1|sample_out\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(0),
	combout => \inst3|srdato[1]~feeder_combout\);

-- Location: IOIBUF_X89_Y16_N55
\AUD_DACLRCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: FF_X88_Y13_N47
\inst3|daclrcs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_DACLRCK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|daclrcs~q\);

-- Location: LABCELL_X88_Y13_N30
\inst3|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector0~0_combout\ = ( \inst3|daclrcs~q\ & ( (!\inst2|bclks~q\) # (\inst3|ep.e0~q\) ) ) # ( !\inst3|daclrcs~q\ & ( (!\inst3|Selector2~0_combout\ & \inst3|ep.e0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datac => \inst3|ALT_INV_Selector2~0_combout\,
	datad => \inst3|ALT_INV_ep.e0~q\,
	dataf => \inst3|ALT_INV_daclrcs~q\,
	combout => \inst3|Selector0~0_combout\);

-- Location: FF_X88_Y13_N31
\inst3|ep.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e0~q\);

-- Location: LABCELL_X88_Y13_N6
\inst3|es.e1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e1~0_combout\ = ( \inst3|daclrcs~q\ & ( (!\inst3|ep.e0~q\ & !\inst2|bclks~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ep.e0~q\,
	datad => \inst2|ALT_INV_bclks~q\,
	dataf => \inst3|ALT_INV_daclrcs~q\,
	combout => \inst3|es.e1~0_combout\);

-- Location: FF_X88_Y13_N8
\inst3|ep.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|es.e1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e1~q\);

-- Location: FF_X88_Y13_N55
\inst3|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(1));

-- Location: FF_X88_Y13_N59
\inst3|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(0));

-- Location: LABCELL_X88_Y13_N57
\inst3|cbits[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[0]~3_combout\ = !\inst3|ep.e4~q\ $ (!\inst3|cbits\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e4~q\,
	datad => \inst3|ALT_INV_cbits\(0),
	combout => \inst3|cbits[0]~3_combout\);

-- Location: FF_X88_Y13_N58
\inst3|cbits[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y13_N33
\inst3|cbits[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[2]~1_combout\ = ( \inst3|cbits[0]~DUPLICATE_q\ & ( !\inst3|cbits\(2) $ (((!\inst3|ep.e4~q\) # (!\inst3|cbits\(1)))) ) ) # ( !\inst3|cbits[0]~DUPLICATE_q\ & ( \inst3|cbits\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_cbits\(1),
	datad => \inst3|ALT_INV_cbits\(2),
	dataf => \inst3|ALT_INV_cbits[0]~DUPLICATE_q\,
	combout => \inst3|cbits[2]~1_combout\);

-- Location: FF_X88_Y13_N35
\inst3|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(2));

-- Location: LABCELL_X88_Y13_N51
\inst3|cbits[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[3]~0_combout\ = ( \inst3|cbits\(2) & ( !\inst3|cbits\(3) $ (((!\inst3|cbits[1]~DUPLICATE_q\) # ((!\inst3|ep.e4~q\) # (!\inst3|cbits\(0))))) ) ) # ( !\inst3|cbits\(2) & ( \inst3|cbits\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_cbits\(0),
	datad => \inst3|ALT_INV_cbits\(3),
	dataf => \inst3|ALT_INV_cbits\(2),
	combout => \inst3|cbits[3]~0_combout\);

-- Location: FF_X88_Y13_N53
\inst3|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(3));

-- Location: LABCELL_X88_Y13_N9
\inst3|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector1~0_combout\ = ( \inst3|cbits\(3) & ( (\inst3|ep.e4~q\ & ((!\inst3|cbits\(2)) # ((!\inst3|cbits\(0)) # (!\inst3|cbits[1]~DUPLICATE_q\)))) ) ) # ( !\inst3|cbits\(3) & ( \inst3|ep.e4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits\(2),
	datab => \inst3|ALT_INV_cbits\(0),
	datac => \inst3|ALT_INV_ep.e4~q\,
	datad => \inst3|ALT_INV_cbits[1]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_cbits\(3),
	combout => \inst3|Selector1~0_combout\);

-- Location: LABCELL_X88_Y13_N27
\inst3|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector1~1_combout\ = ( \inst2|bclks~q\ & ( ((\inst3|Selector1~0_combout\) # (\inst3|ep.e1~q\)) # (\inst3|ep.e6~q\) ) ) # ( !\inst2|bclks~q\ & ( (((\inst3|ep.e2~q\) # (\inst3|Selector1~0_combout\)) # (\inst3|ep.e1~q\)) # (\inst3|ep.e6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ep.e6~q\,
	datab => \inst3|ALT_INV_ep.e1~q\,
	datac => \inst3|ALT_INV_Selector1~0_combout\,
	datad => \inst3|ALT_INV_ep.e2~q\,
	dataf => \inst2|ALT_INV_bclks~q\,
	combout => \inst3|Selector1~1_combout\);

-- Location: FF_X88_Y13_N28
\inst3|ep.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e2~q\);

-- Location: LABCELL_X88_Y13_N15
\inst3|es.e3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e3~0_combout\ = ( \inst2|bclks~q\ & ( (\inst3|ep.e3~q\) # (\inst3|ep.e2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ep.e2~q\,
	datad => \inst3|ALT_INV_ep.e3~q\,
	dataf => \inst2|ALT_INV_bclks~q\,
	combout => \inst3|es.e3~0_combout\);

-- Location: FF_X88_Y13_N17
\inst3|ep.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|es.e3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e3~q\);

-- Location: LABCELL_X88_Y13_N12
\inst3|es.e4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e4~0_combout\ = ( !\inst2|bclks~q\ & ( \inst3|ep.e3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e3~q\,
	dataf => \inst2|ALT_INV_bclks~q\,
	combout => \inst3|es.e4~0_combout\);

-- Location: FF_X88_Y13_N14
\inst3|ep.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|es.e4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e4~q\);

-- Location: LABCELL_X88_Y13_N54
\inst3|cbits[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[1]~2_combout\ = !\inst3|cbits\(1) $ (((!\inst3|ep.e4~q\) # (!\inst3|cbits[0]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_cbits[0]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_cbits\(1),
	combout => \inst3|cbits[1]~2_combout\);

-- Location: FF_X88_Y13_N56
\inst3|cbits[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y13_N48
\inst3|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector2~0_combout\ = ( \inst3|cbits\(3) & ( (\inst3|cbits[1]~DUPLICATE_q\ & (\inst3|ep.e4~q\ & (\inst3|cbits\(2) & \inst3|cbits\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_cbits\(2),
	datad => \inst3|ALT_INV_cbits\(0),
	dataf => \inst3|ALT_INV_cbits\(3),
	combout => \inst3|Selector2~0_combout\);

-- Location: LABCELL_X88_Y13_N18
\inst3|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector2~1_combout\ = (!\inst3|daclrcs~q\ & (\inst2|bclks~q\ & ((\inst3|ep.e5~q\)))) # (\inst3|daclrcs~q\ & (((\inst3|ep.e5~q\) # (\inst3|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101110111000000110111011100000011011101110000001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datab => \inst3|ALT_INV_daclrcs~q\,
	datac => \inst3|ALT_INV_Selector2~0_combout\,
	datad => \inst3|ALT_INV_ep.e5~q\,
	combout => \inst3|Selector2~1_combout\);

-- Location: FF_X88_Y13_N19
\inst3|ep.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e5~q\);

-- Location: LABCELL_X88_Y13_N21
\inst3|es.e6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e6~0_combout\ = (!\inst2|bclks~q\ & (!\inst3|daclrcs~q\ & \inst3|ep.e5~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datab => \inst3|ALT_INV_daclrcs~q\,
	datac => \inst3|ALT_INV_ep.e5~q\,
	combout => \inst3|es.e6~0_combout\);

-- Location: FF_X88_Y13_N23
\inst3|ep.e6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|es.e6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e6~q\);

-- Location: LABCELL_X88_Y13_N0
\inst3|srdato~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato~1_combout\ = ( \inst3|srdato\(0) & ( ((!\inst3|ep.e6~q\ & !\inst3|ep.e4~q\)) # (\inst3|srdato\(16)) ) ) # ( !\inst3|srdato\(0) & ( (\inst3|srdato\(16) & ((\inst3|ep.e4~q\) # (\inst3|ep.e6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111100011111000111100000111000001111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ep.e6~q\,
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_srdato\(16),
	datae => \inst3|ALT_INV_srdato\(0),
	combout => \inst3|srdato~1_combout\);

-- Location: FF_X88_Y13_N1
\inst3|srdato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato~1_combout\,
	sclr => \inst3|ep.e1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(0));

-- Location: LABCELL_X88_Y13_N24
\inst3|srdato[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[1]~0_combout\ = ( \inst3|ep.e4~q\ & ( !\inst3|ep.e1~q\ ) ) # ( !\inst3|ep.e4~q\ & ( !\inst3|ep.e6~q\ $ (!\inst3|ep.e1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ep.e6~q\,
	datab => \inst3|ALT_INV_ep.e1~q\,
	dataf => \inst3|ALT_INV_ep.e4~q\,
	combout => \inst3|srdato[1]~0_combout\);

-- Location: FF_X88_Y8_N46
\inst3|srdato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[1]~feeder_combout\,
	asdata => \inst3|srdato\(0),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(1));

-- Location: FF_X88_Y8_N44
\inst3|srdato[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[2]~feeder_combout\,
	asdata => \inst3|srdato\(1),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(2));

-- Location: FF_X88_Y8_N40
\inst3|srdato[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[3]~feeder_combout\,
	asdata => \inst3|srdato\(2),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(3));

-- Location: FF_X88_Y8_N38
\inst3|srdato[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[4]~feeder_combout\,
	asdata => \inst3|srdato\(3),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(4));

-- Location: FF_X88_Y8_N5
\inst3|srdato[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[5]~feeder_combout\,
	asdata => \inst3|srdato\(4),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(5));

-- Location: FF_X88_Y8_N1
\inst3|srdato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[6]~feeder_combout\,
	asdata => \inst3|srdato\(5),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(6));

-- Location: FF_X88_Y8_N58
\inst3|srdato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[7]~feeder_combout\,
	asdata => \inst3|srdato\(6),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(7));

-- Location: FF_X88_Y8_N55
\inst3|srdato[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[8]~feeder_combout\,
	asdata => \inst3|srdato\(7),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(8));

-- Location: FF_X88_Y8_N23
\inst3|srdato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[9]~feeder_combout\,
	asdata => \inst3|srdato\(8),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(9));

-- Location: FF_X88_Y8_N20
\inst3|srdato[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[10]~feeder_combout\,
	asdata => \inst3|srdato\(9),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(10));

-- Location: FF_X88_Y8_N17
\inst3|srdato[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[11]~feeder_combout\,
	asdata => \inst3|srdato\(10),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(11));

-- Location: FF_X88_Y8_N14
\inst3|srdato[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[12]~feeder_combout\,
	asdata => \inst3|srdato\(11),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(12));

-- Location: FF_X88_Y8_N11
\inst3|srdato[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[13]~feeder_combout\,
	asdata => \inst3|srdato\(12),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(13));

-- Location: FF_X88_Y8_N8
\inst3|srdato[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[14]~feeder_combout\,
	asdata => \inst3|srdato\(13),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(14));

-- Location: FF_X88_Y8_N35
\inst3|srdato[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[15]~feeder_combout\,
	asdata => \inst3|srdato\(14),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(15));

-- Location: FF_X88_Y8_N31
\inst3|srdato[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato[16]~feeder_combout\,
	asdata => \inst3|srdato\(15),
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(16));

-- Location: LABCELL_X85_Y4_N0
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( volume_value(3) & ( (!volume_value(0) & (!volume_value(2) & (!volume_value(1) $ (volume_value(4))))) # (volume_value(0) & (!volume_value(1) $ ((!volume_value(4))))) ) ) # ( !volume_value(3) & ( (!volume_value(1) & (!volume_value(4) & 
-- (!volume_value(0) $ (!volume_value(2))))) # (volume_value(1) & (volume_value(4) & (!volume_value(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010010000000110001001000010010110000001101001011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(1),
	datab => ALT_INV_volume_value(4),
	datac => ALT_INV_volume_value(0),
	datad => ALT_INV_volume_value(2),
	dataf => ALT_INV_volume_value(3),
	combout => \Mux33~0_combout\);

-- Location: MLABCELL_X87_Y6_N24
\Mux43~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = ( volume_value(5) & ( volume_value(3) & ( (volume_value(7) & (volume_value(0) & (volume_value(1) & !volume_value(4)))) ) ) ) # ( !volume_value(5) & ( !volume_value(3) & ( (volume_value(7) & (!volume_value(0) & (volume_value(1) & 
-- volume_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(7),
	datab => ALT_INV_volume_value(0),
	datac => ALT_INV_volume_value(1),
	datad => ALT_INV_volume_value(4),
	datae => ALT_INV_volume_value(5),
	dataf => ALT_INV_volume_value(3),
	combout => \Mux43~3_combout\);

-- Location: MLABCELL_X87_Y6_N18
\Mux43~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = ( volume_value(5) & ( volume_value(3) & ( (!volume_value(7) & (volume_value(0) & (!volume_value(1) & volume_value(4)))) ) ) ) # ( volume_value(5) & ( !volume_value(3) & ( (!volume_value(7) & (!volume_value(0) & (!volume_value(1) & 
-- !volume_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(7),
	datab => ALT_INV_volume_value(0),
	datac => ALT_INV_volume_value(1),
	datad => ALT_INV_volume_value(4),
	datae => ALT_INV_volume_value(5),
	dataf => ALT_INV_volume_value(3),
	combout => \Mux43~2_combout\);

-- Location: MLABCELL_X87_Y6_N0
\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( !volume_value(5) & ( volume_value(3) & ( (!volume_value(7) & (volume_value(0) & (!volume_value(1) & volume_value(4)))) ) ) ) # ( volume_value(5) & ( !volume_value(3) & ( (!volume_value(7) & (!volume_value(0) & (volume_value(1) & 
-- volume_value(4)))) ) ) ) # ( !volume_value(5) & ( !volume_value(3) & ( (!volume_value(7) & (!volume_value(0) & (!volume_value(1) & !volume_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000100000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(7),
	datab => ALT_INV_volume_value(0),
	datac => ALT_INV_volume_value(1),
	datad => ALT_INV_volume_value(4),
	datae => ALT_INV_volume_value(5),
	dataf => ALT_INV_volume_value(3),
	combout => \Mux43~0_combout\);

-- Location: MLABCELL_X87_Y6_N54
\Mux43~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = ( volume_value(5) & ( volume_value(3) & ( (volume_value(7) & (!volume_value(0) & (volume_value(1) & volume_value(4)))) ) ) ) # ( !volume_value(5) & ( volume_value(3) & ( (!volume_value(4) & ((!volume_value(7) & (volume_value(0) & 
-- volume_value(1))) # (volume_value(7) & (!volume_value(0) & !volume_value(1))))) ) ) ) # ( volume_value(5) & ( !volume_value(3) & ( (volume_value(7) & (volume_value(0) & (!volume_value(1) & !volume_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000001000010000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(7),
	datab => ALT_INV_volume_value(0),
	datac => ALT_INV_volume_value(1),
	datad => ALT_INV_volume_value(4),
	datae => ALT_INV_volume_value(5),
	dataf => ALT_INV_volume_value(3),
	combout => \Mux43~4_combout\);

-- Location: MLABCELL_X87_Y6_N12
\Mux43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = ( volume_value(2) & ( volume_value(6) & ( \Mux43~2_combout\ ) ) ) # ( !volume_value(2) & ( volume_value(6) & ( \Mux43~4_combout\ ) ) ) # ( volume_value(2) & ( !volume_value(6) & ( \Mux43~3_combout\ ) ) ) # ( !volume_value(2) & ( 
-- !volume_value(6) & ( \Mux43~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux43~3_combout\,
	datab => \ALT_INV_Mux43~2_combout\,
	datac => \ALT_INV_Mux43~0_combout\,
	datad => \ALT_INV_Mux43~4_combout\,
	datae => ALT_INV_volume_value(2),
	dataf => ALT_INV_volume_value(6),
	combout => \Mux43~1_combout\);

-- Location: LABCELL_X85_Y4_N36
\LEDR[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[0]$latch~combout\ = ( \LEDR[0]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Mux33~0_combout\) ) ) # ( !\LEDR[0]$latch~combout\ & ( (\Mux33~0_combout\ & \Mux43~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux33~0_combout\,
	datad => \ALT_INV_Mux43~1_combout\,
	dataf => \ALT_INV_LEDR[0]$latch~combout\,
	combout => \LEDR[0]$latch~combout\);

-- Location: LABCELL_X85_Y4_N39
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( volume_value(0) & ( (!volume_value(2) & (!volume_value(4) & (!volume_value(1) $ (volume_value(3))))) # (volume_value(2) & (volume_value(3) & (!volume_value(1) $ (!volume_value(4))))) ) ) # ( !volume_value(0) & ( (!volume_value(1) & 
-- (!volume_value(4) & (!volume_value(2) $ (!volume_value(3))))) # (volume_value(1) & (volume_value(4) & ((!volume_value(2)) # (!volume_value(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100001010100001010000101010010000101000000101000010100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(1),
	datab => ALT_INV_volume_value(2),
	datac => ALT_INV_volume_value(3),
	datad => ALT_INV_volume_value(4),
	dataf => ALT_INV_volume_value(0),
	combout => \Mux34~0_combout\);

-- Location: LABCELL_X85_Y4_N3
\LEDR[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[1]$latch~combout\ = ( \LEDR[1]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Mux34~0_combout\) ) ) # ( !\LEDR[1]$latch~combout\ & ( (\Mux34~0_combout\ & \Mux43~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux34~0_combout\,
	datad => \ALT_INV_Mux43~1_combout\,
	dataf => \ALT_INV_LEDR[1]$latch~combout\,
	combout => \LEDR[1]$latch~combout\);

-- Location: LABCELL_X85_Y4_N12
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( volume_value(3) & ( (!volume_value(0) & (!volume_value(2) & (!volume_value(1) $ (volume_value(4))))) # (volume_value(0) & ((!volume_value(1) & (volume_value(2) & volume_value(4))) # (volume_value(1) & ((!volume_value(4)))))) ) ) # ( 
-- !volume_value(3) & ( (!volume_value(0) & (volume_value(2) & (!volume_value(1) $ (volume_value(4))))) # (volume_value(0) & (!volume_value(2) & (!volume_value(1) & !volume_value(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000010011000000000001010000101000110001000010100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(0),
	datab => ALT_INV_volume_value(2),
	datac => ALT_INV_volume_value(1),
	datad => ALT_INV_volume_value(4),
	dataf => ALT_INV_volume_value(3),
	combout => \Mux35~0_combout\);

-- Location: LABCELL_X85_Y4_N42
\LEDR[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[2]$latch~combout\ = ( \LEDR[2]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Mux35~0_combout\) ) ) # ( !\LEDR[2]$latch~combout\ & ( (\Mux43~1_combout\ & \Mux35~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux43~1_combout\,
	datad => \ALT_INV_Mux35~0_combout\,
	dataf => \ALT_INV_LEDR[2]$latch~combout\,
	combout => \LEDR[2]$latch~combout\);

-- Location: LABCELL_X85_Y4_N21
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( volume_value(0) & ( (!volume_value(2) & (!volume_value(1) & (!volume_value(3) & !volume_value(4)))) # (volume_value(2) & (volume_value(3) & (!volume_value(1) $ (!volume_value(4))))) ) ) # ( !volume_value(0) & ( (!volume_value(1) & 
-- (!volume_value(4) & (!volume_value(2) $ (!volume_value(3))))) # (volume_value(1) & (volume_value(4) & (!volume_value(2) $ (!volume_value(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000010100001010000001010010000001000000101000000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(1),
	datab => ALT_INV_volume_value(2),
	datac => ALT_INV_volume_value(3),
	datad => ALT_INV_volume_value(4),
	dataf => ALT_INV_volume_value(0),
	combout => \Mux36~0_combout\);

-- Location: LABCELL_X85_Y4_N18
\LEDR[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[3]$latch~combout\ = ( \LEDR[3]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Mux36~0_combout\) ) ) # ( !\LEDR[3]$latch~combout\ & ( (\Mux36~0_combout\ & \Mux43~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_Mux43~1_combout\,
	dataf => \ALT_INV_LEDR[3]$latch~combout\,
	combout => \LEDR[3]$latch~combout\);

-- Location: LABCELL_X85_Y4_N24
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( volume_value(3) & ( (!volume_value(0) & (!volume_value(2) & (!volume_value(1) $ (volume_value(4))))) # (volume_value(0) & (volume_value(2) & (!volume_value(1) $ (!volume_value(4))))) ) ) # ( !volume_value(3) & ( (!volume_value(1) & 
-- (!volume_value(4) & (volume_value(0) & !volume_value(2)))) # (volume_value(1) & (volume_value(4) & (!volume_value(0) & volume_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000010000000010000001000010010000000001101001000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(1),
	datab => ALT_INV_volume_value(4),
	datac => ALT_INV_volume_value(0),
	datad => ALT_INV_volume_value(2),
	dataf => ALT_INV_volume_value(3),
	combout => \Mux37~0_combout\);

-- Location: LABCELL_X85_Y4_N57
\LEDR[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[4]$latch~combout\ = ( \LEDR[4]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Mux37~0_combout\) ) ) # ( !\LEDR[4]$latch~combout\ & ( (\Mux43~1_combout\ & \Mux37~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux43~1_combout\,
	datad => \ALT_INV_Mux37~0_combout\,
	dataf => \ALT_INV_LEDR[4]$latch~combout\,
	combout => \LEDR[4]$latch~combout\);

-- Location: LABCELL_X85_Y4_N33
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( volume_value(0) & ( (!volume_value(4) & ((!volume_value(1) & (!volume_value(2) & !volume_value(3))) # (volume_value(1) & (volume_value(2) & volume_value(3))))) ) ) # ( !volume_value(0) & ( (!volume_value(1) & (!volume_value(2) & 
-- (volume_value(3) & !volume_value(4)))) # (volume_value(1) & (volume_value(4) & (!volume_value(2) $ (!volume_value(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000010100000010000001010010000001000000001000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(1),
	datab => ALT_INV_volume_value(2),
	datac => ALT_INV_volume_value(3),
	datad => ALT_INV_volume_value(4),
	dataf => ALT_INV_volume_value(0),
	combout => \Mux38~0_combout\);

-- Location: LABCELL_X85_Y4_N9
\LEDR[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[5]$latch~combout\ = ( \LEDR[5]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Mux38~0_combout\) ) ) # ( !\LEDR[5]$latch~combout\ & ( (\Mux43~1_combout\ & \Mux38~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux43~1_combout\,
	datad => \ALT_INV_Mux38~0_combout\,
	dataf => \ALT_INV_LEDR[5]$latch~combout\,
	combout => \LEDR[5]$latch~combout\);

-- Location: LABCELL_X85_Y4_N6
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( volume_value(3) & ( (!volume_value(0) & (!volume_value(2) & (!volume_value(1) $ (volume_value(4))))) # (volume_value(0) & (volume_value(2) & (volume_value(1) & !volume_value(4)))) ) ) # ( !volume_value(3) & ( (volume_value(0) & 
-- (!volume_value(2) & (!volume_value(1) & !volume_value(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000010000001000010001000000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(0),
	datab => ALT_INV_volume_value(2),
	datac => ALT_INV_volume_value(1),
	datad => ALT_INV_volume_value(4),
	dataf => ALT_INV_volume_value(3),
	combout => \Mux39~0_combout\);

-- Location: LABCELL_X85_Y4_N30
\LEDR[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[6]$latch~combout\ = ( \LEDR[6]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Mux39~0_combout\) ) ) # ( !\LEDR[6]$latch~combout\ & ( (\Mux39~0_combout\ & \Mux43~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux39~0_combout\,
	datad => \ALT_INV_Mux43~1_combout\,
	dataf => \ALT_INV_LEDR[6]$latch~combout\,
	combout => \LEDR[6]$latch~combout\);

-- Location: LABCELL_X85_Y4_N54
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( volume_value(3) & ( (!volume_value(0) & (!volume_value(2) & (!volume_value(1) $ (volume_value(4))))) ) ) # ( !volume_value(3) & ( (volume_value(0) & (!volume_value(2) & (!volume_value(1) & !volume_value(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000010000000000010001000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(0),
	datab => ALT_INV_volume_value(2),
	datac => ALT_INV_volume_value(1),
	datad => ALT_INV_volume_value(4),
	dataf => ALT_INV_volume_value(3),
	combout => \Mux40~0_combout\);

-- Location: LABCELL_X85_Y4_N15
\LEDR[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[7]$latch~combout\ = ( \LEDR[7]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Mux40~0_combout\) ) ) # ( !\LEDR[7]$latch~combout\ & ( (\Mux43~1_combout\ & \Mux40~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux43~1_combout\,
	datad => \ALT_INV_Mux40~0_combout\,
	dataf => \ALT_INV_LEDR[7]$latch~combout\,
	combout => \LEDR[7]$latch~combout\);

-- Location: LABCELL_X85_Y4_N51
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( volume_value(0) & ( (!volume_value(1) & (!volume_value(2) & (!volume_value(3) & !volume_value(4)))) ) ) # ( !volume_value(0) & ( (volume_value(1) & (!volume_value(2) & (volume_value(3) & volume_value(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_volume_value(1),
	datab => ALT_INV_volume_value(2),
	datac => ALT_INV_volume_value(3),
	datad => ALT_INV_volume_value(4),
	dataf => ALT_INV_volume_value(0),
	combout => \Mux41~0_combout\);

-- Location: LABCELL_X85_Y4_N48
\LEDR[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[8]$latch~combout\ = ( \LEDR[8]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Mux41~0_combout\) ) ) # ( !\LEDR[8]$latch~combout\ & ( (\Mux41~0_combout\ & \Mux43~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux41~0_combout\,
	datad => \ALT_INV_Mux43~1_combout\,
	dataf => \ALT_INV_LEDR[8]$latch~combout\,
	combout => \LEDR[8]$latch~combout\);

-- Location: LABCELL_X85_Y4_N27
\LEDR[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[9]$latch~combout\ = ( \LEDR[9]$latch~combout\ & ( (!\Mux43~1_combout\) # (\Equal0~1_combout\) ) ) # ( !\LEDR[9]$latch~combout\ & ( (\Equal0~1_combout\ & \Mux43~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Mux43~1_combout\,
	dataf => \ALT_INV_LEDR[9]$latch~combout\,
	combout => \LEDR[9]$latch~combout\);

-- Location: LABCELL_X85_Y11_N0
\inst4|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~41_sumout\ = SUM(( \inst4|clkdiv\(0) ) + ( \inst4|clkdiv\(1) ) + ( !VCC ))
-- \inst4|Add0~42\ = CARRY(( \inst4|clkdiv\(0) ) + ( \inst4|clkdiv\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clkdiv\(1),
	datab => \inst4|ALT_INV_clkdiv\(0),
	cin => GND,
	sumout => \inst4|Add0~41_sumout\,
	cout => \inst4|Add0~42\);

-- Location: FF_X85_Y11_N2
\inst4|clkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(1));

-- Location: LABCELL_X85_Y11_N3
\inst4|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~37_sumout\ = SUM(( \inst4|clkdiv\(2) ) + ( GND ) + ( \inst4|Add0~42\ ))
-- \inst4|Add0~38\ = CARRY(( \inst4|clkdiv\(2) ) + ( GND ) + ( \inst4|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clkdiv\(2),
	cin => \inst4|Add0~42\,
	sumout => \inst4|Add0~37_sumout\,
	cout => \inst4|Add0~38\);

-- Location: FF_X85_Y11_N4
\inst4|clkdiv[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(2));

-- Location: LABCELL_X85_Y11_N6
\inst4|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~33_sumout\ = SUM(( \inst4|clkdiv\(3) ) + ( GND ) + ( \inst4|Add0~38\ ))
-- \inst4|Add0~34\ = CARRY(( \inst4|clkdiv\(3) ) + ( GND ) + ( \inst4|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clkdiv\(3),
	cin => \inst4|Add0~38\,
	sumout => \inst4|Add0~33_sumout\,
	cout => \inst4|Add0~34\);

-- Location: FF_X85_Y11_N7
\inst4|clkdiv[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(3));

-- Location: LABCELL_X85_Y11_N9
\inst4|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~29_sumout\ = SUM(( \inst4|clkdiv\(4) ) + ( GND ) + ( \inst4|Add0~34\ ))
-- \inst4|Add0~30\ = CARRY(( \inst4|clkdiv\(4) ) + ( GND ) + ( \inst4|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clkdiv\(4),
	cin => \inst4|Add0~34\,
	sumout => \inst4|Add0~29_sumout\,
	cout => \inst4|Add0~30\);

-- Location: FF_X85_Y11_N10
\inst4|clkdiv[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(4));

-- Location: LABCELL_X85_Y11_N12
\inst4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~25_sumout\ = SUM(( \inst4|clkdiv\(5) ) + ( GND ) + ( \inst4|Add0~30\ ))
-- \inst4|Add0~26\ = CARRY(( \inst4|clkdiv\(5) ) + ( GND ) + ( \inst4|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clkdiv\(5),
	cin => \inst4|Add0~30\,
	sumout => \inst4|Add0~25_sumout\,
	cout => \inst4|Add0~26\);

-- Location: FF_X85_Y11_N13
\inst4|clkdiv[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(5));

-- Location: LABCELL_X85_Y11_N15
\inst4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~21_sumout\ = SUM(( \inst4|clkdiv\(6) ) + ( GND ) + ( \inst4|Add0~26\ ))
-- \inst4|Add0~22\ = CARRY(( \inst4|clkdiv\(6) ) + ( GND ) + ( \inst4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clkdiv\(6),
	cin => \inst4|Add0~26\,
	sumout => \inst4|Add0~21_sumout\,
	cout => \inst4|Add0~22\);

-- Location: FF_X85_Y11_N16
\inst4|clkdiv[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(6));

-- Location: LABCELL_X85_Y11_N18
\inst4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~17_sumout\ = SUM(( \inst4|clkdiv\(7) ) + ( GND ) + ( \inst4|Add0~22\ ))
-- \inst4|Add0~18\ = CARRY(( \inst4|clkdiv\(7) ) + ( GND ) + ( \inst4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clkdiv\(7),
	cin => \inst4|Add0~22\,
	sumout => \inst4|Add0~17_sumout\,
	cout => \inst4|Add0~18\);

-- Location: FF_X85_Y11_N19
\inst4|clkdiv[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(7));

-- Location: LABCELL_X85_Y11_N21
\inst4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~13_sumout\ = SUM(( \inst4|clkdiv\(8) ) + ( GND ) + ( \inst4|Add0~18\ ))
-- \inst4|Add0~14\ = CARRY(( \inst4|clkdiv\(8) ) + ( GND ) + ( \inst4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clkdiv\(8),
	cin => \inst4|Add0~18\,
	sumout => \inst4|Add0~13_sumout\,
	cout => \inst4|Add0~14\);

-- Location: FF_X85_Y11_N22
\inst4|clkdiv[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(8));

-- Location: LABCELL_X85_Y11_N24
\inst4|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~9_sumout\ = SUM(( \inst4|clkdiv\(9) ) + ( GND ) + ( \inst4|Add0~14\ ))
-- \inst4|Add0~10\ = CARRY(( \inst4|clkdiv\(9) ) + ( GND ) + ( \inst4|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clkdiv\(9),
	cin => \inst4|Add0~14\,
	sumout => \inst4|Add0~9_sumout\,
	cout => \inst4|Add0~10\);

-- Location: FF_X85_Y11_N25
\inst4|clkdiv[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(9));

-- Location: LABCELL_X85_Y11_N27
\inst4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_sumout\ = SUM(( \inst4|clkdiv\(10) ) + ( GND ) + ( \inst4|Add0~10\ ))
-- \inst4|Add0~6\ = CARRY(( \inst4|clkdiv\(10) ) + ( GND ) + ( \inst4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clkdiv\(10),
	cin => \inst4|Add0~10\,
	sumout => \inst4|Add0~5_sumout\,
	cout => \inst4|Add0~6\);

-- Location: FF_X85_Y11_N28
\inst4|clkdiv[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(10));

-- Location: LABCELL_X85_Y11_N30
\inst4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_sumout\ = SUM(( \inst4|clkdiv\(11) ) + ( GND ) + ( \inst4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clkdiv\(11),
	cin => \inst4|Add0~6\,
	sumout => \inst4|Add0~1_sumout\);

-- Location: FF_X85_Y11_N47
\inst4|clkdiv[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \inst4|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(11));

-- Location: MLABCELL_X84_Y11_N48
\inst4|cs_cycle[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[2]~2_combout\ = ( \inst4|cs_cycle[0]~DUPLICATE_q\ & ( \inst4|cs_cycle\(2) & ( (!\inst4|cs_cycle\(1)) # ((!\inst4|ep.conf1~q\ & (!\inst4|ep.rd1~q\ & !\inst4|ep.save~q\))) ) ) ) # ( !\inst4|cs_cycle[0]~DUPLICATE_q\ & ( \inst4|cs_cycle\(2) ) 
-- ) # ( \inst4|cs_cycle[0]~DUPLICATE_q\ & ( !\inst4|cs_cycle\(2) & ( (\inst4|cs_cycle\(1) & (((\inst4|ep.save~q\) # (\inst4|ep.rd1~q\)) # (\inst4|ep.conf1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110000111111111111111111111111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf1~q\,
	datab => \inst4|ALT_INV_ep.rd1~q\,
	datac => \inst4|ALT_INV_cs_cycle\(1),
	datad => \inst4|ALT_INV_ep.save~q\,
	datae => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_cs_cycle\(2),
	combout => \inst4|cs_cycle[2]~2_combout\);

-- Location: FF_X84_Y11_N44
\inst4|cs_cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(2));

-- Location: FF_X84_Y11_N53
\inst4|cs_cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(0));

-- Location: MLABCELL_X84_Y11_N42
\inst4|cs_cycle[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[3]~1_combout\ = ( \inst4|cs_cycle\(0) & ( !\inst4|cs_cycle\(3) $ (((!\inst4|cs_cycle\(1)) # ((!\inst4|cs~combout\) # (!\inst4|cs_cycle\(2))))) ) ) # ( !\inst4|cs_cycle\(0) & ( \inst4|cs_cycle\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(1),
	datab => \inst4|ALT_INV_cs_cycle\(3),
	datac => \inst4|ALT_INV_cs~combout\,
	datad => \inst4|ALT_INV_cs_cycle\(2),
	dataf => \inst4|ALT_INV_cs_cycle\(0),
	combout => \inst4|cs_cycle[3]~1_combout\);

-- Location: FF_X84_Y11_N8
\inst4|cs_cycle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(3));

-- Location: MLABCELL_X84_Y11_N24
\inst4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = ( \inst4|cs_cycle\(3) & ( (\inst4|cs_cycle[0]~DUPLICATE_q\ & (\inst4|cs_cycle\(2) & \inst4|cs_cycle\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_cs_cycle\(2),
	datad => \inst4|ALT_INV_cs_cycle\(1),
	dataf => \inst4|ALT_INV_cs_cycle\(3),
	combout => \inst4|Equal2~0_combout\);

-- Location: IOIBUF_X89_Y15_N4
\ADC_DOUT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_DOUT,
	o => \ADC_DOUT~input_o\);

-- Location: MLABCELL_X84_Y11_N18
\inst4|sr_dout[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[0]~feeder_combout\ = ( \ADC_DOUT~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ADC_DOUT~input_o\,
	combout => \inst4|sr_dout[0]~feeder_combout\);

-- Location: FF_X84_Y11_N20
\inst4|sr_dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[0]~feeder_combout\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(0));

-- Location: MLABCELL_X84_Y11_N12
\inst4|sr_dout[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[1]~feeder_combout\ = ( \inst4|sr_dout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(0),
	combout => \inst4|sr_dout[1]~feeder_combout\);

-- Location: FF_X84_Y11_N14
\inst4|sr_dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[1]~feeder_combout\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(1));

-- Location: MLABCELL_X84_Y11_N57
\inst4|sr_dout[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[2]~feeder_combout\ = ( \inst4|sr_dout\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(1),
	combout => \inst4|sr_dout[2]~feeder_combout\);

-- Location: FF_X84_Y11_N58
\inst4|sr_dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[2]~feeder_combout\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(2));

-- Location: MLABCELL_X84_Y11_N39
\inst4|sr_dout[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[3]~feeder_combout\ = ( \inst4|sr_dout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(2),
	combout => \inst4|sr_dout[3]~feeder_combout\);

-- Location: FF_X84_Y11_N41
\inst4|sr_dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[3]~feeder_combout\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(3));

-- Location: MLABCELL_X84_Y11_N54
\inst4|sr_dout[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[4]~feeder_combout\ = ( \inst4|sr_dout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(3),
	combout => \inst4|sr_dout[4]~feeder_combout\);

-- Location: FF_X84_Y11_N56
\inst4|sr_dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[4]~feeder_combout\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(4));

-- Location: FF_X84_Y11_N38
\inst4|sr_dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(4),
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(5));

-- Location: FF_X84_Y11_N59
\inst4|sr_dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(5),
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(6));

-- Location: FF_X84_Y11_N55
\inst4|sr_dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(6),
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(7));

-- Location: FF_X84_Y11_N23
\inst4|sr_dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(7),
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(8));

-- Location: FF_X84_Y11_N19
\inst4|sr_dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(8),
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(9));

-- Location: MLABCELL_X84_Y11_N15
\inst4|sr_dout[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[10]~feeder_combout\ = ( \inst4|sr_dout\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(9),
	combout => \inst4|sr_dout[10]~feeder_combout\);

-- Location: FF_X84_Y11_N16
\inst4|sr_dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[10]~feeder_combout\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(10));

-- Location: FF_X84_Y11_N13
\inst4|sr_dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(10),
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(11));

-- Location: FF_X84_Y11_N40
\inst4|sr_dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(11),
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(12));

-- Location: MLABCELL_X84_Y11_N36
\inst4|sr_dout[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[13]~feeder_combout\ = \inst4|sr_dout\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_sr_dout\(12),
	combout => \inst4|sr_dout[13]~feeder_combout\);

-- Location: FF_X84_Y11_N37
\inst4|sr_dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[13]~feeder_combout\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(13));

-- Location: MLABCELL_X87_Y11_N45
\inst4|es.sready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|es.sready~0_combout\ = ( \inst4|sr_dout\(13) & ( \inst4|ep.save~q\ & ( !\inst4|sr_dout\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sr_dout\(12),
	datae => \inst4|ALT_INV_sr_dout\(13),
	dataf => \inst4|ALT_INV_ep.save~q\,
	combout => \inst4|es.sready~0_combout\);

-- Location: FF_X87_Y11_N46
\inst4|ep.sready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|es.sready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.sready~q\);

-- Location: MLABCELL_X87_Y11_N27
\inst4|cmd_addr[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[1]~0_combout\ = !\inst4|cmd_addr\(1) $ (((!\inst4|cmd_addr\(0)) # (\inst4|ep.conf0~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010100001111101001010000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	datac => \inst4|ALT_INV_cmd_addr\(1),
	datad => \inst4|ALT_INV_cmd_addr\(0),
	combout => \inst4|cmd_addr[1]~0_combout\);

-- Location: FF_X87_Y11_N43
\inst4|cmd_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cmd_addr[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cmd_addr\(1));

-- Location: MLABCELL_X84_Y11_N33
\inst4|es.conf0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|es.conf0~0_combout\ = ( \inst4|cmd_addr\(1) & ( (!\inst4|ep.conf1~q\) # ((!\inst4|Equal2~0_combout\) # (\inst4|cmd_addr\(0))) ) ) # ( !\inst4|cmd_addr\(1) & ( (!\inst4|ep.conf1~q\) # (!\inst4|Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf1~q\,
	datab => \inst4|ALT_INV_Equal2~0_combout\,
	datad => \inst4|ALT_INV_cmd_addr\(0),
	dataf => \inst4|ALT_INV_cmd_addr\(1),
	combout => \inst4|es.conf0~0_combout\);

-- Location: FF_X84_Y11_N35
\inst4|ep.conf0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|es.conf0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.conf0~q\);

-- Location: LABCELL_X85_Y11_N42
\inst4|cmd_addr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[0]~1_combout\ = !\inst4|cmd_addr\(0) $ (\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cmd_addr\(0),
	datac => \inst4|ALT_INV_ep.conf0~q\,
	combout => \inst4|cmd_addr[0]~1_combout\);

-- Location: FF_X87_Y11_N29
\inst4|cmd_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cmd_addr[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cmd_addr\(0));

-- Location: MLABCELL_X84_Y11_N30
\inst4|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = ( \inst4|cmd_addr\(1) & ( ((\inst4|ep.conf1~q\ & (\inst4|Equal2~0_combout\ & \inst4|cmd_addr\(0)))) # (\inst4|ep.sready~q\) ) ) # ( !\inst4|cmd_addr\(1) & ( \inst4|ep.sready~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf1~q\,
	datab => \inst4|ALT_INV_Equal2~0_combout\,
	datac => \inst4|ALT_INV_ep.sready~q\,
	datad => \inst4|ALT_INV_cmd_addr\(0),
	dataf => \inst4|ALT_INV_cmd_addr\(1),
	combout => \inst4|Selector1~0_combout\);

-- Location: FF_X84_Y11_N31
\inst4|ep.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.idle~q\);

-- Location: MLABCELL_X84_Y11_N27
\inst4|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector2~0_combout\ = ( \inst4|sr_dout\(12) & ( (\inst4|ep.save~q\) # (\inst4|ep.idle~q\) ) ) # ( !\inst4|sr_dout\(12) & ( ((\inst4|ep.save~q\ & !\inst4|sr_dout\(13))) # (\inst4|ep.idle~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.idle~q\,
	datac => \inst4|ALT_INV_ep.save~q\,
	datad => \inst4|ALT_INV_sr_dout\(13),
	dataf => \inst4|ALT_INV_sr_dout\(12),
	combout => \inst4|Selector2~0_combout\);

-- Location: FF_X84_Y11_N28
\inst4|ep.rd0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.rd0~q\);

-- Location: MLABCELL_X84_Y11_N6
\inst4|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = ( \inst4|cs_cycle\(3) & ( \inst4|ep.rd1~q\ & ( (!\inst4|cs_cycle\(1)) # ((!\inst4|cs_cycle\(2)) # ((\inst4|cs_cycle[0]~DUPLICATE_q\) # (\inst4|ep.rd0~q\))) ) ) ) # ( !\inst4|cs_cycle\(3) & ( \inst4|ep.rd1~q\ ) ) # ( 
-- \inst4|cs_cycle\(3) & ( !\inst4|ep.rd1~q\ & ( \inst4|ep.rd0~q\ ) ) ) # ( !\inst4|cs_cycle\(3) & ( !\inst4|ep.rd1~q\ & ( \inst4|ep.rd0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(1),
	datab => \inst4|ALT_INV_cs_cycle\(2),
	datac => \inst4|ALT_INV_ep.rd0~q\,
	datad => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	datae => \inst4|ALT_INV_cs_cycle\(3),
	dataf => \inst4|ALT_INV_ep.rd1~q\,
	combout => \inst4|Selector3~0_combout\);

-- Location: FF_X84_Y11_N11
\inst4|ep.rd1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|Selector3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.rd1~q\);

-- Location: MLABCELL_X84_Y11_N0
\inst4|cs_cycle[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[1]~3_combout\ = ( \inst4|ep.save~q\ & ( !\inst4|cs_cycle\(1) $ (!\inst4|cs_cycle[0]~DUPLICATE_q\) ) ) # ( !\inst4|ep.save~q\ & ( !\inst4|cs_cycle\(1) $ (((!\inst4|cs_cycle[0]~DUPLICATE_q\) # ((!\inst4|ep.rd1~q\ & !\inst4|ep.conf1~q\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101101010010101010110101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(1),
	datab => \inst4|ALT_INV_ep.rd1~q\,
	datac => \inst4|ALT_INV_ep.conf1~q\,
	datad => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_ep.save~q\,
	combout => \inst4|cs_cycle[1]~3_combout\);

-- Location: FF_X84_Y11_N26
\inst4|cs_cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[1]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(1));

-- Location: MLABCELL_X84_Y11_N45
\inst4|es.save~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|es.save~0_combout\ = ( \inst4|cs_cycle\(2) & ( (\inst4|cs_cycle\(1) & (\inst4|cs_cycle\(3) & (\inst4|ep.rd1~q\ & !\inst4|cs_cycle[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(1),
	datab => \inst4|ALT_INV_cs_cycle\(3),
	datac => \inst4|ALT_INV_ep.rd1~q\,
	datad => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_cs_cycle\(2),
	combout => \inst4|es.save~0_combout\);

-- Location: FF_X84_Y11_N46
\inst4|ep.save\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|es.save~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.save~q\);

-- Location: LABCELL_X85_Y11_N48
\inst4|cs_cycle[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[0]~0_combout\ = ( \inst4|ep.rd1~q\ & ( !\inst4|cs_cycle[0]~DUPLICATE_q\ ) ) # ( !\inst4|ep.rd1~q\ & ( !\inst4|cs_cycle[0]~DUPLICATE_q\ $ (((!\inst4|ep.conf1~q\ & !\inst4|ep.save~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf1~q\,
	datac => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_ep.save~q\,
	dataf => \inst4|ALT_INV_ep.rd1~q\,
	combout => \inst4|cs_cycle[0]~0_combout\);

-- Location: FF_X84_Y11_N52
\inst4|cs_cycle[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle[0]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y11_N36
\inst4|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = ( \inst4|cs_cycle\(2) & ( \inst4|ep.conf1~q\ & ( (!\inst4|cs_cycle[0]~DUPLICATE_q\) # ((!\inst4|cs_cycle\(1)) # ((!\inst4|ep.conf0~q\) # (!\inst4|cs_cycle\(3)))) ) ) ) # ( !\inst4|cs_cycle\(2) & ( \inst4|ep.conf1~q\ ) ) # ( 
-- \inst4|cs_cycle\(2) & ( !\inst4|ep.conf1~q\ & ( !\inst4|ep.conf0~q\ ) ) ) # ( !\inst4|cs_cycle\(2) & ( !\inst4|ep.conf1~q\ & ( !\inst4|ep.conf0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_cs_cycle\(1),
	datac => \inst4|ALT_INV_ep.conf0~q\,
	datad => \inst4|ALT_INV_cs_cycle\(3),
	datae => \inst4|ALT_INV_cs_cycle\(2),
	dataf => \inst4|ALT_INV_ep.conf1~q\,
	combout => \inst4|Selector0~0_combout\);

-- Location: FF_X87_Y11_N26
\inst4|ep.conf1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.conf1~q\);

-- Location: LABCELL_X85_Y11_N57
\inst4|cs\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs~combout\ = ( \inst4|ep.save~q\ ) # ( !\inst4|ep.save~q\ & ( (\inst4|ep.rd1~q\) # (\inst4|ep.conf1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf1~q\,
	datac => \inst4|ALT_INV_ep.rd1~q\,
	dataf => \inst4|ALT_INV_ep.save~q\,
	combout => \inst4|cs~combout\);

-- Location: MLABCELL_X87_Y11_N9
\inst4|cmd_addr[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[1]~_wirecell_combout\ = !\inst4|cmd_addr\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_cmd_addr\(1),
	combout => \inst4|cmd_addr[1]~_wirecell_combout\);

-- Location: MLABCELL_X87_Y11_N30
\inst4|sr_din[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[13]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[13]~feeder_combout\);

-- Location: MLABCELL_X87_Y11_N33
\inst4|sr_din[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[12]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[12]~feeder_combout\);

-- Location: MLABCELL_X87_Y11_N36
\inst4|sr_din[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[10]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[10]~feeder_combout\);

-- Location: MLABCELL_X87_Y11_N39
\inst4|sr_din[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[6]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[6]~feeder_combout\);

-- Location: MLABCELL_X87_Y11_N12
\inst4|sr_din[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[5]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[5]~feeder_combout\);

-- Location: MLABCELL_X87_Y11_N15
\inst4|sr_din[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[3]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[3]~feeder_combout\);

-- Location: MLABCELL_X87_Y11_N48
\inst4|sr_din[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[2]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[2]~feeder_combout\);

-- Location: MLABCELL_X87_Y11_N51
\inst4|sr_din[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[1]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[1]~feeder_combout\);

-- Location: MLABCELL_X87_Y11_N24
\inst4|sr_din~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~8_combout\ = (\inst4|sr_din\(0) & !\inst4|ep.conf1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_sr_din\(0),
	datad => \inst4|ALT_INV_ep.conf1~q\,
	combout => \inst4|sr_din~8_combout\);

-- Location: MLABCELL_X84_Y11_N3
\inst4|sr_din[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[0]~feeder_combout\ = ( \inst4|sr_din~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_din~8_combout\,
	combout => \inst4|sr_din[0]~feeder_combout\);

-- Location: FF_X84_Y11_N4
\inst4|sr_din[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din[0]~feeder_combout\,
	asdata => \inst4|cmd_addr[1]~_wirecell_combout\,
	sload => \inst4|ALT_INV_ep.conf0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(0));

-- Location: LABCELL_X85_Y11_N51
\inst4|sr_din[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[9]~1_combout\ = ( \inst4|ep.conf0~q\ & ( \inst4|ep.conf1~q\ ) ) # ( !\inst4|ep.conf0~q\ & ( !\inst4|ep.conf1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf1~q\,
	dataf => \inst4|ALT_INV_ep.conf0~q\,
	combout => \inst4|sr_din[9]~1_combout\);

-- Location: FF_X87_Y11_N52
\inst4|sr_din[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din[1]~feeder_combout\,
	asdata => \inst4|sr_din\(0),
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(1));

-- Location: FF_X87_Y11_N50
\inst4|sr_din[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din[2]~feeder_combout\,
	asdata => \inst4|sr_din\(1),
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(2));

-- Location: FF_X87_Y11_N17
\inst4|sr_din[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din[3]~feeder_combout\,
	asdata => \inst4|sr_din\(2),
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(3));

-- Location: MLABCELL_X87_Y11_N54
\inst4|sr_din~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~7_combout\ = ( \inst4|sr_din\(3) ) # ( !\inst4|sr_din\(3) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(3),
	combout => \inst4|sr_din~7_combout\);

-- Location: FF_X87_Y11_N56
\inst4|sr_din[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~7_combout\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(4));

-- Location: FF_X87_Y11_N14
\inst4|sr_din[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din[5]~feeder_combout\,
	asdata => \inst4|sr_din\(4),
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(5));

-- Location: FF_X87_Y11_N41
\inst4|sr_din[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din[6]~feeder_combout\,
	asdata => \inst4|sr_din\(5),
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(6));

-- Location: MLABCELL_X87_Y11_N0
\inst4|sr_din~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~6_combout\ = ( \inst4|sr_din\(6) ) # ( !\inst4|sr_din\(6) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(6),
	combout => \inst4|sr_din~6_combout\);

-- Location: FF_X87_Y11_N2
\inst4|sr_din[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~6_combout\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(7));

-- Location: MLABCELL_X87_Y11_N21
\inst4|sr_din~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~5_combout\ = (!\inst4|ep.conf0~q\) # (\inst4|sr_din\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	datad => \inst4|ALT_INV_sr_din\(7),
	combout => \inst4|sr_din~5_combout\);

-- Location: FF_X87_Y11_N22
\inst4|sr_din[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~5_combout\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(8));

-- Location: MLABCELL_X87_Y11_N57
\inst4|sr_din~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~4_combout\ = ( \inst4|sr_din\(8) ) # ( !\inst4|sr_din\(8) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(8),
	combout => \inst4|sr_din~4_combout\);

-- Location: FF_X87_Y11_N58
\inst4|sr_din[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~4_combout\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(9));

-- Location: FF_X87_Y11_N38
\inst4|sr_din[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din[10]~feeder_combout\,
	asdata => \inst4|sr_din\(9),
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(10));

-- Location: MLABCELL_X87_Y11_N18
\inst4|sr_din~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~3_combout\ = (!\inst4|ep.conf0~q\) # (\inst4|sr_din\(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	datac => \inst4|ALT_INV_sr_din\(10),
	combout => \inst4|sr_din~3_combout\);

-- Location: FF_X87_Y11_N20
\inst4|sr_din[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~3_combout\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(11));

-- Location: FF_X87_Y11_N35
\inst4|sr_din[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din[12]~feeder_combout\,
	asdata => \inst4|sr_din\(11),
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(12));

-- Location: FF_X87_Y11_N32
\inst4|sr_din[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din[13]~feeder_combout\,
	asdata => \inst4|sr_din\(12),
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(13));

-- Location: MLABCELL_X87_Y11_N6
\inst4|sr_din~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~2_combout\ = ( \inst4|sr_din\(13) ) # ( !\inst4|sr_din\(13) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(13),
	combout => \inst4|sr_din~2_combout\);

-- Location: FF_X87_Y11_N8
\inst4|sr_din[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~2_combout\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(14));

-- Location: MLABCELL_X87_Y11_N3
\inst4|sr_din~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~0_combout\ = ( \inst4|sr_din\(14) ) # ( !\inst4|sr_din\(14) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(14),
	combout => \inst4|sr_din~0_combout\);

-- Location: FF_X87_Y11_N4
\inst4|sr_din[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~0_combout\,
	ena => \inst4|sr_din[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(15));

-- Location: IOIBUF_X22_Y0_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G7
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X57_Y2_N30
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( ataque_value(0) ) + ( VCC ) + ( !VCC ))
-- \Add3~6\ = CARRY(( ataque_value(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ataque_value(0),
	cin => GND,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X57_Y2_N39
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( ataque_value(3) ) + ( VCC ) + ( \Add3~14\ ))
-- \Add3~10\ = CARRY(( ataque_value(3) ) + ( VCC ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ataque_value(3),
	cin => \Add3~14\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X57_Y2_N42
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( ataque_value(4) ) + ( VCC ) + ( \Add3~10\ ))
-- \Add3~18\ = CARRY(( ataque_value(4) ) + ( VCC ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ataque_value(4),
	cin => \Add3~10\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X57_Y2_N44
\ataque_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Add3~17_sumout\,
	sclr => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ataque_value(4));

-- Location: LABCELL_X56_Y2_N9
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( ataque_value(1) & ( (!ataque_value(0) & (ataque_value(4) & (ataque_value(3) & !ataque_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(0),
	datab => ALT_INV_ataque_value(4),
	datac => ALT_INV_ataque_value(3),
	datad => ALT_INV_ataque_value(2),
	dataf => ALT_INV_ataque_value(1),
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X57_Y2_N45
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( ataque_value(5) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~26\ = CARRY(( ataque_value(5) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ataque_value(5),
	cin => \Add3~18\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X57_Y2_N47
\ataque_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Add3~25_sumout\,
	sclr => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ataque_value(5));

-- Location: LABCELL_X57_Y2_N48
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( ataque_value(6) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( ataque_value(6) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ataque_value(6),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X57_Y2_N50
\ataque_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Add3~29_sumout\,
	sclr => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ataque_value(6));

-- Location: LABCELL_X57_Y2_N51
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( ataque_value(7) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ataque_value(7),
	cin => \Add3~30\,
	sumout => \Add3~21_sumout\);

-- Location: FF_X57_Y2_N53
\ataque_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Add3~21_sumout\,
	sclr => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ataque_value(7));

-- Location: LABCELL_X57_Y2_N9
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( ataque_value(7) & ( ataque_value(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ataque_value(5),
	dataf => ALT_INV_ataque_value(7),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X57_Y2_N6
\Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( \Equal3~0_combout\ & ( (\Equal3~1_combout\ & ataque_value(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal3~1_combout\,
	datac => ALT_INV_ataque_value(6),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Equal3~2_combout\);

-- Location: FF_X57_Y2_N32
\ataque_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Add3~5_sumout\,
	sclr => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ataque_value(0));

-- Location: LABCELL_X57_Y2_N33
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( ataque_value(1) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~2\ = CARRY(( ataque_value(1) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ataque_value(1),
	cin => \Add3~6\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X57_Y2_N35
\ataque_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	sclr => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ataque_value(1));

-- Location: LABCELL_X57_Y2_N36
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( ataque_value(2) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~14\ = CARRY(( ataque_value(2) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ataque_value(2),
	cin => \Add3~2\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X57_Y2_N38
\ataque_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Add3~13_sumout\,
	sclr => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ataque_value(2));

-- Location: FF_X57_Y2_N41
\ataque_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Add3~9_sumout\,
	sclr => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ataque_value(3));

-- Location: LABCELL_X56_Y2_N0
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( ataque_value(4) & ( ataque_value(1) & ( (ataque_value(3) & (!ataque_value(2) & !ataque_value(0))) ) ) ) # ( !ataque_value(4) & ( ataque_value(1) & ( (ataque_value(3) & (ataque_value(2) & ataque_value(0))) ) ) ) # ( ataque_value(4) & ( 
-- !ataque_value(1) & ( (ataque_value(3) & (!ataque_value(2) & ataque_value(0))) ) ) ) # ( !ataque_value(4) & ( !ataque_value(1) & ( (!ataque_value(3) & (!ataque_value(2) & !ataque_value(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000001000000010000000001000000010100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(3),
	datab => ALT_INV_ataque_value(2),
	datac => ALT_INV_ataque_value(0),
	datae => ALT_INV_ataque_value(4),
	dataf => ALT_INV_ataque_value(1),
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X57_Y2_N54
\Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( ataque_value(5) & ( ataque_value(3) & ( (ataque_value(1) & (!ataque_value(0) & (ataque_value(7) & ataque_value(4)))) ) ) ) # ( !ataque_value(5) & ( ataque_value(3) & ( (!ataque_value(4) & ((!ataque_value(1) & (!ataque_value(0) & 
-- ataque_value(7))) # (ataque_value(1) & (ataque_value(0) & !ataque_value(7))))) ) ) ) # ( ataque_value(5) & ( !ataque_value(3) & ( (!ataque_value(1) & (ataque_value(0) & (ataque_value(7) & !ataque_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000011000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(1),
	datab => ALT_INV_ataque_value(0),
	datac => ALT_INV_ataque_value(7),
	datad => ALT_INV_ataque_value(4),
	datae => ALT_INV_ataque_value(5),
	dataf => ALT_INV_ataque_value(3),
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X57_Y2_N18
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( ataque_value(5) & ( ataque_value(3) & ( (!ataque_value(1) & (ataque_value(0) & (!ataque_value(7) & ataque_value(4)))) ) ) ) # ( ataque_value(5) & ( !ataque_value(3) & ( (!ataque_value(1) & (!ataque_value(0) & (!ataque_value(7) & 
-- !ataque_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(1),
	datab => ALT_INV_ataque_value(0),
	datac => ALT_INV_ataque_value(7),
	datad => ALT_INV_ataque_value(4),
	datae => ALT_INV_ataque_value(5),
	dataf => ALT_INV_ataque_value(3),
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X57_Y2_N0
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !ataque_value(5) & ( ataque_value(3) & ( (!ataque_value(1) & (ataque_value(0) & (!ataque_value(7) & ataque_value(4)))) ) ) ) # ( ataque_value(5) & ( !ataque_value(3) & ( (ataque_value(1) & (!ataque_value(0) & (!ataque_value(7) & 
-- ataque_value(4)))) ) ) ) # ( !ataque_value(5) & ( !ataque_value(3) & ( (!ataque_value(1) & (!ataque_value(0) & (!ataque_value(7) & !ataque_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000100000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(1),
	datab => ALT_INV_ataque_value(0),
	datac => ALT_INV_ataque_value(7),
	datad => ALT_INV_ataque_value(4),
	datae => ALT_INV_ataque_value(5),
	dataf => ALT_INV_ataque_value(3),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X57_Y2_N24
\Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( ataque_value(5) & ( ataque_value(3) & ( (ataque_value(1) & (ataque_value(0) & (ataque_value(7) & !ataque_value(4)))) ) ) ) # ( !ataque_value(5) & ( !ataque_value(3) & ( (ataque_value(1) & (!ataque_value(0) & (ataque_value(7) & 
-- ataque_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(1),
	datab => ALT_INV_ataque_value(0),
	datac => ALT_INV_ataque_value(7),
	datad => ALT_INV_ataque_value(4),
	datae => ALT_INV_ataque_value(5),
	dataf => ALT_INV_ataque_value(3),
	combout => \Mux1~3_combout\);

-- Location: LABCELL_X57_Y2_N12
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( ataque_value(2) & ( ataque_value(6) & ( \Mux1~2_combout\ ) ) ) # ( !ataque_value(2) & ( ataque_value(6) & ( \Mux1~4_combout\ ) ) ) # ( ataque_value(2) & ( !ataque_value(6) & ( \Mux1~3_combout\ ) ) ) # ( !ataque_value(2) & ( 
-- !ataque_value(6) & ( \Mux1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~4_combout\,
	datab => \ALT_INV_Mux1~2_combout\,
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_Mux1~3_combout\,
	datae => ALT_INV_ataque_value(2),
	dataf => ALT_INV_ataque_value(6),
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X56_Y2_N6
\HEX0[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[6]$latch~combout\ = ( \HEX0[6]$latch~combout\ & ( (!\Mux1~1_combout\) # (\Mux8~0_combout\) ) ) # ( !\HEX0[6]$latch~combout\ & ( (\Mux8~0_combout\ & \Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_HEX0[6]$latch~combout\,
	combout => \HEX0[6]$latch~combout\);

-- Location: LABCELL_X56_Y2_N36
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( ataque_value(1) & ( (!ataque_value(3) & (ataque_value(4) & (!ataque_value(0) & !ataque_value(2)))) # (ataque_value(3) & (!ataque_value(4) & (ataque_value(0)))) ) ) # ( !ataque_value(1) & ( (ataque_value(3) & (ataque_value(4) & 
-- (ataque_value(0) & !ataque_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000100100000001000010010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(3),
	datab => ALT_INV_ataque_value(4),
	datac => ALT_INV_ataque_value(0),
	datad => ALT_INV_ataque_value(2),
	dataf => ALT_INV_ataque_value(1),
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X56_Y2_N57
\HEX0[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[5]$latch~combout\ = ( \Mux7~0_combout\ & ( \HEX0[5]$latch~combout\ ) ) # ( !\Mux7~0_combout\ & ( \HEX0[5]$latch~combout\ & ( !\Mux1~1_combout\ ) ) ) # ( \Mux7~0_combout\ & ( !\HEX0[5]$latch~combout\ & ( \Mux1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~1_combout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_HEX0[5]$latch~combout\,
	combout => \HEX0[5]$latch~combout\);

-- Location: LABCELL_X56_Y2_N15
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( ataque_value(1) & ( (ataque_value(0) & (!ataque_value(4) & ataque_value(3))) ) ) # ( !ataque_value(1) & ( (!ataque_value(4) & (!ataque_value(3) & (!ataque_value(0) $ (!ataque_value(2))))) # (ataque_value(4) & (ataque_value(0) & 
-- (ataque_value(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000001010000011000000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(0),
	datab => ALT_INV_ataque_value(4),
	datac => ALT_INV_ataque_value(3),
	datad => ALT_INV_ataque_value(2),
	dataf => ALT_INV_ataque_value(1),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X56_Y2_N21
\HEX0[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[4]$latch~combout\ = ( \HEX0[4]$latch~combout\ & ( (!\Mux1~1_combout\) # (\Mux6~0_combout\) ) ) # ( !\HEX0[4]$latch~combout\ & ( (\Mux1~1_combout\ & \Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_HEX0[4]$latch~combout\,
	combout => \HEX0[4]$latch~combout\);

-- Location: LABCELL_X56_Y2_N48
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( ataque_value(1) & ( (ataque_value(0) & (!ataque_value(4) & (ataque_value(3) & ataque_value(2)))) ) ) # ( !ataque_value(1) & ( (!ataque_value(0) & (!ataque_value(4) & (!ataque_value(3) & ataque_value(2)))) # (ataque_value(0) & 
-- (ataque_value(4) & (ataque_value(3) & !ataque_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110000000000000011000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(0),
	datab => ALT_INV_ataque_value(4),
	datac => ALT_INV_ataque_value(3),
	datad => ALT_INV_ataque_value(2),
	dataf => ALT_INV_ataque_value(1),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X56_Y2_N51
\HEX0[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[3]$latch~combout\ = ( \HEX0[3]$latch~combout\ & ( (!\Mux1~1_combout\) # (\Mux5~0_combout\) ) ) # ( !\HEX0[3]$latch~combout\ & ( (\Mux1~1_combout\ & \Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_HEX0[3]$latch~combout\,
	combout => \HEX0[3]$latch~combout\);

-- Location: LABCELL_X56_Y2_N27
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( ataque_value(1) & ( (!ataque_value(0) & (ataque_value(4) & (!ataque_value(3) & !ataque_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(0),
	datab => ALT_INV_ataque_value(4),
	datac => ALT_INV_ataque_value(3),
	datad => ALT_INV_ataque_value(2),
	dataf => ALT_INV_ataque_value(1),
	combout => \Mux7~1_combout\);

-- Location: LABCELL_X56_Y2_N24
\HEX0[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[2]$latch~combout\ = ( \HEX0[2]$latch~combout\ & ( (!\Mux1~1_combout\) # (\Mux7~1_combout\) ) ) # ( !\HEX0[2]$latch~combout\ & ( (\Mux7~1_combout\ & \Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux7~1_combout\,
	datad => \ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_HEX0[2]$latch~combout\,
	combout => \HEX0[2]$latch~combout\);

-- Location: LABCELL_X56_Y2_N18
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( ataque_value(1) & ( (!ataque_value(3) & (ataque_value(4) & (!ataque_value(0) & ataque_value(2)))) ) ) # ( !ataque_value(1) & ( (ataque_value(3) & (ataque_value(4) & (ataque_value(0) & ataque_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(3),
	datab => ALT_INV_ataque_value(4),
	datac => ALT_INV_ataque_value(0),
	datad => ALT_INV_ataque_value(2),
	dataf => ALT_INV_ataque_value(1),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X56_Y2_N33
\HEX0[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[1]$latch~combout\ = ( \HEX0[1]$latch~combout\ & ( (!\Mux1~1_combout\) # (\Mux3~0_combout\) ) ) # ( !\HEX0[1]$latch~combout\ & ( (\Mux1~1_combout\ & \Mux3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_HEX0[1]$latch~combout\,
	combout => \HEX0[1]$latch~combout\);

-- Location: LABCELL_X56_Y2_N45
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !ataque_value(1) & ( (!ataque_value(0) & (!ataque_value(4) & (!ataque_value(3) & ataque_value(2)))) # (ataque_value(0) & (ataque_value(4) & (ataque_value(3) & !ataque_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110000000000000011000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(0),
	datab => ALT_INV_ataque_value(4),
	datac => ALT_INV_ataque_value(3),
	datad => ALT_INV_ataque_value(2),
	dataf => ALT_INV_ataque_value(1),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X56_Y2_N12
\HEX0[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[0]$latch~combout\ = ( \HEX0[0]$latch~combout\ & ( (!\Mux1~1_combout\) # (\Mux2~0_combout\) ) ) # ( !\HEX0[0]$latch~combout\ & ( (\Mux1~1_combout\ & \Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_HEX0[0]$latch~combout\,
	combout => \HEX0[0]$latch~combout\);

-- Location: LABCELL_X56_Y2_N30
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( ataque_value(1) & ( (!ataque_value(0) & (ataque_value(4) & ((!ataque_value(3)) # (!ataque_value(2))))) # (ataque_value(0) & (!ataque_value(4) & (ataque_value(3)))) ) ) # ( !ataque_value(1) & ( (!ataque_value(0) & (!ataque_value(4) & 
-- ((!ataque_value(3)) # (!ataque_value(2))))) # (ataque_value(0) & ((!ataque_value(4) & (!ataque_value(3) & !ataque_value(2))) # (ataque_value(4) & (ataque_value(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100110000001110010011000000100100110001001000010011000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ataque_value(0),
	datab => ALT_INV_ataque_value(4),
	datac => ALT_INV_ataque_value(3),
	datad => ALT_INV_ataque_value(2),
	dataf => ALT_INV_ataque_value(1),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X56_Y2_N42
\HEX1[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1[6]$latch~combout\ = ( \HEX1[6]$latch~combout\ & ( (!\Mux1~1_combout\) # (\Mux11~0_combout\) ) ) # ( !\HEX1[6]$latch~combout\ & ( (\Mux1~1_combout\ & \Mux11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_HEX1[6]$latch~combout\,
	combout => \HEX1[6]$latch~combout\);

-- Location: LABCELL_X56_Y2_N39
\HEX1[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1[5]$latch~combout\ = ( \HEX1[5]$latch~combout\ & ( (!\Mux1~1_combout\) # (\Equal3~1_combout\) ) ) # ( !\HEX1[5]$latch~combout\ & ( (\Mux1~1_combout\ & \Equal3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_Equal3~1_combout\,
	dataf => \ALT_INV_HEX1[5]$latch~combout\,
	combout => \HEX1[5]$latch~combout\);

-- Location: IOIBUF_X22_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: CLKCTRL_G10
\KEY[1]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~input_o\,
	outclk => \KEY[1]~inputCLKENA0_outclk\);

-- Location: LABCELL_X68_Y1_N0
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( velocidade_value(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~6\ = CARRY(( velocidade_value(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_velocidade_value(0),
	cin => GND,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X68_Y1_N3
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( velocidade_value(1) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~2\ = CARRY(( velocidade_value(1) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_velocidade_value(1),
	cin => \Add2~6\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X68_Y1_N6
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( velocidade_value(2) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~14\ = CARRY(( velocidade_value(2) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_velocidade_value(2),
	cin => \Add2~2\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X68_Y1_N8
\velocidade_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade_value(2));

-- Location: LABCELL_X68_Y1_N9
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( velocidade_value(3) ) + ( VCC ) + ( \Add2~14\ ))
-- \Add2~10\ = CARRY(( velocidade_value(3) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_velocidade_value(3),
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X68_Y1_N11
\velocidade_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade_value(3));

-- Location: LABCELL_X68_Y1_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( velocidade_value(4) ) + ( VCC ) + ( \Add2~10\ ))
-- \Add2~18\ = CARRY(( velocidade_value(4) ) + ( VCC ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_velocidade_value(4),
	cin => \Add2~10\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X68_Y1_N14
\velocidade_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade_value(4));

-- Location: LABCELL_X68_Y1_N15
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( velocidade_value(5) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~26\ = CARRY(( velocidade_value(5) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_velocidade_value(5),
	cin => \Add2~18\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X68_Y1_N17
\velocidade_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade_value(5));

-- Location: LABCELL_X68_Y1_N18
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( velocidade_value(6) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( velocidade_value(6) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_velocidade_value(6),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X68_Y1_N20
\velocidade_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade_value(6));

-- Location: LABCELL_X68_Y1_N21
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( velocidade_value(7) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_velocidade_value(7),
	cin => \Add2~30\,
	sumout => \Add2~21_sumout\);

-- Location: FF_X68_Y1_N23
\velocidade_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade_value(7));

-- Location: LABCELL_X68_Y1_N33
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( velocidade_value(5) & ( velocidade_value(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_velocidade_value(7),
	dataf => ALT_INV_velocidade_value(5),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X68_Y1_N30
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( velocidade_value(3) & ( (!velocidade_value(0) & (velocidade_value(4) & (!velocidade_value(2) & velocidade_value(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(0),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(2),
	datad => ALT_INV_velocidade_value(1),
	dataf => ALT_INV_velocidade_value(3),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X68_Y1_N45
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( velocidade_value(6) & ( (\Equal2~0_combout\ & \Equal2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal2~1_combout\,
	dataf => ALT_INV_velocidade_value(6),
	combout => \Equal2~2_combout\);

-- Location: FF_X68_Y1_N2
\velocidade_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade_value(0));

-- Location: FF_X68_Y1_N5
\velocidade_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade_value(1));

-- Location: LABCELL_X67_Y1_N33
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( velocidade_value(2) & ( (velocidade_value(1) & (velocidade_value(0) & (!velocidade_value(4) & velocidade_value(3)))) ) ) # ( !velocidade_value(2) & ( (!velocidade_value(4) & (!velocidade_value(1) & (!velocidade_value(0) & 
-- !velocidade_value(3)))) # (velocidade_value(4) & (velocidade_value(3) & (!velocidade_value(1) $ (!velocidade_value(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000110100000000000011000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(1),
	datab => ALT_INV_velocidade_value(0),
	datac => ALT_INV_velocidade_value(4),
	datad => ALT_INV_velocidade_value(3),
	dataf => ALT_INV_velocidade_value(2),
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X68_Y1_N54
\Mux21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = ( velocidade_value(1) & ( velocidade_value(3) & ( (velocidade_value(0) & (!velocidade_value(4) & (velocidade_value(7) & velocidade_value(5)))) ) ) ) # ( velocidade_value(1) & ( !velocidade_value(3) & ( (!velocidade_value(0) & 
-- (velocidade_value(4) & (velocidade_value(7) & !velocidade_value(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(0),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(7),
	datad => ALT_INV_velocidade_value(5),
	datae => ALT_INV_velocidade_value(1),
	dataf => ALT_INV_velocidade_value(3),
	combout => \Mux21~3_combout\);

-- Location: LABCELL_X68_Y1_N24
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( !velocidade_value(1) & ( velocidade_value(3) & ( (velocidade_value(0) & (velocidade_value(4) & (!velocidade_value(7) & !velocidade_value(5)))) ) ) ) # ( velocidade_value(1) & ( !velocidade_value(3) & ( (!velocidade_value(0) & 
-- (velocidade_value(4) & (!velocidade_value(7) & velocidade_value(5)))) ) ) ) # ( !velocidade_value(1) & ( !velocidade_value(3) & ( (!velocidade_value(0) & (!velocidade_value(4) & (!velocidade_value(7) & !velocidade_value(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000010000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(0),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(7),
	datad => ALT_INV_velocidade_value(5),
	datae => ALT_INV_velocidade_value(1),
	dataf => ALT_INV_velocidade_value(3),
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X68_Y1_N48
\Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( !velocidade_value(1) & ( velocidade_value(3) & ( (velocidade_value(0) & (velocidade_value(4) & (!velocidade_value(7) & velocidade_value(5)))) ) ) ) # ( !velocidade_value(1) & ( !velocidade_value(3) & ( (!velocidade_value(0) & 
-- (!velocidade_value(4) & (!velocidade_value(7) & velocidade_value(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(0),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(7),
	datad => ALT_INV_velocidade_value(5),
	datae => ALT_INV_velocidade_value(1),
	dataf => ALT_INV_velocidade_value(3),
	combout => \Mux21~2_combout\);

-- Location: LABCELL_X67_Y1_N42
\Mux21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = ( velocidade_value(3) & ( velocidade_value(0) & ( (!velocidade_value(5) & (!velocidade_value(4) & (velocidade_value(1) & !velocidade_value(7)))) ) ) ) # ( !velocidade_value(3) & ( velocidade_value(0) & ( (velocidade_value(5) & 
-- (!velocidade_value(4) & (!velocidade_value(1) & velocidade_value(7)))) ) ) ) # ( velocidade_value(3) & ( !velocidade_value(0) & ( (velocidade_value(7) & ((!velocidade_value(5) & (!velocidade_value(4) & !velocidade_value(1))) # (velocidade_value(5) & 
-- (velocidade_value(4) & velocidade_value(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000100000000010000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(5),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(1),
	datad => ALT_INV_velocidade_value(7),
	datae => ALT_INV_velocidade_value(3),
	dataf => ALT_INV_velocidade_value(0),
	combout => \Mux21~4_combout\);

-- Location: LABCELL_X68_Y1_N36
\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \Mux21~4_combout\ & ( velocidade_value(6) & ( (!velocidade_value(2)) # (\Mux21~2_combout\) ) ) ) # ( !\Mux21~4_combout\ & ( velocidade_value(6) & ( (velocidade_value(2) & \Mux21~2_combout\) ) ) ) # ( \Mux21~4_combout\ & ( 
-- !velocidade_value(6) & ( (!velocidade_value(2) & ((\Mux21~0_combout\))) # (velocidade_value(2) & (\Mux21~3_combout\)) ) ) ) # ( !\Mux21~4_combout\ & ( !velocidade_value(6) & ( (!velocidade_value(2) & ((\Mux21~0_combout\))) # (velocidade_value(2) & 
-- (\Mux21~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~3_combout\,
	datab => ALT_INV_velocidade_value(2),
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_Mux21~2_combout\,
	datae => \ALT_INV_Mux21~4_combout\,
	dataf => ALT_INV_velocidade_value(6),
	combout => \Mux21~1_combout\);

-- Location: LABCELL_X67_Y1_N48
\HEX2[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2[6]$latch~combout\ = ( \Mux21~1_combout\ & ( \HEX2[6]$latch~combout\ & ( \Mux14~0_combout\ ) ) ) # ( !\Mux21~1_combout\ & ( \HEX2[6]$latch~combout\ ) ) # ( \Mux21~1_combout\ & ( !\HEX2[6]$latch~combout\ & ( \Mux14~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux14~0_combout\,
	datae => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_HEX2[6]$latch~combout\,
	combout => \HEX2[6]$latch~combout\);

-- Location: LABCELL_X67_Y1_N36
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( velocidade_value(0) & ( (velocidade_value(3) & ((!velocidade_value(4) & ((velocidade_value(1)))) # (velocidade_value(4) & (!velocidade_value(2) & !velocidade_value(1))))) ) ) # ( !velocidade_value(0) & ( (!velocidade_value(2) & 
-- (velocidade_value(4) & (velocidade_value(1) & !velocidade_value(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000001011000000000000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(2),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(1),
	datad => ALT_INV_velocidade_value(3),
	dataf => ALT_INV_velocidade_value(0),
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X67_Y1_N39
\HEX2[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2[5]$latch~combout\ = ( \HEX2[5]$latch~combout\ & ( (!\Mux21~1_combout\) # (\Mux15~0_combout\) ) ) # ( !\HEX2[5]$latch~combout\ & ( (\Mux15~0_combout\ & \Mux21~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_HEX2[5]$latch~combout\,
	combout => \HEX2[5]$latch~combout\);

-- Location: LABCELL_X67_Y1_N12
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( velocidade_value(0) & ( (!velocidade_value(3) & (!velocidade_value(1) & (!velocidade_value(4) & !velocidade_value(2)))) # (velocidade_value(3) & (!velocidade_value(1) $ ((!velocidade_value(4))))) ) ) # ( !velocidade_value(0) & ( 
-- (!velocidade_value(1) & (!velocidade_value(4) & (!velocidade_value(3) & velocidade_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000010000110000001101000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(1),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(3),
	datad => ALT_INV_velocidade_value(2),
	dataf => ALT_INV_velocidade_value(0),
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X67_Y1_N0
\HEX2[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2[4]$latch~combout\ = ( \Mux16~0_combout\ & ( (\Mux21~1_combout\) # (\HEX2[4]$latch~combout\) ) ) # ( !\Mux16~0_combout\ & ( (\HEX2[4]$latch~combout\ & !\Mux21~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HEX2[4]$latch~combout\,
	datad => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_Mux16~0_combout\,
	combout => \HEX2[4]$latch~combout\);

-- Location: LABCELL_X67_Y1_N18
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( velocidade_value(0) & ( (velocidade_value(3) & ((!velocidade_value(1) & (velocidade_value(4) & !velocidade_value(2))) # (velocidade_value(1) & (!velocidade_value(4) & velocidade_value(2))))) ) ) # ( !velocidade_value(0) & ( 
-- (!velocidade_value(1) & (!velocidade_value(4) & (!velocidade_value(3) & velocidade_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000010000001000000001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(1),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(3),
	datad => ALT_INV_velocidade_value(2),
	dataf => ALT_INV_velocidade_value(0),
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X67_Y1_N9
\HEX2[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2[3]$latch~combout\ = ( \HEX2[3]$latch~combout\ & ( (!\Mux21~1_combout\) # (\Mux17~0_combout\) ) ) # ( !\HEX2[3]$latch~combout\ & ( (\Mux21~1_combout\ & \Mux17~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux21~1_combout\,
	datad => \ALT_INV_Mux17~0_combout\,
	dataf => \ALT_INV_HEX2[3]$latch~combout\,
	combout => \HEX2[3]$latch~combout\);

-- Location: LABCELL_X67_Y1_N27
\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( !velocidade_value(2) & ( (velocidade_value(1) & (!velocidade_value(0) & (velocidade_value(4) & !velocidade_value(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(1),
	datab => ALT_INV_velocidade_value(0),
	datac => ALT_INV_velocidade_value(4),
	datad => ALT_INV_velocidade_value(3),
	dataf => ALT_INV_velocidade_value(2),
	combout => \Mux15~1_combout\);

-- Location: LABCELL_X67_Y1_N15
\HEX2[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2[2]$latch~combout\ = ( \HEX2[2]$latch~combout\ & ( (!\Mux21~1_combout\) # (\Mux15~1_combout\) ) ) # ( !\HEX2[2]$latch~combout\ & ( (\Mux21~1_combout\ & \Mux15~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux21~1_combout\,
	datad => \ALT_INV_Mux15~1_combout\,
	dataf => \ALT_INV_HEX2[2]$latch~combout\,
	combout => \HEX2[2]$latch~combout\);

-- Location: LABCELL_X67_Y1_N21
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( velocidade_value(0) & ( (!velocidade_value(1) & (velocidade_value(4) & (velocidade_value(2) & velocidade_value(3)))) ) ) # ( !velocidade_value(0) & ( (velocidade_value(1) & (velocidade_value(4) & (velocidade_value(2) & 
-- !velocidade_value(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(1),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(2),
	datad => ALT_INV_velocidade_value(3),
	dataf => ALT_INV_velocidade_value(0),
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X67_Y1_N24
\HEX2[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2[1]$latch~combout\ = ( \HEX2[1]$latch~combout\ & ( (!\Mux21~1_combout\) # (\Mux19~0_combout\) ) ) # ( !\HEX2[1]$latch~combout\ & ( (\Mux19~0_combout\ & \Mux21~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux19~0_combout\,
	datad => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_HEX2[1]$latch~combout\,
	combout => \HEX2[1]$latch~combout\);

-- Location: LABCELL_X67_Y1_N6
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( velocidade_value(0) & ( (!velocidade_value(1) & (velocidade_value(4) & (velocidade_value(3) & !velocidade_value(2)))) ) ) # ( !velocidade_value(0) & ( (!velocidade_value(1) & (!velocidade_value(4) & (!velocidade_value(3) & 
-- velocidade_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(1),
	datab => ALT_INV_velocidade_value(4),
	datac => ALT_INV_velocidade_value(3),
	datad => ALT_INV_velocidade_value(2),
	dataf => ALT_INV_velocidade_value(0),
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X67_Y1_N30
\HEX2[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2[0]$latch~combout\ = ( \HEX2[0]$latch~combout\ & ( (!\Mux21~1_combout\) # (\Mux20~0_combout\) ) ) # ( !\HEX2[0]$latch~combout\ & ( (\Mux20~0_combout\ & \Mux21~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux20~0_combout\,
	datad => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_HEX2[0]$latch~combout\,
	combout => \HEX2[0]$latch~combout\);

-- Location: LABCELL_X67_Y1_N3
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( velocidade_value(2) & ( (!velocidade_value(0) & (!velocidade_value(3) & (!velocidade_value(1) $ (velocidade_value(4))))) # (velocidade_value(0) & (velocidade_value(3) & (!velocidade_value(1) $ (!velocidade_value(4))))) ) ) # ( 
-- !velocidade_value(2) & ( (!velocidade_value(1) & (!velocidade_value(4) $ (((velocidade_value(0) & velocidade_value(3)))))) # (velocidade_value(1) & ((!velocidade_value(0) & (velocidade_value(4))) # (velocidade_value(0) & (!velocidade_value(4) & 
-- velocidade_value(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010010110101001001001011010000100000100101000010000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_velocidade_value(1),
	datab => ALT_INV_velocidade_value(0),
	datac => ALT_INV_velocidade_value(4),
	datad => ALT_INV_velocidade_value(3),
	dataf => ALT_INV_velocidade_value(2),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X67_Y1_N57
\HEX3[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3[6]$latch~combout\ = ( \Mux0~0_combout\ & ( \HEX3[6]$latch~combout\ ) ) # ( !\Mux0~0_combout\ & ( \HEX3[6]$latch~combout\ & ( !\Mux21~1_combout\ ) ) ) # ( \Mux0~0_combout\ & ( !\HEX3[6]$latch~combout\ & ( \Mux21~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux21~1_combout\,
	datae => \ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_HEX3[6]$latch~combout\,
	combout => \HEX3[6]$latch~combout\);

-- Location: LABCELL_X68_Y1_N42
\HEX3[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3[5]$latch~combout\ = ( \HEX3[5]$latch~combout\ & ( (!\Mux21~1_combout\) # (\Equal2~1_combout\) ) ) # ( !\HEX3[5]$latch~combout\ & ( (\Equal2~1_combout\ & \Mux21~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_HEX3[5]$latch~combout\,
	combout => \HEX3[5]$latch~combout\);

-- Location: MLABCELL_X78_Y6_N0
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( distortion_value(4) & ( (distortion_value(3) & (!distortion_value(2) & (!distortion_value(1) $ (!distortion_value(0))))) ) ) # ( !distortion_value(4) & ( (!distortion_value(3) & (!distortion_value(1) & (!distortion_value(0) & 
-- !distortion_value(2)))) # (distortion_value(3) & (distortion_value(1) & (distortion_value(0) & distortion_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000001000101000000000010000000000000010001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(3),
	datab => ALT_INV_distortion_value(1),
	datac => ALT_INV_distortion_value(0),
	datad => ALT_INV_distortion_value(2),
	datae => ALT_INV_distortion_value(4),
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X79_Y6_N18
\Mux32~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = ( !distortion_value(5) & ( distortion_value(4) & ( (distortion_value(1) & (!distortion_value(0) & (distortion_value(7) & !distortion_value(3)))) ) ) ) # ( distortion_value(5) & ( !distortion_value(4) & ( (distortion_value(1) & 
-- (distortion_value(0) & (distortion_value(7) & distortion_value(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(1),
	datab => ALT_INV_distortion_value(0),
	datac => ALT_INV_distortion_value(7),
	datad => ALT_INV_distortion_value(3),
	datae => ALT_INV_distortion_value(5),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux32~3_combout\);

-- Location: LABCELL_X79_Y6_N12
\Mux32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = ( distortion_value(5) & ( distortion_value(4) & ( (!distortion_value(1) & (distortion_value(0) & (!distortion_value(7) & distortion_value(3)))) ) ) ) # ( distortion_value(5) & ( !distortion_value(4) & ( (!distortion_value(1) & 
-- (!distortion_value(0) & (!distortion_value(7) & !distortion_value(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(1),
	datab => ALT_INV_distortion_value(0),
	datac => ALT_INV_distortion_value(7),
	datad => ALT_INV_distortion_value(3),
	datae => ALT_INV_distortion_value(5),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux32~2_combout\);

-- Location: LABCELL_X79_Y6_N0
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( distortion_value(5) & ( distortion_value(4) & ( (distortion_value(1) & (!distortion_value(0) & (!distortion_value(7) & !distortion_value(3)))) ) ) ) # ( !distortion_value(5) & ( distortion_value(4) & ( (!distortion_value(1) & 
-- (distortion_value(0) & (!distortion_value(7) & distortion_value(3)))) ) ) ) # ( !distortion_value(5) & ( !distortion_value(4) & ( (!distortion_value(1) & (!distortion_value(0) & (!distortion_value(7) & !distortion_value(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000001000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(1),
	datab => ALT_INV_distortion_value(0),
	datac => ALT_INV_distortion_value(7),
	datad => ALT_INV_distortion_value(3),
	datae => ALT_INV_distortion_value(5),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux32~0_combout\);

-- Location: LABCELL_X79_Y6_N24
\Mux32~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = ( distortion_value(5) & ( distortion_value(4) & ( (distortion_value(1) & (!distortion_value(0) & (distortion_value(7) & distortion_value(3)))) ) ) ) # ( distortion_value(5) & ( !distortion_value(4) & ( (!distortion_value(1) & 
-- (distortion_value(0) & (distortion_value(7) & !distortion_value(3)))) ) ) ) # ( !distortion_value(5) & ( !distortion_value(4) & ( (distortion_value(3) & ((!distortion_value(1) & (!distortion_value(0) & distortion_value(7))) # (distortion_value(1) & 
-- (distortion_value(0) & !distortion_value(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011000000000100000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(1),
	datab => ALT_INV_distortion_value(0),
	datac => ALT_INV_distortion_value(7),
	datad => ALT_INV_distortion_value(3),
	datae => ALT_INV_distortion_value(5),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux32~4_combout\);

-- Location: LABCELL_X79_Y6_N6
\Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = ( distortion_value(2) & ( \Mux32~4_combout\ & ( (!distortion_value(6) & (\Mux32~3_combout\)) # (distortion_value(6) & ((\Mux32~2_combout\))) ) ) ) # ( !distortion_value(2) & ( \Mux32~4_combout\ & ( (distortion_value(6)) # 
-- (\Mux32~0_combout\) ) ) ) # ( distortion_value(2) & ( !\Mux32~4_combout\ & ( (!distortion_value(6) & (\Mux32~3_combout\)) # (distortion_value(6) & ((\Mux32~2_combout\))) ) ) ) # ( !distortion_value(2) & ( !\Mux32~4_combout\ & ( (\Mux32~0_combout\ & 
-- !distortion_value(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux32~3_combout\,
	datab => \ALT_INV_Mux32~2_combout\,
	datac => \ALT_INV_Mux32~0_combout\,
	datad => ALT_INV_distortion_value(6),
	datae => ALT_INV_distortion_value(2),
	dataf => \ALT_INV_Mux32~4_combout\,
	combout => \Mux32~1_combout\);

-- Location: MLABCELL_X78_Y6_N18
\HEX4[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[6]$latch~combout\ = ( \HEX4[6]$latch~combout\ & ( (!\Mux32~1_combout\) # (\Mux25~0_combout\) ) ) # ( !\HEX4[6]$latch~combout\ & ( (\Mux25~0_combout\ & \Mux32~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_Mux32~1_combout\,
	dataf => \ALT_INV_HEX4[6]$latch~combout\,
	combout => \HEX4[6]$latch~combout\);

-- Location: MLABCELL_X78_Y6_N9
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( distortion_value(3) & ( (distortion_value(0) & ((!distortion_value(1) & (!distortion_value(2) & distortion_value(4))) # (distortion_value(1) & ((!distortion_value(4)))))) ) ) # ( !distortion_value(3) & ( (!distortion_value(0) & 
-- (distortion_value(1) & (!distortion_value(2) & distortion_value(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000010001010000000001000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(1),
	datac => ALT_INV_distortion_value(2),
	datad => ALT_INV_distortion_value(4),
	dataf => ALT_INV_distortion_value(3),
	combout => \Mux26~0_combout\);

-- Location: MLABCELL_X78_Y6_N15
\HEX4[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[5]$latch~combout\ = ( \HEX4[5]$latch~combout\ & ( (!\Mux32~1_combout\) # (\Mux26~0_combout\) ) ) # ( !\HEX4[5]$latch~combout\ & ( (\Mux26~0_combout\ & \Mux32~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_Mux32~1_combout\,
	dataf => \ALT_INV_HEX4[5]$latch~combout\,
	combout => \HEX4[5]$latch~combout\);

-- Location: MLABCELL_X78_Y6_N12
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( distortion_value(3) & ( (distortion_value(0) & (!distortion_value(1) $ (!distortion_value(4)))) ) ) # ( !distortion_value(3) & ( (!distortion_value(1) & (!distortion_value(4) & (!distortion_value(0) $ (!distortion_value(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(2),
	datac => ALT_INV_distortion_value(1),
	datad => ALT_INV_distortion_value(4),
	dataf => ALT_INV_distortion_value(3),
	combout => \Mux27~0_combout\);

-- Location: MLABCELL_X78_Y6_N6
\HEX4[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[4]$latch~combout\ = ( \HEX4[4]$latch~combout\ & ( (!\Mux32~1_combout\) # (\Mux27~0_combout\) ) ) # ( !\HEX4[4]$latch~combout\ & ( (\Mux32~1_combout\ & \Mux27~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux32~1_combout\,
	datad => \ALT_INV_Mux27~0_combout\,
	dataf => \ALT_INV_HEX4[4]$latch~combout\,
	combout => \HEX4[4]$latch~combout\);

-- Location: MLABCELL_X78_Y6_N21
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( distortion_value(3) & ( (distortion_value(0) & ((!distortion_value(4) & (distortion_value(1) & distortion_value(2))) # (distortion_value(4) & (!distortion_value(1) & !distortion_value(2))))) ) ) # ( !distortion_value(3) & ( 
-- (!distortion_value(0) & (!distortion_value(4) & (!distortion_value(1) & distortion_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000010000000001000001000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(4),
	datac => ALT_INV_distortion_value(1),
	datad => ALT_INV_distortion_value(2),
	dataf => ALT_INV_distortion_value(3),
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X78_Y6_N51
\HEX4[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[3]$latch~combout\ = ( \Mux28~0_combout\ & ( \HEX4[3]$latch~combout\ ) ) # ( !\Mux28~0_combout\ & ( \HEX4[3]$latch~combout\ & ( !\Mux32~1_combout\ ) ) ) # ( \Mux28~0_combout\ & ( !\HEX4[3]$latch~combout\ & ( \Mux32~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux32~1_combout\,
	datae => \ALT_INV_Mux28~0_combout\,
	dataf => \ALT_INV_HEX4[3]$latch~combout\,
	combout => \HEX4[3]$latch~combout\);

-- Location: MLABCELL_X78_Y6_N54
\Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( !distortion_value(3) & ( (!distortion_value(0) & (!distortion_value(2) & (distortion_value(1) & distortion_value(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(2),
	datac => ALT_INV_distortion_value(1),
	datad => ALT_INV_distortion_value(4),
	dataf => ALT_INV_distortion_value(3),
	combout => \Mux26~1_combout\);

-- Location: MLABCELL_X78_Y6_N30
\HEX4[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[2]$latch~combout\ = ( \HEX4[2]$latch~combout\ & ( (!\Mux32~1_combout\) # (\Mux26~1_combout\) ) ) # ( !\HEX4[2]$latch~combout\ & ( (\Mux26~1_combout\ & \Mux32~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux26~1_combout\,
	datad => \ALT_INV_Mux32~1_combout\,
	dataf => \ALT_INV_HEX4[2]$latch~combout\,
	combout => \HEX4[2]$latch~combout\);

-- Location: MLABCELL_X82_Y6_N48
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( distortion_value(2) & ( distortion_value(4) & ( (!distortion_value(3) & (!distortion_value(0) & distortion_value(1))) # (distortion_value(3) & (distortion_value(0) & !distortion_value(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(3),
	datab => ALT_INV_distortion_value(0),
	datac => ALT_INV_distortion_value(1),
	datae => ALT_INV_distortion_value(2),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X78_Y6_N57
\HEX4[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[1]$latch~combout\ = ( \HEX4[1]$latch~combout\ & ( (!\Mux32~1_combout\) # (\Mux30~0_combout\) ) ) # ( !\HEX4[1]$latch~combout\ & ( (\Mux30~0_combout\ & \Mux32~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \ALT_INV_Mux32~1_combout\,
	dataf => \ALT_INV_HEX4[1]$latch~combout\,
	combout => \HEX4[1]$latch~combout\);

-- Location: MLABCELL_X78_Y6_N45
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( distortion_value(3) & ( (distortion_value(0) & (!distortion_value(1) & (!distortion_value(2) & distortion_value(4)))) ) ) # ( !distortion_value(3) & ( (!distortion_value(0) & (!distortion_value(1) & (distortion_value(2) & 
-- !distortion_value(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(1),
	datac => ALT_INV_distortion_value(2),
	datad => ALT_INV_distortion_value(4),
	dataf => ALT_INV_distortion_value(3),
	combout => \Mux31~0_combout\);

-- Location: MLABCELL_X78_Y6_N42
\HEX4[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[0]$latch~combout\ = ( \HEX4[0]$latch~combout\ & ( (!\Mux32~1_combout\) # (\Mux31~0_combout\) ) ) # ( !\HEX4[0]$latch~combout\ & ( (\Mux32~1_combout\ & \Mux31~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux32~1_combout\,
	datad => \ALT_INV_Mux31~0_combout\,
	dataf => \ALT_INV_HEX4[0]$latch~combout\,
	combout => \HEX4[0]$latch~combout\);

-- Location: MLABCELL_X78_Y6_N33
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( distortion_value(3) & ( (!distortion_value(0) & (!distortion_value(2) & (!distortion_value(4) $ (distortion_value(1))))) # (distortion_value(0) & (!distortion_value(4) $ ((!distortion_value(1))))) ) ) # ( !distortion_value(3) & ( 
-- (!distortion_value(0) & (!distortion_value(4) $ ((distortion_value(1))))) # (distortion_value(0) & (!distortion_value(4) & (!distortion_value(1) & !distortion_value(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001010000010110000101000001010010110000101001001011000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(4),
	datac => ALT_INV_distortion_value(1),
	datad => ALT_INV_distortion_value(2),
	dataf => ALT_INV_distortion_value(3),
	combout => \Mux22~0_combout\);

-- Location: MLABCELL_X78_Y6_N24
\HEX5[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5[6]$latch~combout\ = ( \Mux32~1_combout\ & ( \HEX5[6]$latch~combout\ & ( \Mux22~0_combout\ ) ) ) # ( !\Mux32~1_combout\ & ( \HEX5[6]$latch~combout\ ) ) # ( \Mux32~1_combout\ & ( !\HEX5[6]$latch~combout\ & ( \Mux22~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux22~0_combout\,
	datae => \ALT_INV_Mux32~1_combout\,
	dataf => \ALT_INV_HEX5[6]$latch~combout\,
	combout => \HEX5[6]$latch~combout\);

-- Location: MLABCELL_X78_Y6_N39
\HEX5[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5[5]$latch~combout\ = ( \HEX5[5]$latch~combout\ & ( (!\Mux32~1_combout\) # (\Equal1~1_combout\) ) ) # ( !\HEX5[5]$latch~combout\ & ( (\Equal1~1_combout\ & \Mux32~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Mux32~1_combout\,
	dataf => \ALT_INV_HEX5[5]$latch~combout\,
	combout => \HEX5[5]$latch~combout\);

-- Location: IOIBUF_X89_Y21_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);
END structure;



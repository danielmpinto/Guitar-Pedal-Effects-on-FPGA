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

-- DATE "03/29/2025 11:35:16"

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
-- KEY[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_I2C_SCLK	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \inst5|s1|Mult0~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \inst5|s1|Mult0~23\ : std_logic;
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
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst1|Add2~9_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \FPGA_I2C_SDAT~input_o\ : std_logic;
SIGNAL \inst1|caddr[0]~2_combout\ : std_logic;
SIGNAL \inst1|caddr[1]~1_combout\ : std_logic;
SIGNAL \inst1|caddr[2]~0_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|cbits[1]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|cbits[2]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst1|cbits[4]~1_combout\ : std_logic;
SIGNAL \inst1|ep.e4~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|ep.e0~q\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|ep.e1~q\ : std_logic;
SIGNAL \inst1|incbits~0_combout\ : std_logic;
SIGNAL \inst1|incbits~1_combout\ : std_logic;
SIGNAL \inst1|cbits[0]~4_combout\ : std_logic;
SIGNAL \inst1|stop~0_combout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|ep.e2~q\ : std_logic;
SIGNAL \inst1|Selector3~1_combout\ : std_logic;
SIGNAL \inst1|ep.e3~q\ : std_logic;
SIGNAL \inst1|ep.e4~0_combout\ : std_logic;
SIGNAL \inst1|ep.e4~q\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|settmp~0_combout\ : std_logic;
SIGNAL \inst1|settmp~combout\ : std_logic;
SIGNAL \inst1|ep.e5~0_combout\ : std_logic;
SIGNAL \inst1|ep.e5~q\ : std_logic;
SIGNAL \inst1|Add2~10\ : std_logic;
SIGNAL \inst1|Add2~29_sumout\ : std_logic;
SIGNAL \inst1|Add2~30\ : std_logic;
SIGNAL \inst1|Add2~25_sumout\ : std_logic;
SIGNAL \inst1|Add2~26\ : std_logic;
SIGNAL \inst1|Add2~21_sumout\ : std_logic;
SIGNAL \inst1|Add2~22\ : std_logic;
SIGNAL \inst1|Add2~17_sumout\ : std_logic;
SIGNAL \inst1|Add2~18\ : std_logic;
SIGNAL \inst1|Add2~13_sumout\ : std_logic;
SIGNAL \inst1|Add2~14\ : std_logic;
SIGNAL \inst1|Add2~5_sumout\ : std_logic;
SIGNAL \inst1|Add2~6\ : std_logic;
SIGNAL \inst1|Add2~1_sumout\ : std_logic;
SIGNAL \inst1|ctmp~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|cbits[3]~2_combout\ : std_logic;
SIGNAL \inst1|sdat~3_combout\ : std_logic;
SIGNAL \inst1|sdat~2_combout\ : std_logic;
SIGNAL \inst1|sdat~1_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|sdat~4_combout\ : std_logic;
SIGNAL \inst1|ep.e4~1_combout\ : std_logic;
SIGNAL \inst1|Mux12~1_combout\ : std_logic;
SIGNAL \inst1|sdat~5_combout\ : std_logic;
SIGNAL \inst1|sdat~0_combout\ : std_logic;
SIGNAL \inst1|sdat~6_combout\ : std_logic;
SIGNAL \inst1|sdat~q\ : std_logic;
SIGNAL \inst1|setbitz~combout\ : std_logic;
SIGNAL \inst4|clkdiv[0]~0_combout\ : std_logic;
SIGNAL \inst1|cclkdiv[1]~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \inst2|adcdats~feeder_combout\ : std_logic;
SIGNAL \inst2|adcdats~q\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \inst2|bclks~q\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \inst2|adclrcs~q\ : std_logic;
SIGNAL \inst2|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst2|cbits[1]~0_combout\ : std_logic;
SIGNAL \inst2|cbits[2]~2_combout\ : std_logic;
SIGNAL \inst2|cbits[3]~1_combout\ : std_logic;
SIGNAL \inst2|es.e5~0_combout\ : std_logic;
SIGNAL \inst2|ep.e5~q\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|ep.e0~q\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|ep.e1~q\ : std_logic;
SIGNAL \inst2|cbits[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|ep.e4~q\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|ep.e2~q\ : std_logic;
SIGNAL \inst2|es.e3~0_combout\ : std_logic;
SIGNAL \inst2|ep.e3~q\ : std_logic;
SIGNAL \inst2|srdato[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|srdato[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|srdato[14]~DUPLICATE_q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst5|signal_dist~3_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|LessThan1~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst5|LessThan1~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst5|LessThan1~2_combout\ : std_logic;
SIGNAL \inst5|signal_dist~4_combout\ : std_logic;
SIGNAL \inst5|signal_dist~5_combout\ : std_logic;
SIGNAL \inst5|signal_dist~0_combout\ : std_logic;
SIGNAL \inst5|signal_dist~6_combout\ : std_logic;
SIGNAL \inst5|LessThan0~5_combout\ : std_logic;
SIGNAL \inst5|signal_dist~1_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|signal_dist~2_combout\ : std_logic;
SIGNAL \inst5|signal_dist[0]~7_combout\ : std_logic;
SIGNAL \inst5|signal_dist[1]~8_combout\ : std_logic;
SIGNAL \inst5|signal_dist[2]~9_combout\ : std_logic;
SIGNAL \inst5|signal_dist[3]~10_combout\ : std_logic;
SIGNAL \inst5|signal_dist[4]~11_combout\ : std_logic;
SIGNAL \inst5|signal_dist[5]~12_combout\ : std_logic;
SIGNAL \inst5|signal_dist[6]~13_combout\ : std_logic;
SIGNAL \inst5|signal_dist[7]~14_combout\ : std_logic;
SIGNAL \inst5|signal_dist[8]~15_combout\ : std_logic;
SIGNAL \inst5|signal_dist[9]~16_combout\ : std_logic;
SIGNAL \inst5|signal_dist[10]~17_combout\ : std_logic;
SIGNAL \inst5|signal_dist[11]~18_combout\ : std_logic;
SIGNAL \inst5|signal_dist[12]~19_combout\ : std_logic;
SIGNAL \inst5|signal_dist[13]~20_combout\ : std_logic;
SIGNAL \inst5|signal_dist[14]~21_combout\ : std_logic;
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
SIGNAL \inst3|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst3|cbits[1]~2_combout\ : std_logic;
SIGNAL \inst3|cbits[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|cbits[2]~1_combout\ : std_logic;
SIGNAL \inst3|cbits[3]~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst3|ep.e5~q\ : std_logic;
SIGNAL \inst3|es.e6~0_combout\ : std_logic;
SIGNAL \inst3|ep.e6~q\ : std_logic;
SIGNAL \inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|ep.e0~q\ : std_logic;
SIGNAL \inst3|es.e1~0_combout\ : std_logic;
SIGNAL \inst3|ep.e1~q\ : std_logic;
SIGNAL \inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst3|ep.e2~q\ : std_logic;
SIGNAL \inst3|es.e3~0_combout\ : std_logic;
SIGNAL \inst3|ep.e3~q\ : std_logic;
SIGNAL \inst3|es.e4~0_combout\ : std_logic;
SIGNAL \inst3|ep.e4~q\ : std_logic;
SIGNAL \inst3|srdato~1_combout\ : std_logic;
SIGNAL \inst3|ep.e6~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|srdato[12]~0_combout\ : std_logic;
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
SIGNAL \inst4|cs_cycle[3]~1_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \ADC_DOUT~input_o\ : std_logic;
SIGNAL \inst4|sr_dout[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[9]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[13]~feeder_combout\ : std_logic;
SIGNAL \inst4|es.sready~0_combout\ : std_logic;
SIGNAL \inst4|ep.sready~q\ : std_logic;
SIGNAL \inst4|cmd_addr[0]~DUPLICATE_q\ : std_logic;
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
SIGNAL \inst4|cs_cycle[2]~2_combout\ : std_logic;
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
SIGNAL \inst4|sr_din[8]~1_combout\ : std_logic;
SIGNAL \inst4|sr_din~7_combout\ : std_logic;
SIGNAL \inst4|sr_din~6_combout\ : std_logic;
SIGNAL \inst4|sr_din~5_combout\ : std_logic;
SIGNAL \inst4|sr_din~4_combout\ : std_logic;
SIGNAL \inst4|sr_din~3_combout\ : std_logic;
SIGNAL \inst4|sr_din~2_combout\ : std_logic;
SIGNAL \inst4|sr_din~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[2]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \HEX4[6]$latch~combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \HEX4[5]$latch~combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \HEX4[4]$latch~combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \HEX4[3]$latch~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \HEX4[2]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \HEX4[1]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \HEX4[0]$latch~combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \HEX5[6]$latch~combout\ : std_logic;
SIGNAL \HEX5[5]$latch~combout\ : std_logic;
SIGNAL \inst2|cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|sr_dout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst4|cmd_addr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL distortion_value : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst4|sr_din\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|srdato\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst1|cbits\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ctmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|cclkdiv\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|clkdiv\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst5|s1|sample_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|caddr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|cs_cycle\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|srdato\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|ALT_INV_cbits[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_cbits[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_cmd_addr[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e4~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e6~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sr_din~8_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sr_dout\ : std_logic_vector(13 DOWNTO 2);
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
SIGNAL \inst1|ALT_INV_sdat~5_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e4~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.sready~q\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~2_combout\ : std_logic;
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
SIGNAL \inst5|ALT_INV_signal_dist~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.rd0~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.conf0~q\ : std_logic;
SIGNAL \inst4|ALT_INV_cs_cycle\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_srdato\ : std_logic_vector(16 DOWNTO 0);
SIGNAL ALT_INV_distortion_value : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|ALT_INV_ctmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \inst5|s1|ALT_INV_sample_out\ : std_logic_vector(15 DOWNTO 0);

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

\inst5|s1|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst5|s1|Mult0~8_AY_bus\ <= (\inst2|srdato\(15) & \inst2|srdato\(15) & \inst2|srdato\(15) & \inst2|srdato\(15) & \inst5|signal_dist[14]~21_combout\ & \inst5|signal_dist[13]~20_combout\ & \inst5|signal_dist[12]~19_combout\ & 
\inst5|signal_dist[11]~18_combout\ & \inst5|signal_dist[10]~17_combout\ & \inst5|signal_dist[9]~16_combout\ & \inst5|signal_dist[8]~15_combout\ & \inst5|signal_dist[7]~14_combout\ & \inst5|signal_dist[6]~13_combout\ & \inst5|signal_dist[5]~12_combout\ & 
\inst5|signal_dist[4]~11_combout\ & \inst5|signal_dist[3]~10_combout\ & \inst5|signal_dist[2]~9_combout\ & \inst5|signal_dist[1]~8_combout\ & \inst5|signal_dist[0]~7_combout\);

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
\inst5|s1|sample_out\(15) <= \inst5|s1|Mult0~8_RESULTA_bus\(31);
\inst5|s1|Mult0~24\ <= \inst5|s1|Mult0~8_RESULTA_bus\(32);
\inst5|s1|Mult0~25\ <= \inst5|s1|Mult0~8_RESULTA_bus\(33);
\inst5|s1|Mult0~26\ <= \inst5|s1|Mult0~8_RESULTA_bus\(34);
\inst5|s1|Mult0~27\ <= \inst5|s1|Mult0~8_RESULTA_bus\(35);
\inst5|s1|Mult0~28\ <= \inst5|s1|Mult0~8_RESULTA_bus\(36);
\inst5|s1|Mult0~29\ <= \inst5|s1|Mult0~8_RESULTA_bus\(37);
\inst5|s1|Mult0~30\ <= \inst5|s1|Mult0~8_RESULTA_bus\(38);
\inst5|s1|Mult0~31\ <= \inst5|s1|Mult0~8_RESULTA_bus\(39);
\inst5|s1|Mult0~32\ <= \inst5|s1|Mult0~8_RESULTA_bus\(40);
\inst5|s1|Mult0~33\ <= \inst5|s1|Mult0~8_RESULTA_bus\(41);
\inst5|s1|Mult0~34\ <= \inst5|s1|Mult0~8_RESULTA_bus\(42);
\inst5|s1|Mult0~35\ <= \inst5|s1|Mult0~8_RESULTA_bus\(43);
\inst5|s1|Mult0~36\ <= \inst5|s1|Mult0~8_RESULTA_bus\(44);
\inst5|s1|Mult0~37\ <= \inst5|s1|Mult0~8_RESULTA_bus\(45);
\inst5|s1|Mult0~38\ <= \inst5|s1|Mult0~8_RESULTA_bus\(46);
\inst5|s1|Mult0~39\ <= \inst5|s1|Mult0~8_RESULTA_bus\(47);
\inst5|s1|Mult0~40\ <= \inst5|s1|Mult0~8_RESULTA_bus\(48);
\inst5|s1|Mult0~41\ <= \inst5|s1|Mult0~8_RESULTA_bus\(49);
\inst5|s1|Mult0~42\ <= \inst5|s1|Mult0~8_RESULTA_bus\(50);
\inst5|s1|Mult0~43\ <= \inst5|s1|Mult0~8_RESULTA_bus\(51);
\inst5|s1|Mult0~44\ <= \inst5|s1|Mult0~8_RESULTA_bus\(52);
\inst5|s1|Mult0~45\ <= \inst5|s1|Mult0~8_RESULTA_bus\(53);
\inst5|s1|Mult0~46\ <= \inst5|s1|Mult0~8_RESULTA_bus\(54);
\inst5|s1|Mult0~47\ <= \inst5|s1|Mult0~8_RESULTA_bus\(55);
\inst5|s1|Mult0~48\ <= \inst5|s1|Mult0~8_RESULTA_bus\(56);
\inst5|s1|Mult0~49\ <= \inst5|s1|Mult0~8_RESULTA_bus\(57);
\inst5|s1|Mult0~50\ <= \inst5|s1|Mult0~8_RESULTA_bus\(58);
\inst5|s1|Mult0~51\ <= \inst5|s1|Mult0~8_RESULTA_bus\(59);
\inst5|s1|Mult0~52\ <= \inst5|s1|Mult0~8_RESULTA_bus\(60);
\inst5|s1|Mult0~53\ <= \inst5|s1|Mult0~8_RESULTA_bus\(61);
\inst5|s1|Mult0~54\ <= \inst5|s1|Mult0~8_RESULTA_bus\(62);
\inst5|s1|Mult0~55\ <= \inst5|s1|Mult0~8_RESULTA_bus\(63);
\inst2|ALT_INV_cbits[1]~DUPLICATE_q\ <= NOT \inst2|cbits[1]~DUPLICATE_q\;
\inst3|ALT_INV_cbits[1]~DUPLICATE_q\ <= NOT \inst3|cbits[1]~DUPLICATE_q\;
\inst4|ALT_INV_cmd_addr[0]~DUPLICATE_q\ <= NOT \inst4|cmd_addr[0]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[14]~DUPLICATE_q\ <= NOT \inst2|srdato[14]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[10]~DUPLICATE_q\ <= NOT \inst2|srdato[10]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[11]~DUPLICATE_q\ <= NOT \inst2|srdato[11]~DUPLICATE_q\;
\inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\ <= NOT \inst4|cs_cycle[0]~DUPLICATE_q\;
\inst1|ALT_INV_ep.e4~DUPLICATE_q\ <= NOT \inst1|ep.e4~DUPLICATE_q\;
\inst3|ALT_INV_ep.e6~DUPLICATE_q\ <= NOT \inst3|ep.e6~DUPLICATE_q\;
\ALT_INV_KEY[2]~inputCLKENA0_outclk\ <= NOT \KEY[2]~inputCLKENA0_outclk\;
\ALT_INV_AUD_ADCDAT~input_o\ <= NOT \AUD_ADCDAT~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
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
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux11~7_combout\ <= NOT \Mux11~7_combout\;
\ALT_INV_Mux11~6_combout\ <= NOT \Mux11~6_combout\;
\ALT_INV_Mux11~5_combout\ <= NOT \Mux11~5_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\inst4|ALT_INV_sr_din~8_combout\ <= NOT \inst4|sr_din~8_combout\;
\inst4|ALT_INV_sr_dout\(2) <= NOT \inst4|sr_dout\(2);
\inst4|ALT_INV_clkdiv\(1) <= NOT \inst4|clkdiv\(1);
\inst4|ALT_INV_sr_dout\(3) <= NOT \inst4|sr_dout\(3);
\inst4|ALT_INV_clkdiv\(2) <= NOT \inst4|clkdiv\(2);
\inst4|ALT_INV_sr_dout\(4) <= NOT \inst4|sr_dout\(4);
\inst4|ALT_INV_clkdiv\(3) <= NOT \inst4|clkdiv\(3);
\inst4|ALT_INV_sr_dout\(5) <= NOT \inst4|sr_dout\(5);
\inst4|ALT_INV_clkdiv\(4) <= NOT \inst4|clkdiv\(4);
\inst4|ALT_INV_sr_din\(7) <= NOT \inst4|sr_din\(7);
\inst4|ALT_INV_sr_dout\(6) <= NOT \inst4|sr_dout\(6);
\inst4|ALT_INV_clkdiv\(5) <= NOT \inst4|clkdiv\(5);
\inst4|ALT_INV_sr_din\(8) <= NOT \inst4|sr_din\(8);
\inst4|ALT_INV_clkdiv\(6) <= NOT \inst4|clkdiv\(6);
\inst2|ALT_INV_ep.e5~q\ <= NOT \inst2|ep.e5~q\;
\inst4|ALT_INV_sr_dout\(8) <= NOT \inst4|sr_dout\(8);
\inst4|ALT_INV_clkdiv\(7) <= NOT \inst4|clkdiv\(7);
\inst2|ALT_INV_ep.e0~q\ <= NOT \inst2|ep.e0~q\;
\inst2|ALT_INV_Selector3~0_combout\ <= NOT \inst2|Selector3~0_combout\;
\inst2|ALT_INV_cbits\(2) <= NOT \inst2|cbits\(2);
\inst2|ALT_INV_cbits\(3) <= NOT \inst2|cbits\(3);
\inst2|ALT_INV_cbits\(0) <= NOT \inst2|cbits\(0);
\inst2|ALT_INV_cbits\(1) <= NOT \inst2|cbits\(1);
\inst4|ALT_INV_clkdiv\(8) <= NOT \inst4|clkdiv\(8);
\inst2|ALT_INV_ep.e1~q\ <= NOT \inst2|ep.e1~q\;
\inst2|ALT_INV_adclrcs~q\ <= NOT \inst2|adclrcs~q\;
\inst2|ALT_INV_ep.e4~q\ <= NOT \inst2|ep.e4~q\;
\inst4|ALT_INV_clkdiv\(9) <= NOT \inst4|clkdiv\(9);
\inst3|ALT_INV_Selector1~0_combout\ <= NOT \inst3|Selector1~0_combout\;
\inst2|ALT_INV_ep.e2~q\ <= NOT \inst2|ep.e2~q\;
\inst1|ALT_INV_sdat~5_combout\ <= NOT \inst1|sdat~5_combout\;
\inst1|ALT_INV_Mux12~1_combout\ <= NOT \inst1|Mux12~1_combout\;
\inst1|ALT_INV_sdat~4_combout\ <= NOT \inst1|sdat~4_combout\;
\inst1|ALT_INV_sdat~3_combout\ <= NOT \inst1|sdat~3_combout\;
\inst1|ALT_INV_sdat~2_combout\ <= NOT \inst1|sdat~2_combout\;
\inst1|ALT_INV_sdat~1_combout\ <= NOT \inst1|sdat~1_combout\;
\inst1|ALT_INV_Mux12~0_combout\ <= NOT \inst1|Mux12~0_combout\;
\inst1|ALT_INV_sdat~0_combout\ <= NOT \inst1|sdat~0_combout\;
\inst1|ALT_INV_ep.e4~1_combout\ <= NOT \inst1|ep.e4~1_combout\;
\inst4|ALT_INV_ep.sready~q\ <= NOT \inst4|ep.sready~q\;
\inst4|ALT_INV_clkdiv\(10) <= NOT \inst4|clkdiv\(10);
\inst1|ALT_INV_Add0~2_combout\ <= NOT \inst1|Add0~2_combout\;
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
\inst1|ALT_INV_cbits\(3) <= NOT \inst1|cbits\(3);
\inst1|ALT_INV_cbits\(4) <= NOT \inst1|cbits\(4);
\inst1|ALT_INV_cbits\(2) <= NOT \inst1|cbits\(2);
\inst1|ALT_INV_ep.e1~q\ <= NOT \inst1|ep.e1~q\;
\inst1|ALT_INV_Equal5~0_combout\ <= NOT \inst1|Equal5~0_combout\;
\inst3|ALT_INV_ep.e5~q\ <= NOT \inst3|ep.e5~q\;
\inst3|ALT_INV_ep.e3~q\ <= NOT \inst3|ep.e3~q\;
\inst3|ALT_INV_daclrcs~q\ <= NOT \inst3|daclrcs~q\;
\inst2|ALT_INV_bclks~q\ <= NOT \inst2|bclks~q\;
\inst3|ALT_INV_ep.e0~q\ <= NOT \inst3|ep.e0~q\;
\inst5|ALT_INV_signal_dist~6_combout\ <= NOT \inst5|signal_dist~6_combout\;
\inst5|ALT_INV_signal_dist~5_combout\ <= NOT \inst5|signal_dist~5_combout\;
\inst5|ALT_INV_signal_dist~4_combout\ <= NOT \inst5|signal_dist~4_combout\;
\inst5|ALT_INV_signal_dist~3_combout\ <= NOT \inst5|signal_dist~3_combout\;
\inst5|ALT_INV_LessThan1~3_combout\ <= NOT \inst5|LessThan1~3_combout\;
\inst5|ALT_INV_LessThan1~2_combout\ <= NOT \inst5|LessThan1~2_combout\;
\inst5|ALT_INV_LessThan1~1_combout\ <= NOT \inst5|LessThan1~1_combout\;
\inst5|ALT_INV_LessThan1~0_combout\ <= NOT \inst5|LessThan1~0_combout\;
\inst5|ALT_INV_signal_dist~2_combout\ <= NOT \inst5|signal_dist~2_combout\;
\inst5|ALT_INV_signal_dist~1_combout\ <= NOT \inst5|signal_dist~1_combout\;
\inst5|ALT_INV_signal_dist~0_combout\ <= NOT \inst5|signal_dist~0_combout\;
\inst2|ALT_INV_srdato\(14) <= NOT \inst2|srdato\(14);
\inst2|ALT_INV_srdato\(15) <= NOT \inst2|srdato\(15);
\inst2|ALT_INV_srdato\(13) <= NOT \inst2|srdato\(13);
\inst2|ALT_INV_srdato\(12) <= NOT \inst2|srdato\(12);
\inst5|ALT_INV_LessThan0~5_combout\ <= NOT \inst5|LessThan0~5_combout\;
\inst5|ALT_INV_LessThan0~4_combout\ <= NOT \inst5|LessThan0~4_combout\;
\inst5|ALT_INV_LessThan0~3_combout\ <= NOT \inst5|LessThan0~3_combout\;
\inst5|ALT_INV_LessThan0~2_combout\ <= NOT \inst5|LessThan0~2_combout\;
\inst2|ALT_INV_srdato\(1) <= NOT \inst2|srdato\(1);
\inst2|ALT_INV_srdato\(2) <= NOT \inst2|srdato\(2);
\inst2|ALT_INV_srdato\(3) <= NOT \inst2|srdato\(3);
\inst2|ALT_INV_srdato\(4) <= NOT \inst2|srdato\(4);
\inst5|ALT_INV_LessThan0~1_combout\ <= NOT \inst5|LessThan0~1_combout\;
\inst2|ALT_INV_srdato\(6) <= NOT \inst2|srdato\(6);
\inst2|ALT_INV_srdato\(7) <= NOT \inst2|srdato\(7);
\inst2|ALT_INV_srdato\(5) <= NOT \inst2|srdato\(5);
\inst5|ALT_INV_LessThan0~0_combout\ <= NOT \inst5|LessThan0~0_combout\;
\inst2|ALT_INV_srdato\(9) <= NOT \inst2|srdato\(9);
\inst2|ALT_INV_srdato\(10) <= NOT \inst2|srdato\(10);
\inst2|ALT_INV_srdato\(11) <= NOT \inst2|srdato\(11);
\inst2|ALT_INV_srdato\(8) <= NOT \inst2|srdato\(8);
\inst2|ALT_INV_srdato\(0) <= NOT \inst2|srdato\(0);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\inst4|ALT_INV_sr_din\(14) <= NOT \inst4|sr_din\(14);
\inst4|ALT_INV_ep.rd0~q\ <= NOT \inst4|ep.rd0~q\;
\inst4|ALT_INV_ep.conf0~q\ <= NOT \inst4|ep.conf0~q\;
\inst4|ALT_INV_cs_cycle\(1) <= NOT \inst4|cs_cycle\(1);
\inst4|ALT_INV_cs_cycle\(2) <= NOT \inst4|cs_cycle\(2);
\inst4|ALT_INV_cs_cycle\(3) <= NOT \inst4|cs_cycle\(3);
\inst4|ALT_INV_cs_cycle\(0) <= NOT \inst4|cs_cycle\(0);
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
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\inst3|ALT_INV_srdato\(0) <= NOT \inst3|srdato\(0);
\inst4|ALT_INV_sr_din\(0) <= NOT \inst4|sr_din\(0);
\inst4|ALT_INV_sr_din\(3) <= NOT \inst4|sr_din\(3);
\inst4|ALT_INV_sr_din\(6) <= NOT \inst4|sr_din\(6);
\inst4|ALT_INV_sr_din\(10) <= NOT \inst4|sr_din\(10);
\inst4|ALT_INV_sr_din\(13) <= NOT \inst4|sr_din\(13);
ALT_INV_distortion_value(6) <= NOT distortion_value(6);
ALT_INV_distortion_value(7) <= NOT distortion_value(7);
ALT_INV_distortion_value(8) <= NOT distortion_value(8);
ALT_INV_distortion_value(2) <= NOT distortion_value(2);
ALT_INV_distortion_value(3) <= NOT distortion_value(3);
ALT_INV_distortion_value(5) <= NOT distortion_value(5);
ALT_INV_distortion_value(1) <= NOT distortion_value(1);
ALT_INV_distortion_value(0) <= NOT distortion_value(0);
ALT_INV_distortion_value(4) <= NOT distortion_value(4);
\inst1|ALT_INV_ctmp\(1) <= NOT \inst1|ctmp\(1);
\inst1|ALT_INV_ctmp\(2) <= NOT \inst1|ctmp\(2);
\inst1|ALT_INV_ctmp\(3) <= NOT \inst1|ctmp\(3);
\inst1|ALT_INV_ctmp\(4) <= NOT \inst1|ctmp\(4);
\inst1|ALT_INV_ctmp\(5) <= NOT \inst1|ctmp\(5);
\inst1|ALT_INV_ctmp\(6) <= NOT \inst1|ctmp\(6);
\inst1|ALT_INV_ctmp\(0) <= NOT \inst1|ctmp\(0);
\inst1|ALT_INV_Add2~1_sumout\ <= NOT \inst1|Add2~1_sumout\;
\inst5|s1|ALT_INV_sample_out\(15) <= NOT \inst5|s1|sample_out\(15);
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
	i => \inst1|ALT_INV_ctmp\(7),
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \inst1|ALT_INV_sdat~q\,
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

-- Location: MLABCELL_X87_Y13_N0
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

-- Location: CLKCTRL_G6
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

-- Location: MLABCELL_X87_Y13_N36
\inst1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = ( \inst1|ctmp\(4) & ( \inst1|ctmp\(6) & ( (\inst1|ctmp\(3) & (\inst1|ctmp\(5) & (\inst1|ctmp\(2) & \inst1|ctmp\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(3),
	datab => \inst1|ALT_INV_ctmp\(5),
	datac => \inst1|ALT_INV_ctmp\(2),
	datad => \inst1|ALT_INV_ctmp\(1),
	datae => \inst1|ALT_INV_ctmp\(4),
	dataf => \inst1|ALT_INV_ctmp\(6),
	combout => \inst1|Equal4~0_combout\);

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

-- Location: MLABCELL_X87_Y13_N48
\inst1|caddr[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|caddr[0]~2_combout\ = ( \inst1|Selector3~0_combout\ & ( (!\inst1|caddr\(0) & (((\inst1|Selector5~0_combout\)))) # (\inst1|caddr\(0) & (!\FPGA_I2C_SDAT~input_o\ & ((!\inst1|Selector5~0_combout\) # (\inst1|Equal3~0_combout\)))) ) ) # ( 
-- !\inst1|Selector3~0_combout\ & ( (!\inst1|Selector5~0_combout\ & ((\inst1|caddr\(0)))) # (\inst1|Selector5~0_combout\ & ((!\inst1|caddr\(0)) # (\inst1|Equal3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110101000011111111010100001111110001000000111111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal3~0_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_caddr\(0),
	dataf => \inst1|ALT_INV_Selector3~0_combout\,
	combout => \inst1|caddr[0]~2_combout\);

-- Location: FF_X87_Y13_N50
\inst1|caddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|caddr[0]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|caddr\(0));

-- Location: MLABCELL_X87_Y13_N42
\inst1|caddr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|caddr[1]~1_combout\ = ( \inst1|caddr\(1) & ( \inst1|Selector3~0_combout\ & ( (!\inst1|Selector5~0_combout\ & (((!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|Selector5~0_combout\ & ((!\inst1|caddr\(0)) # ((!\FPGA_I2C_SDAT~input_o\ & \inst1|caddr\(2))))) ) 
-- ) ) # ( !\inst1|caddr\(1) & ( \inst1|Selector3~0_combout\ & ( (\inst1|caddr\(0) & \inst1|Selector5~0_combout\) ) ) ) # ( \inst1|caddr\(1) & ( !\inst1|Selector3~0_combout\ & ( (!\inst1|caddr\(0)) # ((!\inst1|Selector5~0_combout\) # (\inst1|caddr\(2))) ) ) 
-- ) # ( !\inst1|caddr\(1) & ( !\inst1|Selector3~0_combout\ & ( (\inst1|caddr\(0) & \inst1|Selector5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110101111111100000101000001011100101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(0),
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_Selector5~0_combout\,
	datad => \inst1|ALT_INV_caddr\(2),
	datae => \inst1|ALT_INV_caddr\(1),
	dataf => \inst1|ALT_INV_Selector3~0_combout\,
	combout => \inst1|caddr[1]~1_combout\);

-- Location: FF_X87_Y13_N44
\inst1|caddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|caddr[1]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|caddr\(1));

-- Location: LABCELL_X85_Y13_N30
\inst1|caddr[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|caddr[2]~0_combout\ = ( \inst1|caddr\(2) & ( \FPGA_I2C_SDAT~input_o\ & ( (!\inst1|Selector3~0_combout\) # ((\inst1|Selector5~0_combout\ & ((!\inst1|caddr\(0)) # (!\inst1|caddr\(1))))) ) ) ) # ( !\inst1|caddr\(2) & ( \FPGA_I2C_SDAT~input_o\ & ( 
-- (\inst1|Selector5~0_combout\ & (\inst1|caddr\(0) & \inst1|caddr\(1))) ) ) ) # ( \inst1|caddr\(2) & ( !\FPGA_I2C_SDAT~input_o\ ) ) # ( !\inst1|caddr\(2) & ( !\FPGA_I2C_SDAT~input_o\ & ( (\inst1|Selector5~0_combout\ & (\inst1|caddr\(0) & \inst1|caddr\(1))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001111111111111111100000000000100011111010111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_caddr\(0),
	datac => \inst1|ALT_INV_Selector3~0_combout\,
	datad => \inst1|ALT_INV_caddr\(1),
	datae => \inst1|ALT_INV_caddr\(2),
	dataf => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	combout => \inst1|caddr[2]~0_combout\);

-- Location: FF_X85_Y13_N32
\inst1|caddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|caddr[2]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|caddr\(2));

-- Location: MLABCELL_X87_Y13_N51
\inst1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = ( \inst1|caddr\(1) & ( (\inst1|caddr\(2) & \inst1|caddr\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_caddr\(2),
	datad => \inst1|ALT_INV_caddr\(0),
	dataf => \inst1|ALT_INV_caddr\(1),
	combout => \inst1|Equal3~0_combout\);

-- Location: LABCELL_X88_Y13_N0
\inst1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = ( \inst1|Equal4~0_combout\ & ( (\inst1|ep.e4~q\ & (!\inst1|ctmp\(7) & (!\inst1|Equal3~0_combout\ & \inst1|ctmp\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e4~q\,
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_Equal3~0_combout\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_Equal4~0_combout\,
	combout => \inst1|Selector0~1_combout\);

-- Location: LABCELL_X85_Y13_N15
\inst1|cbits[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[1]~3_combout\ = ( \inst1|cbits\(1) & ( \inst1|cbits\(0) & ( (!\inst1|Selector0~1_combout\ & (!\inst1|incbits~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) ) ) ) # ( !\inst1|cbits\(1) & ( \inst1|cbits\(0) & ( 
-- \inst1|incbits~1_combout\ ) ) ) # ( \inst1|cbits\(1) & ( !\inst1|cbits\(0) & ( ((!\inst1|Selector0~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|incbits~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000001111111100000000111111111110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_Selector0~1_combout\,
	datad => \inst1|ALT_INV_incbits~1_combout\,
	datae => \inst1|ALT_INV_cbits\(1),
	dataf => \inst1|ALT_INV_cbits\(0),
	combout => \inst1|cbits[1]~3_combout\);

-- Location: FF_X85_Y13_N17
\inst1|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[1]~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(1));

-- Location: LABCELL_X85_Y13_N3
\inst1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = ( \inst1|cbits\(0) & ( \inst1|cbits\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_cbits\(1),
	dataf => \inst1|ALT_INV_cbits\(0),
	combout => \inst1|Add0~0_combout\);

-- Location: LABCELL_X85_Y13_N36
\inst1|cbits[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[2]~0_combout\ = ( \inst1|cbits\(2) & ( \inst1|Add0~0_combout\ & ( (!\inst1|incbits~1_combout\ & (!\inst1|Selector0~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) ) ) ) # ( !\inst1|cbits\(2) & ( 
-- \inst1|Add0~0_combout\ & ( \inst1|incbits~1_combout\ ) ) ) # ( \inst1|cbits\(2) & ( !\inst1|Add0~0_combout\ & ( ((!\inst1|Selector0~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|incbits~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110000111100001111000011111110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_incbits~1_combout\,
	datad => \inst1|ALT_INV_Selector0~1_combout\,
	datae => \inst1|ALT_INV_cbits\(2),
	dataf => \inst1|ALT_INV_Add0~0_combout\,
	combout => \inst1|cbits[2]~0_combout\);

-- Location: FF_X85_Y13_N38
\inst1|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[2]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(2));

-- Location: LABCELL_X85_Y13_N21
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = ( \inst1|cbits\(1) & ( (\inst1|cbits\(0) & (\inst1|cbits\(3) & \inst1|cbits\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_cbits\(0),
	datac => \inst1|ALT_INV_cbits\(3),
	datad => \inst1|ALT_INV_cbits\(2),
	dataf => \inst1|ALT_INV_cbits\(1),
	combout => \inst1|Add0~1_combout\);

-- Location: LABCELL_X85_Y13_N39
\inst1|cbits[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[4]~1_combout\ = ( \inst1|cbits\(4) & ( \inst1|Add0~1_combout\ & ( (!\inst1|Selector0~1_combout\ & (!\inst1|incbits~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) ) ) ) # ( !\inst1|cbits\(4) & ( 
-- \inst1|Add0~1_combout\ & ( \inst1|incbits~1_combout\ ) ) ) # ( \inst1|cbits\(4) & ( !\inst1|Add0~1_combout\ & ( ((!\inst1|Selector0~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|incbits~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000001111111100000000111111111110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_Selector0~1_combout\,
	datad => \inst1|ALT_INV_incbits~1_combout\,
	datae => \inst1|ALT_INV_cbits\(4),
	dataf => \inst1|ALT_INV_Add0~1_combout\,
	combout => \inst1|cbits[4]~1_combout\);

-- Location: FF_X85_Y13_N41
\inst1|cbits[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[4]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(4));

-- Location: FF_X88_Y13_N55
\inst1|ep.e4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|ep.e4~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e4~DUPLICATE_q\);

-- Location: LABCELL_X88_Y13_N36
\inst1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = ( \inst1|Equal4~0_combout\ & ( (\inst1|ctmp\(0) & !\inst1|ctmp\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(0),
	datab => \inst1|ALT_INV_ctmp\(7),
	dataf => \inst1|ALT_INV_Equal4~0_combout\,
	combout => \inst1|Equal5~0_combout\);

-- Location: LABCELL_X88_Y13_N30
\inst1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = ( \inst1|ep.e0~q\ & ( \inst1|Selector3~0_combout\ & ( (!\FPGA_I2C_SDAT~input_o\ & ((!\inst1|ep.e4~DUPLICATE_q\) # ((!\inst1|Equal5~0_combout\) # (\inst1|Equal3~0_combout\)))) ) ) ) # ( !\inst1|ep.e0~q\ & ( 
-- \inst1|Selector3~0_combout\ & ( (!\FPGA_I2C_SDAT~input_o\ & (\inst1|Equal5~0_combout\ & ((!\inst1|ep.e4~DUPLICATE_q\) # (\inst1|Equal3~0_combout\)))) ) ) ) # ( \inst1|ep.e0~q\ & ( !\inst1|Selector3~0_combout\ & ( (!\inst1|ep.e4~DUPLICATE_q\) # 
-- ((!\inst1|Equal5~0_combout\) # (\inst1|Equal3~0_combout\)) ) ) ) # ( !\inst1|ep.e0~q\ & ( !\inst1|Selector3~0_combout\ & ( (\inst1|Equal5~0_combout\ & ((!\inst1|ep.e4~DUPLICATE_q\) # (\inst1|Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001111111111001111111100001000000010101010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datab => \inst1|ALT_INV_ep.e4~DUPLICATE_q\,
	datac => \inst1|ALT_INV_Equal5~0_combout\,
	datad => \inst1|ALT_INV_Equal3~0_combout\,
	datae => \inst1|ALT_INV_ep.e0~q\,
	dataf => \inst1|ALT_INV_Selector3~0_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X88_Y13_N32
\inst1|ep.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Selector0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e0~q\);

-- Location: LABCELL_X85_Y13_N54
\inst1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = ( \inst1|cbits\(4) & ( (!\inst1|cbits\(0) & (!\inst1|cbits\(1) & (!\inst1|cbits\(2) & \inst1|cbits\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(1),
	datac => \inst1|ALT_INV_cbits\(2),
	datad => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(4),
	combout => \inst1|Equal2~0_combout\);

-- Location: LABCELL_X88_Y13_N42
\inst1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = ( \inst1|ep.e1~q\ & ( \inst1|Equal5~0_combout\ & ( (!\inst1|ep.e0~q\) # ((!\inst1|stop~0_combout\) # ((\inst1|ep.e3~q\ & !\inst1|Equal2~0_combout\))) ) ) ) # ( !\inst1|ep.e1~q\ & ( \inst1|Equal5~0_combout\ & ( 
-- (!\inst1|ep.e0~q\) # ((\inst1|ep.e3~q\ & !\inst1|Equal2~0_combout\)) ) ) ) # ( \inst1|ep.e1~q\ & ( !\inst1|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111011100110111001111111111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e3~q\,
	datab => \inst1|ALT_INV_ep.e0~q\,
	datac => \inst1|ALT_INV_Equal2~0_combout\,
	datad => \inst1|ALT_INV_stop~0_combout\,
	datae => \inst1|ALT_INV_ep.e1~q\,
	dataf => \inst1|ALT_INV_Equal5~0_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X88_Y13_N43
\inst1|ep.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Selector1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e1~q\);

-- Location: MLABCELL_X84_Y13_N30
\inst1|incbits~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|incbits~0_combout\ = ( \inst1|cbits\(1) & ( \inst1|ep.e1~q\ ) ) # ( !\inst1|cbits\(1) & ( \inst1|ep.e1~q\ & ( (((!\inst1|cbits\(3) & !\inst1|cbits\(4))) # (\inst1|cbits\(0))) # (\inst1|cbits\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(2),
	datab => \inst1|ALT_INV_cbits\(3),
	datac => \inst1|ALT_INV_cbits\(4),
	datad => \inst1|ALT_INV_cbits\(0),
	datae => \inst1|ALT_INV_cbits\(1),
	dataf => \inst1|ALT_INV_ep.e1~q\,
	combout => \inst1|incbits~0_combout\);

-- Location: LABCELL_X88_Y13_N24
\inst1|incbits~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|incbits~1_combout\ = ( \inst1|ctmp\(0) & ( \inst1|ep.e3~q\ & ( (\inst1|Equal4~0_combout\ & (!\inst1|ctmp\(7) & ((!\inst1|Equal2~0_combout\) # (\inst1|incbits~0_combout\)))) ) ) ) # ( \inst1|ctmp\(0) & ( !\inst1|ep.e3~q\ & ( 
-- (\inst1|Equal4~0_combout\ & (!\inst1|ctmp\(7) & \inst1|incbits~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000000000000100010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_incbits~0_combout\,
	datad => \inst1|ALT_INV_Equal2~0_combout\,
	datae => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ep.e3~q\,
	combout => \inst1|incbits~1_combout\);

-- Location: LABCELL_X85_Y13_N18
\inst1|cbits[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[0]~4_combout\ = ( \inst1|Selector0~1_combout\ & ( (!\inst1|cbits\(0) & \inst1|incbits~1_combout\) ) ) # ( !\inst1|Selector0~1_combout\ & ( (!\inst1|cbits\(0) & (((\inst1|incbits~1_combout\)))) # (\inst1|cbits\(0) & (!\inst1|incbits~1_combout\ 
-- & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011001100001100101100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector3~0_combout\,
	datab => \inst1|ALT_INV_cbits\(0),
	datac => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datad => \inst1|ALT_INV_incbits~1_combout\,
	dataf => \inst1|ALT_INV_Selector0~1_combout\,
	combout => \inst1|cbits[0]~4_combout\);

-- Location: FF_X85_Y13_N20
\inst1|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[0]~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(0));

-- Location: LABCELL_X85_Y13_N57
\inst1|stop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|stop~0_combout\ = ( !\inst1|cbits\(2) & ( (!\inst1|cbits\(0) & (!\inst1|cbits\(1) & ((\inst1|cbits\(3)) # (\inst1|cbits\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(1),
	datac => \inst1|ALT_INV_cbits\(4),
	datad => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(2),
	combout => \inst1|stop~0_combout\);

-- Location: LABCELL_X88_Y13_N12
\inst1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = ( \inst1|ep.e2~q\ & ( \inst1|ep.e1~q\ & ( (!\inst1|Equal4~0_combout\) # ((!\inst1|ctmp\(0)) # (!\inst1|ctmp\(7))) ) ) ) # ( !\inst1|ep.e2~q\ & ( \inst1|ep.e1~q\ & ( (\inst1|Equal4~0_combout\ & (\inst1|stop~0_combout\ & 
-- (\inst1|ctmp\(0) & !\inst1|ctmp\(7)))) ) ) ) # ( \inst1|ep.e2~q\ & ( !\inst1|ep.e1~q\ & ( (!\inst1|Equal4~0_combout\) # ((!\inst1|ctmp\(0)) # (!\inst1|ctmp\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101000000001000000001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_stop~0_combout\,
	datac => \inst1|ALT_INV_ctmp\(0),
	datad => \inst1|ALT_INV_ctmp\(7),
	datae => \inst1|ALT_INV_ep.e2~q\,
	dataf => \inst1|ALT_INV_ep.e1~q\,
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X88_Y13_N14
\inst1|ep.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Selector2~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e2~q\);

-- Location: LABCELL_X88_Y13_N48
\inst1|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~1_combout\ = ( \inst1|ep.e3~q\ & ( \FPGA_I2C_SDAT~input_o\ & ( (!\inst1|Equal4~0_combout\) # ((!\inst1|ctmp\(0)) # (\inst1|ctmp\(7))) ) ) ) # ( \inst1|ep.e3~q\ & ( !\FPGA_I2C_SDAT~input_o\ & ( (!\inst1|Equal4~0_combout\) # 
-- ((!\inst1|ctmp\(0)) # (\inst1|ctmp\(7))) ) ) ) # ( !\inst1|ep.e3~q\ & ( !\FPGA_I2C_SDAT~input_o\ & ( (\inst1|Equal4~0_combout\ & (\inst1|ep.e2~q\ & (\inst1|ctmp\(0) & \inst1|ctmp\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111110101111111100000000000000001111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ep.e2~q\,
	datac => \inst1|ALT_INV_ctmp\(0),
	datad => \inst1|ALT_INV_ctmp\(7),
	datae => \inst1|ALT_INV_ep.e3~q\,
	dataf => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	combout => \inst1|Selector3~1_combout\);

-- Location: FF_X88_Y13_N50
\inst1|ep.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Selector3~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e3~q\);

-- Location: LABCELL_X88_Y13_N54
\inst1|ep.e4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ep.e4~0_combout\ = ( \inst1|ep.e4~q\ & ( \inst1|Equal4~0_combout\ & ( (!\inst1|ctmp\(0)) # (((\inst1|ep.e3~q\ & \inst1|Equal2~0_combout\)) # (\inst1|ctmp\(7))) ) ) ) # ( !\inst1|ep.e4~q\ & ( \inst1|Equal4~0_combout\ & ( (\inst1|ep.e3~q\ & 
-- (\inst1|Equal2~0_combout\ & (\inst1|ctmp\(0) & !\inst1|ctmp\(7)))) ) ) ) # ( \inst1|ep.e4~q\ & ( !\inst1|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e3~q\,
	datab => \inst1|ALT_INV_Equal2~0_combout\,
	datac => \inst1|ALT_INV_ctmp\(0),
	datad => \inst1|ALT_INV_ctmp\(7),
	datae => \inst1|ALT_INV_ep.e4~q\,
	dataf => \inst1|ALT_INV_Equal4~0_combout\,
	combout => \inst1|ep.e4~0_combout\);

-- Location: FF_X88_Y13_N56
\inst1|ep.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|ep.e4~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e4~q\);

-- Location: LABCELL_X88_Y13_N3
\inst1|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = ( \inst1|Equal4~0_combout\ & ( (\inst1|ep.e4~q\ & (!\inst1|ctmp\(7) & \inst1|ctmp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e4~q\,
	datac => \inst1|ALT_INV_ctmp\(7),
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_Equal4~0_combout\,
	combout => \inst1|Selector5~0_combout\);

-- Location: LABCELL_X88_Y13_N6
\inst1|settmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|settmp~0_combout\ = ( !\inst1|ep.e0~q\ & ( (!\inst1|ctmp\(7) & (\inst1|Equal4~0_combout\ & \inst1|ctmp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_Equal4~0_combout\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ep.e0~q\,
	combout => \inst1|settmp~0_combout\);

-- Location: MLABCELL_X87_Y13_N57
\inst1|settmp\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|settmp~combout\ = ( \inst1|Selector3~0_combout\ & ( (((\inst1|Selector5~0_combout\ & !\inst1|Equal3~0_combout\)) # (\inst1|settmp~0_combout\)) # (\FPGA_I2C_SDAT~input_o\) ) ) # ( !\inst1|Selector3~0_combout\ & ( ((\inst1|Selector5~0_combout\ & 
-- !\inst1|Equal3~0_combout\)) # (\inst1|settmp~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111101001111111111110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector5~0_combout\,
	datab => \inst1|ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datad => \inst1|ALT_INV_settmp~0_combout\,
	dataf => \inst1|ALT_INV_Selector3~0_combout\,
	combout => \inst1|settmp~combout\);

-- Location: MLABCELL_X87_Y13_N30
\inst1|ep.e5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ep.e5~0_combout\ = ( \inst1|ep.e5~q\ & ( \inst1|Equal3~0_combout\ ) ) # ( !\inst1|ep.e5~q\ & ( \inst1|Equal3~0_combout\ & ( (!\inst1|ctmp\(7) & (\inst1|ep.e4~DUPLICATE_q\ & (\inst1|ctmp\(0) & \inst1|Equal4~0_combout\))) ) ) ) # ( \inst1|ep.e5~q\ & 
-- ( !\inst1|Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(7),
	datab => \inst1|ALT_INV_ep.e4~DUPLICATE_q\,
	datac => \inst1|ALT_INV_ctmp\(0),
	datad => \inst1|ALT_INV_Equal4~0_combout\,
	datae => \inst1|ALT_INV_ep.e5~q\,
	dataf => \inst1|ALT_INV_Equal3~0_combout\,
	combout => \inst1|ep.e5~0_combout\);

-- Location: FF_X87_Y13_N32
\inst1|ep.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|ep.e5~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e5~q\);

-- Location: FF_X87_Y13_N2
\inst1|ctmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(0));

-- Location: MLABCELL_X87_Y13_N3
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

-- Location: FF_X87_Y13_N4
\inst1|ctmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(1));

-- Location: MLABCELL_X87_Y13_N6
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

-- Location: FF_X87_Y13_N7
\inst1|ctmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(2));

-- Location: MLABCELL_X87_Y13_N9
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

-- Location: FF_X87_Y13_N10
\inst1|ctmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(3));

-- Location: MLABCELL_X87_Y13_N12
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

-- Location: FF_X87_Y13_N13
\inst1|ctmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(4));

-- Location: MLABCELL_X87_Y13_N15
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

-- Location: FF_X87_Y13_N17
\inst1|ctmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(5));

-- Location: MLABCELL_X87_Y13_N18
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

-- Location: FF_X87_Y13_N19
\inst1|ctmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|Add2~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \inst1|settmp~combout\,
	ena => \inst1|ALT_INV_ep.e5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(6));

-- Location: MLABCELL_X87_Y13_N21
\inst1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add2~1_sumout\ = SUM(( !\inst1|ctmp\(7) ) + ( GND ) + ( \inst1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(7),
	cin => \inst1|Add2~6\,
	sumout => \inst1|Add2~1_sumout\);

-- Location: MLABCELL_X87_Y13_N54
\inst1|ctmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ctmp~0_combout\ = ( \inst1|ep.e5~q\ & ( \inst1|ctmp\(7) ) ) # ( !\inst1|ep.e5~q\ & ( !\inst1|Add2~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Add2~1_sumout\,
	datad => \inst1|ALT_INV_ctmp\(7),
	dataf => \inst1|ALT_INV_ep.e5~q\,
	combout => \inst1|ctmp~0_combout\);

-- Location: FF_X87_Y13_N56
\inst1|ctmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|ctmp~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \inst1|settmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(7));

-- Location: LABCELL_X88_Y13_N21
\inst1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = ( \inst1|Equal4~0_combout\ & ( (\inst1|ctmp\(7) & (\inst1|ep.e2~q\ & \inst1|ctmp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_ep.e2~q\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_Equal4~0_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: LABCELL_X85_Y13_N6
\inst1|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = ( \inst1|cbits\(2) & ( (\inst1|cbits\(0) & \inst1|cbits\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(1),
	dataf => \inst1|ALT_INV_cbits\(2),
	combout => \inst1|Add0~2_combout\);

-- Location: LABCELL_X85_Y13_N12
\inst1|cbits[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[3]~2_combout\ = ( \inst1|cbits\(3) & ( \inst1|Add0~2_combout\ & ( (!\inst1|incbits~1_combout\ & (!\inst1|Selector0~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) ) ) ) # ( !\inst1|cbits\(3) & ( 
-- \inst1|Add0~2_combout\ & ( \inst1|incbits~1_combout\ ) ) ) # ( \inst1|cbits\(3) & ( !\inst1|Add0~2_combout\ & ( ((!\inst1|Selector0~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|incbits~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110000111100001111000011111110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_incbits~1_combout\,
	datad => \inst1|ALT_INV_Selector0~1_combout\,
	datae => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_Add0~2_combout\,
	combout => \inst1|cbits[3]~2_combout\);

-- Location: FF_X85_Y13_N14
\inst1|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[3]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(3));

-- Location: LABCELL_X85_Y13_N0
\inst1|sdat~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~3_combout\ = ( \inst1|cbits\(2) & ( \inst1|cbits\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(2),
	combout => \inst1|sdat~3_combout\);

-- Location: LABCELL_X85_Y13_N42
\inst1|sdat~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~2_combout\ = ( \inst1|cbits\(3) & ( (\inst1|caddr\(1) & (!\inst1|cbits\(2) & (!\inst1|caddr\(0) $ (\inst1|caddr\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000100000100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(1),
	datab => \inst1|ALT_INV_caddr\(0),
	datac => \inst1|ALT_INV_cbits\(2),
	datad => \inst1|ALT_INV_caddr\(2),
	dataf => \inst1|ALT_INV_cbits\(3),
	combout => \inst1|sdat~2_combout\);

-- Location: LABCELL_X85_Y13_N9
\inst1|sdat~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~1_combout\ = ( \inst1|cbits\(2) & ( (\inst1|cbits\(0) & (!\inst1|cbits\(1) & !\inst1|cbits\(3))) ) ) # ( !\inst1|cbits\(2) & ( (\inst1|cbits\(1) & !\inst1|cbits\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(1),
	datac => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(2),
	combout => \inst1|sdat~1_combout\);

-- Location: LABCELL_X85_Y13_N45
\inst1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = ( \inst1|cbits\(0) & ( (!\inst1|caddr\(1) & ((!\inst1|cbits\(1) & ((!\inst1|caddr\(0)) # (!\inst1|caddr\(2)))) # (\inst1|cbits\(1) & ((\inst1|caddr\(2)))))) ) ) # ( !\inst1|cbits\(0) & ( (!\inst1|caddr\(1) & (!\inst1|caddr\(2) & 
-- ((!\inst1|cbits\(1)) # (\inst1|caddr\(0))))) # (\inst1|caddr\(1) & (!\inst1|caddr\(2) $ (((!\inst1|caddr\(0)) # (\inst1|cbits\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001001000101101100100100010110100000100010101010000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(1),
	datab => \inst1|ALT_INV_caddr\(0),
	datac => \inst1|ALT_INV_cbits\(1),
	datad => \inst1|ALT_INV_caddr\(2),
	dataf => \inst1|ALT_INV_cbits\(0),
	combout => \inst1|Mux12~0_combout\);

-- Location: LABCELL_X85_Y13_N48
\inst1|sdat~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~4_combout\ = ( \inst1|Mux12~0_combout\ & ( !\inst1|cbits\(4) & ( (((\inst1|sdat~2_combout\ & \inst1|Add0~0_combout\)) # (\inst1|sdat~1_combout\)) # (\inst1|sdat~3_combout\) ) ) ) # ( !\inst1|Mux12~0_combout\ & ( !\inst1|cbits\(4) & ( 
-- ((\inst1|sdat~2_combout\ & \inst1|Add0~0_combout\)) # (\inst1|sdat~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111010101111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_sdat~3_combout\,
	datab => \inst1|ALT_INV_sdat~2_combout\,
	datac => \inst1|ALT_INV_Add0~0_combout\,
	datad => \inst1|ALT_INV_sdat~1_combout\,
	datae => \inst1|ALT_INV_Mux12~0_combout\,
	dataf => \inst1|ALT_INV_cbits\(4),
	combout => \inst1|sdat~4_combout\);

-- Location: LABCELL_X88_Y13_N18
\inst1|ep.e4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ep.e4~1_combout\ = ( \inst1|ep.e3~q\ & ( (\inst1|Equal4~0_combout\ & (!\inst1|ctmp\(7) & (\inst1|Equal2~0_combout\ & \inst1|ctmp\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_Equal2~0_combout\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ep.e3~q\,
	combout => \inst1|ep.e4~1_combout\);

-- Location: LABCELL_X85_Y13_N24
\inst1|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~1_combout\ = ( \inst1|cbits\(2) & ( \inst1|caddr\(2) & ( (!\inst1|caddr\(1) & ((!\inst1|cbits\(1) & (!\inst1|cbits\(0) $ (\inst1|caddr\(0)))) # (\inst1|cbits\(1) & ((\inst1|caddr\(0)) # (\inst1|cbits\(0)))))) # (\inst1|caddr\(1) & 
-- (\inst1|cbits\(1) & (\inst1|cbits\(0) & \inst1|caddr\(0)))) ) ) ) # ( !\inst1|cbits\(2) & ( \inst1|caddr\(2) & ( (!\inst1|caddr\(1) & ((!\inst1|cbits\(1) & (\inst1|cbits\(0) & !\inst1|caddr\(0))) # (\inst1|cbits\(1) & ((!\inst1|caddr\(0)) # 
-- (\inst1|cbits\(0)))))) ) ) ) # ( \inst1|cbits\(2) & ( !\inst1|caddr\(2) & ( (!\inst1|caddr\(1) & (\inst1|cbits\(1) & (\inst1|cbits\(0) & \inst1|caddr\(0)))) ) ) ) # ( !\inst1|cbits\(2) & ( !\inst1|caddr\(2) & ( (\inst1|cbits\(0) & (\inst1|caddr\(0) & 
-- (!\inst1|caddr\(1) $ (\inst1|cbits\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001001000000000000001000101010000000101000001000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(1),
	datab => \inst1|ALT_INV_cbits\(1),
	datac => \inst1|ALT_INV_cbits\(0),
	datad => \inst1|ALT_INV_caddr\(0),
	datae => \inst1|ALT_INV_cbits\(2),
	dataf => \inst1|ALT_INV_caddr\(2),
	combout => \inst1|Mux12~1_combout\);

-- Location: MLABCELL_X84_Y13_N36
\inst1|sdat~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~5_combout\ = ( \inst1|cbits\(4) & ( (!\inst1|cbits\(3) & \inst1|Mux12~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_cbits\(3),
	datad => \inst1|ALT_INV_Mux12~1_combout\,
	dataf => \inst1|ALT_INV_cbits\(4),
	combout => \inst1|sdat~5_combout\);

-- Location: LABCELL_X88_Y13_N9
\inst1|sdat~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~0_combout\ = ( \inst1|sdat~q\ & ( (!\inst1|Equal4~0_combout\) # (((!\inst1|ep.e4~DUPLICATE_q\) # (!\inst1|ctmp\(0))) # (\inst1|ctmp\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_ep.e4~DUPLICATE_q\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_sdat~q\,
	combout => \inst1|sdat~0_combout\);

-- Location: MLABCELL_X87_Y13_N24
\inst1|sdat~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~6_combout\ = ( \inst1|sdat~0_combout\ & ( \inst1|incbits~1_combout\ & ( (!\inst1|sdat~4_combout\ & !\inst1|sdat~5_combout\) ) ) ) # ( !\inst1|sdat~0_combout\ & ( \inst1|incbits~1_combout\ & ( (!\inst1|sdat~4_combout\ & !\inst1|sdat~5_combout\) 
-- ) ) ) # ( \inst1|sdat~0_combout\ & ( !\inst1|incbits~1_combout\ ) ) # ( !\inst1|sdat~0_combout\ & ( !\inst1|incbits~1_combout\ & ( (\inst1|settmp~0_combout\) # (\inst1|ep.e4~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_sdat~4_combout\,
	datab => \inst1|ALT_INV_ep.e4~1_combout\,
	datac => \inst1|ALT_INV_settmp~0_combout\,
	datad => \inst1|ALT_INV_sdat~5_combout\,
	datae => \inst1|ALT_INV_sdat~0_combout\,
	dataf => \inst1|ALT_INV_incbits~1_combout\,
	combout => \inst1|sdat~6_combout\);

-- Location: FF_X87_Y13_N25
\inst1|sdat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|sdat~6_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sdat~q\);

-- Location: LABCELL_X88_Y13_N39
\inst1|setbitz\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|setbitz~combout\ = ( !\inst1|ep.e3~q\ & ( !\inst1|ep.e2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_ep.e2~q\,
	dataf => \inst1|ALT_INV_ep.e3~q\,
	combout => \inst1|setbitz~combout\);

-- Location: MLABCELL_X84_Y10_N51
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

-- Location: FF_X84_Y10_N52
\inst4|clkdiv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|clkdiv[0]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(0));

-- Location: MLABCELL_X84_Y10_N57
\inst1|cclkdiv[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cclkdiv[1]~0_combout\ = ( !\inst4|clkdiv\(0) & ( \inst1|cclkdiv\(1) ) ) # ( \inst4|clkdiv\(0) & ( !\inst1|cclkdiv\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst4|ALT_INV_clkdiv\(0),
	dataf => \inst1|ALT_INV_cclkdiv\(1),
	combout => \inst1|cclkdiv[1]~0_combout\);

-- Location: FF_X84_Y10_N32
\inst1|cclkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst1|cclkdiv[1]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cclkdiv\(1));

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

-- Location: LABCELL_X85_Y15_N39
\inst2|adcdats~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|adcdats~feeder_combout\ = ( \AUD_ADCDAT~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_AUD_ADCDAT~input_o\,
	combout => \inst2|adcdats~feeder_combout\);

-- Location: FF_X85_Y15_N40
\inst2|adcdats\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|adcdats~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
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

-- Location: FF_X88_Y15_N5
\inst2|bclks\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_BCLK~input_o\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|bclks~q\);

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

-- Location: FF_X88_Y16_N17
\inst2|adclrcs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_ADCLRCK~input_o\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|adclrcs~q\);

-- Location: LABCELL_X85_Y16_N9
\inst2|cbits[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[0]~3_combout\ = !\inst2|cbits\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|cbits[0]~3_combout\);

-- Location: FF_X85_Y16_N11
\inst2|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[0]~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(0));

-- Location: LABCELL_X88_Y16_N57
\inst2|cbits[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[1]~0_combout\ = ( \inst2|cbits\(1) & ( \inst2|cbits\(0) & ( !\inst2|ep.e3~q\ ) ) ) # ( !\inst2|cbits\(1) & ( \inst2|cbits\(0) & ( \inst2|ep.e3~q\ ) ) ) # ( \inst2|cbits\(1) & ( !\inst2|cbits\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_ep.e3~q\,
	datae => \inst2|ALT_INV_cbits\(1),
	dataf => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|cbits[1]~0_combout\);

-- Location: FF_X88_Y16_N58
\inst2|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[1]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(1));

-- Location: LABCELL_X88_Y16_N6
\inst2|cbits[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[2]~2_combout\ = ( \inst2|cbits\(2) & ( \inst2|cbits\(0) & ( (!\inst2|cbits\(1)) # (!\inst2|ep.e3~q\) ) ) ) # ( !\inst2|cbits\(2) & ( \inst2|cbits\(0) & ( (\inst2|cbits\(1) & \inst2|ep.e3~q\) ) ) ) # ( \inst2|cbits\(2) & ( !\inst2|cbits\(0) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010001000100011110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cbits\(1),
	datab => \inst2|ALT_INV_ep.e3~q\,
	datae => \inst2|ALT_INV_cbits\(2),
	dataf => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|cbits[2]~2_combout\);

-- Location: FF_X88_Y16_N7
\inst2|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[2]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(2));

-- Location: LABCELL_X88_Y16_N0
\inst2|cbits[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[3]~1_combout\ = ( \inst2|cbits\(3) & ( \inst2|cbits\(0) & ( (!\inst2|cbits\(1)) # ((!\inst2|ep.e3~q\) # (!\inst2|cbits\(2))) ) ) ) # ( !\inst2|cbits\(3) & ( \inst2|cbits\(0) & ( (\inst2|cbits\(1) & (\inst2|ep.e3~q\ & \inst2|cbits\(2))) ) ) ) 
-- # ( \inst2|cbits\(3) & ( !\inst2|cbits\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cbits\(1),
	datab => \inst2|ALT_INV_ep.e3~q\,
	datac => \inst2|ALT_INV_cbits\(2),
	datae => \inst2|ALT_INV_cbits\(3),
	dataf => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|cbits[3]~1_combout\);

-- Location: FF_X88_Y16_N1
\inst2|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[3]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(3));

-- Location: LABCELL_X88_Y16_N45
\inst2|es.e5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|es.e5~0_combout\ = ( \inst2|cbits\(1) & ( \inst2|cbits\(3) & ( (\inst2|cbits\(2) & (\inst2|ep.e3~q\ & \inst2|cbits\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cbits\(2),
	datab => \inst2|ALT_INV_ep.e3~q\,
	datac => \inst2|ALT_INV_cbits\(0),
	datae => \inst2|ALT_INV_cbits\(1),
	dataf => \inst2|ALT_INV_cbits\(3),
	combout => \inst2|es.e5~0_combout\);

-- Location: FF_X88_Y16_N47
\inst2|ep.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|es.e5~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e5~q\);

-- Location: LABCELL_X88_Y16_N51
\inst2|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = ( !\inst2|ep.e5~q\ & ( (!\inst2|adclrcs~q\) # (\inst2|ep.e0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_adclrcs~q\,
	datad => \inst2|ALT_INV_ep.e0~q\,
	dataf => \inst2|ALT_INV_ep.e5~q\,
	combout => \inst2|Selector0~0_combout\);

-- Location: FF_X88_Y16_N53
\inst2|ep.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Selector0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e0~q\);

-- Location: LABCELL_X88_Y16_N48
\inst2|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (!\inst2|adclrcs~q\ & (((!\inst2|ep.e0~q\) # (\inst2|ep.e1~q\)))) # (\inst2|adclrcs~q\ & (\inst2|bclks~q\ & ((\inst2|ep.e1~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011011101110000001101110111000000110111011100000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datab => \inst2|ALT_INV_adclrcs~q\,
	datac => \inst2|ALT_INV_ep.e0~q\,
	datad => \inst2|ALT_INV_ep.e1~q\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X88_Y16_N49
\inst2|ep.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Selector1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e1~q\);

-- Location: FF_X88_Y16_N59
\inst2|cbits[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|cbits[1]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y16_N33
\inst2|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = ( \inst2|cbits\(0) & ( (\inst2|cbits\(2) & (\inst2|cbits\(3) & \inst2|cbits[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cbits\(2),
	datac => \inst2|ALT_INV_cbits\(3),
	datad => \inst2|ALT_INV_cbits[1]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|Selector3~0_combout\);

-- Location: LABCELL_X88_Y16_N36
\inst2|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = ( \inst2|Selector3~0_combout\ & ( (\inst2|bclks~q\ & \inst2|ep.e4~q\) ) ) # ( !\inst2|Selector3~0_combout\ & ( ((\inst2|bclks~q\ & \inst2|ep.e4~q\)) # (\inst2|ep.e3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datac => \inst2|ALT_INV_ep.e3~q\,
	datad => \inst2|ALT_INV_ep.e4~q\,
	dataf => \inst2|ALT_INV_Selector3~0_combout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: FF_X88_Y16_N38
\inst2|ep.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Selector3~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e4~q\);

-- Location: LABCELL_X88_Y16_N39
\inst2|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = ( \inst2|ep.e4~q\ & ( !\inst2|bclks~q\ ) ) # ( !\inst2|ep.e4~q\ & ( (!\inst2|bclks~q\ & (((\inst2|ep.e1~q\ & \inst2|adclrcs~q\)) # (\inst2|ep.e2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101010000000101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_bclks~q\,
	datab => \inst2|ALT_INV_ep.e1~q\,
	datac => \inst2|ALT_INV_adclrcs~q\,
	datad => \inst2|ALT_INV_ep.e2~q\,
	dataf => \inst2|ALT_INV_ep.e4~q\,
	combout => \inst2|Selector2~0_combout\);

-- Location: FF_X88_Y16_N41
\inst2|ep.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Selector2~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e2~q\);

-- Location: LABCELL_X88_Y16_N30
\inst2|es.e3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|es.e3~0_combout\ = (\inst2|ep.e2~q\ & \inst2|bclks~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_ep.e2~q\,
	datac => \inst2|ALT_INV_bclks~q\,
	combout => \inst2|es.e3~0_combout\);

-- Location: FF_X88_Y16_N32
\inst2|ep.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|es.e3~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e3~q\);

-- Location: FF_X85_Y16_N32
\inst2|srdato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|adcdats~q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(0));

-- Location: FF_X85_Y16_N38
\inst2|srdato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(1));

-- Location: FF_X85_Y16_N5
\inst2|srdato[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(2));

-- Location: FF_X85_Y16_N2
\inst2|srdato[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(3));

-- Location: FF_X85_Y16_N26
\inst2|srdato[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(4));

-- Location: FF_X85_Y16_N17
\inst2|srdato[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(5));

-- Location: FF_X85_Y16_N23
\inst2|srdato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(6));

-- Location: FF_X85_Y16_N20
\inst2|srdato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(7));

-- Location: FF_X85_Y16_N8
\inst2|srdato[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(8));

-- Location: FF_X84_Y16_N16
\inst2|srdato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(9));

-- Location: FF_X84_Y16_N40
\inst2|srdato[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[10]~DUPLICATE_q\);

-- Location: FF_X84_Y16_N31
\inst2|srdato[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[10]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[11]~DUPLICATE_q\);

-- Location: FF_X85_Y16_N29
\inst2|srdato[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[11]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(12));

-- Location: FF_X84_Y16_N59
\inst2|srdato[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(12),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(13));

-- Location: FF_X84_Y16_N23
\inst2|srdato[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(13),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[14]~DUPLICATE_q\);

-- Location: FF_X84_Y16_N5
\inst2|srdato[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[14]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(15));

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

-- Location: MLABCELL_X84_Y16_N6
\inst5|signal_dist~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~3_combout\ = ( \SW[9]~input_o\ & ( (!\inst2|srdato\(15) & (\inst2|srdato[14]~DUPLICATE_q\ & (!\inst2|srdato\(13) $ (\SW[8]~input_o\)))) ) ) # ( !\SW[9]~input_o\ & ( (!\inst2|srdato\(15) & (!\inst2|srdato[14]~DUPLICATE_q\ & 
-- (!\inst2|srdato\(13) $ (\SW[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000100000000010000000001000000000100000100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst2|ALT_INV_srdato\(13),
	datac => \inst2|ALT_INV_srdato[14]~DUPLICATE_q\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \inst5|signal_dist~3_combout\);

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

-- Location: MLABCELL_X84_Y16_N33
\inst5|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = ( \SW[6]~input_o\ & ( \inst2|srdato[11]~DUPLICATE_q\ & ( (!\SW[7]~input_o\ & (!\inst2|srdato\(12) & (!\inst2|srdato[10]~DUPLICATE_q\ $ (\SW[5]~input_o\)))) # (\SW[7]~input_o\ & (\inst2|srdato\(12) & 
-- (!\inst2|srdato[10]~DUPLICATE_q\ $ (\SW[5]~input_o\)))) ) ) ) # ( !\SW[6]~input_o\ & ( !\inst2|srdato[11]~DUPLICATE_q\ & ( (!\SW[7]~input_o\ & (!\inst2|srdato\(12) & (!\inst2|srdato[10]~DUPLICATE_q\ $ (\SW[5]~input_o\)))) # (\SW[7]~input_o\ & 
-- (\inst2|srdato\(12) & (!\inst2|srdato[10]~DUPLICATE_q\ $ (\SW[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \inst2|ALT_INV_srdato\(12),
	datac => \inst2|ALT_INV_srdato[10]~DUPLICATE_q\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \inst2|ALT_INV_srdato[11]~DUPLICATE_q\,
	combout => \inst5|LessThan1~0_combout\);

-- Location: FF_X84_Y16_N32
\inst2|srdato[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[10]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(11));

-- Location: MLABCELL_X84_Y16_N54
\inst5|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~3_combout\ = ( \SW[7]~input_o\ & ( \inst2|srdato\(12) & ( (!\SW[6]~input_o\ & (((\inst2|srdato[10]~DUPLICATE_q\ & !\SW[5]~input_o\)) # (\inst2|srdato\(11)))) # (\SW[6]~input_o\ & (\inst2|srdato[10]~DUPLICATE_q\ & (!\SW[5]~input_o\ & 
-- \inst2|srdato\(11)))) ) ) ) # ( !\SW[7]~input_o\ & ( \inst2|srdato\(12) ) ) # ( !\SW[7]~input_o\ & ( !\inst2|srdato\(12) & ( (!\SW[6]~input_o\ & (((\inst2|srdato[10]~DUPLICATE_q\ & !\SW[5]~input_o\)) # (\inst2|srdato\(11)))) # (\SW[6]~input_o\ & 
-- (\inst2|srdato[10]~DUPLICATE_q\ & (!\SW[5]~input_o\ & \inst2|srdato\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010111010000000000000000011111111111111110010000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \inst2|ALT_INV_srdato[10]~DUPLICATE_q\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \inst2|ALT_INV_srdato\(11),
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(12),
	combout => \inst5|LessThan1~3_combout\);

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

-- Location: LABCELL_X85_Y16_N15
\inst5|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~1_combout\ = ( \inst2|srdato\(6) & ( (!\SW[1]~input_o\) # ((!\SW[0]~input_o\ & \inst2|srdato\(5))) ) ) # ( !\inst2|srdato\(6) & ( (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \inst2|srdato\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \inst2|ALT_INV_srdato\(5),
	dataf => \inst2|ALT_INV_srdato\(6),
	combout => \inst5|LessThan1~1_combout\);

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

-- Location: LABCELL_X85_Y16_N6
\inst5|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~2_combout\ = ( \inst2|srdato\(8) & ( (!\SW[3]~input_o\) # ((!\inst5|LessThan1~1_combout\ & (!\SW[2]~input_o\ & \inst2|srdato\(7))) # (\inst5|LessThan1~1_combout\ & ((!\SW[2]~input_o\) # (\inst2|srdato\(7))))) ) ) # ( !\inst2|srdato\(8) & 
-- ( (!\SW[3]~input_o\ & ((!\inst5|LessThan1~1_combout\ & (!\SW[2]~input_o\ & \inst2|srdato\(7))) # (\inst5|LessThan1~1_combout\ & ((!\SW[2]~input_o\) # (\inst2|srdato\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100010001000001010001010111010111110111011101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \inst5|ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \inst2|ALT_INV_srdato\(7),
	dataf => \inst2|ALT_INV_srdato\(8),
	combout => \inst5|LessThan1~2_combout\);

-- Location: MLABCELL_X84_Y16_N0
\inst5|signal_dist~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~4_combout\ = ( \inst5|LessThan1~3_combout\ & ( \inst5|LessThan1~2_combout\ & ( \inst5|signal_dist~3_combout\ ) ) ) # ( !\inst5|LessThan1~3_combout\ & ( \inst5|LessThan1~2_combout\ & ( (\inst5|signal_dist~3_combout\ & 
-- (\inst5|LessThan1~0_combout\ & ((!\SW[4]~input_o\) # (\inst2|srdato\(9))))) ) ) ) # ( \inst5|LessThan1~3_combout\ & ( !\inst5|LessThan1~2_combout\ & ( \inst5|signal_dist~3_combout\ ) ) ) # ( !\inst5|LessThan1~3_combout\ & ( !\inst5|LessThan1~2_combout\ & 
-- ( (!\SW[4]~input_o\ & (\inst5|signal_dist~3_combout\ & (\inst5|LessThan1~0_combout\ & \inst2|srdato\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010001100110011001100000010000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \inst5|ALT_INV_signal_dist~3_combout\,
	datac => \inst5|ALT_INV_LessThan1~0_combout\,
	datad => \inst2|ALT_INV_srdato\(9),
	datae => \inst5|ALT_INV_LessThan1~3_combout\,
	dataf => \inst5|ALT_INV_LessThan1~2_combout\,
	combout => \inst5|signal_dist~4_combout\);

-- Location: MLABCELL_X84_Y16_N12
\inst5|signal_dist~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~5_combout\ = ( \inst2|srdato[14]~DUPLICATE_q\ & ( (!\SW[8]~input_o\ & ((!\inst2|srdato\(13) & (!\SW[9]~input_o\)) # (\inst2|srdato\(13) & ((!\inst2|srdato\(15)))))) # (\SW[8]~input_o\ & (!\SW[9]~input_o\ & ((!\inst2|srdato\(15))))) ) ) 
-- # ( !\inst2|srdato[14]~DUPLICATE_q\ & ( (!\SW[8]~input_o\ & ((!\inst2|srdato\(13) & ((\inst2|srdato\(15)))) # (\inst2|srdato\(13) & (!\SW[9]~input_o\)))) # (\SW[8]~input_o\ & (!\SW[9]~input_o\ & ((\inst2|srdato\(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000001010101110001010000000101110000010101011100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \inst2|ALT_INV_srdato\(13),
	datac => \inst2|ALT_INV_srdato\(15),
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \inst2|ALT_INV_srdato[14]~DUPLICATE_q\,
	combout => \inst5|signal_dist~5_combout\);

-- Location: MLABCELL_X84_Y16_N9
\inst5|signal_dist~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~0_combout\ = ( \SW[9]~input_o\ & ( (\inst2|srdato\(15) & (!\inst2|srdato[14]~DUPLICATE_q\ & (!\inst2|srdato\(13) $ (!\SW[8]~input_o\)))) ) ) # ( !\SW[9]~input_o\ & ( (\inst2|srdato\(15) & (\inst2|srdato[14]~DUPLICATE_q\ & 
-- (!\inst2|srdato\(13) $ (!\SW[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000010100000000000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst2|ALT_INV_srdato\(13),
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \inst2|ALT_INV_srdato[14]~DUPLICATE_q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \inst5|signal_dist~0_combout\);

-- Location: LABCELL_X85_Y16_N33
\inst5|signal_dist~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~6_combout\ = ( \SW[7]~input_o\ & ( !\inst5|signal_dist~5_combout\ ) ) # ( !\SW[7]~input_o\ & ( (!\inst5|signal_dist~5_combout\ & ((!\inst5|signal_dist~0_combout\) # (\inst2|srdato\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_signal_dist~5_combout\,
	datac => \inst5|ALT_INV_signal_dist~0_combout\,
	datad => \inst2|ALT_INV_srdato\(12),
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \inst5|signal_dist~6_combout\);

-- Location: MLABCELL_X84_Y16_N18
\inst5|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~5_combout\ = ( \SW[6]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (!\inst2|srdato[10]~DUPLICATE_q\ & (!\inst2|srdato[11]~DUPLICATE_q\ & !\inst2|srdato\(9)))) ) ) ) # ( !\SW[6]~input_o\ & ( \SW[5]~input_o\ & ( 
-- (!\inst2|srdato[11]~DUPLICATE_q\) # ((!\SW[4]~input_o\ & (!\inst2|srdato[10]~DUPLICATE_q\ & !\inst2|srdato\(9)))) ) ) ) # ( \SW[6]~input_o\ & ( !\SW[5]~input_o\ & ( (!\inst2|srdato[11]~DUPLICATE_q\ & ((!\inst2|srdato[10]~DUPLICATE_q\) # ((!\SW[4]~input_o\ 
-- & !\inst2|srdato\(9))))) ) ) ) # ( !\SW[6]~input_o\ & ( !\SW[5]~input_o\ & ( (!\inst2|srdato[10]~DUPLICATE_q\) # ((!\inst2|srdato[11]~DUPLICATE_q\) # ((!\SW[4]~input_o\ & !\inst2|srdato\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111100111000001100000011111000111100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \inst2|ALT_INV_srdato[10]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_srdato[11]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_srdato\(9),
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \inst5|LessThan0~5_combout\);

-- Location: LABCELL_X85_Y16_N27
\inst5|signal_dist~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~1_combout\ = ( \SW[7]~input_o\ & ( (\inst5|signal_dist~0_combout\ & !\inst2|srdato\(12)) ) ) # ( !\SW[7]~input_o\ & ( (\inst5|signal_dist~0_combout\ & \inst2|srdato\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_signal_dist~0_combout\,
	datad => \inst2|ALT_INV_srdato\(12),
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \inst5|signal_dist~1_combout\);

-- Location: FF_X84_Y16_N41
\inst2|srdato[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(10));

-- Location: MLABCELL_X84_Y16_N36
\inst5|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = ( \SW[6]~input_o\ & ( \inst2|srdato\(9) & ( (!\SW[4]~input_o\ & (!\inst2|srdato[11]~DUPLICATE_q\ & (!\inst2|srdato\(10) $ (!\SW[5]~input_o\)))) ) ) ) # ( !\SW[6]~input_o\ & ( \inst2|srdato\(9) & ( (!\SW[4]~input_o\ & 
-- (\inst2|srdato[11]~DUPLICATE_q\ & (!\inst2|srdato\(10) $ (!\SW[5]~input_o\)))) ) ) ) # ( \SW[6]~input_o\ & ( !\inst2|srdato\(9) & ( (\SW[4]~input_o\ & (!\inst2|srdato[11]~DUPLICATE_q\ & (!\inst2|srdato\(10) $ (!\SW[5]~input_o\)))) ) ) ) # ( 
-- !\SW[6]~input_o\ & ( !\inst2|srdato\(9) & ( (\SW[4]~input_o\ & (\inst2|srdato[11]~DUPLICATE_q\ & (!\inst2|srdato\(10) $ (!\SW[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000100000100000000000010000010000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \inst2|ALT_INV_srdato\(10),
	datac => \inst2|ALT_INV_srdato[11]~DUPLICATE_q\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(9),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LABCELL_X85_Y16_N18
\inst5|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~3_combout\ = (!\SW[2]~input_o\ & ((!\inst2|srdato\(7)) # ((!\SW[1]~input_o\ & !\inst2|srdato\(6))))) # (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\inst2|srdato\(7) & !\inst2|srdato\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000011101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \inst2|ALT_INV_srdato\(7),
	datad => \inst2|ALT_INV_srdato\(6),
	combout => \inst5|LessThan0~3_combout\);

-- Location: LABCELL_X85_Y16_N24
\inst5|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~2_combout\ = ( !\inst2|srdato\(1) & ( (!\inst2|srdato\(4) & (!\inst2|srdato\(0) & (!\inst2|srdato\(2) & !\inst2|srdato\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(4),
	datab => \inst2|ALT_INV_srdato\(0),
	datac => \inst2|ALT_INV_srdato\(2),
	datad => \inst2|ALT_INV_srdato\(3),
	dataf => \inst2|ALT_INV_srdato\(1),
	combout => \inst5|LessThan0~2_combout\);

-- Location: LABCELL_X85_Y16_N21
\inst5|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = ( \inst2|srdato\(7) & ( (!\SW[2]~input_o\ & (!\SW[1]~input_o\ $ (!\inst2|srdato\(6)))) ) ) # ( !\inst2|srdato\(7) & ( (\SW[2]~input_o\ & (!\SW[1]~input_o\ $ (!\inst2|srdato\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \inst2|ALT_INV_srdato\(6),
	dataf => \inst2|ALT_INV_srdato\(7),
	combout => \inst5|LessThan0~1_combout\);

-- Location: LABCELL_X85_Y16_N12
\inst5|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~4_combout\ = ( \inst2|srdato\(5) & ( (!\inst5|LessThan0~3_combout\ & (((!\inst5|LessThan0~2_combout\) # (!\inst5|LessThan0~1_combout\)) # (\SW[0]~input_o\))) ) ) # ( !\inst2|srdato\(5) & ( (!\inst5|LessThan0~3_combout\ & 
-- ((!\inst5|LessThan0~1_combout\) # ((\SW[0]~input_o\ & !\inst5|LessThan0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100000101010100010000010101010101000101010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \inst5|ALT_INV_LessThan0~2_combout\,
	datad => \inst5|ALT_INV_LessThan0~1_combout\,
	dataf => \inst2|ALT_INV_srdato\(5),
	combout => \inst5|LessThan0~4_combout\);

-- Location: LABCELL_X85_Y16_N42
\inst5|signal_dist~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~2_combout\ = ( \SW[3]~input_o\ & ( \inst5|LessThan0~4_combout\ & ( (\inst5|LessThan0~5_combout\ & \inst5|signal_dist~1_combout\) ) ) ) # ( !\SW[3]~input_o\ & ( \inst5|LessThan0~4_combout\ & ( (\inst5|signal_dist~1_combout\ & 
-- (((\inst5|LessThan0~0_combout\ & !\inst2|srdato\(8))) # (\inst5|LessThan0~5_combout\))) ) ) ) # ( \SW[3]~input_o\ & ( !\inst5|LessThan0~4_combout\ & ( (\inst5|signal_dist~1_combout\ & (((\inst5|LessThan0~0_combout\ & !\inst2|srdato\(8))) # 
-- (\inst5|LessThan0~5_combout\))) ) ) ) # ( !\SW[3]~input_o\ & ( !\inst5|LessThan0~4_combout\ & ( (\inst5|signal_dist~1_combout\ & ((\inst5|LessThan0~0_combout\) # (\inst5|LessThan0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001000100010011000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_signal_dist~1_combout\,
	datac => \inst5|ALT_INV_LessThan0~0_combout\,
	datad => \inst2|ALT_INV_srdato\(8),
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \inst5|ALT_INV_LessThan0~4_combout\,
	combout => \inst5|signal_dist~2_combout\);

-- Location: LABCELL_X85_Y16_N30
\inst5|signal_dist[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[0]~7_combout\ = ( \inst5|signal_dist~2_combout\ ) # ( !\inst5|signal_dist~2_combout\ & ( ((!\inst5|signal_dist~6_combout\) # (\inst2|srdato\(0))) # (\inst5|signal_dist~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_signal_dist~4_combout\,
	datac => \inst5|ALT_INV_signal_dist~6_combout\,
	datad => \inst2|ALT_INV_srdato\(0),
	dataf => \inst5|ALT_INV_signal_dist~2_combout\,
	combout => \inst5|signal_dist[0]~7_combout\);

-- Location: LABCELL_X85_Y16_N36
\inst5|signal_dist[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[1]~8_combout\ = ( \inst5|signal_dist~2_combout\ & ( !\inst2|srdato\(15) ) ) # ( !\inst5|signal_dist~2_combout\ & ( (!\inst5|signal_dist~6_combout\ & (((!\inst2|srdato\(15))))) # (\inst5|signal_dist~6_combout\ & 
-- ((!\inst5|signal_dist~4_combout\ & ((\inst2|srdato\(1)))) # (\inst5|signal_dist~4_combout\ & (!\inst2|srdato\(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000011110100101100001111010011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_signal_dist~6_combout\,
	datab => \inst5|ALT_INV_signal_dist~4_combout\,
	datac => \inst2|ALT_INV_srdato\(15),
	datad => \inst2|ALT_INV_srdato\(1),
	dataf => \inst5|ALT_INV_signal_dist~2_combout\,
	combout => \inst5|signal_dist[1]~8_combout\);

-- Location: LABCELL_X85_Y16_N3
\inst5|signal_dist[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[2]~9_combout\ = ( \inst2|srdato\(15) & ( (\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~2_combout\ & (!\inst5|signal_dist~4_combout\ & \inst2|srdato\(2)))) ) ) # ( !\inst2|srdato\(15) & ( (!\inst5|signal_dist~6_combout\) # 
-- (((\inst2|srdato\(2)) # (\inst5|signal_dist~4_combout\)) # (\inst5|signal_dist~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111100000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_signal_dist~6_combout\,
	datab => \inst5|ALT_INV_signal_dist~2_combout\,
	datac => \inst5|ALT_INV_signal_dist~4_combout\,
	datad => \inst2|ALT_INV_srdato\(2),
	dataf => \inst2|ALT_INV_srdato\(15),
	combout => \inst5|signal_dist[2]~9_combout\);

-- Location: LABCELL_X85_Y16_N0
\inst5|signal_dist[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[3]~10_combout\ = ( \inst5|signal_dist~4_combout\ & ( !\inst2|srdato\(15) ) ) # ( !\inst5|signal_dist~4_combout\ & ( (!\inst5|signal_dist~6_combout\ & (((!\inst2|srdato\(15))))) # (\inst5|signal_dist~6_combout\ & 
-- ((!\inst5|signal_dist~2_combout\ & ((\inst2|srdato\(3)))) # (\inst5|signal_dist~2_combout\ & (!\inst2|srdato\(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000011110100101100001111010011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_signal_dist~6_combout\,
	datab => \inst5|ALT_INV_signal_dist~2_combout\,
	datac => \inst2|ALT_INV_srdato\(15),
	datad => \inst2|ALT_INV_srdato\(3),
	dataf => \inst5|ALT_INV_signal_dist~4_combout\,
	combout => \inst5|signal_dist[3]~10_combout\);

-- Location: LABCELL_X85_Y16_N39
\inst5|signal_dist[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[4]~11_combout\ = ( \inst2|srdato\(15) & ( (\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~4_combout\ & (!\inst5|signal_dist~2_combout\ & \inst2|srdato\(4)))) ) ) # ( !\inst2|srdato\(15) & ( (!\inst5|signal_dist~6_combout\) # 
-- (((\inst2|srdato\(4)) # (\inst5|signal_dist~2_combout\)) # (\inst5|signal_dist~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111100000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_signal_dist~6_combout\,
	datab => \inst5|ALT_INV_signal_dist~4_combout\,
	datac => \inst5|ALT_INV_signal_dist~2_combout\,
	datad => \inst2|ALT_INV_srdato\(4),
	dataf => \inst2|ALT_INV_srdato\(15),
	combout => \inst5|signal_dist[4]~11_combout\);

-- Location: LABCELL_X85_Y16_N48
\inst5|signal_dist[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[5]~12_combout\ = ( \SW[0]~input_o\ & ( \inst2|srdato\(5) & ( (!\inst2|srdato\(15)) # ((!\inst5|signal_dist~4_combout\ & (\inst5|signal_dist~6_combout\ & !\inst5|signal_dist~2_combout\))) ) ) ) # ( !\SW[0]~input_o\ & ( \inst2|srdato\(5) 
-- & ( ((!\inst5|signal_dist~4_combout\ & (\inst5|signal_dist~6_combout\ & !\inst5|signal_dist~2_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[0]~input_o\ & ( !\inst2|srdato\(5) & ( (!\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # 
-- (\inst5|signal_dist~2_combout\)) # (\inst5|signal_dist~4_combout\))) ) ) ) # ( !\SW[0]~input_o\ & ( !\inst2|srdato\(5) & ( (\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # (\inst5|signal_dist~2_combout\)) # (\inst5|signal_dist~4_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010101101000101010101001011101010101011010111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~4_combout\,
	datac => \inst5|ALT_INV_signal_dist~6_combout\,
	datad => \inst5|ALT_INV_signal_dist~2_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(5),
	combout => \inst5|signal_dist[5]~12_combout\);

-- Location: LABCELL_X85_Y16_N51
\inst5|signal_dist[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[6]~13_combout\ = ( \SW[1]~input_o\ & ( \inst2|srdato\(6) & ( (!\inst2|srdato\(15)) # ((!\inst5|signal_dist~4_combout\ & (!\inst5|signal_dist~2_combout\ & \inst5|signal_dist~6_combout\))) ) ) ) # ( !\SW[1]~input_o\ & ( \inst2|srdato\(6) 
-- & ( ((!\inst5|signal_dist~4_combout\ & (!\inst5|signal_dist~2_combout\ & \inst5|signal_dist~6_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[1]~input_o\ & ( !\inst2|srdato\(6) & ( (!\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # 
-- (\inst5|signal_dist~2_combout\)) # (\inst5|signal_dist~4_combout\))) ) ) ) # ( !\SW[1]~input_o\ & ( !\inst2|srdato\(6) & ( (\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # (\inst5|signal_dist~2_combout\)) # (\inst5|signal_dist~4_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101101010100010101001010101110101011010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~4_combout\,
	datac => \inst5|ALT_INV_signal_dist~2_combout\,
	datad => \inst5|ALT_INV_signal_dist~6_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(6),
	combout => \inst5|signal_dist[6]~13_combout\);

-- Location: LABCELL_X85_Y16_N54
\inst5|signal_dist[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[7]~14_combout\ = ( \SW[2]~input_o\ & ( \inst2|srdato\(7) & ( (!\inst2|srdato\(15)) # ((!\inst5|signal_dist~4_combout\ & (\inst5|signal_dist~6_combout\ & !\inst5|signal_dist~2_combout\))) ) ) ) # ( !\SW[2]~input_o\ & ( \inst2|srdato\(7) 
-- & ( ((!\inst5|signal_dist~4_combout\ & (\inst5|signal_dist~6_combout\ & !\inst5|signal_dist~2_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[2]~input_o\ & ( !\inst2|srdato\(7) & ( (!\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # 
-- (\inst5|signal_dist~2_combout\)) # (\inst5|signal_dist~4_combout\))) ) ) ) # ( !\SW[2]~input_o\ & ( !\inst2|srdato\(7) & ( (\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # (\inst5|signal_dist~2_combout\)) # (\inst5|signal_dist~4_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010101101000101010101001011101010101011010111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~4_combout\,
	datac => \inst5|ALT_INV_signal_dist~6_combout\,
	datad => \inst5|ALT_INV_signal_dist~2_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(7),
	combout => \inst5|signal_dist[7]~14_combout\);

-- Location: LABCELL_X85_Y16_N57
\inst5|signal_dist[8]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[8]~15_combout\ = ( \SW[3]~input_o\ & ( \inst2|srdato\(8) & ( (!\inst2|srdato\(15)) # ((!\inst5|signal_dist~4_combout\ & (!\inst5|signal_dist~2_combout\ & \inst5|signal_dist~6_combout\))) ) ) ) # ( !\SW[3]~input_o\ & ( \inst2|srdato\(8) 
-- & ( ((!\inst5|signal_dist~4_combout\ & (!\inst5|signal_dist~2_combout\ & \inst5|signal_dist~6_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[3]~input_o\ & ( !\inst2|srdato\(8) & ( (!\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # 
-- (\inst5|signal_dist~2_combout\)) # (\inst5|signal_dist~4_combout\))) ) ) ) # ( !\SW[3]~input_o\ & ( !\inst2|srdato\(8) & ( (\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # (\inst5|signal_dist~2_combout\)) # (\inst5|signal_dist~4_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101101010100010101001010101110101011010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~4_combout\,
	datac => \inst5|ALT_INV_signal_dist~2_combout\,
	datad => \inst5|ALT_INV_signal_dist~6_combout\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(8),
	combout => \inst5|signal_dist[8]~15_combout\);

-- Location: MLABCELL_X84_Y16_N42
\inst5|signal_dist[9]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[9]~16_combout\ = ( \SW[4]~input_o\ & ( \inst2|srdato\(9) & ( (!\inst2|srdato\(15)) # ((\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~4_combout\ & !\inst5|signal_dist~2_combout\))) ) ) ) # ( !\SW[4]~input_o\ & ( \inst2|srdato\(9) 
-- & ( ((\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~4_combout\ & !\inst5|signal_dist~2_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[4]~input_o\ & ( !\inst2|srdato\(9) & ( (!\inst2|srdato\(15) & ((!\inst5|signal_dist~6_combout\) # 
-- ((\inst5|signal_dist~2_combout\) # (\inst5|signal_dist~4_combout\)))) ) ) ) # ( !\SW[4]~input_o\ & ( !\inst2|srdato\(9) & ( (\inst2|srdato\(15) & ((!\inst5|signal_dist~6_combout\) # ((\inst5|signal_dist~2_combout\) # (\inst5|signal_dist~4_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101100010101010101001110101010101011011101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~6_combout\,
	datac => \inst5|ALT_INV_signal_dist~4_combout\,
	datad => \inst5|ALT_INV_signal_dist~2_combout\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(9),
	combout => \inst5|signal_dist[9]~16_combout\);

-- Location: MLABCELL_X84_Y16_N45
\inst5|signal_dist[10]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[10]~17_combout\ = ( \SW[5]~input_o\ & ( \inst2|srdato\(10) & ( (!\inst2|srdato\(15)) # ((\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~2_combout\ & !\inst5|signal_dist~4_combout\))) ) ) ) # ( !\SW[5]~input_o\ & ( 
-- \inst2|srdato\(10) & ( ((\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~2_combout\ & !\inst5|signal_dist~4_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[5]~input_o\ & ( !\inst2|srdato\(10) & ( (!\inst2|srdato\(15) & 
-- ((!\inst5|signal_dist~6_combout\) # ((\inst5|signal_dist~4_combout\) # (\inst5|signal_dist~2_combout\)))) ) ) ) # ( !\SW[5]~input_o\ & ( !\inst2|srdato\(10) & ( (\inst2|srdato\(15) & ((!\inst5|signal_dist~6_combout\) # ((\inst5|signal_dist~4_combout\) # 
-- (\inst5|signal_dist~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101100010101010101001110101010101011011101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~6_combout\,
	datac => \inst5|ALT_INV_signal_dist~2_combout\,
	datad => \inst5|ALT_INV_signal_dist~4_combout\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(10),
	combout => \inst5|signal_dist[10]~17_combout\);

-- Location: MLABCELL_X84_Y16_N48
\inst5|signal_dist[11]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[11]~18_combout\ = ( \SW[6]~input_o\ & ( \inst2|srdato\(11) & ( (!\inst2|srdato\(15)) # ((!\inst5|signal_dist~2_combout\ & (!\inst5|signal_dist~4_combout\ & \inst5|signal_dist~6_combout\))) ) ) ) # ( !\SW[6]~input_o\ & ( 
-- \inst2|srdato\(11) & ( ((!\inst5|signal_dist~2_combout\ & (!\inst5|signal_dist~4_combout\ & \inst5|signal_dist~6_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[6]~input_o\ & ( !\inst2|srdato\(11) & ( (!\inst2|srdato\(15) & 
-- (((!\inst5|signal_dist~6_combout\) # (\inst5|signal_dist~4_combout\)) # (\inst5|signal_dist~2_combout\))) ) ) ) # ( !\SW[6]~input_o\ & ( !\inst2|srdato\(11) & ( (\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # (\inst5|signal_dist~4_combout\)) # 
-- (\inst5|signal_dist~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101101010100010101001010101110101011010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~2_combout\,
	datac => \inst5|ALT_INV_signal_dist~4_combout\,
	datad => \inst5|ALT_INV_signal_dist~6_combout\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(11),
	combout => \inst5|signal_dist[11]~18_combout\);

-- Location: MLABCELL_X84_Y16_N51
\inst5|signal_dist[12]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[12]~19_combout\ = ( \SW[7]~input_o\ & ( \inst2|srdato\(12) & ( (!\inst2|srdato\(15)) # ((!\inst5|signal_dist~2_combout\ & (\inst5|signal_dist~6_combout\ & !\inst5|signal_dist~4_combout\))) ) ) ) # ( !\SW[7]~input_o\ & ( 
-- \inst2|srdato\(12) & ( ((!\inst5|signal_dist~2_combout\ & (\inst5|signal_dist~6_combout\ & !\inst5|signal_dist~4_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[7]~input_o\ & ( !\inst2|srdato\(12) & ( (!\inst2|srdato\(15) & 
-- (((!\inst5|signal_dist~6_combout\) # (\inst5|signal_dist~4_combout\)) # (\inst5|signal_dist~2_combout\))) ) ) ) # ( !\SW[7]~input_o\ & ( !\inst2|srdato\(12) & ( (\inst2|srdato\(15) & (((!\inst5|signal_dist~6_combout\) # (\inst5|signal_dist~4_combout\)) # 
-- (\inst5|signal_dist~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010101101000101010101001011101010101011010111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~2_combout\,
	datac => \inst5|ALT_INV_signal_dist~6_combout\,
	datad => \inst5|ALT_INV_signal_dist~4_combout\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(12),
	combout => \inst5|signal_dist[12]~19_combout\);

-- Location: MLABCELL_X84_Y16_N24
\inst5|signal_dist[13]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[13]~20_combout\ = ( \SW[8]~input_o\ & ( \inst2|srdato\(13) & ( (!\inst2|srdato\(15)) # ((\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~4_combout\ & !\inst5|signal_dist~2_combout\))) ) ) ) # ( !\SW[8]~input_o\ & ( 
-- \inst2|srdato\(13) & ( ((\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~4_combout\ & !\inst5|signal_dist~2_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[8]~input_o\ & ( !\inst2|srdato\(13) & ( (!\inst2|srdato\(15) & 
-- ((!\inst5|signal_dist~6_combout\) # ((\inst5|signal_dist~2_combout\) # (\inst5|signal_dist~4_combout\)))) ) ) ) # ( !\SW[8]~input_o\ & ( !\inst2|srdato\(13) & ( (\inst2|srdato\(15) & ((!\inst5|signal_dist~6_combout\) # ((\inst5|signal_dist~2_combout\) # 
-- (\inst5|signal_dist~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101100010101010101001110101010101011011101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~6_combout\,
	datac => \inst5|ALT_INV_signal_dist~4_combout\,
	datad => \inst5|ALT_INV_signal_dist~2_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(13),
	combout => \inst5|signal_dist[13]~20_combout\);

-- Location: FF_X84_Y16_N22
\inst2|srdato[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(13),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(14));

-- Location: MLABCELL_X84_Y16_N27
\inst5|signal_dist[14]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[14]~21_combout\ = ( \SW[9]~input_o\ & ( \inst2|srdato\(14) & ( (!\inst2|srdato\(15)) # ((\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~2_combout\ & !\inst5|signal_dist~4_combout\))) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- \inst2|srdato\(14) & ( ((\inst5|signal_dist~6_combout\ & (!\inst5|signal_dist~2_combout\ & !\inst5|signal_dist~4_combout\))) # (\inst2|srdato\(15)) ) ) ) # ( \SW[9]~input_o\ & ( !\inst2|srdato\(14) & ( (!\inst2|srdato\(15) & 
-- ((!\inst5|signal_dist~6_combout\) # ((\inst5|signal_dist~4_combout\) # (\inst5|signal_dist~2_combout\)))) ) ) ) # ( !\SW[9]~input_o\ & ( !\inst2|srdato\(14) & ( (\inst2|srdato\(15) & ((!\inst5|signal_dist~6_combout\) # ((\inst5|signal_dist~4_combout\) # 
-- (\inst5|signal_dist~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101100010101010101001110101010101011011101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_signal_dist~6_combout\,
	datac => \inst5|ALT_INV_signal_dist~2_combout\,
	datad => \inst5|ALT_INV_signal_dist~4_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \inst2|ALT_INV_srdato\(14),
	combout => \inst5|signal_dist[14]~21_combout\);

-- Location: DSP_X86_Y16_N0
\inst5|s1|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
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
	signed_max => "true",
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

-- Location: MLABCELL_X87_Y16_N30
\inst3|srdato[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[16]~feeder_combout\ = ( \inst5|s1|sample_out\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(15),
	combout => \inst3|srdato[16]~feeder_combout\);

-- Location: MLABCELL_X87_Y16_N33
\inst3|srdato[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[15]~feeder_combout\ = ( \inst5|s1|sample_out\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(14),
	combout => \inst3|srdato[15]~feeder_combout\);

-- Location: MLABCELL_X87_Y16_N36
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

-- Location: MLABCELL_X87_Y16_N39
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

-- Location: MLABCELL_X87_Y16_N42
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

-- Location: MLABCELL_X87_Y16_N45
\inst3|srdato[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[11]~feeder_combout\ = \inst5|s1|sample_out\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_sample_out\(10),
	combout => \inst3|srdato[11]~feeder_combout\);

-- Location: MLABCELL_X87_Y16_N18
\inst3|srdato[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[10]~feeder_combout\ = \inst5|s1|sample_out\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_sample_out\(9),
	combout => \inst3|srdato[10]~feeder_combout\);

-- Location: MLABCELL_X87_Y16_N21
\inst3|srdato[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[9]~feeder_combout\ = ( \inst5|s1|sample_out\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(8),
	combout => \inst3|srdato[9]~feeder_combout\);

-- Location: MLABCELL_X87_Y16_N54
\inst3|srdato[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[8]~feeder_combout\ = ( \inst5|s1|sample_out\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(7),
	combout => \inst3|srdato[8]~feeder_combout\);

-- Location: MLABCELL_X87_Y16_N57
\inst3|srdato[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[7]~feeder_combout\ = ( \inst5|s1|sample_out\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(6),
	combout => \inst3|srdato[7]~feeder_combout\);

-- Location: MLABCELL_X87_Y16_N0
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

-- Location: MLABCELL_X87_Y16_N3
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

-- Location: MLABCELL_X87_Y16_N6
\inst3|srdato[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[4]~feeder_combout\ = \inst5|s1|sample_out\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|ALT_INV_sample_out\(3),
	combout => \inst3|srdato[4]~feeder_combout\);

-- Location: MLABCELL_X87_Y16_N9
\inst3|srdato[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[3]~feeder_combout\ = \inst5|s1|sample_out\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|ALT_INV_sample_out\(2),
	combout => \inst3|srdato[3]~feeder_combout\);

-- Location: MLABCELL_X87_Y16_N12
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

-- Location: MLABCELL_X87_Y16_N15
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

-- Location: FF_X85_Y16_N47
\inst3|daclrcs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_DACLRCK~input_o\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|daclrcs~q\);

-- Location: LABCELL_X85_Y15_N24
\inst3|cbits[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[0]~3_combout\ = ( \inst3|cbits\(0) & ( !\inst3|ep.e4~q\ ) ) # ( !\inst3|cbits\(0) & ( \inst3|ep.e4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e4~q\,
	datae => \inst3|ALT_INV_cbits\(0),
	combout => \inst3|cbits[0]~3_combout\);

-- Location: FF_X85_Y15_N25
\inst3|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[0]~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(0));

-- Location: FF_X85_Y15_N52
\inst3|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[1]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(1));

-- Location: LABCELL_X85_Y15_N51
\inst3|cbits[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[1]~2_combout\ = !\inst3|cbits\(1) $ (((!\inst3|ep.e4~q\) # (!\inst3|cbits\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_cbits\(0),
	datad => \inst3|ALT_INV_cbits\(1),
	combout => \inst3|cbits[1]~2_combout\);

-- Location: FF_X85_Y15_N53
\inst3|cbits[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[1]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits[1]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y15_N48
\inst3|cbits[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[2]~1_combout\ = ( \inst3|cbits\(0) & ( !\inst3|cbits\(2) $ (((!\inst3|cbits[1]~DUPLICATE_q\) # (!\inst3|ep.e4~q\))) ) ) # ( !\inst3|cbits\(0) & ( \inst3|cbits\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_ep.e4~q\,
	datad => \inst3|ALT_INV_cbits\(2),
	dataf => \inst3|ALT_INV_cbits\(0),
	combout => \inst3|cbits[2]~1_combout\);

-- Location: FF_X85_Y15_N50
\inst3|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[2]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(2));

-- Location: LABCELL_X85_Y15_N45
\inst3|cbits[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[3]~0_combout\ = ( \inst3|cbits\(1) & ( !\inst3|cbits\(3) $ (((!\inst3|cbits\(2)) # ((!\inst3|ep.e4~q\) # (!\inst3|cbits\(0))))) ) ) # ( !\inst3|cbits\(1) & ( \inst3|cbits\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits\(2),
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_cbits\(0),
	datad => \inst3|ALT_INV_cbits\(3),
	dataf => \inst3|ALT_INV_cbits\(1),
	combout => \inst3|cbits[3]~0_combout\);

-- Location: FF_X85_Y15_N47
\inst3|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|cbits[3]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(3));

-- Location: LABCELL_X85_Y15_N42
\inst3|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector2~0_combout\ = ( \inst3|cbits\(0) & ( (\inst3|cbits\(2) & (\inst3|ep.e4~q\ & (\inst3|cbits[1]~DUPLICATE_q\ & \inst3|cbits\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits\(2),
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_cbits[1]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_cbits\(3),
	dataf => \inst3|ALT_INV_cbits\(0),
	combout => \inst3|Selector2~0_combout\);

-- Location: LABCELL_X85_Y15_N54
\inst3|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector2~1_combout\ = ( \inst3|Selector2~0_combout\ & ( ((\inst2|bclks~q\ & \inst3|ep.e5~q\)) # (\inst3|daclrcs~q\) ) ) # ( !\inst3|Selector2~0_combout\ & ( (\inst3|ep.e5~q\ & ((\inst2|bclks~q\) # (\inst3|daclrcs~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_daclrcs~q\,
	datab => \inst2|ALT_INV_bclks~q\,
	datad => \inst3|ALT_INV_ep.e5~q\,
	dataf => \inst3|ALT_INV_Selector2~0_combout\,
	combout => \inst3|Selector2~1_combout\);

-- Location: FF_X85_Y15_N55
\inst3|ep.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|Selector2~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e5~q\);

-- Location: LABCELL_X85_Y15_N9
\inst3|es.e6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e6~0_combout\ = ( \inst3|ep.e5~q\ & ( (!\inst3|daclrcs~q\ & !\inst2|bclks~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_daclrcs~q\,
	datac => \inst2|ALT_INV_bclks~q\,
	dataf => \inst3|ALT_INV_ep.e5~q\,
	combout => \inst3|es.e6~0_combout\);

-- Location: FF_X85_Y15_N10
\inst3|ep.e6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|es.e6~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e6~q\);

-- Location: LABCELL_X85_Y15_N57
\inst3|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector0~0_combout\ = ( \inst3|Selector2~0_combout\ & ( (\inst3|daclrcs~q\ & ((!\inst2|bclks~q\) # (\inst3|ep.e0~q\))) ) ) # ( !\inst3|Selector2~0_combout\ & ( ((\inst3|daclrcs~q\ & !\inst2|bclks~q\)) # (\inst3|ep.e0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111101000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_daclrcs~q\,
	datab => \inst2|ALT_INV_bclks~q\,
	datad => \inst3|ALT_INV_ep.e0~q\,
	dataf => \inst3|ALT_INV_Selector2~0_combout\,
	combout => \inst3|Selector0~0_combout\);

-- Location: FF_X85_Y15_N59
\inst3|ep.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|Selector0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e0~q\);

-- Location: LABCELL_X85_Y15_N6
\inst3|es.e1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e1~0_combout\ = ( !\inst2|bclks~q\ & ( (!\inst3|ep.e0~q\ & \inst3|daclrcs~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e0~q\,
	datac => \inst3|ALT_INV_daclrcs~q\,
	dataf => \inst2|ALT_INV_bclks~q\,
	combout => \inst3|es.e1~0_combout\);

-- Location: FF_X85_Y15_N8
\inst3|ep.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|es.e1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e1~q\);

-- Location: LABCELL_X85_Y15_N12
\inst3|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector1~0_combout\ = ( \inst3|ep.e4~q\ & ( (!\inst3|cbits[1]~DUPLICATE_q\) # ((!\inst3|cbits\(3)) # ((!\inst3|cbits\(2)) # (!\inst3|cbits\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_cbits\(3),
	datac => \inst3|ALT_INV_cbits\(2),
	datad => \inst3|ALT_INV_cbits\(0),
	dataf => \inst3|ALT_INV_ep.e4~q\,
	combout => \inst3|Selector1~0_combout\);

-- Location: LABCELL_X85_Y15_N33
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

-- Location: FF_X85_Y15_N35
\inst3|ep.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|Selector1~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e2~q\);

-- Location: LABCELL_X85_Y15_N30
\inst3|es.e3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e3~0_combout\ = ( \inst3|ep.e2~q\ & ( \inst2|bclks~q\ ) ) # ( !\inst3|ep.e2~q\ & ( (\inst2|bclks~q\ & \inst3|ep.e3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_bclks~q\,
	datad => \inst3|ALT_INV_ep.e3~q\,
	dataf => \inst3|ALT_INV_ep.e2~q\,
	combout => \inst3|es.e3~0_combout\);

-- Location: FF_X85_Y15_N31
\inst3|ep.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|es.e3~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e3~q\);

-- Location: LABCELL_X85_Y15_N15
\inst3|es.e4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e4~0_combout\ = ( !\inst2|bclks~q\ & ( \inst3|ep.e3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_ep.e3~q\,
	dataf => \inst2|ALT_INV_bclks~q\,
	combout => \inst3|es.e4~0_combout\);

-- Location: FF_X85_Y15_N17
\inst3|ep.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|es.e4~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e4~q\);

-- Location: LABCELL_X85_Y15_N3
\inst3|srdato~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato~1_combout\ = ( \inst3|srdato\(0) & ( \inst3|ep.e6~q\ & ( \inst3|srdato\(16) ) ) ) # ( !\inst3|srdato\(0) & ( \inst3|ep.e6~q\ & ( \inst3|srdato\(16) ) ) ) # ( \inst3|srdato\(0) & ( !\inst3|ep.e6~q\ & ( (!\inst3|ep.e4~q\) # 
-- (\inst3|srdato\(16)) ) ) ) # ( !\inst3|srdato\(0) & ( !\inst3|ep.e6~q\ & ( (\inst3|ep.e4~q\ & \inst3|srdato\(16)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_srdato\(16),
	datae => \inst3|ALT_INV_srdato\(0),
	dataf => \inst3|ALT_INV_ep.e6~q\,
	combout => \inst3|srdato~1_combout\);

-- Location: FF_X85_Y15_N4
\inst3|srdato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|srdato~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sclr => \inst3|ep.e1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(0));

-- Location: FF_X85_Y15_N11
\inst3|ep.e6~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst3|es.e6~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e6~DUPLICATE_q\);

-- Location: LABCELL_X85_Y15_N18
\inst3|srdato[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[12]~0_combout\ = ( \inst3|ep.e1~q\ & ( (!\inst3|ep.e6~DUPLICATE_q\ & !\inst3|ep.e4~q\) ) ) # ( !\inst3|ep.e1~q\ & ( (\inst3|ep.e4~q\) # (\inst3|ep.e6~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e6~DUPLICATE_q\,
	datad => \inst3|ALT_INV_ep.e4~q\,
	dataf => \inst3|ALT_INV_ep.e1~q\,
	combout => \inst3|srdato[12]~0_combout\);

-- Location: FF_X87_Y16_N17
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(1));

-- Location: FF_X87_Y16_N14
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(2));

-- Location: FF_X87_Y16_N10
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(3));

-- Location: FF_X87_Y16_N7
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(4));

-- Location: FF_X87_Y16_N4
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(5));

-- Location: FF_X87_Y16_N1
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(6));

-- Location: FF_X87_Y16_N59
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(7));

-- Location: FF_X87_Y16_N55
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(8));

-- Location: FF_X87_Y16_N23
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(9));

-- Location: FF_X87_Y16_N19
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(10));

-- Location: FF_X87_Y16_N46
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(11));

-- Location: FF_X87_Y16_N44
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(12));

-- Location: FF_X87_Y16_N41
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(13));

-- Location: FF_X87_Y16_N38
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(14));

-- Location: FF_X87_Y16_N35
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(15));

-- Location: FF_X87_Y16_N32
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(16));

-- Location: MLABCELL_X84_Y10_N0
\inst4|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~41_sumout\ = SUM(( \inst4|clkdiv\(1) ) + ( \inst4|clkdiv\(0) ) + ( !VCC ))
-- \inst4|Add0~42\ = CARRY(( \inst4|clkdiv\(1) ) + ( \inst4|clkdiv\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clkdiv\(0),
	datad => \inst4|ALT_INV_clkdiv\(1),
	cin => GND,
	sumout => \inst4|Add0~41_sumout\,
	cout => \inst4|Add0~42\);

-- Location: FF_X84_Y10_N1
\inst4|clkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~41_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(1));

-- Location: MLABCELL_X84_Y10_N3
\inst4|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~37_sumout\ = SUM(( \inst4|clkdiv\(2) ) + ( GND ) + ( \inst4|Add0~42\ ))
-- \inst4|Add0~38\ = CARRY(( \inst4|clkdiv\(2) ) + ( GND ) + ( \inst4|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clkdiv\(2),
	cin => \inst4|Add0~42\,
	sumout => \inst4|Add0~37_sumout\,
	cout => \inst4|Add0~38\);

-- Location: FF_X84_Y10_N4
\inst4|clkdiv[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~37_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(2));

-- Location: MLABCELL_X84_Y10_N6
\inst4|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~33_sumout\ = SUM(( \inst4|clkdiv\(3) ) + ( GND ) + ( \inst4|Add0~38\ ))
-- \inst4|Add0~34\ = CARRY(( \inst4|clkdiv\(3) ) + ( GND ) + ( \inst4|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clkdiv\(3),
	cin => \inst4|Add0~38\,
	sumout => \inst4|Add0~33_sumout\,
	cout => \inst4|Add0~34\);

-- Location: FF_X84_Y10_N8
\inst4|clkdiv[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~33_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(3));

-- Location: MLABCELL_X84_Y10_N9
\inst4|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~29_sumout\ = SUM(( \inst4|clkdiv\(4) ) + ( GND ) + ( \inst4|Add0~34\ ))
-- \inst4|Add0~30\ = CARRY(( \inst4|clkdiv\(4) ) + ( GND ) + ( \inst4|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clkdiv\(4),
	cin => \inst4|Add0~34\,
	sumout => \inst4|Add0~29_sumout\,
	cout => \inst4|Add0~30\);

-- Location: FF_X84_Y10_N10
\inst4|clkdiv[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~29_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(4));

-- Location: MLABCELL_X84_Y10_N12
\inst4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~25_sumout\ = SUM(( \inst4|clkdiv\(5) ) + ( GND ) + ( \inst4|Add0~30\ ))
-- \inst4|Add0~26\ = CARRY(( \inst4|clkdiv\(5) ) + ( GND ) + ( \inst4|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clkdiv\(5),
	cin => \inst4|Add0~30\,
	sumout => \inst4|Add0~25_sumout\,
	cout => \inst4|Add0~26\);

-- Location: FF_X84_Y10_N13
\inst4|clkdiv[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~25_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(5));

-- Location: MLABCELL_X84_Y10_N15
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

-- Location: FF_X84_Y10_N16
\inst4|clkdiv[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~21_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(6));

-- Location: MLABCELL_X84_Y10_N18
\inst4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~17_sumout\ = SUM(( \inst4|clkdiv\(7) ) + ( GND ) + ( \inst4|Add0~22\ ))
-- \inst4|Add0~18\ = CARRY(( \inst4|clkdiv\(7) ) + ( GND ) + ( \inst4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_clkdiv\(7),
	cin => \inst4|Add0~22\,
	sumout => \inst4|Add0~17_sumout\,
	cout => \inst4|Add0~18\);

-- Location: FF_X84_Y10_N19
\inst4|clkdiv[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~17_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(7));

-- Location: MLABCELL_X84_Y10_N21
\inst4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~13_sumout\ = SUM(( \inst4|clkdiv\(8) ) + ( GND ) + ( \inst4|Add0~18\ ))
-- \inst4|Add0~14\ = CARRY(( \inst4|clkdiv\(8) ) + ( GND ) + ( \inst4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clkdiv\(8),
	cin => \inst4|Add0~18\,
	sumout => \inst4|Add0~13_sumout\,
	cout => \inst4|Add0~14\);

-- Location: FF_X84_Y10_N23
\inst4|clkdiv[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~13_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(8));

-- Location: MLABCELL_X84_Y10_N24
\inst4|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~9_sumout\ = SUM(( \inst4|clkdiv\(9) ) + ( GND ) + ( \inst4|Add0~14\ ))
-- \inst4|Add0~10\ = CARRY(( \inst4|clkdiv\(9) ) + ( GND ) + ( \inst4|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clkdiv\(9),
	cin => \inst4|Add0~14\,
	sumout => \inst4|Add0~9_sumout\,
	cout => \inst4|Add0~10\);

-- Location: FF_X84_Y10_N25
\inst4|clkdiv[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~9_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(9));

-- Location: MLABCELL_X84_Y10_N27
\inst4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_sumout\ = SUM(( \inst4|clkdiv\(10) ) + ( GND ) + ( \inst4|Add0~10\ ))
-- \inst4|Add0~6\ = CARRY(( \inst4|clkdiv\(10) ) + ( GND ) + ( \inst4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_clkdiv\(10),
	cin => \inst4|Add0~10\,
	sumout => \inst4|Add0~5_sumout\,
	cout => \inst4|Add0~6\);

-- Location: FF_X84_Y10_N29
\inst4|clkdiv[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst4|Add0~5_sumout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(10));

-- Location: MLABCELL_X84_Y10_N30
\inst4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_sumout\ = SUM(( \inst4|clkdiv\(11) ) + ( GND ) + ( \inst4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clkdiv\(11),
	cin => \inst4|Add0~6\,
	sumout => \inst4|Add0~1_sumout\);

-- Location: FF_X84_Y10_N59
\inst4|clkdiv[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \inst4|Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(11));

-- Location: LABCELL_X85_Y10_N12
\inst4|cs_cycle[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[3]~1_combout\ = ( \inst4|cs~combout\ & ( !\inst4|cs_cycle\(3) $ (((!\inst4|cs_cycle[0]~DUPLICATE_q\) # ((!\inst4|cs_cycle\(1)) # (!\inst4|cs_cycle\(2))))) ) ) # ( !\inst4|cs~combout\ & ( \inst4|cs_cycle\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_cs_cycle\(1),
	datac => \inst4|ALT_INV_cs_cycle\(2),
	datad => \inst4|ALT_INV_cs_cycle\(3),
	dataf => \inst4|ALT_INV_cs~combout\,
	combout => \inst4|cs_cycle[3]~1_combout\);

-- Location: FF_X85_Y10_N58
\inst4|cs_cycle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[3]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(3));

-- Location: LABCELL_X85_Y10_N9
\inst4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = ( \inst4|cs_cycle\(2) & ( (\inst4|cs_cycle[0]~DUPLICATE_q\ & (\inst4|cs_cycle\(3) & \inst4|cs_cycle\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	datac => \inst4|ALT_INV_cs_cycle\(3),
	datad => \inst4|ALT_INV_cs_cycle\(1),
	dataf => \inst4|ALT_INV_cs_cycle\(2),
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

-- Location: FF_X85_Y11_N59
\inst4|sr_dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \ADC_DOUT~input_o\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(0));

-- Location: FF_X85_Y11_N56
\inst4|sr_dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(0),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(1));

-- Location: FF_X85_Y11_N53
\inst4|sr_dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(1),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(2));

-- Location: LABCELL_X85_Y11_N48
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

-- Location: FF_X85_Y11_N50
\inst4|sr_dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[3]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(3));

-- Location: LABCELL_X85_Y11_N15
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

-- Location: FF_X85_Y11_N17
\inst4|sr_dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[4]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(4));

-- Location: LABCELL_X85_Y11_N6
\inst4|sr_dout[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[5]~feeder_combout\ = ( \inst4|sr_dout\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(4),
	combout => \inst4|sr_dout[5]~feeder_combout\);

-- Location: FF_X85_Y11_N8
\inst4|sr_dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[5]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(5));

-- Location: LABCELL_X85_Y11_N30
\inst4|sr_dout[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[6]~feeder_combout\ = ( \inst4|sr_dout\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(5),
	combout => \inst4|sr_dout[6]~feeder_combout\);

-- Location: FF_X85_Y11_N32
\inst4|sr_dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[6]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(6));

-- Location: LABCELL_X85_Y11_N27
\inst4|sr_dout[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[7]~feeder_combout\ = ( \inst4|sr_dout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(6),
	combout => \inst4|sr_dout[7]~feeder_combout\);

-- Location: FF_X85_Y11_N29
\inst4|sr_dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[7]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(7));

-- Location: FF_X85_Y11_N20
\inst4|sr_dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(7),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(8));

-- Location: LABCELL_X85_Y11_N45
\inst4|sr_dout[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[9]~feeder_combout\ = ( \inst4|sr_dout\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(8),
	combout => \inst4|sr_dout[9]~feeder_combout\);

-- Location: FF_X85_Y11_N47
\inst4|sr_dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[9]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(9));

-- Location: FF_X85_Y11_N38
\inst4|sr_dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(9),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(10));

-- Location: FF_X85_Y11_N5
\inst4|sr_dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(10),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(11));

-- Location: FF_X85_Y10_N26
\inst4|sr_dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(11),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(12));

-- Location: LABCELL_X85_Y10_N27
\inst4|sr_dout[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[13]~feeder_combout\ = ( \inst4|sr_dout\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(12),
	combout => \inst4|sr_dout[13]~feeder_combout\);

-- Location: FF_X85_Y10_N29
\inst4|sr_dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[13]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(13));

-- Location: LABCELL_X85_Y10_N51
\inst4|es.sready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|es.sready~0_combout\ = ( \inst4|sr_dout\(13) & ( !\inst4|sr_dout\(12) & ( \inst4|ep.save~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_ep.save~q\,
	datae => \inst4|ALT_INV_sr_dout\(13),
	dataf => \inst4|ALT_INV_sr_dout\(12),
	combout => \inst4|es.sready~0_combout\);

-- Location: FF_X85_Y10_N52
\inst4|ep.sready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|es.sready~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.sready~q\);

-- Location: FF_X83_Y10_N28
\inst4|cmd_addr[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cmd_addr[0]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cmd_addr[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y10_N48
\inst4|cmd_addr[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[1]~0_combout\ = ( \inst4|cmd_addr\(1) & ( (!\inst4|cmd_addr[0]~DUPLICATE_q\) # (\inst4|ep.conf0~q\) ) ) # ( !\inst4|cmd_addr\(1) & ( (!\inst4|ep.conf0~q\ & \inst4|cmd_addr[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf0~q\,
	datac => \inst4|ALT_INV_cmd_addr[0]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_cmd_addr\(1),
	combout => \inst4|cmd_addr[1]~0_combout\);

-- Location: FF_X85_Y10_N49
\inst4|cmd_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cmd_addr[1]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cmd_addr\(1));

-- Location: LABCELL_X83_Y10_N39
\inst4|es.conf0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|es.conf0~0_combout\ = ( \inst4|cmd_addr\(1) & ( (!\inst4|ep.conf1~q\) # ((!\inst4|Equal2~0_combout\) # (\inst4|cmd_addr\(0))) ) ) # ( !\inst4|cmd_addr\(1) & ( (!\inst4|ep.conf1~q\) # (!\inst4|Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf1~q\,
	datac => \inst4|ALT_INV_Equal2~0_combout\,
	datad => \inst4|ALT_INV_cmd_addr\(0),
	dataf => \inst4|ALT_INV_cmd_addr\(1),
	combout => \inst4|es.conf0~0_combout\);

-- Location: FF_X83_Y10_N41
\inst4|ep.conf0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|es.conf0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.conf0~q\);

-- Location: MLABCELL_X84_Y10_N36
\inst4|cmd_addr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[0]~1_combout\ = ( \inst4|cmd_addr[0]~DUPLICATE_q\ & ( \inst4|ep.conf0~q\ ) ) # ( !\inst4|cmd_addr[0]~DUPLICATE_q\ & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf0~q\,
	datae => \inst4|ALT_INV_cmd_addr[0]~DUPLICATE_q\,
	combout => \inst4|cmd_addr[0]~1_combout\);

-- Location: FF_X83_Y10_N29
\inst4|cmd_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cmd_addr[0]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cmd_addr\(0));

-- Location: LABCELL_X83_Y10_N36
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

-- Location: FF_X83_Y10_N37
\inst4|ep.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|Selector1~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.idle~q\);

-- Location: LABCELL_X85_Y10_N18
\inst4|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector2~0_combout\ = ( \inst4|sr_dout\(13) & ( \inst4|sr_dout\(12) & ( (\inst4|ep.idle~q\) # (\inst4|ep.save~q\) ) ) ) # ( !\inst4|sr_dout\(13) & ( \inst4|sr_dout\(12) & ( (\inst4|ep.idle~q\) # (\inst4|ep.save~q\) ) ) ) # ( \inst4|sr_dout\(13) & 
-- ( !\inst4|sr_dout\(12) & ( \inst4|ep.idle~q\ ) ) ) # ( !\inst4|sr_dout\(13) & ( !\inst4|sr_dout\(12) & ( (\inst4|ep.idle~q\) # (\inst4|ep.save~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001100110011001101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.save~q\,
	datab => \inst4|ALT_INV_ep.idle~q\,
	datae => \inst4|ALT_INV_sr_dout\(13),
	dataf => \inst4|ALT_INV_sr_dout\(12),
	combout => \inst4|Selector2~0_combout\);

-- Location: FF_X85_Y10_N20
\inst4|ep.rd0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|Selector2~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.rd0~q\);

-- Location: LABCELL_X85_Y10_N39
\inst4|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = ( \inst4|cs_cycle[0]~DUPLICATE_q\ & ( \inst4|ep.rd0~q\ ) ) # ( !\inst4|cs_cycle[0]~DUPLICATE_q\ & ( \inst4|ep.rd0~q\ ) ) # ( \inst4|cs_cycle[0]~DUPLICATE_q\ & ( !\inst4|ep.rd0~q\ & ( \inst4|ep.rd1~q\ ) ) ) # ( 
-- !\inst4|cs_cycle[0]~DUPLICATE_q\ & ( !\inst4|ep.rd0~q\ & ( (\inst4|ep.rd1~q\ & ((!\inst4|cs_cycle\(2)) # ((!\inst4|cs_cycle\(3)) # (!\inst4|cs_cycle\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(2),
	datab => \inst4|ALT_INV_cs_cycle\(3),
	datac => \inst4|ALT_INV_cs_cycle\(1),
	datad => \inst4|ALT_INV_ep.rd1~q\,
	datae => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_ep.rd0~q\,
	combout => \inst4|Selector3~0_combout\);

-- Location: FF_X85_Y10_N38
\inst4|ep.rd1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|Selector3~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.rd1~q\);

-- Location: LABCELL_X85_Y10_N42
\inst4|cs_cycle[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[1]~3_combout\ = ( \inst4|cs_cycle\(1) & ( (!\inst4|cs_cycle[0]~DUPLICATE_q\) # ((!\inst4|ep.save~q\ & (!\inst4|ep.conf1~q\ & !\inst4|ep.rd1~q\))) ) ) # ( !\inst4|cs_cycle\(1) & ( (\inst4|cs_cycle[0]~DUPLICATE_q\ & (((\inst4|ep.rd1~q\) # 
-- (\inst4|ep.conf1~q\)) # (\inst4|ep.save~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111111111000111100001111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.save~q\,
	datab => \inst4|ALT_INV_ep.conf1~q\,
	datac => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	datad => \inst4|ALT_INV_ep.rd1~q\,
	dataf => \inst4|ALT_INV_cs_cycle\(1),
	combout => \inst4|cs_cycle[1]~3_combout\);

-- Location: FF_X85_Y10_N11
\inst4|cs_cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[1]~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(1));

-- Location: LABCELL_X85_Y10_N33
\inst4|es.save~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|es.save~0_combout\ = ( \inst4|cs_cycle\(2) & ( (!\inst4|cs_cycle[0]~DUPLICATE_q\ & (\inst4|cs_cycle\(1) & (\inst4|cs_cycle\(3) & \inst4|ep.rd1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_cs_cycle\(1),
	datac => \inst4|ALT_INV_cs_cycle\(3),
	datad => \inst4|ALT_INV_ep.rd1~q\,
	dataf => \inst4|ALT_INV_cs_cycle\(2),
	combout => \inst4|es.save~0_combout\);

-- Location: FF_X85_Y10_N34
\inst4|ep.save\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|es.save~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.save~q\);

-- Location: FF_X85_Y10_N22
\inst4|cs_cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[0]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(0));

-- Location: LABCELL_X85_Y10_N45
\inst4|cs_cycle[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[0]~0_combout\ = ( \inst4|cs_cycle\(0) & ( (!\inst4|ep.save~q\ & (!\inst4|ep.conf1~q\ & !\inst4|ep.rd1~q\)) ) ) # ( !\inst4|cs_cycle\(0) & ( ((\inst4|ep.rd1~q\) # (\inst4|ep.conf1~q\)) # (\inst4|ep.save~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111110001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.save~q\,
	datab => \inst4|ALT_INV_ep.conf1~q\,
	datad => \inst4|ALT_INV_ep.rd1~q\,
	dataf => \inst4|ALT_INV_cs_cycle\(0),
	combout => \inst4|cs_cycle[0]~0_combout\);

-- Location: FF_X85_Y10_N23
\inst4|cs_cycle[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[0]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle[0]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y10_N54
\inst4|cs_cycle[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[2]~2_combout\ = ( \inst4|ep.rd1~q\ & ( \inst4|cs_cycle\(2) & ( (!\inst4|cs_cycle[0]~DUPLICATE_q\) # (!\inst4|cs_cycle\(1)) ) ) ) # ( !\inst4|ep.rd1~q\ & ( \inst4|cs_cycle\(2) & ( (!\inst4|cs_cycle[0]~DUPLICATE_q\) # ((!\inst4|cs_cycle\(1)) 
-- # ((!\inst4|ep.conf1~q\ & !\inst4|ep.save~q\))) ) ) ) # ( \inst4|ep.rd1~q\ & ( !\inst4|cs_cycle\(2) & ( (\inst4|cs_cycle[0]~DUPLICATE_q\ & \inst4|cs_cycle\(1)) ) ) ) # ( !\inst4|ep.rd1~q\ & ( !\inst4|cs_cycle\(2) & ( (\inst4|cs_cycle[0]~DUPLICATE_q\ & 
-- (\inst4|cs_cycle\(1) & ((\inst4|ep.save~q\) # (\inst4|ep.conf1~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000101010111111111111010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	datab => \inst4|ALT_INV_ep.conf1~q\,
	datac => \inst4|ALT_INV_ep.save~q\,
	datad => \inst4|ALT_INV_cs_cycle\(1),
	datae => \inst4|ALT_INV_ep.rd1~q\,
	dataf => \inst4|ALT_INV_cs_cycle\(2),
	combout => \inst4|cs_cycle[2]~2_combout\);

-- Location: FF_X85_Y10_N4
\inst4|cs_cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|cs_cycle[2]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(2));

-- Location: LABCELL_X85_Y10_N0
\inst4|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = ( \inst4|cs_cycle[0]~DUPLICATE_q\ & ( \inst4|cs_cycle\(1) & ( (!\inst4|ep.conf0~q\) # ((\inst4|ep.conf1~q\ & ((!\inst4|cs_cycle\(2)) # (!\inst4|cs_cycle\(3))))) ) ) ) # ( !\inst4|cs_cycle[0]~DUPLICATE_q\ & ( 
-- \inst4|cs_cycle\(1) & ( (!\inst4|ep.conf0~q\) # (\inst4|ep.conf1~q\) ) ) ) # ( \inst4|cs_cycle[0]~DUPLICATE_q\ & ( !\inst4|cs_cycle\(1) & ( (!\inst4|ep.conf0~q\) # (\inst4|ep.conf1~q\) ) ) ) # ( !\inst4|cs_cycle[0]~DUPLICATE_q\ & ( !\inst4|cs_cycle\(1) & 
-- ( (!\inst4|ep.conf0~q\) # (\inst4|ep.conf1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111100111111001111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(2),
	datab => \inst4|ALT_INV_ep.conf1~q\,
	datac => \inst4|ALT_INV_ep.conf0~q\,
	datad => \inst4|ALT_INV_cs_cycle\(3),
	datae => \inst4|ALT_INV_cs_cycle[0]~DUPLICATE_q\,
	dataf => \inst4|ALT_INV_cs_cycle\(1),
	combout => \inst4|Selector0~0_combout\);

-- Location: FF_X83_Y10_N26
\inst4|ep.conf1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|Selector0~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.conf1~q\);

-- Location: LABCELL_X85_Y10_N15
\inst4|cs\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs~combout\ = ( \inst4|ep.save~q\ ) # ( !\inst4|ep.save~q\ & ( (\inst4|ep.rd1~q\) # (\inst4|ep.conf1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ep.conf1~q\,
	datad => \inst4|ALT_INV_ep.rd1~q\,
	dataf => \inst4|ALT_INV_ep.save~q\,
	combout => \inst4|cs~combout\);

-- Location: LABCELL_X83_Y10_N45
\inst4|cmd_addr[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[1]~_wirecell_combout\ = ( !\inst4|cmd_addr\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_cmd_addr\(1),
	combout => \inst4|cmd_addr[1]~_wirecell_combout\);

-- Location: LABCELL_X83_Y10_N30
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

-- Location: LABCELL_X83_Y10_N33
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

-- Location: LABCELL_X83_Y10_N6
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

-- Location: LABCELL_X83_Y10_N9
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

-- Location: LABCELL_X83_Y10_N12
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

-- Location: LABCELL_X83_Y10_N15
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

-- Location: LABCELL_X83_Y10_N48
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

-- Location: LABCELL_X83_Y10_N51
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

-- Location: LABCELL_X83_Y10_N24
\inst4|sr_din~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~8_combout\ = ( !\inst4|ep.conf1~q\ & ( \inst4|sr_din\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst4|ALT_INV_ep.conf1~q\,
	dataf => \inst4|ALT_INV_sr_din\(0),
	combout => \inst4|sr_din~8_combout\);

-- Location: LABCELL_X85_Y10_N30
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

-- Location: FF_X85_Y10_N31
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst4|ALT_INV_ep.conf0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(0));

-- Location: LABCELL_X85_Y10_N6
\inst4|sr_din[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[8]~1_combout\ = !\inst4|ep.conf1~q\ $ (\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf1~q\,
	datac => \inst4|ALT_INV_ep.conf0~q\,
	combout => \inst4|sr_din[8]~1_combout\);

-- Location: FF_X83_Y10_N53
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(1));

-- Location: FF_X83_Y10_N50
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(2));

-- Location: FF_X83_Y10_N16
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(3));

-- Location: LABCELL_X83_Y10_N54
\inst4|sr_din~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~7_combout\ = ( \inst4|sr_din\(3) ) # ( !\inst4|sr_din\(3) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(3),
	combout => \inst4|sr_din~7_combout\);

-- Location: FF_X83_Y10_N55
\inst4|sr_din[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~7_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(4));

-- Location: FF_X83_Y10_N14
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(5));

-- Location: FF_X83_Y10_N11
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(6));

-- Location: LABCELL_X83_Y10_N0
\inst4|sr_din~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~6_combout\ = ( \inst4|sr_din\(6) ) # ( !\inst4|sr_din\(6) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(6),
	combout => \inst4|sr_din~6_combout\);

-- Location: FF_X83_Y10_N2
\inst4|sr_din[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~6_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(7));

-- Location: LABCELL_X83_Y10_N57
\inst4|sr_din~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~5_combout\ = (!\inst4|ep.conf0~q\) # (\inst4|sr_din\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf0~q\,
	datad => \inst4|ALT_INV_sr_din\(7),
	combout => \inst4|sr_din~5_combout\);

-- Location: FF_X83_Y10_N59
\inst4|sr_din[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~5_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(8));

-- Location: LABCELL_X83_Y10_N21
\inst4|sr_din~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~4_combout\ = (!\inst4|ep.conf0~q\) # (\inst4|sr_din\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf0~q\,
	datac => \inst4|ALT_INV_sr_din\(8),
	combout => \inst4|sr_din~4_combout\);

-- Location: FF_X83_Y10_N22
\inst4|sr_din[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(9));

-- Location: FF_X83_Y10_N8
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(10));

-- Location: LABCELL_X83_Y10_N18
\inst4|sr_din~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~3_combout\ = ( \inst4|sr_din\(10) ) # ( !\inst4|sr_din\(10) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(10),
	combout => \inst4|sr_din~3_combout\);

-- Location: FF_X83_Y10_N20
\inst4|sr_din[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(11));

-- Location: FF_X83_Y10_N35
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(12));

-- Location: FF_X83_Y10_N32
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
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => \inst4|ep.conf0~q\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(13));

-- Location: LABCELL_X83_Y10_N42
\inst4|sr_din~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~2_combout\ = ( \inst4|ep.conf0~q\ & ( \inst4|sr_din\(13) ) ) # ( !\inst4|ep.conf0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_sr_din\(13),
	dataf => \inst4|ALT_INV_ep.conf0~q\,
	combout => \inst4|sr_din~2_combout\);

-- Location: FF_X83_Y10_N44
\inst4|sr_din[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(14));

-- Location: LABCELL_X83_Y10_N3
\inst4|sr_din~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~0_combout\ = ( \inst4|sr_din\(14) ) # ( !\inst4|sr_din\(14) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(14),
	combout => \inst4|sr_din~0_combout\);

-- Location: FF_X83_Y10_N5
\inst4|sr_din[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_din~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|sr_din[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(15));

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

-- Location: MLABCELL_X82_Y2_N0
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( distortion_value(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~6\ = CARRY(( distortion_value(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(0),
	cin => GND,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X81_Y2_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( distortion_value(3) & ( distortion_value(4) & ( (!distortion_value(0) & (distortion_value(1) & (!distortion_value(2) & distortion_value(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(1),
	datac => ALT_INV_distortion_value(2),
	datad => ALT_INV_distortion_value(5),
	datae => ALT_INV_distortion_value(3),
	dataf => ALT_INV_distortion_value(4),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X82_Y2_N18
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( distortion_value(6) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~34\ = CARRY(( distortion_value(6) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(6),
	cin => \Add0~14\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X82_Y2_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( distortion_value(7) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( distortion_value(7) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(7),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X82_Y2_N23
\distortion_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(7));

-- Location: MLABCELL_X82_Y2_N24
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( distortion_value(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(8),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\);

-- Location: FF_X82_Y2_N26
\distortion_value[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(8));

-- Location: MLABCELL_X82_Y2_N42
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( distortion_value(7) & ( !distortion_value(8) & ( (\Equal0~0_combout\ & distortion_value(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => ALT_INV_distortion_value(6),
	datae => ALT_INV_distortion_value(7),
	dataf => ALT_INV_distortion_value(8),
	combout => \Equal0~1_combout\);

-- Location: FF_X82_Y2_N2
\distortion_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(0));

-- Location: MLABCELL_X82_Y2_N3
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( distortion_value(1) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( distortion_value(1) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(1),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X82_Y2_N5
\distortion_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(1));

-- Location: MLABCELL_X82_Y2_N6
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( distortion_value(2) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~22\ = CARRY(( distortion_value(2) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(2),
	cin => \Add0~10\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X82_Y2_N8
\distortion_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(2));

-- Location: MLABCELL_X82_Y2_N9
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( distortion_value(3) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( distortion_value(3) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(3),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X82_Y2_N11
\distortion_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(3));

-- Location: MLABCELL_X82_Y2_N12
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( distortion_value(4) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~2\ = CARRY(( distortion_value(4) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(4),
	cin => \Add0~18\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X82_Y2_N14
\distortion_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(4));

-- Location: MLABCELL_X82_Y2_N15
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( distortion_value(5) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~14\ = CARRY(( distortion_value(5) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_distortion_value(5),
	cin => \Add0~2\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X82_Y2_N17
\distortion_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(5));

-- Location: FF_X82_Y2_N20
\distortion_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distortion_value(6));

-- Location: MLABCELL_X82_Y2_N54
\Mux11~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = ( distortion_value(1) & ( distortion_value(4) & ( ((!distortion_value(5)) # ((!distortion_value(7)) # (!distortion_value(3)))) # (distortion_value(0)) ) ) ) # ( !distortion_value(1) & ( distortion_value(4) ) ) # ( distortion_value(1) & 
-- ( !distortion_value(4) & ( (!distortion_value(0)) # (((!distortion_value(3)) # (distortion_value(7))) # (distortion_value(5))) ) ) ) # ( !distortion_value(1) & ( !distortion_value(4) & ( (!distortion_value(7)) # ((!distortion_value(0) & 
-- ((!distortion_value(3)) # (distortion_value(5)))) # (distortion_value(0) & ((!distortion_value(5)) # (distortion_value(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011110111111111111011111111111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(7),
	datad => ALT_INV_distortion_value(3),
	datae => ALT_INV_distortion_value(1),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux11~7_combout\);

-- Location: MLABCELL_X82_Y2_N48
\Mux11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = ( distortion_value(1) & ( distortion_value(4) & ( (((!distortion_value(7)) # (distortion_value(3))) # (distortion_value(5))) # (distortion_value(0)) ) ) ) # ( !distortion_value(1) & ( distortion_value(4) ) ) # ( distortion_value(1) & ( 
-- !distortion_value(4) & ( (!distortion_value(0)) # ((!distortion_value(5)) # ((!distortion_value(7)) # (!distortion_value(3)))) ) ) ) # ( !distortion_value(1) & ( !distortion_value(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111011111111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(7),
	datad => ALT_INV_distortion_value(3),
	datae => ALT_INV_distortion_value(1),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux11~6_combout\);

-- Location: LABCELL_X81_Y2_N12
\Mux11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = ( distortion_value(1) & ( distortion_value(4) ) ) # ( !distortion_value(1) & ( distortion_value(4) & ( (!distortion_value(0)) # (((!distortion_value(3)) # (!distortion_value(5))) # (distortion_value(7))) ) ) ) # ( distortion_value(1) & 
-- ( !distortion_value(4) ) ) # ( !distortion_value(1) & ( !distortion_value(4) & ( (((!distortion_value(5)) # (distortion_value(3))) # (distortion_value(7))) # (distortion_value(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111111111111111111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(7),
	datac => ALT_INV_distortion_value(3),
	datad => ALT_INV_distortion_value(5),
	datae => ALT_INV_distortion_value(1),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux11~5_combout\);

-- Location: MLABCELL_X82_Y2_N36
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( distortion_value(1) & ( distortion_value(4) & ( ((!distortion_value(5)) # ((distortion_value(3)) # (distortion_value(7)))) # (distortion_value(0)) ) ) ) # ( !distortion_value(1) & ( distortion_value(4) & ( (!distortion_value(0)) # 
-- (((!distortion_value(3)) # (distortion_value(7))) # (distortion_value(5))) ) ) ) # ( distortion_value(1) & ( !distortion_value(4) ) ) # ( !distortion_value(1) & ( !distortion_value(4) & ( (((distortion_value(3)) # (distortion_value(7))) # 
-- (distortion_value(5))) # (distortion_value(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111101111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(7),
	datad => ALT_INV_distortion_value(3),
	datae => ALT_INV_distortion_value(1),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X82_Y2_N30
\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( !distortion_value(2) & ( (((!distortion_value(6) & ((\Mux11~0_combout\))) # (distortion_value(6) & (\Mux11~7_combout\))) # (distortion_value(8))) ) ) # ( distortion_value(2) & ( (((!distortion_value(6) & (\Mux11~6_combout\)) # 
-- (distortion_value(6) & ((\Mux11~5_combout\)))) # (distortion_value(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(6),
	datab => \ALT_INV_Mux11~7_combout\,
	datac => \ALT_INV_Mux11~6_combout\,
	datad => \ALT_INV_Mux11~5_combout\,
	datae => ALT_INV_distortion_value(2),
	dataf => ALT_INV_distortion_value(8),
	datag => \ALT_INV_Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LABCELL_X80_Y2_N12
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( distortion_value(3) & ( distortion_value(1) & ( (distortion_value(5) & ((!distortion_value(2) & (!distortion_value(0) & distortion_value(4))) # (distortion_value(2) & (distortion_value(0) & !distortion_value(4))))) ) ) ) # ( 
-- distortion_value(3) & ( !distortion_value(1) & ( (!distortion_value(2) & (!distortion_value(5) & (distortion_value(0) & distortion_value(4)))) ) ) ) # ( !distortion_value(3) & ( !distortion_value(1) & ( (!distortion_value(2) & (!distortion_value(5) & 
-- (!distortion_value(0) & !distortion_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000100000000000000000000000000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(2),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(0),
	datad => ALT_INV_distortion_value(4),
	datae => ALT_INV_distortion_value(3),
	dataf => ALT_INV_distortion_value(1),
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X81_Y2_N21
\HEX4[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[6]$latch~combout\ = ( \Mux7~0_combout\ & ( \HEX4[6]$latch~combout\ ) ) # ( !\Mux7~0_combout\ & ( \HEX4[6]$latch~combout\ & ( \Mux11~1_combout\ ) ) ) # ( \Mux7~0_combout\ & ( !\HEX4[6]$latch~combout\ & ( !\Mux11~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux11~1_combout\,
	datae => \ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_HEX4[6]$latch~combout\,
	combout => \HEX4[6]$latch~combout\);

-- Location: LABCELL_X80_Y2_N36
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( distortion_value(3) & ( distortion_value(1) & ( (distortion_value(0) & (!distortion_value(4) & (!distortion_value(2) $ (distortion_value(5))))) ) ) ) # ( !distortion_value(3) & ( distortion_value(1) & ( (!distortion_value(2) & 
-- (distortion_value(5) & (!distortion_value(0) & distortion_value(4)))) ) ) ) # ( distortion_value(3) & ( !distortion_value(1) & ( (!distortion_value(2) & (!distortion_value(5) & (distortion_value(0) & distortion_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000001000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(2),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(0),
	datad => ALT_INV_distortion_value(4),
	datae => ALT_INV_distortion_value(3),
	dataf => ALT_INV_distortion_value(1),
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X81_Y2_N24
\HEX4[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[5]$latch~combout\ = ( \Mux11~1_combout\ & ( \HEX4[5]$latch~combout\ ) ) # ( !\Mux11~1_combout\ & ( \HEX4[5]$latch~combout\ & ( \Mux6~1_combout\ ) ) ) # ( !\Mux11~1_combout\ & ( !\HEX4[5]$latch~combout\ & ( \Mux6~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux6~1_combout\,
	datae => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_HEX4[5]$latch~combout\,
	combout => \HEX4[5]$latch~combout\);

-- Location: LABCELL_X80_Y2_N0
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( distortion_value(3) & ( distortion_value(1) & ( (distortion_value(0) & (!distortion_value(4) & (!distortion_value(2) $ (distortion_value(5))))) ) ) ) # ( distortion_value(3) & ( !distortion_value(1) & ( (distortion_value(0) & 
-- (distortion_value(4) & (!distortion_value(2) $ (distortion_value(5))))) ) ) ) # ( !distortion_value(3) & ( !distortion_value(1) & ( (distortion_value(5) & (!distortion_value(4) & (!distortion_value(2) $ (!distortion_value(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000000000000100100000000000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(2),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(0),
	datad => ALT_INV_distortion_value(4),
	datae => ALT_INV_distortion_value(3),
	dataf => ALT_INV_distortion_value(1),
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X81_Y2_N33
\HEX4[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[4]$latch~combout\ = ( \Mux11~1_combout\ & ( \HEX4[4]$latch~combout\ ) ) # ( !\Mux11~1_combout\ & ( \HEX4[4]$latch~combout\ & ( \Mux5~1_combout\ ) ) ) # ( !\Mux11~1_combout\ & ( !\HEX4[4]$latch~combout\ & ( \Mux5~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux5~1_combout\,
	datae => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_HEX4[4]$latch~combout\,
	combout => \HEX4[4]$latch~combout\);

-- Location: LABCELL_X81_Y2_N6
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( distortion_value(3) & ( distortion_value(4) & ( (distortion_value(0) & (!distortion_value(1) & (!distortion_value(2) & !distortion_value(5)))) ) ) ) # ( distortion_value(3) & ( !distortion_value(4) & ( (distortion_value(0) & 
-- (distortion_value(1) & (distortion_value(2) & distortion_value(5)))) ) ) ) # ( !distortion_value(3) & ( !distortion_value(4) & ( (!distortion_value(0) & (!distortion_value(1) & (distortion_value(2) & distortion_value(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000100000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datab => ALT_INV_distortion_value(1),
	datac => ALT_INV_distortion_value(2),
	datad => ALT_INV_distortion_value(5),
	datae => ALT_INV_distortion_value(3),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X81_Y2_N39
\HEX4[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[3]$latch~combout\ = ( \Mux11~1_combout\ & ( \HEX4[3]$latch~combout\ ) ) # ( !\Mux11~1_combout\ & ( \HEX4[3]$latch~combout\ & ( \Mux4~1_combout\ ) ) ) # ( !\Mux11~1_combout\ & ( !\HEX4[3]$latch~combout\ & ( \Mux4~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux4~1_combout\,
	datae => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_HEX4[3]$latch~combout\,
	combout => \HEX4[3]$latch~combout\);

-- Location: LABCELL_X80_Y2_N42
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !distortion_value(3) & ( distortion_value(1) & ( (!distortion_value(2) & (distortion_value(5) & (!distortion_value(0) & distortion_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(2),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(0),
	datad => ALT_INV_distortion_value(4),
	datae => ALT_INV_distortion_value(3),
	dataf => ALT_INV_distortion_value(1),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X81_Y2_N42
\HEX4[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[2]$latch~combout\ = ( \Mux6~0_combout\ & ( \HEX4[2]$latch~combout\ ) ) # ( !\Mux6~0_combout\ & ( \HEX4[2]$latch~combout\ & ( \Mux11~1_combout\ ) ) ) # ( \Mux6~0_combout\ & ( !\HEX4[2]$latch~combout\ & ( !\Mux11~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~1_combout\,
	datae => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_HEX4[2]$latch~combout\,
	combout => \HEX4[2]$latch~combout\);

-- Location: LABCELL_X80_Y2_N54
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !distortion_value(3) & ( distortion_value(1) & ( (distortion_value(2) & (!distortion_value(5) & (!distortion_value(0) & distortion_value(4)))) ) ) ) # ( distortion_value(3) & ( !distortion_value(1) & ( (distortion_value(2) & 
-- (distortion_value(5) & (distortion_value(0) & distortion_value(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(2),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(0),
	datad => ALT_INV_distortion_value(4),
	datae => ALT_INV_distortion_value(3),
	dataf => ALT_INV_distortion_value(1),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X80_Y2_N48
\HEX4[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[1]$latch~combout\ = ( \Mux2~0_combout\ & ( \HEX4[1]$latch~combout\ ) ) # ( !\Mux2~0_combout\ & ( \HEX4[1]$latch~combout\ & ( \Mux11~1_combout\ ) ) ) # ( \Mux2~0_combout\ & ( !\HEX4[1]$latch~combout\ & ( !\Mux11~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux11~1_combout\,
	datae => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_HEX4[1]$latch~combout\,
	combout => \HEX4[1]$latch~combout\);

-- Location: LABCELL_X80_Y2_N6
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( distortion_value(4) & ( (distortion_value(3) & (!distortion_value(5) & (!distortion_value(2) & distortion_value(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(3),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(2),
	datad => ALT_INV_distortion_value(0),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X80_Y2_N33
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !distortion_value(3) & ( !distortion_value(4) & ( (!distortion_value(0) & (distortion_value(5) & distortion_value(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(0),
	datac => ALT_INV_distortion_value(5),
	datad => ALT_INV_distortion_value(2),
	datae => ALT_INV_distortion_value(3),
	dataf => ALT_INV_distortion_value(4),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X80_Y2_N9
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !distortion_value(1) & ( (\Mux5~0_combout\) # (\Mux4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => ALT_INV_distortion_value(1),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X81_Y2_N51
\HEX4[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4[0]$latch~combout\ = ( \Mux11~1_combout\ & ( \HEX4[0]$latch~combout\ ) ) # ( !\Mux11~1_combout\ & ( \HEX4[0]$latch~combout\ & ( \Mux1~0_combout\ ) ) ) # ( !\Mux11~1_combout\ & ( !\HEX4[0]$latch~combout\ & ( \Mux1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_Mux11~1_combout\,
	dataf => \ALT_INV_HEX4[0]$latch~combout\,
	combout => \HEX4[0]$latch~combout\);

-- Location: LABCELL_X80_Y2_N18
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( distortion_value(3) & ( distortion_value(1) & ( (!distortion_value(0) & (!distortion_value(2) & (distortion_value(5) & distortion_value(4)))) # (distortion_value(0) & (!distortion_value(4) & (!distortion_value(2) $ 
-- (distortion_value(5))))) ) ) ) # ( !distortion_value(3) & ( distortion_value(1) & ( (!distortion_value(0) & (distortion_value(4) & (!distortion_value(2) $ (!distortion_value(5))))) ) ) ) # ( distortion_value(3) & ( !distortion_value(1) & ( 
-- (!distortion_value(2) & (!distortion_value(5) & (!distortion_value(0) $ (distortion_value(4))))) # (distortion_value(2) & (distortion_value(5) & (distortion_value(0) & distortion_value(4)))) ) ) ) # ( !distortion_value(3) & ( !distortion_value(1) & ( 
-- (!distortion_value(4) & ((!distortion_value(2) & (!distortion_value(5) $ (distortion_value(0)))) # (distortion_value(2) & (distortion_value(5) & !distortion_value(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001000000000100000000000100100000000011000000000100100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_distortion_value(2),
	datab => ALT_INV_distortion_value(5),
	datac => ALT_INV_distortion_value(0),
	datad => ALT_INV_distortion_value(4),
	datae => ALT_INV_distortion_value(3),
	dataf => ALT_INV_distortion_value(1),
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X80_Y2_N24
\HEX5[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5[6]$latch~combout\ = ( \HEX5[6]$latch~combout\ & ( (\Mux10~0_combout\) # (\Mux11~1_combout\) ) ) # ( !\HEX5[6]$latch~combout\ & ( (!\Mux11~1_combout\ & \Mux10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux10~0_combout\,
	dataf => \ALT_INV_HEX5[6]$latch~combout\,
	combout => \HEX5[6]$latch~combout\);

-- Location: LABCELL_X81_Y2_N57
\HEX5[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5[5]$latch~combout\ = ( \Equal0~0_combout\ & ( \HEX5[5]$latch~combout\ ) ) # ( !\Equal0~0_combout\ & ( \HEX5[5]$latch~combout\ & ( \Mux11~1_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\HEX5[5]$latch~combout\ & ( !\Mux11~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux11~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_HEX5[5]$latch~combout\,
	combout => \HEX5[5]$latch~combout\);

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

-- Location: LABCELL_X67_Y20_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



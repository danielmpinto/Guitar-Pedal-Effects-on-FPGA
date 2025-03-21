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

-- DATE "03/20/2025 13:59:59"

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
	KEY : IN std_logic_vector(0 DOWNTO 0);
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
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \inst5|s1|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|s1|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|s1|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst1|Add2~9_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst1|Add2~30\ : std_logic;
SIGNAL \inst1|Add2~25_sumout\ : std_logic;
SIGNAL \inst1|ep.e4~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ep.e5~0_combout\ : std_logic;
SIGNAL \inst1|ep.e5~q\ : std_logic;
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
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \FPGA_I2C_SDAT~input_o\ : std_logic;
SIGNAL \inst1|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst1|cbits[2]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst1|cbits[3]~1_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|cbits[4]~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|ep.e1~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|incbits~0_combout\ : std_logic;
SIGNAL \inst1|incbits~1_combout\ : std_logic;
SIGNAL \inst1|cbits[1]~2_combout\ : std_logic;
SIGNAL \inst1|stop~0_combout\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|ep.e0~q\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|ep.e1~q\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|ep.e2~q\ : std_logic;
SIGNAL \inst1|Selector3~1_combout\ : std_logic;
SIGNAL \inst1|ep.e3~q\ : std_logic;
SIGNAL \inst1|ep.e4~0_combout\ : std_logic;
SIGNAL \inst1|ep.e4~q\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|caddr[0]~2_combout\ : std_logic;
SIGNAL \inst1|caddr[2]~0_combout\ : std_logic;
SIGNAL \inst1|caddr[1]~1_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|settmp~0_combout\ : std_logic;
SIGNAL \inst1|settmp~combout\ : std_logic;
SIGNAL \inst1|Add2~10\ : std_logic;
SIGNAL \inst1|Add2~29_sumout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|ep.e4~1_combout\ : std_logic;
SIGNAL \inst1|sdat~1_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|sdat~4_combout\ : std_logic;
SIGNAL \inst1|Mux12~1_combout\ : std_logic;
SIGNAL \inst1|sdat~2_combout\ : std_logic;
SIGNAL \inst1|sdat~0_combout\ : std_logic;
SIGNAL \inst1|sdat~3_combout\ : std_logic;
SIGNAL \inst1|sdat~q\ : std_logic;
SIGNAL \inst1|ep.e2~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|setbitz~combout\ : std_logic;
SIGNAL \inst4|clkdiv[0]~0_combout\ : std_logic;
SIGNAL \inst1|cclkdiv[1]~0_combout\ : std_logic;
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
SIGNAL \ADC_DOUT~input_o\ : std_logic;
SIGNAL \inst4|sr_dout[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[8]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[10]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[11]~feeder_combout\ : std_logic;
SIGNAL \inst4|cs_cycle[1]~3_combout\ : std_logic;
SIGNAL \inst4|cs~combout\ : std_logic;
SIGNAL \inst4|cs_cycle[2]~2_combout\ : std_logic;
SIGNAL \inst4|cs_cycle[3]~1_combout\ : std_logic;
SIGNAL \inst4|cmd_addr[0]~1_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst4|cmd_addr[1]~0_combout\ : std_logic;
SIGNAL \inst4|es.conf0~0_combout\ : std_logic;
SIGNAL \inst4|ep.conf0~q\ : std_logic;
SIGNAL \inst4|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|ep.conf1~q\ : std_logic;
SIGNAL \inst4|es.sready~0_combout\ : std_logic;
SIGNAL \inst4|ep.sready~q\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|ep.idle~q\ : std_logic;
SIGNAL \inst4|Selector2~0_combout\ : std_logic;
SIGNAL \inst4|ep.rd0~q\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|ep.rd1~q\ : std_logic;
SIGNAL \inst4|cs_cycle[0]~0_combout\ : std_logic;
SIGNAL \inst4|es.save~0_combout\ : std_logic;
SIGNAL \inst4|ep.save~q\ : std_logic;
SIGNAL \inst4|Decoder0~0_combout\ : std_logic;
SIGNAL \inst4|Decoder0~1_combout\ : std_logic;
SIGNAL \inst4|ch_on[1][11]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][10]~q\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \inst2|adcdats~q\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \inst2|bclks~q\ : std_logic;
SIGNAL \inst2|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst2|cbits[1]~0_combout\ : std_logic;
SIGNAL \inst2|cbits[2]~2_combout\ : std_logic;
SIGNAL \inst2|cbits[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|cbits[3]~1_combout\ : std_logic;
SIGNAL \inst2|cbits[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|ep.e4~q\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \inst2|adclrcs~feeder_combout\ : std_logic;
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
SIGNAL \inst2|srdato[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|srdato[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|srdato[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|srdato[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|LessThan1~5_combout\ : std_logic;
SIGNAL \inst4|ch_on[1][9]~q\ : std_logic;
SIGNAL \inst5|LessThan1~6_combout\ : std_logic;
SIGNAL \inst5|LessThan1~7_combout\ : std_logic;
SIGNAL \inst4|ch_on[1][8]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][7]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][6]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][5]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][4]~q\ : std_logic;
SIGNAL \inst5|Add0~18\ : std_logic;
SIGNAL \inst5|Add0~14\ : std_logic;
SIGNAL \inst5|Add0~10\ : std_logic;
SIGNAL \inst5|Add0~6\ : std_logic;
SIGNAL \inst5|Add0~2\ : std_logic;
SIGNAL \inst5|Add0~29_sumout\ : std_logic;
SIGNAL \inst5|Add0~30\ : std_logic;
SIGNAL \inst5|Add0~25_sumout\ : std_logic;
SIGNAL \inst5|Add0~26\ : std_logic;
SIGNAL \inst5|Add0~21_sumout\ : std_logic;
SIGNAL \inst5|LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~17_sumout\ : std_logic;
SIGNAL \inst5|Add0~9_sumout\ : std_logic;
SIGNAL \inst5|Add0~13_sumout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|Add0~5_sumout\ : std_logic;
SIGNAL \inst5|Add0~1_sumout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~22\ : std_logic;
SIGNAL \inst5|Add0~33_sumout\ : std_logic;
SIGNAL \inst5|signal_dist~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|signal_dist~1_combout\ : std_logic;
SIGNAL \inst5|LessThan1~2_combout\ : std_logic;
SIGNAL \inst5|LessThan1~3_combout\ : std_logic;
SIGNAL \inst5|LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|LessThan1~4_combout\ : std_logic;
SIGNAL \inst5|Add0~34\ : std_logic;
SIGNAL \inst5|Add0~37_sumout\ : std_logic;
SIGNAL \inst5|signal_dist~2_combout\ : std_logic;
SIGNAL \inst5|signal_dist~3_combout\ : std_logic;
SIGNAL \inst5|signal_dist[0]~4_combout\ : std_logic;
SIGNAL \inst5|signal_dist[1]~5_combout\ : std_logic;
SIGNAL \inst5|signal_dist[2]~6_combout\ : std_logic;
SIGNAL \inst5|LessThan0~5_combout\ : std_logic;
SIGNAL \inst5|signal_dist~7_combout\ : std_logic;
SIGNAL \inst5|signal_dist[3]~8_combout\ : std_logic;
SIGNAL \inst5|signal_dist[3]~9_combout\ : std_logic;
SIGNAL \inst5|signal_dist[4]~10_combout\ : std_logic;
SIGNAL \inst5|signal_dist[4]~11_combout\ : std_logic;
SIGNAL \inst5|signal_dist[5]~12_combout\ : std_logic;
SIGNAL \inst5|signal_dist[5]~13_combout\ : std_logic;
SIGNAL \inst5|signal_dist[6]~14_combout\ : std_logic;
SIGNAL \inst5|signal_dist[6]~15_combout\ : std_logic;
SIGNAL \inst5|signal_dist[7]~16_combout\ : std_logic;
SIGNAL \inst5|signal_dist[7]~17_combout\ : std_logic;
SIGNAL \inst5|signal_dist[8]~18_combout\ : std_logic;
SIGNAL \inst5|signal_dist[8]~19_combout\ : std_logic;
SIGNAL \inst5|signal_dist[9]~20_combout\ : std_logic;
SIGNAL \inst5|signal_dist[9]~21_combout\ : std_logic;
SIGNAL \inst5|signal_dist[10]~22_combout\ : std_logic;
SIGNAL \inst5|signal_dist[10]~23_combout\ : std_logic;
SIGNAL \inst5|signal_dist[11]~24_combout\ : std_logic;
SIGNAL \inst5|signal_dist[12]~25_combout\ : std_logic;
SIGNAL \inst5|signal_dist[12]~26_combout\ : std_logic;
SIGNAL \inst5|signal_dist[13]~27_combout\ : std_logic;
SIGNAL \inst5|signal_dist[14]~28_combout\ : std_logic;
SIGNAL \inst5|signal_dist[15]~29_combout\ : std_logic;
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
SIGNAL \inst3|ep.e4~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst3|cbits[1]~2_combout\ : std_logic;
SIGNAL \inst3|cbits[2]~1_combout\ : std_logic;
SIGNAL \inst3|cbits[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|cbits[3]~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst3|ep.e5~q\ : std_logic;
SIGNAL \inst3|es.e6~0_combout\ : std_logic;
SIGNAL \inst3|ep.e6~q\ : std_logic;
SIGNAL \inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|ep.e0~q\ : std_logic;
SIGNAL \inst3|es.e1~0_combout\ : std_logic;
SIGNAL \inst3|ep.e1~q\ : std_logic;
SIGNAL \inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst3|ep.e2~q\ : std_logic;
SIGNAL \inst3|es.e3~0_combout\ : std_logic;
SIGNAL \inst3|ep.e3~q\ : std_logic;
SIGNAL \inst3|es.e4~0_combout\ : std_logic;
SIGNAL \inst3|ep.e4~q\ : std_logic;
SIGNAL \inst3|srdato~1_combout\ : std_logic;
SIGNAL \inst3|srdato[2]~0_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][11]~_Duplicate_1_q\ : std_logic;
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
SIGNAL \inst2|cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|cmd_addr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|sr_dout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst4|sr_din\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|srdato\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst1|cbits\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|cclkdiv\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|s1|sample_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ctmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|clkdiv\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|caddr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|cs_cycle\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|srdato\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|ALT_INV_cbits[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_cbits[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_cbits[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e1~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e4~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_ep.e2~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e4~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_ADC_DOUT~input_o\ : std_logic;
SIGNAL \ALT_INV_AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_I2C_SDAT~input_o\ : std_logic;
SIGNAL \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_sr_din~8_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_clkdiv\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst4|ALT_INV_sr_din\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst2|ALT_INV_ep.e5~q\ : std_logic;
SIGNAL \inst2|ALT_INV_ep.e0~q\ : std_logic;
SIGNAL \inst2|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|ALT_INV_sr_dout\ : std_logic_vector(13 DOWNTO 0);
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
SIGNAL \inst5|ALT_INV_signal_dist[12]~25_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist[10]~22_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist[9]~20_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist[8]~18_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist[7]~16_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist[6]~14_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist[5]~12_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist[4]~10_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist[3]~8_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~7_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_signal_dist~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_srdato\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ch_on[1][9]~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ch_on[1][10]~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ch_on[1][11]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ch_on[1][4]~q\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_ch_on[1][6]~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ch_on[1][7]~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ch_on[1][8]~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ch_on[1][5]~q\ : std_logic;
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
SIGNAL \inst1|ALT_INV_sdat~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_srdato\ : std_logic_vector(16 DOWNTO 0);
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
SIGNAL \inst1|ALT_INV_ctmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \inst5|s1|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \inst5|s1|ALT_INV_sample_out\ : std_logic_vector(14 DOWNTO 0);

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

\inst5|s1|Mult0~8_ACLR_bus\ <= (gnd & NOT \KEY[0]~inputCLKENA0_outclk\);

\inst5|s1|Mult0~8_CLK_bus\ <= (gnd & gnd & \inst4|clkdiv\(11));

\inst5|s1|Mult0~8_ENA_bus\ <= (vcc & vcc & \inst4|Decoder0~0_combout\);

\inst5|s1|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & \inst4|sr_dout\(11) & \inst4|sr_dout\(10) & \inst4|sr_dout\(9) & \inst4|sr_dout\(8) & \inst4|sr_dout\(7) & \inst4|sr_dout\(6) & \inst4|sr_dout\(5) & \inst4|sr_dout\(4) & gnd & gnd & gnd);

\inst5|s1|Mult0~8_AY_bus\ <= (\inst5|signal_dist[15]~29_combout\ & \inst5|signal_dist[15]~29_combout\ & \inst5|signal_dist[15]~29_combout\ & \inst5|signal_dist[15]~29_combout\ & \inst5|signal_dist[14]~28_combout\ & \inst5|signal_dist[13]~27_combout\ & 
\inst5|signal_dist[12]~26_combout\ & \inst5|signal_dist[11]~24_combout\ & \inst5|signal_dist[10]~23_combout\ & \inst5|signal_dist[9]~21_combout\ & \inst5|signal_dist[8]~19_combout\ & \inst5|signal_dist[7]~17_combout\ & \inst5|signal_dist[6]~15_combout\ & 
\inst5|signal_dist[5]~13_combout\ & \inst5|signal_dist[4]~11_combout\ & \inst5|signal_dist[3]~9_combout\ & \inst5|signal_dist[2]~6_combout\ & \inst5|signal_dist[1]~5_combout\ & \inst5|signal_dist[0]~4_combout\);

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
\inst2|ALT_INV_cbits[2]~DUPLICATE_q\ <= NOT \inst2|cbits[2]~DUPLICATE_q\;
\inst2|ALT_INV_cbits[1]~DUPLICATE_q\ <= NOT \inst2|cbits[1]~DUPLICATE_q\;
\inst3|ALT_INV_cbits[2]~DUPLICATE_q\ <= NOT \inst3|cbits[2]~DUPLICATE_q\;
\inst1|ALT_INV_ep.e1~DUPLICATE_q\ <= NOT \inst1|ep.e1~DUPLICATE_q\;
\inst2|ALT_INV_srdato[8]~DUPLICATE_q\ <= NOT \inst2|srdato[8]~DUPLICATE_q\;
\inst2|ALT_INV_srdato[6]~DUPLICATE_q\ <= NOT \inst2|srdato[6]~DUPLICATE_q\;
\inst1|ALT_INV_ep.e4~DUPLICATE_q\ <= NOT \inst1|ep.e4~DUPLICATE_q\;
\inst1|ALT_INV_ep.e2~DUPLICATE_q\ <= NOT \inst1|ep.e2~DUPLICATE_q\;
\inst3|ALT_INV_ep.e4~DUPLICATE_q\ <= NOT \inst3|ep.e4~DUPLICATE_q\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_ADC_DOUT~input_o\ <= NOT \ADC_DOUT~input_o\;
\ALT_INV_AUD_ADCLRCK~input_o\ <= NOT \AUD_ADCLRCK~input_o\;
\ALT_INV_FPGA_I2C_SDAT~input_o\ <= NOT \FPGA_I2C_SDAT~input_o\;
\inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\ <= NOT \inst4|cmd_addr[1]~_wirecell_combout\;
\inst4|ALT_INV_sr_din~8_combout\ <= NOT \inst4|sr_din~8_combout\;
\inst4|ALT_INV_clkdiv\(1) <= NOT \inst4|clkdiv\(1);
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
\inst4|ALT_INV_clkdiv\(8) <= NOT \inst4|clkdiv\(8);
\inst4|ALT_INV_sr_dout\(0) <= NOT \inst4|sr_dout\(0);
\inst2|ALT_INV_ep.e1~q\ <= NOT \inst2|ep.e1~q\;
\inst2|ALT_INV_adclrcs~q\ <= NOT \inst2|adclrcs~q\;
\inst2|ALT_INV_ep.e4~q\ <= NOT \inst2|ep.e4~q\;
\inst4|ALT_INV_clkdiv\(9) <= NOT \inst4|clkdiv\(9);
\inst4|ALT_INV_sr_dout\(1) <= NOT \inst4|sr_dout\(1);
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
\inst5|ALT_INV_signal_dist[12]~25_combout\ <= NOT \inst5|signal_dist[12]~25_combout\;
\inst5|ALT_INV_signal_dist[10]~22_combout\ <= NOT \inst5|signal_dist[10]~22_combout\;
\inst5|ALT_INV_signal_dist[9]~20_combout\ <= NOT \inst5|signal_dist[9]~20_combout\;
\inst5|ALT_INV_signal_dist[8]~18_combout\ <= NOT \inst5|signal_dist[8]~18_combout\;
\inst5|ALT_INV_signal_dist[7]~16_combout\ <= NOT \inst5|signal_dist[7]~16_combout\;
\inst5|ALT_INV_signal_dist[6]~14_combout\ <= NOT \inst5|signal_dist[6]~14_combout\;
\inst5|ALT_INV_signal_dist[5]~12_combout\ <= NOT \inst5|signal_dist[5]~12_combout\;
\inst5|ALT_INV_signal_dist[4]~10_combout\ <= NOT \inst5|signal_dist[4]~10_combout\;
\inst5|ALT_INV_signal_dist[3]~8_combout\ <= NOT \inst5|signal_dist[3]~8_combout\;
\inst5|ALT_INV_LessThan0~5_combout\ <= NOT \inst5|LessThan0~5_combout\;
\inst5|ALT_INV_signal_dist~7_combout\ <= NOT \inst5|signal_dist~7_combout\;
\inst5|ALT_INV_signal_dist~3_combout\ <= NOT \inst5|signal_dist~3_combout\;
\inst5|ALT_INV_signal_dist~2_combout\ <= NOT \inst5|signal_dist~2_combout\;
\inst5|ALT_INV_signal_dist~1_combout\ <= NOT \inst5|signal_dist~1_combout\;
\inst5|ALT_INV_signal_dist~0_combout\ <= NOT \inst5|signal_dist~0_combout\;
\inst5|ALT_INV_LessThan0~4_combout\ <= NOT \inst5|LessThan0~4_combout\;
\inst5|ALT_INV_LessThan0~3_combout\ <= NOT \inst5|LessThan0~3_combout\;
\inst5|ALT_INV_LessThan0~2_combout\ <= NOT \inst5|LessThan0~2_combout\;
\inst5|ALT_INV_LessThan0~1_combout\ <= NOT \inst5|LessThan0~1_combout\;
\inst5|ALT_INV_LessThan0~0_combout\ <= NOT \inst5|LessThan0~0_combout\;
\inst5|ALT_INV_LessThan1~7_combout\ <= NOT \inst5|LessThan1~7_combout\;
\inst5|ALT_INV_LessThan1~6_combout\ <= NOT \inst5|LessThan1~6_combout\;
\inst5|ALT_INV_LessThan1~5_combout\ <= NOT \inst5|LessThan1~5_combout\;
\inst2|ALT_INV_srdato\(11) <= NOT \inst2|srdato\(11);
\inst2|ALT_INV_srdato\(12) <= NOT \inst2|srdato\(12);
\inst2|ALT_INV_srdato\(13) <= NOT \inst2|srdato\(13);
\inst2|ALT_INV_srdato\(14) <= NOT \inst2|srdato\(14);
\inst5|ALT_INV_LessThan1~4_combout\ <= NOT \inst5|LessThan1~4_combout\;
\inst5|ALT_INV_LessThan1~3_combout\ <= NOT \inst5|LessThan1~3_combout\;
\inst4|ALT_INV_ch_on[1][9]~q\ <= NOT \inst4|ch_on[1][9]~q\;
\inst2|ALT_INV_srdato\(8) <= NOT \inst2|srdato\(8);
\inst4|ALT_INV_ch_on[1][10]~q\ <= NOT \inst4|ch_on[1][10]~q\;
\inst2|ALT_INV_srdato\(9) <= NOT \inst2|srdato\(9);
\inst4|ALT_INV_ch_on[1][11]~q\ <= NOT \inst4|ch_on[1][11]~q\;
\inst2|ALT_INV_srdato\(10) <= NOT \inst2|srdato\(10);
\inst5|ALT_INV_LessThan1~2_combout\ <= NOT \inst5|LessThan1~2_combout\;
\inst5|ALT_INV_LessThan1~1_combout\ <= NOT \inst5|LessThan1~1_combout\;
\inst2|ALT_INV_srdato\(1) <= NOT \inst2|srdato\(1);
\inst2|ALT_INV_srdato\(2) <= NOT \inst2|srdato\(2);
\inst4|ALT_INV_ch_on[1][4]~q\ <= NOT \inst4|ch_on[1][4]~q\;
\inst2|ALT_INV_srdato\(3) <= NOT \inst2|srdato\(3);
\inst5|ALT_INV_LessThan1~0_combout\ <= NOT \inst5|LessThan1~0_combout\;
\inst4|ALT_INV_ch_on[1][6]~q\ <= NOT \inst4|ch_on[1][6]~q\;
\inst2|ALT_INV_srdato\(5) <= NOT \inst2|srdato\(5);
\inst4|ALT_INV_ch_on[1][7]~q\ <= NOT \inst4|ch_on[1][7]~q\;
\inst2|ALT_INV_srdato\(6) <= NOT \inst2|srdato\(6);
\inst4|ALT_INV_ch_on[1][8]~q\ <= NOT \inst4|ch_on[1][8]~q\;
\inst2|ALT_INV_srdato\(7) <= NOT \inst2|srdato\(7);
\inst4|ALT_INV_ch_on[1][5]~q\ <= NOT \inst4|ch_on[1][5]~q\;
\inst2|ALT_INV_srdato\(4) <= NOT \inst2|srdato\(4);
\inst2|ALT_INV_srdato\(15) <= NOT \inst2|srdato\(15);
\inst2|ALT_INV_srdato\(0) <= NOT \inst2|srdato\(0);
\inst4|ALT_INV_sr_din\(14) <= NOT \inst4|sr_din\(14);
\inst4|ALT_INV_ep.rd0~q\ <= NOT \inst4|ep.rd0~q\;
\inst4|ALT_INV_ep.conf0~q\ <= NOT \inst4|ep.conf0~q\;
\inst4|ALT_INV_cs_cycle\(1) <= NOT \inst4|cs_cycle\(1);
\inst4|ALT_INV_cs_cycle\(2) <= NOT \inst4|cs_cycle\(2);
\inst4|ALT_INV_cs_cycle\(3) <= NOT \inst4|cs_cycle\(3);
\inst4|ALT_INV_cs_cycle\(0) <= NOT \inst4|cs_cycle\(0);
\inst4|ALT_INV_sr_dout\(10) <= NOT \inst4|sr_dout\(10);
\inst4|ALT_INV_sr_dout\(9) <= NOT \inst4|sr_dout\(9);
\inst4|ALT_INV_sr_dout\(7) <= NOT \inst4|sr_dout\(7);
\inst4|ALT_INV_sr_dout\(6) <= NOT \inst4|sr_dout\(6);
\inst4|ALT_INV_sr_dout\(13) <= NOT \inst4|sr_dout\(13);
\inst4|ALT_INV_sr_dout\(12) <= NOT \inst4|sr_dout\(12);
\inst4|ALT_INV_sr_dout\(4) <= NOT \inst4|sr_dout\(4);
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
\inst1|ALT_INV_ctmp\(1) <= NOT \inst1|ctmp\(1);
\inst1|ALT_INV_ctmp\(2) <= NOT \inst1|ctmp\(2);
\inst1|ALT_INV_ctmp\(3) <= NOT \inst1|ctmp\(3);
\inst1|ALT_INV_ctmp\(4) <= NOT \inst1|ctmp\(4);
\inst1|ALT_INV_ctmp\(5) <= NOT \inst1|ctmp\(5);
\inst1|ALT_INV_ctmp\(6) <= NOT \inst1|ctmp\(6);
\inst1|ALT_INV_ctmp\(0) <= NOT \inst1|ctmp\(0);
\inst1|ALT_INV_Add2~1_sumout\ <= NOT \inst1|Add2~1_sumout\;
\inst5|s1|ALT_INV_Mult0~23\ <= NOT \inst5|s1|Mult0~23\;
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
	i => \inst4|ch_on[0][4]~_Duplicate_1_q\,
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
	i => \inst4|ch_on[0][5]~_Duplicate_1_q\,
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
	i => \inst4|ch_on[0][6]~_Duplicate_1_q\,
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
	i => \inst4|ch_on[0][7]~_Duplicate_1_q\,
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
	i => \inst4|ch_on[0][8]~_Duplicate_1_q\,
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
	i => \inst4|ch_on[0][9]~_Duplicate_1_q\,
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
	i => \inst4|ch_on[0][10]~_Duplicate_1_q\,
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
	i => \inst4|ch_on[0][11]~_Duplicate_1_q\,
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
	i => GND,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: MLABCELL_X84_Y12_N30
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

-- Location: CLKCTRL_G4
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

-- Location: MLABCELL_X84_Y12_N33
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

-- Location: MLABCELL_X84_Y12_N36
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

-- Location: FF_X84_Y12_N13
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

-- Location: LABCELL_X85_Y12_N0
\inst1|ep.e5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ep.e5~0_combout\ = ( \inst1|ep.e5~q\ & ( \inst1|Equal3~0_combout\ ) ) # ( !\inst1|ep.e5~q\ & ( \inst1|Equal3~0_combout\ & ( (\inst1|Equal4~0_combout\ & (!\inst1|ctmp\(7) & (\inst1|ep.e4~DUPLICATE_q\ & \inst1|ctmp\(0)))) ) ) ) # ( \inst1|ep.e5~q\ & 
-- ( !\inst1|Equal3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_ep.e4~DUPLICATE_q\,
	datad => \inst1|ALT_INV_ctmp\(0),
	datae => \inst1|ALT_INV_ep.e5~q\,
	dataf => \inst1|ALT_INV_Equal3~0_combout\,
	combout => \inst1|ep.e5~0_combout\);

-- Location: FF_X85_Y12_N2
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

-- Location: FF_X84_Y12_N38
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

-- Location: MLABCELL_X84_Y12_N39
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

-- Location: FF_X84_Y12_N41
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

-- Location: MLABCELL_X84_Y12_N42
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

-- Location: FF_X84_Y12_N43
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

-- Location: MLABCELL_X84_Y12_N45
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

-- Location: FF_X84_Y12_N46
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

-- Location: MLABCELL_X84_Y12_N48
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

-- Location: FF_X84_Y12_N49
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

-- Location: MLABCELL_X84_Y12_N51
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

-- Location: MLABCELL_X84_Y12_N0
\inst1|ctmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ctmp~0_combout\ = ( \inst1|ctmp\(7) & ( \inst1|ep.e5~q\ ) ) # ( \inst1|ctmp\(7) & ( !\inst1|ep.e5~q\ & ( !\inst1|Add2~1_sumout\ ) ) ) # ( !\inst1|ctmp\(7) & ( !\inst1|ep.e5~q\ & ( !\inst1|Add2~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Add2~1_sumout\,
	datae => \inst1|ALT_INV_ctmp\(7),
	dataf => \inst1|ALT_INV_ep.e5~q\,
	combout => \inst1|ctmp~0_combout\);

-- Location: FF_X84_Y12_N2
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

-- Location: LABCELL_X85_Y12_N30
\inst1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = ( !\inst1|Equal3~0_combout\ & ( (\inst1|Equal4~0_combout\ & (!\inst1|ctmp\(7) & (\inst1|ep.e4~DUPLICATE_q\ & \inst1|ctmp\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_ep.e4~DUPLICATE_q\,
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_Equal3~0_combout\,
	combout => \inst1|Selector0~1_combout\);

-- Location: LABCELL_X85_Y12_N57
\inst1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = ( \inst1|ep.e2~q\ & ( (\inst1|Equal4~0_combout\ & (\inst1|ctmp\(7) & \inst1|ctmp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datac => \inst1|ALT_INV_ctmp\(7),
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ep.e2~q\,
	combout => \inst1|Selector3~0_combout\);

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

-- Location: MLABCELL_X87_Y12_N57
\inst1|cbits[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[0]~3_combout\ = ( \inst1|Selector0~1_combout\ & ( (\inst1|incbits~1_combout\ & !\inst1|cbits\(0)) ) ) # ( !\inst1|Selector0~1_combout\ & ( (!\inst1|incbits~1_combout\ & (\inst1|cbits\(0) & ((!\inst1|Selector3~0_combout\) # 
-- (!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|incbits~1_combout\ & (((!\inst1|cbits\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111100000000011111110000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_incbits~1_combout\,
	datad => \inst1|ALT_INV_cbits\(0),
	dataf => \inst1|ALT_INV_Selector0~1_combout\,
	combout => \inst1|cbits[0]~3_combout\);

-- Location: FF_X87_Y12_N59
\inst1|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[0]~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(0));

-- Location: MLABCELL_X87_Y12_N6
\inst1|cbits[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[2]~4_combout\ = ( !\inst1|incbits~1_combout\ & ( ((\inst1|cbits\(2) & (!\inst1|Selector0~1_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\))))) ) ) # ( \inst1|incbits~1_combout\ & ( !\inst1|cbits\(2) $ 
-- (((!\inst1|cbits\(0)) # ((!\inst1|cbits\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110000001101100011011000000000000000000011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(2),
	datac => \inst1|ALT_INV_cbits\(1),
	datad => \inst1|ALT_INV_Selector3~0_combout\,
	datae => \inst1|ALT_INV_incbits~1_combout\,
	dataf => \inst1|ALT_INV_Selector0~1_combout\,
	datag => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	combout => \inst1|cbits[2]~4_combout\);

-- Location: FF_X87_Y12_N8
\inst1|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[2]~4_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(2));

-- Location: MLABCELL_X87_Y12_N54
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = ( \inst1|cbits\(2) & ( (\inst1|cbits\(1) & \inst1|cbits\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_cbits\(1),
	datad => \inst1|ALT_INV_cbits\(0),
	dataf => \inst1|ALT_INV_cbits\(2),
	combout => \inst1|Add0~1_combout\);

-- Location: MLABCELL_X87_Y12_N51
\inst1|cbits[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[3]~1_combout\ = ( \inst1|cbits\(3) & ( \inst1|Add0~1_combout\ & ( (!\inst1|Selector0~1_combout\ & (!\inst1|incbits~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) ) ) ) # ( !\inst1|cbits\(3) & ( 
-- \inst1|Add0~1_combout\ & ( \inst1|incbits~1_combout\ ) ) ) # ( \inst1|cbits\(3) & ( !\inst1|Add0~1_combout\ & ( ((!\inst1|Selector0~1_combout\ & ((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|incbits~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110111011001100110011001100111000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector0~1_combout\,
	datab => \inst1|ALT_INV_incbits~1_combout\,
	datac => \inst1|ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datae => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_Add0~1_combout\,
	combout => \inst1|cbits[3]~1_combout\);

-- Location: FF_X87_Y12_N53
\inst1|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[3]~1_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(3));

-- Location: MLABCELL_X87_Y12_N39
\inst1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = ( \inst1|cbits\(3) & ( (\inst1|cbits\(0) & (\inst1|cbits\(2) & \inst1|cbits\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datac => \inst1|ALT_INV_cbits\(2),
	datad => \inst1|ALT_INV_cbits\(1),
	dataf => \inst1|ALT_INV_cbits\(3),
	combout => \inst1|Add0~0_combout\);

-- Location: MLABCELL_X87_Y12_N12
\inst1|cbits[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[4]~0_combout\ = ( \inst1|cbits\(4) & ( \inst1|Selector0~1_combout\ & ( (\inst1|incbits~1_combout\ & !\inst1|Add0~0_combout\) ) ) ) # ( !\inst1|cbits\(4) & ( \inst1|Selector0~1_combout\ & ( (\inst1|incbits~1_combout\ & \inst1|Add0~0_combout\) 
-- ) ) ) # ( \inst1|cbits\(4) & ( !\inst1|Selector0~1_combout\ & ( (!\inst1|incbits~1_combout\ & (((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|incbits~1_combout\ & (!\inst1|Add0~0_combout\)) ) ) ) # ( !\inst1|cbits\(4) & ( 
-- !\inst1|Selector0~1_combout\ & ( (\inst1|incbits~1_combout\ & \inst1|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111011101110010000010001000100010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_incbits~1_combout\,
	datab => \inst1|ALT_INV_Add0~0_combout\,
	datac => \inst1|ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datae => \inst1|ALT_INV_cbits\(4),
	dataf => \inst1|ALT_INV_Selector0~1_combout\,
	combout => \inst1|cbits[4]~0_combout\);

-- Location: FF_X87_Y12_N14
\inst1|cbits[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[4]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(4));

-- Location: MLABCELL_X87_Y12_N36
\inst1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = ( \inst1|cbits\(4) & ( (!\inst1|cbits\(0) & (!\inst1|cbits\(2) & (\inst1|cbits\(3) & !\inst1|cbits\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(2),
	datac => \inst1|ALT_INV_cbits\(3),
	datad => \inst1|ALT_INV_cbits\(1),
	dataf => \inst1|ALT_INV_cbits\(4),
	combout => \inst1|Equal2~0_combout\);

-- Location: FF_X85_Y12_N37
\inst1|ep.e1~DUPLICATE\ : dffeas
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
	q => \inst1|ep.e1~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y12_N42
\inst1|incbits~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|incbits~0_combout\ = ( \inst1|cbits\(0) & ( \inst1|cbits\(3) & ( \inst1|ep.e1~DUPLICATE_q\ ) ) ) # ( !\inst1|cbits\(0) & ( \inst1|cbits\(3) & ( (\inst1|ep.e1~DUPLICATE_q\ & ((\inst1|cbits\(2)) # (\inst1|cbits\(1)))) ) ) ) # ( \inst1|cbits\(0) & ( 
-- !\inst1|cbits\(3) & ( \inst1|ep.e1~DUPLICATE_q\ ) ) ) # ( !\inst1|cbits\(0) & ( !\inst1|cbits\(3) & ( (\inst1|ep.e1~DUPLICATE_q\ & (((!\inst1|cbits\(4)) # (\inst1|cbits\(2))) # (\inst1|cbits\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011110000111100000111000001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(1),
	datab => \inst1|ALT_INV_cbits\(2),
	datac => \inst1|ALT_INV_ep.e1~DUPLICATE_q\,
	datad => \inst1|ALT_INV_cbits\(4),
	datae => \inst1|ALT_INV_cbits\(0),
	dataf => \inst1|ALT_INV_cbits\(3),
	combout => \inst1|incbits~0_combout\);

-- Location: LABCELL_X85_Y12_N24
\inst1|incbits~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|incbits~1_combout\ = ( \inst1|incbits~0_combout\ & ( !\inst1|ctmp\(7) & ( (\inst1|ctmp\(0) & \inst1|Equal4~0_combout\) ) ) ) # ( !\inst1|incbits~0_combout\ & ( !\inst1|ctmp\(7) & ( (!\inst1|Equal2~0_combout\ & (\inst1|ctmp\(0) & 
-- (\inst1|Equal4~0_combout\ & \inst1|ep.e3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal2~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(0),
	datac => \inst1|ALT_INV_Equal4~0_combout\,
	datad => \inst1|ALT_INV_ep.e3~q\,
	datae => \inst1|ALT_INV_incbits~0_combout\,
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|incbits~1_combout\);

-- Location: MLABCELL_X87_Y12_N48
\inst1|cbits[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cbits[1]~2_combout\ = ( \inst1|cbits\(1) & ( \inst1|cbits\(0) & ( (!\inst1|Selector0~1_combout\ & (!\inst1|incbits~1_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\)))) ) ) ) # ( !\inst1|cbits\(1) & ( \inst1|cbits\(0) & ( 
-- \inst1|incbits~1_combout\ ) ) ) # ( \inst1|cbits\(1) & ( !\inst1|cbits\(0) & ( ((!\inst1|Selector0~1_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\)))) # (\inst1|incbits~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110111011001100110011001100111000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Selector0~1_combout\,
	datab => \inst1|ALT_INV_incbits~1_combout\,
	datac => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datad => \inst1|ALT_INV_Selector3~0_combout\,
	datae => \inst1|ALT_INV_cbits\(1),
	dataf => \inst1|ALT_INV_cbits\(0),
	combout => \inst1|cbits[1]~2_combout\);

-- Location: FF_X87_Y12_N50
\inst1|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cbits[1]~2_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(1));

-- Location: MLABCELL_X87_Y12_N33
\inst1|stop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|stop~0_combout\ = ( \inst1|cbits\(4) & ( (!\inst1|cbits\(1) & (!\inst1|cbits\(0) & !\inst1|cbits\(2))) ) ) # ( !\inst1|cbits\(4) & ( (!\inst1|cbits\(1) & (!\inst1|cbits\(0) & (!\inst1|cbits\(2) & \inst1|cbits\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(1),
	datab => \inst1|ALT_INV_cbits\(0),
	datac => \inst1|ALT_INV_cbits\(2),
	datad => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(4),
	combout => \inst1|stop~0_combout\);

-- Location: LABCELL_X85_Y12_N33
\inst1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = ( !\inst1|ctmp\(7) & ( (\inst1|Equal4~0_combout\ & \inst1|ctmp\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datac => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|Equal5~0_combout\);

-- Location: LABCELL_X85_Y12_N6
\inst1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = ( \inst1|ep.e0~q\ & ( \inst1|Equal5~0_combout\ & ( (!\inst1|Equal3~0_combout\ & (!\inst1|ep.e4~DUPLICATE_q\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\)))) # (\inst1|Equal3~0_combout\ & 
-- ((!\FPGA_I2C_SDAT~input_o\) # ((!\inst1|Selector3~0_combout\)))) ) ) ) # ( !\inst1|ep.e0~q\ & ( \inst1|Equal5~0_combout\ & ( (!\inst1|Equal3~0_combout\ & (!\inst1|ep.e4~DUPLICATE_q\ & ((!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\)))) # 
-- (\inst1|Equal3~0_combout\ & ((!\FPGA_I2C_SDAT~input_o\) # ((!\inst1|Selector3~0_combout\)))) ) ) ) # ( \inst1|ep.e0~q\ & ( !\inst1|Equal5~0_combout\ & ( (!\FPGA_I2C_SDAT~input_o\) # (!\inst1|Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110011110101110001001111010111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal3~0_combout\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_ep.e4~DUPLICATE_q\,
	datad => \inst1|ALT_INV_Selector3~0_combout\,
	datae => \inst1|ALT_INV_ep.e0~q\,
	dataf => \inst1|ALT_INV_Equal5~0_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X85_Y12_N8
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

-- Location: LABCELL_X85_Y12_N36
\inst1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = ( \inst1|ep.e1~q\ & ( \inst1|Equal5~0_combout\ & ( (!\inst1|stop~0_combout\) # ((!\inst1|ep.e0~q\) # ((!\inst1|Equal2~0_combout\ & \inst1|ep.e3~q\))) ) ) ) # ( !\inst1|ep.e1~q\ & ( \inst1|Equal5~0_combout\ & ( 
-- (!\inst1|ep.e0~q\) # ((!\inst1|Equal2~0_combout\ & \inst1|ep.e3~q\)) ) ) ) # ( \inst1|ep.e1~q\ & ( !\inst1|Equal5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111001100111111001110111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_stop~0_combout\,
	datab => \inst1|ALT_INV_ep.e0~q\,
	datac => \inst1|ALT_INV_Equal2~0_combout\,
	datad => \inst1|ALT_INV_ep.e3~q\,
	datae => \inst1|ALT_INV_ep.e1~q\,
	dataf => \inst1|ALT_INV_Equal5~0_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X85_Y12_N38
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

-- Location: LABCELL_X85_Y12_N48
\inst1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = ( \inst1|ep.e2~q\ & ( \inst1|stop~0_combout\ & ( (!\inst1|ctmp\(7)) # ((!\inst1|Equal4~0_combout\) # (!\inst1|ctmp\(0))) ) ) ) # ( !\inst1|ep.e2~q\ & ( \inst1|stop~0_combout\ & ( (\inst1|ep.e1~q\ & (!\inst1|ctmp\(7) & 
-- (\inst1|Equal4~0_combout\ & \inst1|ctmp\(0)))) ) ) ) # ( \inst1|ep.e2~q\ & ( !\inst1|stop~0_combout\ & ( (!\inst1|ctmp\(7)) # ((!\inst1|Equal4~0_combout\) # (!\inst1|ctmp\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110000000000000001001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e1~q\,
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_Equal4~0_combout\,
	datad => \inst1|ALT_INV_ctmp\(0),
	datae => \inst1|ALT_INV_ep.e2~q\,
	dataf => \inst1|ALT_INV_stop~0_combout\,
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X85_Y12_N50
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

-- Location: LABCELL_X85_Y12_N12
\inst1|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector3~1_combout\ = ( \inst1|ep.e3~q\ & ( \inst1|ctmp\(7) ) ) # ( !\inst1|ep.e3~q\ & ( \inst1|ctmp\(7) & ( (\inst1|ep.e2~q\ & (!\FPGA_I2C_SDAT~input_o\ & (\inst1|Equal4~0_combout\ & \inst1|ctmp\(0)))) ) ) ) # ( \inst1|ep.e3~q\ & ( 
-- !\inst1|ctmp\(7) & ( (!\inst1|Equal4~0_combout\) # (!\inst1|ctmp\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e2~q\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ALT_INV_Equal4~0_combout\,
	datad => \inst1|ALT_INV_ctmp\(0),
	datae => \inst1|ALT_INV_ep.e3~q\,
	dataf => \inst1|ALT_INV_ctmp\(7),
	combout => \inst1|Selector3~1_combout\);

-- Location: FF_X85_Y12_N14
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

-- Location: MLABCELL_X84_Y12_N12
\inst1|ep.e4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|ep.e4~0_combout\ = ( \inst1|ep.e4~q\ & ( \inst1|Equal2~0_combout\ & ( ((!\inst1|ctmp\(0)) # ((!\inst1|Equal4~0_combout\) # (\inst1|ep.e3~q\))) # (\inst1|ctmp\(7)) ) ) ) # ( !\inst1|ep.e4~q\ & ( \inst1|Equal2~0_combout\ & ( (!\inst1|ctmp\(7) & 
-- (\inst1|ctmp\(0) & (\inst1|ep.e3~q\ & \inst1|Equal4~0_combout\))) ) ) ) # ( \inst1|ep.e4~q\ & ( !\inst1|Equal2~0_combout\ & ( ((!\inst1|ctmp\(0)) # (!\inst1|Equal4~0_combout\)) # (\inst1|ctmp\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111101110100000000000000101111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(7),
	datab => \inst1|ALT_INV_ctmp\(0),
	datac => \inst1|ALT_INV_ep.e3~q\,
	datad => \inst1|ALT_INV_Equal4~0_combout\,
	datae => \inst1|ALT_INV_ep.e4~q\,
	dataf => \inst1|ALT_INV_Equal2~0_combout\,
	combout => \inst1|ep.e4~0_combout\);

-- Location: FF_X84_Y12_N14
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

-- Location: MLABCELL_X84_Y12_N21
\inst1|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = ( !\inst1|ctmp\(7) & ( \inst1|Equal4~0_combout\ & ( (\inst1|ctmp\(0) & \inst1|ep.e4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_ctmp\(0),
	datac => \inst1|ALT_INV_ep.e4~q\,
	datae => \inst1|ALT_INV_ctmp\(7),
	dataf => \inst1|ALT_INV_Equal4~0_combout\,
	combout => \inst1|Selector5~0_combout\);

-- Location: LABCELL_X88_Y12_N18
\inst1|caddr[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|caddr[0]~2_combout\ = ( \inst1|caddr\(0) & ( \FPGA_I2C_SDAT~input_o\ & ( (!\inst1|Selector3~0_combout\ & ((!\inst1|Selector5~0_combout\) # (\inst1|Equal3~0_combout\))) ) ) ) # ( !\inst1|caddr\(0) & ( \FPGA_I2C_SDAT~input_o\ & ( 
-- \inst1|Selector5~0_combout\ ) ) ) # ( \inst1|caddr\(0) & ( !\FPGA_I2C_SDAT~input_o\ & ( (!\inst1|Selector5~0_combout\) # (\inst1|Equal3~0_combout\) ) ) ) # ( !\inst1|caddr\(0) & ( !\FPGA_I2C_SDAT~input_o\ & ( \inst1|Selector5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110111011101110100110011001100111101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal3~0_combout\,
	datab => \inst1|ALT_INV_Selector5~0_combout\,
	datac => \inst1|ALT_INV_Selector3~0_combout\,
	datae => \inst1|ALT_INV_caddr\(0),
	dataf => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	combout => \inst1|caddr[0]~2_combout\);

-- Location: FF_X88_Y12_N20
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

-- Location: LABCELL_X88_Y12_N36
\inst1|caddr[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|caddr[2]~0_combout\ = ( \inst1|caddr\(2) & ( \FPGA_I2C_SDAT~input_o\ & ( (!\inst1|Selector3~0_combout\) # ((\inst1|Selector5~0_combout\ & ((!\inst1|caddr\(0)) # (!\inst1|caddr\(1))))) ) ) ) # ( !\inst1|caddr\(2) & ( \FPGA_I2C_SDAT~input_o\ & ( 
-- (\inst1|caddr\(0) & (\inst1|caddr\(1) & \inst1|Selector5~0_combout\)) ) ) ) # ( \inst1|caddr\(2) & ( !\FPGA_I2C_SDAT~input_o\ ) ) # ( !\inst1|caddr\(2) & ( !\FPGA_I2C_SDAT~input_o\ & ( (\inst1|caddr\(0) & (\inst1|caddr\(1) & \inst1|Selector5~0_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001111111111111111100000000000100011111000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(0),
	datab => \inst1|ALT_INV_caddr\(1),
	datac => \inst1|ALT_INV_Selector3~0_combout\,
	datad => \inst1|ALT_INV_Selector5~0_combout\,
	datae => \inst1|ALT_INV_caddr\(2),
	dataf => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	combout => \inst1|caddr[2]~0_combout\);

-- Location: FF_X88_Y12_N38
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

-- Location: LABCELL_X88_Y12_N12
\inst1|caddr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|caddr[1]~1_combout\ = ( \inst1|caddr\(1) & ( \inst1|caddr\(2) & ( (!\inst1|Selector3~0_combout\) # ((!\FPGA_I2C_SDAT~input_o\) # ((!\inst1|caddr\(0) & \inst1|Selector5~0_combout\))) ) ) ) # ( !\inst1|caddr\(1) & ( \inst1|caddr\(2) & ( 
-- (\inst1|caddr\(0) & \inst1|Selector5~0_combout\) ) ) ) # ( \inst1|caddr\(1) & ( !\inst1|caddr\(2) & ( (!\inst1|Selector5~0_combout\ & (((!\inst1|Selector3~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))) # (\inst1|Selector5~0_combout\ & (!\inst1|caddr\(0))) ) 
-- ) ) # ( !\inst1|caddr\(1) & ( !\inst1|caddr\(2) & ( (\inst1|caddr\(0) & \inst1|Selector5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111011101110001000010001000100011111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_caddr\(0),
	datab => \inst1|ALT_INV_Selector5~0_combout\,
	datac => \inst1|ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datae => \inst1|ALT_INV_caddr\(1),
	dataf => \inst1|ALT_INV_caddr\(2),
	combout => \inst1|caddr[1]~1_combout\);

-- Location: FF_X88_Y12_N14
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

-- Location: LABCELL_X88_Y12_N27
\inst1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = ( \inst1|caddr\(2) & ( (\inst1|caddr\(1) & \inst1|caddr\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_caddr\(1),
	datad => \inst1|ALT_INV_caddr\(0),
	dataf => \inst1|ALT_INV_caddr\(2),
	combout => \inst1|Equal3~0_combout\);

-- Location: LABCELL_X85_Y12_N42
\inst1|settmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|settmp~0_combout\ = ( !\inst1|ep.e0~q\ & ( (\inst1|Equal4~0_combout\ & (!\inst1|ctmp\(7) & \inst1|ctmp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(7),
	datad => \inst1|ALT_INV_ctmp\(0),
	dataf => \inst1|ALT_INV_ep.e0~q\,
	combout => \inst1|settmp~0_combout\);

-- Location: MLABCELL_X84_Y12_N57
\inst1|settmp\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|settmp~combout\ = ( \inst1|Selector5~0_combout\ & ( \FPGA_I2C_SDAT~input_o\ & ( (!\inst1|Equal3~0_combout\) # ((\inst1|Selector3~0_combout\) # (\inst1|settmp~0_combout\)) ) ) ) # ( !\inst1|Selector5~0_combout\ & ( \FPGA_I2C_SDAT~input_o\ & ( 
-- (\inst1|Selector3~0_combout\) # (\inst1|settmp~0_combout\) ) ) ) # ( \inst1|Selector5~0_combout\ & ( !\FPGA_I2C_SDAT~input_o\ & ( (!\inst1|Equal3~0_combout\) # (\inst1|settmp~0_combout\) ) ) ) # ( !\inst1|Selector5~0_combout\ & ( !\FPGA_I2C_SDAT~input_o\ 
-- & ( \inst1|settmp~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101110111011101100111111001111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal3~0_combout\,
	datab => \inst1|ALT_INV_settmp~0_combout\,
	datac => \inst1|ALT_INV_Selector3~0_combout\,
	datae => \inst1|ALT_INV_Selector5~0_combout\,
	dataf => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	combout => \inst1|settmp~combout\);

-- Location: FF_X84_Y12_N32
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

-- Location: FF_X84_Y12_N35
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

-- Location: MLABCELL_X84_Y12_N6
\inst1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = ( \inst1|ctmp\(4) & ( \inst1|ctmp\(3) & ( (\inst1|ctmp\(1) & (\inst1|ctmp\(6) & (\inst1|ctmp\(2) & \inst1|ctmp\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ctmp\(1),
	datab => \inst1|ALT_INV_ctmp\(6),
	datac => \inst1|ALT_INV_ctmp\(2),
	datad => \inst1|ALT_INV_ctmp\(5),
	datae => \inst1|ALT_INV_ctmp\(4),
	dataf => \inst1|ALT_INV_ctmp\(3),
	combout => \inst1|Equal4~0_combout\);

-- Location: LABCELL_X85_Y12_N54
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

-- Location: MLABCELL_X87_Y12_N18
\inst1|sdat~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~1_combout\ = ( \inst1|caddr\(2) & ( \inst1|caddr\(0) & ( (\inst1|cbits\(0) & (!\inst1|cbits\(2) & (\inst1|cbits\(1) & \inst1|caddr\(1)))) ) ) ) # ( !\inst1|caddr\(2) & ( !\inst1|caddr\(0) & ( (\inst1|cbits\(0) & (!\inst1|cbits\(2) & 
-- (\inst1|cbits\(1) & \inst1|caddr\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(2),
	datac => \inst1|ALT_INV_cbits\(1),
	datad => \inst1|ALT_INV_caddr\(1),
	datae => \inst1|ALT_INV_caddr\(2),
	dataf => \inst1|ALT_INV_caddr\(0),
	combout => \inst1|sdat~1_combout\);

-- Location: MLABCELL_X87_Y12_N30
\inst1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = ( \inst1|caddr\(0) & ( (!\inst1|cbits\(0) & (!\inst1|caddr\(2) $ (((\inst1|cbits\(1) & \inst1|caddr\(1)))))) # (\inst1|cbits\(0) & (!\inst1|caddr\(1) & (!\inst1|cbits\(1) $ (\inst1|caddr\(2))))) ) ) # ( !\inst1|caddr\(0) & ( 
-- (!\inst1|caddr\(2) & (!\inst1|cbits\(1) & ((!\inst1|caddr\(1))))) # (\inst1|caddr\(2) & ((!\inst1|cbits\(0) $ (!\inst1|caddr\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000111100101000000011110011101000000101001110100000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(1),
	datab => \inst1|ALT_INV_cbits\(0),
	datac => \inst1|ALT_INV_caddr\(1),
	datad => \inst1|ALT_INV_caddr\(2),
	dataf => \inst1|ALT_INV_caddr\(0),
	combout => \inst1|Mux12~0_combout\);

-- Location: MLABCELL_X87_Y12_N0
\inst1|sdat~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~4_combout\ = ( !\inst1|cbits\(3) & ( ((!\inst1|cbits\(4) & ((!\inst1|cbits\(2) & (\inst1|cbits\(1))) # (\inst1|cbits\(2) & (!\inst1|cbits\(1) & \inst1|cbits\(0)))))) ) ) # ( \inst1|cbits\(3) & ( ((!\inst1|cbits\(4) & (((\inst1|cbits\(2) & 
-- \inst1|Mux12~0_combout\)) # (\inst1|sdat~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111100010101110101011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_sdat~1_combout\,
	datab => \inst1|ALT_INV_cbits\(2),
	datac => \inst1|ALT_INV_Mux12~0_combout\,
	datad => \inst1|ALT_INV_cbits\(0),
	datae => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(4),
	datag => \inst1|ALT_INV_cbits\(1),
	combout => \inst1|sdat~4_combout\);

-- Location: MLABCELL_X87_Y12_N24
\inst1|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Mux12~1_combout\ = ( \inst1|caddr\(2) & ( \inst1|caddr\(0) & ( (!\inst1|cbits\(0) & (\inst1|cbits\(2) & (\inst1|cbits\(1) & !\inst1|caddr\(1)))) # (\inst1|cbits\(0) & ((!\inst1|cbits\(2) & (\inst1|cbits\(1) & !\inst1|caddr\(1))) # (\inst1|cbits\(2) 
-- & ((!\inst1|caddr\(1)) # (\inst1|cbits\(1)))))) ) ) ) # ( !\inst1|caddr\(2) & ( \inst1|caddr\(0) & ( (\inst1|cbits\(0) & ((!\inst1|cbits\(2) & (!\inst1|cbits\(1) $ (\inst1|caddr\(1)))) # (\inst1|cbits\(2) & (\inst1|cbits\(1) & !\inst1|caddr\(1))))) ) ) ) 
-- # ( \inst1|caddr\(2) & ( !\inst1|caddr\(0) & ( (!\inst1|caddr\(1) & ((!\inst1|cbits\(0) & (!\inst1|cbits\(2) $ (!\inst1|cbits\(1)))) # (\inst1|cbits\(0) & ((!\inst1|cbits\(2)) # (\inst1|cbits\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011011010000000001000001000001000001011100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cbits\(0),
	datab => \inst1|ALT_INV_cbits\(2),
	datac => \inst1|ALT_INV_cbits\(1),
	datad => \inst1|ALT_INV_caddr\(1),
	datae => \inst1|ALT_INV_caddr\(2),
	dataf => \inst1|ALT_INV_caddr\(0),
	combout => \inst1|Mux12~1_combout\);

-- Location: MLABCELL_X84_Y12_N24
\inst1|sdat~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~2_combout\ = ( !\inst1|cbits\(3) & ( \inst1|cbits\(4) & ( \inst1|Mux12~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_Mux12~1_combout\,
	datae => \inst1|ALT_INV_cbits\(3),
	dataf => \inst1|ALT_INV_cbits\(4),
	combout => \inst1|sdat~2_combout\);

-- Location: LABCELL_X85_Y12_N45
\inst1|sdat~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~0_combout\ = ( \inst1|sdat~q\ & ( (!\inst1|Equal4~0_combout\) # (((!\inst1|ctmp\(0)) # (!\inst1|ep.e4~DUPLICATE_q\)) # (\inst1|ctmp\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Equal4~0_combout\,
	datab => \inst1|ALT_INV_ctmp\(7),
	datac => \inst1|ALT_INV_ctmp\(0),
	datad => \inst1|ALT_INV_ep.e4~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_sdat~q\,
	combout => \inst1|sdat~0_combout\);

-- Location: LABCELL_X85_Y12_N18
\inst1|sdat~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|sdat~3_combout\ = ( \inst1|sdat~0_combout\ & ( \inst1|incbits~1_combout\ & ( (!\inst1|sdat~4_combout\ & !\inst1|sdat~2_combout\) ) ) ) # ( !\inst1|sdat~0_combout\ & ( \inst1|incbits~1_combout\ & ( (!\inst1|sdat~4_combout\ & !\inst1|sdat~2_combout\) 
-- ) ) ) # ( \inst1|sdat~0_combout\ & ( !\inst1|incbits~1_combout\ ) ) # ( !\inst1|sdat~0_combout\ & ( !\inst1|incbits~1_combout\ & ( (\inst1|settmp~0_combout\) # (\inst1|ep.e4~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111111111111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_ep.e4~1_combout\,
	datab => \inst1|ALT_INV_settmp~0_combout\,
	datac => \inst1|ALT_INV_sdat~4_combout\,
	datad => \inst1|ALT_INV_sdat~2_combout\,
	datae => \inst1|ALT_INV_sdat~0_combout\,
	dataf => \inst1|ALT_INV_incbits~1_combout\,
	combout => \inst1|sdat~3_combout\);

-- Location: FF_X85_Y12_N19
\inst1|sdat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|sdat~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sdat~q\);

-- Location: FF_X85_Y12_N49
\inst1|ep.e2~DUPLICATE\ : dffeas
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
	q => \inst1|ep.e2~DUPLICATE_q\);

-- Location: LABCELL_X88_Y12_N0
\inst1|setbitz\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|setbitz~combout\ = ( !\inst1|ep.e2~DUPLICATE_q\ & ( !\inst1|ep.e3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_ep.e3~q\,
	dataf => \inst1|ALT_INV_ep.e2~DUPLICATE_q\,
	combout => \inst1|setbitz~combout\);

-- Location: LABCELL_X85_Y6_N54
\inst4|clkdiv[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[0]~0_combout\ = ( !\inst4|clkdiv\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_clkdiv\(0),
	combout => \inst4|clkdiv[0]~0_combout\);

-- Location: FF_X85_Y6_N32
\inst4|clkdiv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst4|clkdiv[0]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(0));

-- Location: LABCELL_X88_Y12_N33
\inst1|cclkdiv[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cclkdiv[1]~0_combout\ = ( !\inst1|cclkdiv\(1) & ( \inst4|clkdiv\(0) ) ) # ( \inst1|cclkdiv\(1) & ( !\inst4|clkdiv\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst1|ALT_INV_cclkdiv\(1),
	dataf => \inst4|ALT_INV_clkdiv\(0),
	combout => \inst1|cclkdiv[1]~0_combout\);

-- Location: FF_X88_Y12_N34
\inst1|cclkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst1|cclkdiv[1]~0_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cclkdiv\(1));

-- Location: LABCELL_X85_Y6_N0
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

-- Location: FF_X85_Y6_N1
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

-- Location: LABCELL_X85_Y6_N3
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

-- Location: FF_X85_Y6_N4
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

-- Location: LABCELL_X85_Y6_N6
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

-- Location: FF_X85_Y6_N7
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

-- Location: LABCELL_X85_Y6_N9
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

-- Location: FF_X85_Y6_N10
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

-- Location: LABCELL_X85_Y6_N12
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

-- Location: FF_X85_Y6_N13
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

-- Location: LABCELL_X85_Y6_N15
\inst4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~21_sumout\ = SUM(( \inst4|clkdiv\(6) ) + ( GND ) + ( \inst4|Add0~26\ ))
-- \inst4|Add0~22\ = CARRY(( \inst4|clkdiv\(6) ) + ( GND ) + ( \inst4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clkdiv\(6),
	cin => \inst4|Add0~26\,
	sumout => \inst4|Add0~21_sumout\,
	cout => \inst4|Add0~22\);

-- Location: FF_X85_Y6_N16
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

-- Location: LABCELL_X85_Y6_N18
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

-- Location: FF_X85_Y6_N19
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

-- Location: LABCELL_X85_Y6_N21
\inst4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~13_sumout\ = SUM(( \inst4|clkdiv\(8) ) + ( GND ) + ( \inst4|Add0~18\ ))
-- \inst4|Add0~14\ = CARRY(( \inst4|clkdiv\(8) ) + ( GND ) + ( \inst4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_clkdiv\(8),
	cin => \inst4|Add0~18\,
	sumout => \inst4|Add0~13_sumout\,
	cout => \inst4|Add0~14\);

-- Location: FF_X85_Y6_N22
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

-- Location: LABCELL_X85_Y6_N24
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

-- Location: FF_X85_Y6_N25
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

-- Location: LABCELL_X85_Y6_N27
\inst4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_sumout\ = SUM(( \inst4|clkdiv\(10) ) + ( GND ) + ( \inst4|Add0~10\ ))
-- \inst4|Add0~6\ = CARRY(( \inst4|clkdiv\(10) ) + ( GND ) + ( \inst4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_clkdiv\(10),
	cin => \inst4|Add0~10\,
	sumout => \inst4|Add0~5_sumout\,
	cout => \inst4|Add0~6\);

-- Location: FF_X85_Y6_N28
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

-- Location: LABCELL_X85_Y6_N30
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

-- Location: FF_X85_Y6_N56
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

-- Location: MLABCELL_X84_Y5_N42
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

-- Location: FF_X84_Y5_N44
\inst4|sr_dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[0]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(0));

-- Location: MLABCELL_X84_Y5_N33
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

-- Location: FF_X84_Y5_N35
\inst4|sr_dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[1]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(1));

-- Location: MLABCELL_X84_Y5_N54
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

-- Location: FF_X84_Y5_N56
\inst4|sr_dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[2]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(2));

-- Location: FF_X84_Y5_N59
\inst4|sr_dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(2),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(3));

-- Location: FF_X84_Y5_N31
\inst4|sr_dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(3),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(4));

-- Location: LABCELL_X83_Y6_N3
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

-- Location: FF_X83_Y6_N5
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

-- Location: FF_X83_Y6_N10
\inst4|sr_dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(6));

-- Location: FF_X83_Y6_N4
\inst4|sr_dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(7));

-- Location: MLABCELL_X84_Y5_N45
\inst4|sr_dout[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[8]~feeder_combout\ = ( \inst4|sr_dout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(7),
	combout => \inst4|sr_dout[8]~feeder_combout\);

-- Location: FF_X84_Y5_N46
\inst4|sr_dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[8]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(8));

-- Location: FF_X84_Y5_N20
\inst4|sr_dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(9));

-- Location: MLABCELL_X84_Y5_N21
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

-- Location: FF_X84_Y5_N22
\inst4|sr_dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[10]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(10));

-- Location: MLABCELL_X84_Y5_N36
\inst4|sr_dout[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[11]~feeder_combout\ = ( \inst4|sr_dout\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(10),
	combout => \inst4|sr_dout[11]~feeder_combout\);

-- Location: FF_X84_Y5_N37
\inst4|sr_dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|sr_dout[11]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(11));

-- Location: FF_X84_Y5_N40
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

-- Location: FF_X84_Y7_N32
\inst4|sr_dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(12),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(13));

-- Location: MLABCELL_X84_Y7_N54
\inst4|cs_cycle[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[1]~3_combout\ = ( \inst4|cs_cycle\(1) & ( (!\inst4|cs_cycle\(0)) # ((!\inst4|ep.rd1~q\ & (!\inst4|ep.save~q\ & !\inst4|ep.conf1~q\))) ) ) # ( !\inst4|cs_cycle\(1) & ( (\inst4|cs_cycle\(0) & (((\inst4|ep.conf1~q\) # (\inst4|ep.save~q\)) # 
-- (\inst4|ep.rd1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111111111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.rd1~q\,
	datab => \inst4|ALT_INV_ep.save~q\,
	datac => \inst4|ALT_INV_ep.conf1~q\,
	datad => \inst4|ALT_INV_cs_cycle\(0),
	dataf => \inst4|ALT_INV_cs_cycle\(1),
	combout => \inst4|cs_cycle[1]~3_combout\);

-- Location: FF_X84_Y7_N16
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

-- Location: MLABCELL_X84_Y7_N57
\inst4|cs\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs~combout\ = ( \inst4|ep.conf1~q\ ) # ( !\inst4|ep.conf1~q\ & ( (\inst4|ep.rd1~q\) # (\inst4|ep.save~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ep.save~q\,
	datad => \inst4|ALT_INV_ep.rd1~q\,
	dataf => \inst4|ALT_INV_ep.conf1~q\,
	combout => \inst4|cs~combout\);

-- Location: MLABCELL_X84_Y7_N6
\inst4|cs_cycle[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[2]~2_combout\ = ( \inst4|cs_cycle\(2) & ( \inst4|ep.conf1~q\ & ( (!\inst4|cs_cycle\(1)) # (!\inst4|cs_cycle\(0)) ) ) ) # ( !\inst4|cs_cycle\(2) & ( \inst4|ep.conf1~q\ & ( (\inst4|cs_cycle\(1) & \inst4|cs_cycle\(0)) ) ) ) # ( 
-- \inst4|cs_cycle\(2) & ( !\inst4|ep.conf1~q\ & ( (!\inst4|cs_cycle\(1)) # ((!\inst4|cs_cycle\(0)) # ((!\inst4|ep.rd1~q\ & !\inst4|ep.save~q\))) ) ) ) # ( !\inst4|cs_cycle\(2) & ( !\inst4|ep.conf1~q\ & ( (\inst4|cs_cycle\(1) & (\inst4|cs_cycle\(0) & 
-- ((\inst4|ep.save~q\) # (\inst4|ep.rd1~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011111111101111110000000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.rd1~q\,
	datab => \inst4|ALT_INV_cs_cycle\(1),
	datac => \inst4|ALT_INV_cs_cycle\(0),
	datad => \inst4|ALT_INV_ep.save~q\,
	datae => \inst4|ALT_INV_cs_cycle\(2),
	dataf => \inst4|ALT_INV_ep.conf1~q\,
	combout => \inst4|cs_cycle[2]~2_combout\);

-- Location: FF_X84_Y7_N38
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

-- Location: MLABCELL_X84_Y7_N36
\inst4|cs_cycle[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[3]~1_combout\ = ( \inst4|cs_cycle\(1) & ( !\inst4|cs_cycle\(3) $ (((!\inst4|cs_cycle\(0)) # ((!\inst4|cs~combout\) # (!\inst4|cs_cycle\(2))))) ) ) # ( !\inst4|cs_cycle\(1) & ( \inst4|cs_cycle\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(0),
	datab => \inst4|ALT_INV_cs_cycle\(3),
	datac => \inst4|ALT_INV_cs~combout\,
	datad => \inst4|ALT_INV_cs_cycle\(2),
	dataf => \inst4|ALT_INV_cs_cycle\(1),
	combout => \inst4|cs_cycle[3]~1_combout\);

-- Location: FF_X84_Y7_N44
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

-- Location: LABCELL_X85_Y8_N9
\inst4|cmd_addr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[0]~1_combout\ = !\inst4|ep.conf0~q\ $ (\inst4|cmd_addr\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	datac => \inst4|ALT_INV_cmd_addr\(0),
	combout => \inst4|cmd_addr[0]~1_combout\);

-- Location: FF_X85_Y8_N43
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

-- Location: MLABCELL_X84_Y7_N18
\inst4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = ( \inst4|cs_cycle\(3) & ( (\inst4|cs_cycle\(0) & (\inst4|cs_cycle\(1) & \inst4|cs_cycle\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(0),
	datab => \inst4|ALT_INV_cs_cycle\(1),
	datac => \inst4|ALT_INV_cs_cycle\(2),
	dataf => \inst4|ALT_INV_cs_cycle\(3),
	combout => \inst4|Equal2~0_combout\);

-- Location: LABCELL_X85_Y8_N54
\inst4|cmd_addr[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[1]~0_combout\ = ( \inst4|cmd_addr\(1) & ( (!\inst4|cmd_addr\(0)) # (\inst4|ep.conf0~q\) ) ) # ( !\inst4|cmd_addr\(1) & ( (!\inst4|ep.conf0~q\ & \inst4|cmd_addr\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ep.conf0~q\,
	datad => \inst4|ALT_INV_cmd_addr\(0),
	dataf => \inst4|ALT_INV_cmd_addr\(1),
	combout => \inst4|cmd_addr[1]~0_combout\);

-- Location: FF_X85_Y8_N25
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

-- Location: MLABCELL_X84_Y7_N51
\inst4|es.conf0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|es.conf0~0_combout\ = ( \inst4|cmd_addr\(1) & ( ((!\inst4|ep.conf1~q\) # (!\inst4|Equal2~0_combout\)) # (\inst4|cmd_addr\(0)) ) ) # ( !\inst4|cmd_addr\(1) & ( (!\inst4|ep.conf1~q\) # (!\inst4|Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_cmd_addr\(0),
	datac => \inst4|ALT_INV_ep.conf1~q\,
	datad => \inst4|ALT_INV_Equal2~0_combout\,
	dataf => \inst4|ALT_INV_cmd_addr\(1),
	combout => \inst4|es.conf0~0_combout\);

-- Location: FF_X84_Y7_N53
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

-- Location: MLABCELL_X84_Y7_N12
\inst4|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = ( \inst4|cs_cycle\(2) & ( \inst4|ep.conf0~q\ & ( (\inst4|ep.conf1~q\ & ((!\inst4|cs_cycle\(1)) # ((!\inst4|cs_cycle\(0)) # (!\inst4|cs_cycle\(3))))) ) ) ) # ( !\inst4|cs_cycle\(2) & ( \inst4|ep.conf0~q\ & ( \inst4|ep.conf1~q\ 
-- ) ) ) # ( \inst4|cs_cycle\(2) & ( !\inst4|ep.conf0~q\ ) ) # ( !\inst4|cs_cycle\(2) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf1~q\,
	datab => \inst4|ALT_INV_cs_cycle\(1),
	datac => \inst4|ALT_INV_cs_cycle\(0),
	datad => \inst4|ALT_INV_cs_cycle\(3),
	datae => \inst4|ALT_INV_cs_cycle\(2),
	dataf => \inst4|ALT_INV_ep.conf0~q\,
	combout => \inst4|Selector0~0_combout\);

-- Location: FF_X84_Y7_N11
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

-- Location: MLABCELL_X84_Y7_N27
\inst4|es.sready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|es.sready~0_combout\ = ( \inst4|ep.save~q\ & ( (!\inst4|sr_dout\(12) & \inst4|sr_dout\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sr_dout\(12),
	datab => \inst4|ALT_INV_sr_dout\(13),
	dataf => \inst4|ALT_INV_ep.save~q\,
	combout => \inst4|es.sready~0_combout\);

-- Location: FF_X84_Y7_N29
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

-- Location: MLABCELL_X84_Y7_N48
\inst4|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = ( \inst4|cmd_addr\(1) & ( ((\inst4|ep.conf1~q\ & (\inst4|cmd_addr\(0) & \inst4|Equal2~0_combout\))) # (\inst4|ep.sready~q\) ) ) # ( !\inst4|cmd_addr\(1) & ( \inst4|ep.sready~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf1~q\,
	datab => \inst4|ALT_INV_cmd_addr\(0),
	datac => \inst4|ALT_INV_ep.sready~q\,
	datad => \inst4|ALT_INV_Equal2~0_combout\,
	dataf => \inst4|ALT_INV_cmd_addr\(1),
	combout => \inst4|Selector1~0_combout\);

-- Location: FF_X84_Y7_N50
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

-- Location: MLABCELL_X84_Y7_N24
\inst4|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector2~0_combout\ = ( \inst4|ep.save~q\ & ( ((!\inst4|sr_dout\(13)) # (\inst4|ep.idle~q\)) # (\inst4|sr_dout\(12)) ) ) # ( !\inst4|ep.save~q\ & ( \inst4|ep.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sr_dout\(12),
	datab => \inst4|ALT_INV_sr_dout\(13),
	datac => \inst4|ALT_INV_ep.idle~q\,
	dataf => \inst4|ALT_INV_ep.save~q\,
	combout => \inst4|Selector2~0_combout\);

-- Location: FF_X84_Y7_N25
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

-- Location: MLABCELL_X84_Y7_N42
\inst4|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = ( \inst4|cs_cycle\(3) & ( \inst4|ep.rd1~q\ & ( (((!\inst4|cs_cycle\(2)) # (!\inst4|cs_cycle\(1))) # (\inst4|ep.rd0~q\)) # (\inst4|cs_cycle\(0)) ) ) ) # ( !\inst4|cs_cycle\(3) & ( \inst4|ep.rd1~q\ ) ) # ( \inst4|cs_cycle\(3) & 
-- ( !\inst4|ep.rd1~q\ & ( \inst4|ep.rd0~q\ ) ) ) # ( !\inst4|cs_cycle\(3) & ( !\inst4|ep.rd1~q\ & ( \inst4|ep.rd0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(0),
	datab => \inst4|ALT_INV_ep.rd0~q\,
	datac => \inst4|ALT_INV_cs_cycle\(2),
	datad => \inst4|ALT_INV_cs_cycle\(1),
	datae => \inst4|ALT_INV_cs_cycle\(3),
	dataf => \inst4|ALT_INV_ep.rd1~q\,
	combout => \inst4|Selector3~0_combout\);

-- Location: FF_X84_Y7_N47
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

-- Location: MLABCELL_X84_Y7_N33
\inst4|cs_cycle[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[0]~0_combout\ = ( \inst4|ep.conf1~q\ & ( !\inst4|cs_cycle\(0) ) ) # ( !\inst4|ep.conf1~q\ & ( !\inst4|cs_cycle\(0) $ (((!\inst4|ep.save~q\ & !\inst4|ep.rd1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.save~q\,
	datac => \inst4|ALT_INV_ep.rd1~q\,
	datad => \inst4|ALT_INV_cs_cycle\(0),
	dataf => \inst4|ALT_INV_ep.conf1~q\,
	combout => \inst4|cs_cycle[0]~0_combout\);

-- Location: FF_X84_Y7_N56
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

-- Location: MLABCELL_X84_Y7_N21
\inst4|es.save~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|es.save~0_combout\ = ( \inst4|cs_cycle\(2) & ( (!\inst4|cs_cycle\(0) & (\inst4|cs_cycle\(1) & (\inst4|cs_cycle\(3) & \inst4|ep.rd1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cs_cycle\(0),
	datab => \inst4|ALT_INV_cs_cycle\(1),
	datac => \inst4|ALT_INV_cs_cycle\(3),
	datad => \inst4|ALT_INV_ep.rd1~q\,
	dataf => \inst4|ALT_INV_cs_cycle\(2),
	combout => \inst4|es.save~0_combout\);

-- Location: FF_X84_Y7_N22
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

-- Location: MLABCELL_X82_Y7_N30
\inst4|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~0_combout\ = ( !\inst4|sr_dout\(12) & ( !\inst4|sr_dout\(13) & ( \inst4|ep.save~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.save~q\,
	datae => \inst4|ALT_INV_sr_dout\(12),
	dataf => \inst4|ALT_INV_sr_dout\(13),
	combout => \inst4|Decoder0~0_combout\);

-- Location: MLABCELL_X84_Y7_N30
\inst4|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~1_combout\ = ( !\inst4|sr_dout\(13) & ( (\inst4|ep.save~q\ & \inst4|sr_dout\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.save~q\,
	datad => \inst4|ALT_INV_sr_dout\(12),
	dataf => \inst4|ALT_INV_sr_dout\(13),
	combout => \inst4|Decoder0~1_combout\);

-- Location: FF_X87_Y6_N37
\inst4|ch_on[1][11]\ : dffeas
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
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][11]~q\);

-- Location: FF_X83_Y6_N50
\inst4|ch_on[1][10]\ : dffeas
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
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][10]~q\);

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

-- Location: FF_X87_Y6_N35
\inst2|adcdats\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AUD_ADCDAT~input_o\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
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

-- Location: FF_X88_Y7_N35
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

-- Location: LABCELL_X88_Y7_N6
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

-- Location: FF_X88_Y7_N7
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

-- Location: LABCELL_X88_Y7_N3
\inst2|cbits[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[1]~0_combout\ = ( \inst2|cbits\(1) & ( \inst2|cbits\(0) & ( !\inst2|ep.e3~q\ ) ) ) # ( !\inst2|cbits\(1) & ( \inst2|cbits\(0) & ( \inst2|ep.e3~q\ ) ) ) # ( \inst2|cbits\(1) & ( !\inst2|cbits\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ep.e3~q\,
	datae => \inst2|ALT_INV_cbits\(1),
	dataf => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|cbits[1]~0_combout\);

-- Location: FF_X88_Y7_N4
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

-- Location: LABCELL_X88_Y7_N18
\inst2|cbits[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[2]~2_combout\ = ( \inst2|cbits\(2) & ( \inst2|cbits\(0) & ( (!\inst2|ep.e3~q\) # (!\inst2|cbits\(1)) ) ) ) # ( !\inst2|cbits\(2) & ( \inst2|cbits\(0) & ( (\inst2|ep.e3~q\ & \inst2|cbits\(1)) ) ) ) # ( \inst2|cbits\(2) & ( !\inst2|cbits\(0) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000001011111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ep.e3~q\,
	datac => \inst2|ALT_INV_cbits\(1),
	datae => \inst2|ALT_INV_cbits\(2),
	dataf => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|cbits[2]~2_combout\);

-- Location: FF_X88_Y7_N20
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

-- Location: FF_X88_Y7_N19
\inst2|cbits[2]~DUPLICATE\ : dffeas
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
	q => \inst2|cbits[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y7_N12
\inst2|cbits[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cbits[3]~1_combout\ = ( \inst2|cbits\(3) & ( \inst2|cbits\(0) & ( (!\inst2|ep.e3~q\) # ((!\inst2|cbits[2]~DUPLICATE_q\) # (!\inst2|cbits\(1))) ) ) ) # ( !\inst2|cbits\(3) & ( \inst2|cbits\(0) & ( (\inst2|ep.e3~q\ & (\inst2|cbits[2]~DUPLICATE_q\ & 
-- \inst2|cbits\(1))) ) ) ) # ( \inst2|cbits\(3) & ( !\inst2|cbits\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ep.e3~q\,
	datab => \inst2|ALT_INV_cbits[2]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_cbits\(1),
	datae => \inst2|ALT_INV_cbits\(3),
	dataf => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|cbits[3]~1_combout\);

-- Location: FF_X88_Y7_N14
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

-- Location: FF_X88_Y7_N5
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

-- Location: LABCELL_X88_Y7_N39
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

-- Location: LABCELL_X88_Y7_N42
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

-- Location: FF_X88_Y7_N44
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

-- Location: LABCELL_X88_Y7_N48
\inst2|adclrcs~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|adclrcs~feeder_combout\ = ( \AUD_ADCLRCK~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_AUD_ADCLRCK~input_o\,
	combout => \inst2|adclrcs~feeder_combout\);

-- Location: FF_X88_Y7_N50
\inst2|adclrcs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|adclrcs~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|adclrcs~q\);

-- Location: LABCELL_X88_Y7_N57
\inst2|es.e5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|es.e5~0_combout\ = ( \inst2|cbits\(1) & ( \inst2|cbits\(0) & ( (\inst2|ep.e3~q\ & (\inst2|cbits\(3) & \inst2|cbits[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ep.e3~q\,
	datab => \inst2|ALT_INV_cbits\(3),
	datac => \inst2|ALT_INV_cbits[2]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_cbits\(1),
	dataf => \inst2|ALT_INV_cbits\(0),
	combout => \inst2|es.e5~0_combout\);

-- Location: FF_X88_Y7_N59
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

-- Location: LABCELL_X88_Y7_N27
\inst2|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (!\inst2|ep.e5~q\ & ((!\inst2|adclrcs~q\) # (\inst2|ep.e0~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100100010001100110010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_adclrcs~q\,
	datab => \inst2|ALT_INV_ep.e5~q\,
	datad => \inst2|ALT_INV_ep.e0~q\,
	combout => \inst2|Selector0~0_combout\);

-- Location: FF_X88_Y7_N29
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

-- Location: LABCELL_X88_Y7_N24
\inst2|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = ( \inst2|bclks~q\ & ( ((!\inst2|adclrcs~q\ & !\inst2|ep.e0~q\)) # (\inst2|ep.e1~q\) ) ) # ( !\inst2|bclks~q\ & ( (!\inst2|adclrcs~q\ & ((!\inst2|ep.e0~q\) # (\inst2|ep.e1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_adclrcs~q\,
	datac => \inst2|ALT_INV_ep.e0~q\,
	datad => \inst2|ALT_INV_ep.e1~q\,
	dataf => \inst2|ALT_INV_bclks~q\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X88_Y7_N25
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

-- Location: LABCELL_X88_Y7_N45
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

-- Location: FF_X88_Y7_N47
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

-- Location: LABCELL_X88_Y7_N36
\inst2|es.e3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|es.e3~0_combout\ = ( \inst2|bclks~q\ & ( \inst2|ep.e2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_ep.e2~q\,
	dataf => \inst2|ALT_INV_bclks~q\,
	combout => \inst2|es.e3~0_combout\);

-- Location: FF_X88_Y7_N38
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

-- Location: FF_X84_Y6_N8
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

-- Location: FF_X83_Y6_N14
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

-- Location: FF_X84_Y6_N2
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

-- Location: FF_X84_Y6_N56
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

-- Location: FF_X83_Y6_N43
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

-- Location: FF_X83_Y6_N35
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

-- Location: LABCELL_X83_Y7_N6
\inst2|srdato[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|srdato[6]~feeder_combout\ = ( \inst2|srdato\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_srdato\(5),
	combout => \inst2|srdato[6]~feeder_combout\);

-- Location: FF_X83_Y7_N8
\inst2|srdato[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|srdato[6]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato[6]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N30
\inst2|srdato[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|srdato[7]~feeder_combout\ = \inst2|srdato[6]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_srdato[6]~DUPLICATE_q\,
	combout => \inst2|srdato[7]~feeder_combout\);

-- Location: FF_X83_Y7_N31
\inst2|srdato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|srdato[7]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(7));

-- Location: FF_X87_Y6_N52
\inst2|srdato[8]~DUPLICATE\ : dffeas
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
	q => \inst2|srdato[8]~DUPLICATE_q\);

-- Location: FF_X87_Y6_N16
\inst2|srdato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato[8]~DUPLICATE_q\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(9));

-- Location: FF_X87_Y6_N2
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

-- Location: FF_X83_Y6_N17
\inst2|srdato[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(10),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(11));

-- Location: FF_X84_Y6_N59
\inst2|srdato[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(11),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(12));

-- Location: FF_X84_Y6_N38
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

-- Location: FF_X84_Y6_N41
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

-- Location: MLABCELL_X84_Y6_N36
\inst5|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~5_combout\ = ( !\inst2|srdato\(11) & ( (!\inst2|srdato\(13) & (!\inst2|srdato\(14) & !\inst2|srdato\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(13),
	datac => \inst2|ALT_INV_srdato\(14),
	datad => \inst2|ALT_INV_srdato\(12),
	dataf => \inst2|ALT_INV_srdato\(11),
	combout => \inst5|LessThan1~5_combout\);

-- Location: FF_X87_Y6_N59
\inst4|ch_on[1][9]\ : dffeas
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
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][9]~q\);

-- Location: MLABCELL_X87_Y6_N30
\inst5|LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~6_combout\ = (!\inst4|ch_on[1][9]~q\ & \inst2|srdato[8]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ch_on[1][9]~q\,
	datad => \inst2|ALT_INV_srdato[8]~DUPLICATE_q\,
	combout => \inst5|LessThan1~6_combout\);

-- Location: MLABCELL_X87_Y6_N54
\inst5|LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~7_combout\ = ( \inst2|srdato\(10) & ( \inst5|LessThan1~6_combout\ & ( (\inst4|ch_on[1][11]~q\ & (\inst4|ch_on[1][10]~q\ & (\inst5|LessThan1~5_combout\ & !\inst2|srdato\(9)))) ) ) ) # ( !\inst2|srdato\(10) & ( \inst5|LessThan1~6_combout\ & 
-- ( (\inst5|LessThan1~5_combout\ & (((\inst4|ch_on[1][10]~q\ & !\inst2|srdato\(9))) # (\inst4|ch_on[1][11]~q\))) ) ) ) # ( \inst2|srdato\(10) & ( !\inst5|LessThan1~6_combout\ & ( (\inst4|ch_on[1][11]~q\ & (\inst5|LessThan1~5_combout\ & ((!\inst2|srdato\(9)) 
-- # (\inst4|ch_on[1][10]~q\)))) ) ) ) # ( !\inst2|srdato\(10) & ( !\inst5|LessThan1~6_combout\ & ( (\inst5|LessThan1~5_combout\ & (((!\inst2|srdato\(9)) # (\inst4|ch_on[1][10]~q\)) # (\inst4|ch_on[1][11]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000001010000000100000111000001010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ch_on[1][11]~q\,
	datab => \inst4|ALT_INV_ch_on[1][10]~q\,
	datac => \inst5|ALT_INV_LessThan1~5_combout\,
	datad => \inst2|ALT_INV_srdato\(9),
	datae => \inst2|ALT_INV_srdato\(10),
	dataf => \inst5|ALT_INV_LessThan1~6_combout\,
	combout => \inst5|LessThan1~7_combout\);

-- Location: FF_X84_Y6_N47
\inst2|srdato[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst2|srdato\(14),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(15));

-- Location: FF_X83_Y6_N26
\inst4|ch_on[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][8]~q\);

-- Location: FF_X84_Y6_N53
\inst4|ch_on[1][7]\ : dffeas
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
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][7]~q\);

-- Location: FF_X83_Y6_N41
\inst4|ch_on[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(6),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][6]~q\);

-- Location: FF_X83_Y6_N20
\inst4|ch_on[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][5]~q\);

-- Location: FF_X83_Y6_N23
\inst4|ch_on[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(4),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][4]~q\);

-- Location: MLABCELL_X82_Y6_N0
\inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~17_sumout\ = SUM(( !\inst4|ch_on[1][4]~q\ ) + ( VCC ) + ( !VCC ))
-- \inst5|Add0~18\ = CARRY(( !\inst4|ch_on[1][4]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ch_on[1][4]~q\,
	cin => GND,
	sumout => \inst5|Add0~17_sumout\,
	cout => \inst5|Add0~18\);

-- Location: MLABCELL_X82_Y6_N3
\inst5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~13_sumout\ = SUM(( !\inst4|ch_on[1][5]~q\ ) + ( GND ) + ( \inst5|Add0~18\ ))
-- \inst5|Add0~14\ = CARRY(( !\inst4|ch_on[1][5]~q\ ) + ( GND ) + ( \inst5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ch_on[1][5]~q\,
	cin => \inst5|Add0~18\,
	sumout => \inst5|Add0~13_sumout\,
	cout => \inst5|Add0~14\);

-- Location: MLABCELL_X82_Y6_N6
\inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~9_sumout\ = SUM(( !\inst4|ch_on[1][6]~q\ ) + ( GND ) + ( \inst5|Add0~14\ ))
-- \inst5|Add0~10\ = CARRY(( !\inst4|ch_on[1][6]~q\ ) + ( GND ) + ( \inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ch_on[1][6]~q\,
	cin => \inst5|Add0~14\,
	sumout => \inst5|Add0~9_sumout\,
	cout => \inst5|Add0~10\);

-- Location: MLABCELL_X82_Y6_N9
\inst5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~5_sumout\ = SUM(( !\inst4|ch_on[1][7]~q\ ) + ( GND ) + ( \inst5|Add0~10\ ))
-- \inst5|Add0~6\ = CARRY(( !\inst4|ch_on[1][7]~q\ ) + ( GND ) + ( \inst5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ch_on[1][7]~q\,
	cin => \inst5|Add0~10\,
	sumout => \inst5|Add0~5_sumout\,
	cout => \inst5|Add0~6\);

-- Location: MLABCELL_X82_Y6_N12
\inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_sumout\ = SUM(( !\inst4|ch_on[1][8]~q\ ) + ( GND ) + ( \inst5|Add0~6\ ))
-- \inst5|Add0~2\ = CARRY(( !\inst4|ch_on[1][8]~q\ ) + ( GND ) + ( \inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ch_on[1][8]~q\,
	cin => \inst5|Add0~6\,
	sumout => \inst5|Add0~1_sumout\,
	cout => \inst5|Add0~2\);

-- Location: MLABCELL_X82_Y6_N15
\inst5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~29_sumout\ = SUM(( !\inst4|ch_on[1][9]~q\ ) + ( GND ) + ( \inst5|Add0~2\ ))
-- \inst5|Add0~30\ = CARRY(( !\inst4|ch_on[1][9]~q\ ) + ( GND ) + ( \inst5|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ch_on[1][9]~q\,
	cin => \inst5|Add0~2\,
	sumout => \inst5|Add0~29_sumout\,
	cout => \inst5|Add0~30\);

-- Location: MLABCELL_X82_Y6_N18
\inst5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~25_sumout\ = SUM(( !\inst4|ch_on[1][10]~q\ ) + ( GND ) + ( \inst5|Add0~30\ ))
-- \inst5|Add0~26\ = CARRY(( !\inst4|ch_on[1][10]~q\ ) + ( GND ) + ( \inst5|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ch_on[1][10]~q\,
	cin => \inst5|Add0~30\,
	sumout => \inst5|Add0~25_sumout\,
	cout => \inst5|Add0~26\);

-- Location: MLABCELL_X82_Y6_N21
\inst5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~21_sumout\ = SUM(( !\inst4|ch_on[1][11]~q\ ) + ( GND ) + ( \inst5|Add0~26\ ))
-- \inst5|Add0~22\ = CARRY(( !\inst4|ch_on[1][11]~q\ ) + ( GND ) + ( \inst5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ch_on[1][11]~q\,
	cin => \inst5|Add0~26\,
	sumout => \inst5|Add0~21_sumout\,
	cout => \inst5|Add0~22\);

-- Location: MLABCELL_X87_Y6_N48
\inst5|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~4_combout\ = ( \inst5|Add0~21_sumout\ & ( \inst2|srdato\(9) & ( (!\inst2|srdato\(10)) # ((\inst5|Add0~29_sumout\ & (\inst5|Add0~25_sumout\ & !\inst2|srdato[8]~DUPLICATE_q\))) ) ) ) # ( !\inst5|Add0~21_sumout\ & ( \inst2|srdato\(9) & ( 
-- (!\inst2|srdato\(10) & (\inst5|Add0~29_sumout\ & (\inst5|Add0~25_sumout\ & !\inst2|srdato[8]~DUPLICATE_q\))) ) ) ) # ( \inst5|Add0~21_sumout\ & ( !\inst2|srdato\(9) & ( (!\inst2|srdato\(10)) # (((\inst5|Add0~29_sumout\ & !\inst2|srdato[8]~DUPLICATE_q\)) # 
-- (\inst5|Add0~25_sumout\)) ) ) ) # ( !\inst5|Add0~21_sumout\ & ( !\inst2|srdato\(9) & ( (!\inst2|srdato\(10) & (((\inst5|Add0~29_sumout\ & !\inst2|srdato[8]~DUPLICATE_q\)) # (\inst5|Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000001010101111111010111100000010000000001010101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(10),
	datab => \inst5|ALT_INV_Add0~29_sumout\,
	datac => \inst5|ALT_INV_Add0~25_sumout\,
	datad => \inst2|ALT_INV_srdato[8]~DUPLICATE_q\,
	datae => \inst5|ALT_INV_Add0~21_sumout\,
	dataf => \inst2|ALT_INV_srdato\(9),
	combout => \inst5|LessThan0~4_combout\);

-- Location: LABCELL_X83_Y6_N30
\inst5|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = ( !\inst2|srdato\(3) & ( \inst2|srdato\(4) & ( (\inst5|Add0~17_sumout\ & (\inst5|Add0~13_sumout\ & (!\inst2|srdato\(5) $ (\inst5|Add0~9_sumout\)))) ) ) ) # ( \inst2|srdato\(3) & ( !\inst2|srdato\(4) & ( 
-- (\inst5|Add0~13_sumout\ & (!\inst2|srdato\(5) $ (\inst5|Add0~9_sumout\))) ) ) ) # ( !\inst2|srdato\(3) & ( !\inst2|srdato\(4) & ( (!\inst5|Add0~17_sumout\ & (\inst5|Add0~13_sumout\ & (!\inst2|srdato\(5) $ (\inst5|Add0~9_sumout\)))) # 
-- (\inst5|Add0~17_sumout\ & (!\inst2|srdato\(5) $ ((\inst5|Add0~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110100101000000001010010100000000001000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(5),
	datab => \inst5|ALT_INV_Add0~17_sumout\,
	datac => \inst5|ALT_INV_Add0~9_sumout\,
	datad => \inst5|ALT_INV_Add0~13_sumout\,
	datae => \inst2|ALT_INV_srdato\(3),
	dataf => \inst2|ALT_INV_srdato\(4),
	combout => \inst5|LessThan0~1_combout\);

-- Location: FF_X83_Y7_N7
\inst2|srdato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|srdato[6]~feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(6));

-- Location: LABCELL_X83_Y6_N0
\inst5|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = ( \inst2|srdato\(6) & ( (\inst5|Add0~5_sumout\ & (!\inst2|srdato\(7) $ (\inst5|Add0~1_sumout\))) ) ) # ( !\inst2|srdato\(6) & ( (!\inst5|Add0~5_sumout\ & (!\inst2|srdato\(7) $ (\inst5|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(7),
	datab => \inst5|ALT_INV_Add0~5_sumout\,
	datac => \inst5|ALT_INV_Add0~1_sumout\,
	dataf => \inst2|ALT_INV_srdato\(6),
	combout => \inst5|LessThan0~0_combout\);

-- Location: MLABCELL_X82_Y6_N24
\inst5|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~33_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst5|Add0~22\ ))
-- \inst5|Add0~34\ = CARRY(( VCC ) + ( GND ) + ( \inst5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Add0~22\,
	sumout => \inst5|Add0~33_sumout\,
	cout => \inst5|Add0~34\);

-- Location: LABCELL_X83_Y6_N15
\inst5|signal_dist~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~0_combout\ = ( \inst2|srdato\(15) & ( !\inst5|Add0~33_sumout\ $ (\inst2|srdato\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_Add0~33_sumout\,
	datad => \inst2|ALT_INV_srdato\(11),
	dataf => \inst2|ALT_INV_srdato\(15),
	combout => \inst5|signal_dist~0_combout\);

-- Location: LABCELL_X83_Y6_N45
\inst5|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~2_combout\ = ( \inst2|srdato\(7) & ( \inst2|srdato\(6) & ( (\inst5|Add0~1_sumout\ & (!\inst2|srdato\(5) & (\inst5|Add0~5_sumout\ & \inst5|Add0~9_sumout\))) ) ) ) # ( !\inst2|srdato\(7) & ( \inst2|srdato\(6) & ( ((!\inst2|srdato\(5) & 
-- (\inst5|Add0~5_sumout\ & \inst5|Add0~9_sumout\))) # (\inst5|Add0~1_sumout\) ) ) ) # ( \inst2|srdato\(7) & ( !\inst2|srdato\(6) & ( (\inst5|Add0~1_sumout\ & (((!\inst2|srdato\(5) & \inst5|Add0~9_sumout\)) # (\inst5|Add0~5_sumout\))) ) ) ) # ( 
-- !\inst2|srdato\(7) & ( !\inst2|srdato\(6) & ( (((!\inst2|srdato\(5) & \inst5|Add0~9_sumout\)) # (\inst5|Add0~5_sumout\)) # (\inst5|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111011111000001010100010101010101010111010000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~1_sumout\,
	datab => \inst2|ALT_INV_srdato\(5),
	datac => \inst5|ALT_INV_Add0~5_sumout\,
	datad => \inst5|ALT_INV_Add0~9_sumout\,
	datae => \inst2|ALT_INV_srdato\(7),
	dataf => \inst2|ALT_INV_srdato\(6),
	combout => \inst5|LessThan0~2_combout\);

-- Location: MLABCELL_X87_Y6_N3
\inst5|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~3_combout\ = ( \inst2|srdato\(10) & ( \inst2|srdato\(9) & ( (\inst5|Add0~25_sumout\ & (\inst5|Add0~21_sumout\ & (!\inst2|srdato[8]~DUPLICATE_q\ $ (\inst5|Add0~29_sumout\)))) ) ) ) # ( !\inst2|srdato\(10) & ( \inst2|srdato\(9) & ( 
-- (\inst5|Add0~25_sumout\ & (!\inst5|Add0~21_sumout\ & (!\inst2|srdato[8]~DUPLICATE_q\ $ (\inst5|Add0~29_sumout\)))) ) ) ) # ( \inst2|srdato\(10) & ( !\inst2|srdato\(9) & ( (!\inst5|Add0~25_sumout\ & (\inst5|Add0~21_sumout\ & (!\inst2|srdato[8]~DUPLICATE_q\ 
-- $ (\inst5|Add0~29_sumout\)))) ) ) ) # ( !\inst2|srdato\(10) & ( !\inst2|srdato\(9) & ( (!\inst5|Add0~25_sumout\ & (!\inst5|Add0~21_sumout\ & (!\inst2|srdato[8]~DUPLICATE_q\ $ (\inst5|Add0~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~25_sumout\,
	datab => \inst2|ALT_INV_srdato[8]~DUPLICATE_q\,
	datac => \inst5|ALT_INV_Add0~29_sumout\,
	datad => \inst5|ALT_INV_Add0~21_sumout\,
	datae => \inst2|ALT_INV_srdato\(10),
	dataf => \inst2|ALT_INV_srdato\(9),
	combout => \inst5|LessThan0~3_combout\);

-- Location: LABCELL_X83_Y6_N6
\inst5|signal_dist~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~1_combout\ = ( \inst5|LessThan0~2_combout\ & ( \inst5|LessThan0~3_combout\ & ( \inst5|signal_dist~0_combout\ ) ) ) # ( !\inst5|LessThan0~2_combout\ & ( \inst5|LessThan0~3_combout\ & ( (\inst5|signal_dist~0_combout\ & 
-- (((\inst5|LessThan0~1_combout\ & \inst5|LessThan0~0_combout\)) # (\inst5|LessThan0~4_combout\))) ) ) ) # ( \inst5|LessThan0~2_combout\ & ( !\inst5|LessThan0~3_combout\ & ( (\inst5|LessThan0~4_combout\ & \inst5|signal_dist~0_combout\) ) ) ) # ( 
-- !\inst5|LessThan0~2_combout\ & ( !\inst5|LessThan0~3_combout\ & ( (\inst5|LessThan0~4_combout\ & \inst5|signal_dist~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~4_combout\,
	datab => \inst5|ALT_INV_LessThan0~1_combout\,
	datac => \inst5|ALT_INV_LessThan0~0_combout\,
	datad => \inst5|ALT_INV_signal_dist~0_combout\,
	datae => \inst5|ALT_INV_LessThan0~2_combout\,
	dataf => \inst5|ALT_INV_LessThan0~3_combout\,
	combout => \inst5|signal_dist~1_combout\);

-- Location: LABCELL_X83_Y7_N51
\inst5|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~2_combout\ = ( \inst4|ch_on[1][8]~q\ & ( \inst2|srdato\(5) & ( (\inst2|srdato\(7) & ((!\inst4|ch_on[1][6]~q\ & ((!\inst4|ch_on[1][7]~q\) # (\inst2|srdato\(6)))) # (\inst4|ch_on[1][6]~q\ & (!\inst4|ch_on[1][7]~q\ & \inst2|srdato\(6))))) ) 
-- ) ) # ( !\inst4|ch_on[1][8]~q\ & ( \inst2|srdato\(5) & ( ((!\inst4|ch_on[1][6]~q\ & ((!\inst4|ch_on[1][7]~q\) # (\inst2|srdato\(6)))) # (\inst4|ch_on[1][6]~q\ & (!\inst4|ch_on[1][7]~q\ & \inst2|srdato\(6)))) # (\inst2|srdato\(7)) ) ) ) # ( 
-- \inst4|ch_on[1][8]~q\ & ( !\inst2|srdato\(5) & ( (\inst2|srdato\(7) & (!\inst4|ch_on[1][7]~q\ & \inst2|srdato\(6))) ) ) ) # ( !\inst4|ch_on[1][8]~q\ & ( !\inst2|srdato\(5) & ( ((!\inst4|ch_on[1][7]~q\ & \inst2|srdato\(6))) # (\inst2|srdato\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101000000000101000011010101111111010100000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(7),
	datab => \inst4|ALT_INV_ch_on[1][6]~q\,
	datac => \inst4|ALT_INV_ch_on[1][7]~q\,
	datad => \inst2|ALT_INV_srdato\(6),
	datae => \inst4|ALT_INV_ch_on[1][8]~q\,
	dataf => \inst2|ALT_INV_srdato\(5),
	combout => \inst5|LessThan1~2_combout\);

-- Location: FF_X87_Y6_N53
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

-- Location: MLABCELL_X87_Y6_N12
\inst5|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~3_combout\ = ( \inst4|ch_on[1][10]~q\ & ( \inst2|srdato\(8) & ( (\inst2|srdato\(9) & (\inst4|ch_on[1][9]~q\ & (!\inst2|srdato\(10) $ (\inst4|ch_on[1][11]~q\)))) ) ) ) # ( !\inst4|ch_on[1][10]~q\ & ( \inst2|srdato\(8) & ( 
-- (!\inst2|srdato\(9) & (\inst4|ch_on[1][9]~q\ & (!\inst2|srdato\(10) $ (\inst4|ch_on[1][11]~q\)))) ) ) ) # ( \inst4|ch_on[1][10]~q\ & ( !\inst2|srdato\(8) & ( (\inst2|srdato\(9) & (!\inst4|ch_on[1][9]~q\ & (!\inst2|srdato\(10) $ (\inst4|ch_on[1][11]~q\)))) 
-- ) ) ) # ( !\inst4|ch_on[1][10]~q\ & ( !\inst2|srdato\(8) & ( (!\inst2|srdato\(9) & (!\inst4|ch_on[1][9]~q\ & (!\inst2|srdato\(10) $ (\inst4|ch_on[1][11]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(10),
	datab => \inst2|ALT_INV_srdato\(9),
	datac => \inst4|ALT_INV_ch_on[1][11]~q\,
	datad => \inst4|ALT_INV_ch_on[1][9]~q\,
	datae => \inst4|ALT_INV_ch_on[1][10]~q\,
	dataf => \inst2|ALT_INV_srdato\(8),
	combout => \inst5|LessThan1~3_combout\);

-- Location: LABCELL_X83_Y6_N12
\inst5|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~1_combout\ = ( \inst2|srdato\(1) & ( (\inst4|ch_on[1][4]~q\ & !\inst2|srdato\(3)) ) ) # ( !\inst2|srdato\(1) & ( (!\inst4|ch_on[1][4]~q\ & (!\inst2|srdato\(3) & (!\inst2|srdato\(2) & !\inst2|srdato\(0)))) # (\inst4|ch_on[1][4]~q\ & 
-- ((!\inst2|srdato\(3)) # ((!\inst2|srdato\(2) & !\inst2|srdato\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010001000100110101000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ch_on[1][4]~q\,
	datab => \inst2|ALT_INV_srdato\(3),
	datac => \inst2|ALT_INV_srdato\(2),
	datad => \inst2|ALT_INV_srdato\(0),
	dataf => \inst2|ALT_INV_srdato\(1),
	combout => \inst5|LessThan1~1_combout\);

-- Location: LABCELL_X83_Y7_N15
\inst5|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = ( \inst4|ch_on[1][8]~q\ & ( \inst2|srdato\(5) & ( (\inst2|srdato\(7) & (\inst4|ch_on[1][6]~q\ & (!\inst4|ch_on[1][7]~q\ $ (\inst2|srdato\(6))))) ) ) ) # ( !\inst4|ch_on[1][8]~q\ & ( \inst2|srdato\(5) & ( (!\inst2|srdato\(7) & 
-- (\inst4|ch_on[1][6]~q\ & (!\inst4|ch_on[1][7]~q\ $ (\inst2|srdato\(6))))) ) ) ) # ( \inst4|ch_on[1][8]~q\ & ( !\inst2|srdato\(5) & ( (\inst2|srdato\(7) & (!\inst4|ch_on[1][6]~q\ & (!\inst4|ch_on[1][7]~q\ $ (\inst2|srdato\(6))))) ) ) ) # ( 
-- !\inst4|ch_on[1][8]~q\ & ( !\inst2|srdato\(5) & ( (!\inst2|srdato\(7) & (!\inst4|ch_on[1][6]~q\ & (!\inst4|ch_on[1][7]~q\ $ (\inst2|srdato\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(7),
	datab => \inst4|ALT_INV_ch_on[1][6]~q\,
	datac => \inst4|ALT_INV_ch_on[1][7]~q\,
	datad => \inst2|ALT_INV_srdato\(6),
	datae => \inst4|ALT_INV_ch_on[1][8]~q\,
	dataf => \inst2|ALT_INV_srdato\(5),
	combout => \inst5|LessThan1~0_combout\);

-- Location: LABCELL_X83_Y7_N24
\inst5|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~4_combout\ = ( \inst5|LessThan1~1_combout\ & ( \inst5|LessThan1~0_combout\ & ( (\inst5|LessThan1~3_combout\ & (((!\inst4|ch_on[1][5]~q\ & \inst2|srdato\(4))) # (\inst5|LessThan1~2_combout\))) ) ) ) # ( !\inst5|LessThan1~1_combout\ & ( 
-- \inst5|LessThan1~0_combout\ & ( (\inst5|LessThan1~3_combout\ & (((!\inst4|ch_on[1][5]~q\) # (\inst2|srdato\(4))) # (\inst5|LessThan1~2_combout\))) ) ) ) # ( \inst5|LessThan1~1_combout\ & ( !\inst5|LessThan1~0_combout\ & ( (\inst5|LessThan1~2_combout\ & 
-- \inst5|LessThan1~3_combout\) ) ) ) # ( !\inst5|LessThan1~1_combout\ & ( !\inst5|LessThan1~0_combout\ & ( (\inst5|LessThan1~2_combout\ & \inst5|LessThan1~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000110111110000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan1~2_combout\,
	datab => \inst4|ALT_INV_ch_on[1][5]~q\,
	datac => \inst2|ALT_INV_srdato\(4),
	datad => \inst5|ALT_INV_LessThan1~3_combout\,
	datae => \inst5|ALT_INV_LessThan1~1_combout\,
	dataf => \inst5|ALT_INV_LessThan1~0_combout\,
	combout => \inst5|LessThan1~4_combout\);

-- Location: MLABCELL_X82_Y6_N27
\inst5|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~37_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst5|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Add0~34\,
	sumout => \inst5|Add0~37_sumout\);

-- Location: MLABCELL_X84_Y6_N39
\inst5|signal_dist~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~2_combout\ = ( \inst2|srdato\(14) & ( (\inst2|srdato\(15) & ((!\inst2|srdato\(12)) # (!\inst2|srdato\(13)))) ) ) # ( !\inst2|srdato\(14) & ( \inst2|srdato\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_srdato\(12),
	datac => \inst2|ALT_INV_srdato\(15),
	datad => \inst2|ALT_INV_srdato\(13),
	dataf => \inst2|ALT_INV_srdato\(14),
	combout => \inst5|signal_dist~2_combout\);

-- Location: MLABCELL_X84_Y6_N45
\inst5|signal_dist~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~3_combout\ = ( !\inst5|signal_dist~2_combout\ & ( (!\inst2|srdato\(15)) # ((\inst5|Add0~37_sumout\ & ((!\inst5|Add0~33_sumout\) # (\inst2|srdato\(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100100011111111110010001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~33_sumout\,
	datab => \inst5|ALT_INV_Add0~37_sumout\,
	datac => \inst2|ALT_INV_srdato\(11),
	datad => \inst2|ALT_INV_srdato\(15),
	dataf => \inst5|ALT_INV_signal_dist~2_combout\,
	combout => \inst5|signal_dist~3_combout\);

-- Location: MLABCELL_X84_Y6_N3
\inst5|signal_dist[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[0]~4_combout\ = ( \inst5|signal_dist~3_combout\ & ( \inst2|srdato\(0) & ( (!\inst5|signal_dist~1_combout\ & (((\inst5|LessThan1~7_combout\ & !\inst5|LessThan1~4_combout\)) # (\inst2|srdato\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan1~7_combout\,
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_signal_dist~1_combout\,
	datad => \inst5|ALT_INV_LessThan1~4_combout\,
	datae => \inst5|ALT_INV_signal_dist~3_combout\,
	dataf => \inst2|ALT_INV_srdato\(0),
	combout => \inst5|signal_dist[0]~4_combout\);

-- Location: MLABCELL_X84_Y6_N9
\inst5|signal_dist[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[1]~5_combout\ = ( \inst2|srdato\(1) & ( \inst5|LessThan1~4_combout\ & ( (\inst5|signal_dist~3_combout\ & (\inst2|srdato\(15) & !\inst5|signal_dist~1_combout\)) ) ) ) # ( \inst2|srdato\(1) & ( !\inst5|LessThan1~4_combout\ & ( 
-- (\inst5|signal_dist~3_combout\ & (!\inst5|signal_dist~1_combout\ & ((\inst2|srdato\(15)) # (\inst5|LessThan1~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100110000000000000000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan1~7_combout\,
	datab => \inst5|ALT_INV_signal_dist~3_combout\,
	datac => \inst2|ALT_INV_srdato\(15),
	datad => \inst5|ALT_INV_signal_dist~1_combout\,
	datae => \inst2|ALT_INV_srdato\(1),
	dataf => \inst5|ALT_INV_LessThan1~4_combout\,
	combout => \inst5|signal_dist[1]~5_combout\);

-- Location: MLABCELL_X84_Y6_N0
\inst5|signal_dist[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[2]~6_combout\ = ( \inst2|srdato\(2) & ( \inst5|signal_dist~3_combout\ & ( (!\inst5|signal_dist~1_combout\ & (((\inst5|LessThan1~7_combout\ & !\inst5|LessThan1~4_combout\)) # (\inst2|srdato\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan1~7_combout\,
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_LessThan1~4_combout\,
	datad => \inst5|ALT_INV_signal_dist~1_combout\,
	datae => \inst2|ALT_INV_srdato\(2),
	dataf => \inst5|ALT_INV_signal_dist~3_combout\,
	combout => \inst5|signal_dist[2]~6_combout\);

-- Location: LABCELL_X83_Y6_N36
\inst5|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~5_combout\ = ( \inst5|LessThan0~3_combout\ & ( (!\inst5|LessThan0~4_combout\ & (!\inst5|LessThan0~2_combout\ & ((!\inst5|LessThan0~0_combout\) # (!\inst5|LessThan0~1_combout\)))) ) ) # ( !\inst5|LessThan0~3_combout\ & ( 
-- !\inst5|LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~0_combout\,
	datab => \inst5|ALT_INV_LessThan0~1_combout\,
	datac => \inst5|ALT_INV_LessThan0~4_combout\,
	datad => \inst5|ALT_INV_LessThan0~2_combout\,
	dataf => \inst5|ALT_INV_LessThan0~3_combout\,
	combout => \inst5|LessThan0~5_combout\);

-- Location: MLABCELL_X84_Y6_N48
\inst5|signal_dist~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~7_combout\ = (!\inst2|srdato\(15) & ((!\inst5|LessThan1~7_combout\) # (\inst5|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan1~7_combout\,
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_LessThan1~4_combout\,
	combout => \inst5|signal_dist~7_combout\);

-- Location: LABCELL_X83_Y6_N21
\inst5|signal_dist[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[3]~8_combout\ = (!\inst2|srdato\(15) & ((\inst4|ch_on[1][4]~q\))) # (\inst2|srdato\(15) & (\inst5|Add0~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_Add0~17_sumout\,
	datad => \inst4|ALT_INV_ch_on[1][4]~q\,
	combout => \inst5|signal_dist[3]~8_combout\);

-- Location: MLABCELL_X84_Y6_N54
\inst5|signal_dist[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[3]~9_combout\ = ( \inst2|srdato\(3) & ( \inst5|signal_dist[3]~8_combout\ ) ) # ( !\inst2|srdato\(3) & ( \inst5|signal_dist[3]~8_combout\ & ( ((!\inst5|signal_dist~3_combout\) # ((!\inst5|LessThan0~5_combout\ & 
-- \inst5|signal_dist~0_combout\))) # (\inst5|signal_dist~7_combout\) ) ) ) # ( \inst2|srdato\(3) & ( !\inst5|signal_dist[3]~8_combout\ & ( (!\inst5|signal_dist~7_combout\ & (\inst5|signal_dist~3_combout\ & ((!\inst5|signal_dist~0_combout\) # 
-- (\inst5|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101000011111111001011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_signal_dist~7_combout\,
	datad => \inst5|ALT_INV_signal_dist~3_combout\,
	datae => \inst2|ALT_INV_srdato\(3),
	dataf => \inst5|ALT_INV_signal_dist[3]~8_combout\,
	combout => \inst5|signal_dist[3]~9_combout\);

-- Location: LABCELL_X83_Y6_N18
\inst5|signal_dist[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[4]~10_combout\ = (!\inst2|srdato\(15) & ((\inst4|ch_on[1][5]~q\))) # (\inst2|srdato\(15) & (\inst5|Add0~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_Add0~13_sumout\,
	datad => \inst4|ALT_INV_ch_on[1][5]~q\,
	combout => \inst5|signal_dist[4]~10_combout\);

-- Location: LABCELL_X83_Y6_N54
\inst5|signal_dist[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[4]~11_combout\ = ( \inst2|srdato\(4) & ( \inst5|signal_dist[4]~10_combout\ ) ) # ( !\inst2|srdato\(4) & ( \inst5|signal_dist[4]~10_combout\ & ( ((!\inst5|signal_dist~3_combout\) # ((\inst5|signal_dist~0_combout\ & 
-- !\inst5|LessThan0~5_combout\))) # (\inst5|signal_dist~7_combout\) ) ) ) # ( \inst2|srdato\(4) & ( !\inst5|signal_dist[4]~10_combout\ & ( (!\inst5|signal_dist~7_combout\ & (\inst5|signal_dist~3_combout\ & ((!\inst5|signal_dist~0_combout\) # 
-- (\inst5|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000101011110111111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_signal_dist~7_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_signal_dist~3_combout\,
	datad => \inst5|ALT_INV_LessThan0~5_combout\,
	datae => \inst2|ALT_INV_srdato\(4),
	dataf => \inst5|ALT_INV_signal_dist[4]~10_combout\,
	combout => \inst5|signal_dist[4]~11_combout\);

-- Location: LABCELL_X83_Y6_N39
\inst5|signal_dist[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[5]~12_combout\ = ( \inst2|srdato\(15) & ( \inst5|Add0~9_sumout\ ) ) # ( !\inst2|srdato\(15) & ( \inst4|ch_on[1][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_Add0~9_sumout\,
	datad => \inst4|ALT_INV_ch_on[1][6]~q\,
	dataf => \inst2|ALT_INV_srdato\(15),
	combout => \inst5|signal_dist[5]~12_combout\);

-- Location: LABCELL_X83_Y6_N57
\inst5|signal_dist[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[5]~13_combout\ = ( \inst2|srdato\(5) & ( \inst5|signal_dist[5]~12_combout\ ) ) # ( !\inst2|srdato\(5) & ( \inst5|signal_dist[5]~12_combout\ & ( ((!\inst5|signal_dist~3_combout\) # ((\inst5|signal_dist~0_combout\ & 
-- !\inst5|LessThan0~5_combout\))) # (\inst5|signal_dist~7_combout\) ) ) ) # ( \inst2|srdato\(5) & ( !\inst5|signal_dist[5]~12_combout\ & ( (!\inst5|signal_dist~7_combout\ & (\inst5|signal_dist~3_combout\ & ((!\inst5|signal_dist~0_combout\) # 
-- (\inst5|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000101011111111011101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_signal_dist~7_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_LessThan0~5_combout\,
	datad => \inst5|ALT_INV_signal_dist~3_combout\,
	datae => \inst2|ALT_INV_srdato\(5),
	dataf => \inst5|ALT_INV_signal_dist[5]~12_combout\,
	combout => \inst5|signal_dist[5]~13_combout\);

-- Location: MLABCELL_X84_Y6_N42
\inst5|signal_dist[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[6]~14_combout\ = ( \inst4|ch_on[1][7]~q\ & ( (!\inst2|srdato\(15)) # (\inst5|Add0~5_sumout\) ) ) # ( !\inst4|ch_on[1][7]~q\ & ( (\inst5|Add0~5_sumout\ & \inst2|srdato\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_Add0~5_sumout\,
	datad => \inst2|ALT_INV_srdato\(15),
	dataf => \inst4|ALT_INV_ch_on[1][7]~q\,
	combout => \inst5|signal_dist[6]~14_combout\);

-- Location: MLABCELL_X84_Y6_N12
\inst5|signal_dist[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[6]~15_combout\ = ( \inst2|srdato\(6) & ( \inst5|signal_dist[6]~14_combout\ ) ) # ( !\inst2|srdato\(6) & ( \inst5|signal_dist[6]~14_combout\ & ( ((!\inst5|signal_dist~3_combout\) # ((!\inst5|LessThan0~5_combout\ & 
-- \inst5|signal_dist~0_combout\))) # (\inst5|signal_dist~7_combout\) ) ) ) # ( \inst2|srdato\(6) & ( !\inst5|signal_dist[6]~14_combout\ & ( (!\inst5|signal_dist~7_combout\ & (\inst5|signal_dist~3_combout\ & ((!\inst5|signal_dist~0_combout\) # 
-- (\inst5|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101000011111111001011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_signal_dist~7_combout\,
	datad => \inst5|ALT_INV_signal_dist~3_combout\,
	datae => \inst2|ALT_INV_srdato\(6),
	dataf => \inst5|ALT_INV_signal_dist[6]~14_combout\,
	combout => \inst5|signal_dist[6]~15_combout\);

-- Location: LABCELL_X83_Y6_N24
\inst5|signal_dist[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[7]~16_combout\ = (!\inst2|srdato\(15) & ((\inst4|ch_on[1][8]~q\))) # (\inst2|srdato\(15) & (\inst5|Add0~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_Add0~1_sumout\,
	datad => \inst4|ALT_INV_ch_on[1][8]~q\,
	combout => \inst5|signal_dist[7]~16_combout\);

-- Location: MLABCELL_X84_Y6_N15
\inst5|signal_dist[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[7]~17_combout\ = ( \inst2|srdato\(7) & ( \inst5|signal_dist[7]~16_combout\ ) ) # ( !\inst2|srdato\(7) & ( \inst5|signal_dist[7]~16_combout\ & ( (!\inst5|signal_dist~3_combout\) # (((!\inst5|LessThan0~5_combout\ & 
-- \inst5|signal_dist~0_combout\)) # (\inst5|signal_dist~7_combout\)) ) ) ) # ( \inst2|srdato\(7) & ( !\inst5|signal_dist[7]~16_combout\ & ( (\inst5|signal_dist~3_combout\ & (!\inst5|signal_dist~7_combout\ & ((!\inst5|signal_dist~0_combout\) # 
-- (\inst5|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000000011110010111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_signal_dist~3_combout\,
	datad => \inst5|ALT_INV_signal_dist~7_combout\,
	datae => \inst2|ALT_INV_srdato\(7),
	dataf => \inst5|ALT_INV_signal_dist[7]~16_combout\,
	combout => \inst5|signal_dist[7]~17_combout\);

-- Location: MLABCELL_X87_Y6_N33
\inst5|signal_dist[8]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[8]~18_combout\ = ( \inst2|srdato\(15) & ( \inst5|Add0~29_sumout\ ) ) # ( !\inst2|srdato\(15) & ( \inst4|ch_on[1][9]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ch_on[1][9]~q\,
	datac => \inst5|ALT_INV_Add0~29_sumout\,
	dataf => \inst2|ALT_INV_srdato\(15),
	combout => \inst5|signal_dist[8]~18_combout\);

-- Location: MLABCELL_X84_Y6_N30
\inst5|signal_dist[8]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[8]~19_combout\ = ( \inst2|srdato[8]~DUPLICATE_q\ & ( \inst5|signal_dist[8]~18_combout\ ) ) # ( !\inst2|srdato[8]~DUPLICATE_q\ & ( \inst5|signal_dist[8]~18_combout\ & ( ((!\inst5|signal_dist~3_combout\) # ((\inst5|signal_dist~0_combout\ 
-- & !\inst5|LessThan0~5_combout\))) # (\inst5|signal_dist~7_combout\) ) ) ) # ( \inst2|srdato[8]~DUPLICATE_q\ & ( !\inst5|signal_dist[8]~18_combout\ & ( (!\inst5|signal_dist~7_combout\ & (\inst5|signal_dist~3_combout\ & ((!\inst5|signal_dist~0_combout\) # 
-- (\inst5|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000101011111111011101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_signal_dist~7_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_LessThan0~5_combout\,
	datad => \inst5|ALT_INV_signal_dist~3_combout\,
	datae => \inst2|ALT_INV_srdato[8]~DUPLICATE_q\,
	dataf => \inst5|ALT_INV_signal_dist[8]~18_combout\,
	combout => \inst5|signal_dist[8]~19_combout\);

-- Location: LABCELL_X83_Y6_N48
\inst5|signal_dist[9]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[9]~20_combout\ = ( \inst5|Add0~25_sumout\ & ( (\inst4|ch_on[1][10]~q\) # (\inst2|srdato\(15)) ) ) # ( !\inst5|Add0~25_sumout\ & ( (!\inst2|srdato\(15) & \inst4|ch_on[1][10]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datad => \inst4|ALT_INV_ch_on[1][10]~q\,
	dataf => \inst5|ALT_INV_Add0~25_sumout\,
	combout => \inst5|signal_dist[9]~20_combout\);

-- Location: MLABCELL_X84_Y6_N18
\inst5|signal_dist[9]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[9]~21_combout\ = ( \inst2|srdato\(9) & ( \inst5|signal_dist[9]~20_combout\ ) ) # ( !\inst2|srdato\(9) & ( \inst5|signal_dist[9]~20_combout\ & ( ((!\inst5|signal_dist~3_combout\) # ((!\inst5|LessThan0~5_combout\ & 
-- \inst5|signal_dist~0_combout\))) # (\inst5|signal_dist~7_combout\) ) ) ) # ( \inst2|srdato\(9) & ( !\inst5|signal_dist[9]~20_combout\ & ( (!\inst5|signal_dist~7_combout\ & (\inst5|signal_dist~3_combout\ & ((!\inst5|signal_dist~0_combout\) # 
-- (\inst5|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001101000011111111001011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_signal_dist~7_combout\,
	datad => \inst5|ALT_INV_signal_dist~3_combout\,
	datae => \inst2|ALT_INV_srdato\(9),
	dataf => \inst5|ALT_INV_signal_dist[9]~20_combout\,
	combout => \inst5|signal_dist[9]~21_combout\);

-- Location: LABCELL_X83_Y6_N27
\inst5|signal_dist[10]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[10]~22_combout\ = ( \inst4|ch_on[1][11]~q\ & ( (!\inst2|srdato\(15)) # (\inst5|Add0~21_sumout\) ) ) # ( !\inst4|ch_on[1][11]~q\ & ( (\inst2|srdato\(15) & \inst5|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datad => \inst5|ALT_INV_Add0~21_sumout\,
	dataf => \inst4|ALT_INV_ch_on[1][11]~q\,
	combout => \inst5|signal_dist[10]~22_combout\);

-- Location: MLABCELL_X84_Y6_N21
\inst5|signal_dist[10]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[10]~23_combout\ = ( \inst2|srdato\(10) & ( \inst5|signal_dist[10]~22_combout\ ) ) # ( !\inst2|srdato\(10) & ( \inst5|signal_dist[10]~22_combout\ & ( (!\inst5|signal_dist~3_combout\) # (((!\inst5|LessThan0~5_combout\ & 
-- \inst5|signal_dist~0_combout\)) # (\inst5|signal_dist~7_combout\)) ) ) ) # ( \inst2|srdato\(10) & ( !\inst5|signal_dist[10]~22_combout\ & ( (\inst5|signal_dist~3_combout\ & (!\inst5|signal_dist~7_combout\ & ((!\inst5|signal_dist~0_combout\) # 
-- (\inst5|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000000011110010111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_signal_dist~3_combout\,
	datad => \inst5|ALT_INV_signal_dist~7_combout\,
	datae => \inst2|ALT_INV_srdato\(10),
	dataf => \inst5|ALT_INV_signal_dist[10]~22_combout\,
	combout => \inst5|signal_dist[10]~23_combout\);

-- Location: LABCELL_X83_Y6_N51
\inst5|signal_dist[11]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[11]~24_combout\ = ( \inst5|signal_dist~7_combout\ & ( (\inst2|srdato\(15) & \inst5|Add0~33_sumout\) ) ) # ( !\inst5|signal_dist~7_combout\ & ( (!\inst5|signal_dist~3_combout\ & (\inst2|srdato\(15) & (\inst5|Add0~33_sumout\))) # 
-- (\inst5|signal_dist~3_combout\ & (((\inst2|srdato\(11))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_srdato\(15),
	datab => \inst5|ALT_INV_Add0~33_sumout\,
	datac => \inst2|ALT_INV_srdato\(11),
	datad => \inst5|ALT_INV_signal_dist~3_combout\,
	dataf => \inst5|ALT_INV_signal_dist~7_combout\,
	combout => \inst5|signal_dist[11]~24_combout\);

-- Location: LABCELL_X85_Y6_N57
\inst5|signal_dist[12]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[12]~25_combout\ = (\inst5|Add0~37_sumout\ & \inst2|srdato\(15))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Add0~37_sumout\,
	datac => \inst2|ALT_INV_srdato\(15),
	combout => \inst5|signal_dist[12]~25_combout\);

-- Location: MLABCELL_X84_Y6_N57
\inst5|signal_dist[12]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[12]~26_combout\ = ( \inst2|srdato\(12) & ( \inst5|signal_dist[12]~25_combout\ ) ) # ( !\inst2|srdato\(12) & ( \inst5|signal_dist[12]~25_combout\ & ( (!\inst5|signal_dist~3_combout\) # (((!\inst5|LessThan0~5_combout\ & 
-- \inst5|signal_dist~0_combout\)) # (\inst5|signal_dist~7_combout\)) ) ) ) # ( \inst2|srdato\(12) & ( !\inst5|signal_dist[12]~25_combout\ & ( (\inst5|signal_dist~3_combout\ & (!\inst5|signal_dist~7_combout\ & ((!\inst5|signal_dist~0_combout\) # 
-- (\inst5|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000000011110010111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_signal_dist~3_combout\,
	datad => \inst5|ALT_INV_signal_dist~7_combout\,
	datae => \inst2|ALT_INV_srdato\(12),
	dataf => \inst5|ALT_INV_signal_dist[12]~25_combout\,
	combout => \inst5|signal_dist[12]~26_combout\);

-- Location: MLABCELL_X84_Y6_N24
\inst5|signal_dist[13]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[13]~27_combout\ = ( \inst5|signal_dist[12]~25_combout\ & ( \inst2|srdato\(13) ) ) # ( !\inst5|signal_dist[12]~25_combout\ & ( \inst2|srdato\(13) & ( (!\inst5|signal_dist~7_combout\ & (\inst5|signal_dist~3_combout\ & 
-- ((!\inst5|signal_dist~0_combout\) # (\inst5|LessThan0~5_combout\)))) ) ) ) # ( \inst5|signal_dist[12]~25_combout\ & ( !\inst2|srdato\(13) & ( ((!\inst5|signal_dist~3_combout\) # ((!\inst5|LessThan0~5_combout\ & \inst5|signal_dist~0_combout\))) # 
-- (\inst5|signal_dist~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110010111100000000110100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_signal_dist~7_combout\,
	datad => \inst5|ALT_INV_signal_dist~3_combout\,
	datae => \inst5|ALT_INV_signal_dist[12]~25_combout\,
	dataf => \inst2|ALT_INV_srdato\(13),
	combout => \inst5|signal_dist[13]~27_combout\);

-- Location: MLABCELL_X84_Y6_N27
\inst5|signal_dist[14]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[14]~28_combout\ = ( \inst5|signal_dist[12]~25_combout\ & ( \inst2|srdato\(14) ) ) # ( !\inst5|signal_dist[12]~25_combout\ & ( \inst2|srdato\(14) & ( (\inst5|signal_dist~3_combout\ & (!\inst5|signal_dist~7_combout\ & 
-- ((!\inst5|signal_dist~0_combout\) # (\inst5|LessThan0~5_combout\)))) ) ) ) # ( \inst5|signal_dist[12]~25_combout\ & ( !\inst2|srdato\(14) & ( (!\inst5|signal_dist~3_combout\) # (((!\inst5|LessThan0~5_combout\ & \inst5|signal_dist~0_combout\)) # 
-- (\inst5|signal_dist~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100101111111100001101000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_LessThan0~5_combout\,
	datab => \inst5|ALT_INV_signal_dist~0_combout\,
	datac => \inst5|ALT_INV_signal_dist~3_combout\,
	datad => \inst5|ALT_INV_signal_dist~7_combout\,
	datae => \inst5|ALT_INV_signal_dist[12]~25_combout\,
	dataf => \inst2|ALT_INV_srdato\(14),
	combout => \inst5|signal_dist[14]~28_combout\);

-- Location: MLABCELL_X84_Y6_N51
\inst5|signal_dist[15]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[15]~29_combout\ = ( \inst5|signal_dist~3_combout\ & ( (\inst2|srdato\(15) & ((!\inst5|signal_dist~1_combout\) # (\inst5|Add0~37_sumout\))) ) ) # ( !\inst5|signal_dist~3_combout\ & ( (\inst2|srdato\(15) & \inst5|Add0~37_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_srdato\(15),
	datac => \inst5|ALT_INV_Add0~37_sumout\,
	datad => \inst5|ALT_INV_signal_dist~1_combout\,
	dataf => \inst5|ALT_INV_signal_dist~3_combout\,
	combout => \inst5|signal_dist[15]~29_combout\);

-- Location: DSP_X86_Y6_N0
\inst5|s1|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
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
	aclr => \inst5|s1|Mult0~8_ACLR_bus\,
	clk => \inst5|s1|Mult0~8_CLK_bus\,
	ena => \inst5|s1|Mult0~8_ENA_bus\,
	ax => \inst5|s1|Mult0~8_AX_bus\,
	ay => \inst5|s1|Mult0~8_AY_bus\,
	resulta => \inst5|s1|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X87_Y8_N30
\inst3|srdato[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[16]~feeder_combout\ = ( \inst5|s1|Mult0~23\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_Mult0~23\,
	combout => \inst3|srdato[16]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N33
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

-- Location: MLABCELL_X87_Y8_N36
\inst3|srdato[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[14]~feeder_combout\ = ( \inst5|s1|sample_out\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|s1|ALT_INV_sample_out\(13),
	combout => \inst3|srdato[14]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N39
\inst3|srdato[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[13]~feeder_combout\ = \inst5|s1|sample_out\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_sample_out\(12),
	combout => \inst3|srdato[13]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N12
\inst3|srdato[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[12]~feeder_combout\ = \inst5|s1|sample_out\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s1|ALT_INV_sample_out\(11),
	combout => \inst3|srdato[12]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N15
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

-- Location: MLABCELL_X87_Y8_N18
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

-- Location: MLABCELL_X87_Y8_N21
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

-- Location: MLABCELL_X87_Y8_N54
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

-- Location: MLABCELL_X87_Y8_N57
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

-- Location: MLABCELL_X87_Y8_N0
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

-- Location: MLABCELL_X87_Y8_N3
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

-- Location: MLABCELL_X87_Y8_N6
\inst3|srdato[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[4]~feeder_combout\ = \inst5|s1|sample_out\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_sample_out\(3),
	combout => \inst3|srdato[4]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N9
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

-- Location: MLABCELL_X87_Y8_N42
\inst3|srdato[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[2]~feeder_combout\ = \inst5|s1|sample_out\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s1|ALT_INV_sample_out\(1),
	combout => \inst3|srdato[2]~feeder_combout\);

-- Location: MLABCELL_X87_Y8_N45
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

-- Location: FF_X85_Y8_N35
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

-- Location: FF_X85_Y8_N16
\inst3|ep.e4~DUPLICATE\ : dffeas
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
	q => \inst3|ep.e4~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N30
\inst3|cbits[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[0]~3_combout\ = ( \inst3|ep.e4~DUPLICATE_q\ & ( !\inst3|cbits\(0) ) ) # ( !\inst3|ep.e4~DUPLICATE_q\ & ( \inst3|cbits\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_cbits\(0),
	dataf => \inst3|ALT_INV_ep.e4~DUPLICATE_q\,
	combout => \inst3|cbits[0]~3_combout\);

-- Location: FF_X85_Y8_N11
\inst3|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst3|cbits[0]~3_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(0));

-- Location: FF_X85_Y8_N59
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

-- Location: LABCELL_X85_Y8_N21
\inst3|cbits[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[1]~2_combout\ = ( \inst3|ep.e4~DUPLICATE_q\ & ( !\inst3|cbits\(0) $ (!\inst3|cbits\(1)) ) ) # ( !\inst3|ep.e4~DUPLICATE_q\ & ( \inst3|cbits\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_cbits\(0),
	datad => \inst3|ALT_INV_cbits\(1),
	dataf => \inst3|ALT_INV_ep.e4~DUPLICATE_q\,
	combout => \inst3|cbits[1]~2_combout\);

-- Location: FF_X85_Y8_N23
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

-- Location: LABCELL_X85_Y8_N57
\inst3|cbits[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[2]~1_combout\ = ( \inst3|cbits\(1) & ( !\inst3|cbits\(2) $ (((!\inst3|ep.e4~q\) # (!\inst3|cbits\(0)))) ) ) # ( !\inst3|cbits\(1) & ( \inst3|cbits\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ep.e4~q\,
	datac => \inst3|ALT_INV_cbits\(0),
	datad => \inst3|ALT_INV_cbits\(2),
	dataf => \inst3|ALT_INV_cbits\(1),
	combout => \inst3|cbits[2]~1_combout\);

-- Location: FF_X85_Y8_N58
\inst3|cbits[2]~DUPLICATE\ : dffeas
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
	q => \inst3|cbits[2]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y8_N18
\inst3|cbits[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|cbits[3]~0_combout\ = ( \inst3|ep.e4~DUPLICATE_q\ & ( !\inst3|cbits\(3) $ (((!\inst3|cbits\(1)) # ((!\inst3|cbits\(0)) # (!\inst3|cbits[2]~DUPLICATE_q\)))) ) ) # ( !\inst3|ep.e4~DUPLICATE_q\ & ( \inst3|cbits\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits\(1),
	datab => \inst3|ALT_INV_cbits\(0),
	datac => \inst3|ALT_INV_cbits[2]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_cbits\(3),
	dataf => \inst3|ALT_INV_ep.e4~DUPLICATE_q\,
	combout => \inst3|cbits[3]~0_combout\);

-- Location: FF_X85_Y8_N20
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

-- Location: LABCELL_X85_Y8_N45
\inst3|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector2~0_combout\ = ( \inst3|cbits\(1) & ( \inst3|ep.e4~q\ & ( (\inst3|cbits[2]~DUPLICATE_q\ & (\inst3|cbits\(0) & \inst3|cbits\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits[2]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_cbits\(0),
	datad => \inst3|ALT_INV_cbits\(3),
	datae => \inst3|ALT_INV_cbits\(1),
	dataf => \inst3|ALT_INV_ep.e4~q\,
	combout => \inst3|Selector2~0_combout\);

-- Location: LABCELL_X85_Y8_N51
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

-- Location: FF_X85_Y8_N52
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

-- Location: LABCELL_X85_Y8_N48
\inst3|es.e6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e6~0_combout\ = ( \inst3|ep.e5~q\ & ( (!\inst3|daclrcs~q\ & !\inst2|bclks~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_daclrcs~q\,
	datab => \inst2|ALT_INV_bclks~q\,
	dataf => \inst3|ALT_INV_ep.e5~q\,
	combout => \inst3|es.e6~0_combout\);

-- Location: FF_X85_Y8_N50
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

-- Location: LABCELL_X85_Y8_N12
\inst3|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector1~0_combout\ = ( \inst3|ep.e4~q\ & ( (!\inst3|cbits\(3)) # ((!\inst3|cbits\(0)) # ((!\inst3|cbits\(1)) # (!\inst3|cbits\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_cbits\(3),
	datab => \inst3|ALT_INV_cbits\(0),
	datac => \inst3|ALT_INV_cbits\(1),
	datad => \inst3|ALT_INV_cbits\(2),
	dataf => \inst3|ALT_INV_ep.e4~q\,
	combout => \inst3|Selector1~0_combout\);

-- Location: LABCELL_X85_Y8_N39
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

-- Location: FF_X85_Y8_N40
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

-- Location: LABCELL_X85_Y8_N36
\inst3|es.e1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e1~0_combout\ = ( !\inst3|ep.e0~q\ & ( (!\inst2|bclks~q\ & \inst3|daclrcs~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_bclks~q\,
	datac => \inst3|ALT_INV_daclrcs~q\,
	dataf => \inst3|ALT_INV_ep.e0~q\,
	combout => \inst3|es.e1~0_combout\);

-- Location: FF_X85_Y8_N38
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

-- Location: LABCELL_X85_Y8_N30
\inst3|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Selector1~1_combout\ = ( \inst3|ep.e2~q\ & ( \inst3|ep.e1~q\ ) ) # ( !\inst3|ep.e2~q\ & ( \inst3|ep.e1~q\ ) ) # ( \inst3|ep.e2~q\ & ( !\inst3|ep.e1~q\ & ( ((!\inst2|bclks~q\) # (\inst3|Selector1~0_combout\)) # (\inst3|ep.e6~q\) ) ) ) # ( 
-- !\inst3|ep.e2~q\ & ( !\inst3|ep.e1~q\ & ( (\inst3|Selector1~0_combout\) # (\inst3|ep.e6~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ep.e6~q\,
	datac => \inst2|ALT_INV_bclks~q\,
	datad => \inst3|ALT_INV_Selector1~0_combout\,
	datae => \inst3|ALT_INV_ep.e2~q\,
	dataf => \inst3|ALT_INV_ep.e1~q\,
	combout => \inst3|Selector1~1_combout\);

-- Location: FF_X85_Y8_N32
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

-- Location: LABCELL_X85_Y8_N6
\inst3|es.e3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e3~0_combout\ = ( \inst3|ep.e2~q\ & ( \inst2|bclks~q\ ) ) # ( !\inst3|ep.e2~q\ & ( (\inst2|bclks~q\ & \inst3|ep.e3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_bclks~q\,
	datad => \inst3|ALT_INV_ep.e3~q\,
	dataf => \inst3|ALT_INV_ep.e2~q\,
	combout => \inst3|es.e3~0_combout\);

-- Location: FF_X85_Y8_N7
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

-- Location: LABCELL_X85_Y8_N15
\inst3|es.e4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|es.e4~0_combout\ = (!\inst2|bclks~q\ & \inst3|ep.e3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_bclks~q\,
	datad => \inst3|ALT_INV_ep.e3~q\,
	combout => \inst3|es.e4~0_combout\);

-- Location: FF_X85_Y8_N17
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

-- Location: LABCELL_X85_Y8_N0
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

-- Location: FF_X85_Y8_N2
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

-- Location: LABCELL_X85_Y8_N27
\inst3|srdato[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|srdato[2]~0_combout\ = ( \inst3|ep.e4~q\ & ( !\inst3|ep.e1~q\ ) ) # ( !\inst3|ep.e4~q\ & ( !\inst3|ep.e6~q\ $ (!\inst3|ep.e1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ep.e6~q\,
	datad => \inst3|ALT_INV_ep.e1~q\,
	dataf => \inst3|ALT_INV_ep.e4~q\,
	combout => \inst3|srdato[2]~0_combout\);

-- Location: FF_X87_Y8_N47
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(1));

-- Location: FF_X87_Y8_N44
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(2));

-- Location: FF_X87_Y8_N10
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(3));

-- Location: FF_X87_Y8_N7
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(4));

-- Location: FF_X87_Y8_N4
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(5));

-- Location: FF_X87_Y8_N1
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(6));

-- Location: FF_X87_Y8_N59
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(7));

-- Location: FF_X87_Y8_N55
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(8));

-- Location: FF_X87_Y8_N23
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(9));

-- Location: FF_X87_Y8_N20
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(10));

-- Location: FF_X87_Y8_N17
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(11));

-- Location: FF_X87_Y8_N14
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(12));

-- Location: FF_X87_Y8_N40
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(13));

-- Location: FF_X87_Y8_N38
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(14));

-- Location: FF_X87_Y8_N34
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(15));

-- Location: FF_X87_Y8_N31
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
	ena => \inst3|srdato[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(16));

-- Location: MLABCELL_X84_Y5_N0
\inst4|ch_on[0][4]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][4]~_Duplicate_1feeder_combout\ = ( \inst4|sr_dout\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(4),
	combout => \inst4|ch_on[0][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X84_Y5_N1
\inst4|ch_on[0][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|ch_on[0][4]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][4]~_Duplicate_1_q\);

-- Location: FF_X84_Y6_N34
\inst4|ch_on[0][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(5),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][5]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y5_N9
\inst4|ch_on[0][6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][6]~_Duplicate_1feeder_combout\ = ( \inst4|sr_dout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(6),
	combout => \inst4|ch_on[0][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X84_Y5_N10
\inst4|ch_on[0][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|ch_on[0][6]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][6]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y5_N30
\inst4|ch_on[0][7]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][7]~_Duplicate_1feeder_combout\ = ( \inst4|sr_dout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(7),
	combout => \inst4|ch_on[0][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y5_N31
\inst4|ch_on[0][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|ch_on[0][7]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][7]~_Duplicate_1_q\);

-- Location: FF_X84_Y5_N16
\inst4|ch_on[0][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	asdata => \inst4|sr_dout\(8),
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][8]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y5_N48
\inst4|ch_on[0][9]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][9]~_Duplicate_1feeder_combout\ = ( \inst4|sr_dout\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(9),
	combout => \inst4|ch_on[0][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X84_Y5_N49
\inst4|ch_on[0][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|ch_on[0][9]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][9]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y5_N24
\inst4|ch_on[0][10]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][10]~_Duplicate_1feeder_combout\ = ( \inst4|sr_dout\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst4|ALT_INV_sr_dout\(10),
	combout => \inst4|ch_on[0][10]~_Duplicate_1feeder_combout\);

-- Location: FF_X84_Y5_N25
\inst4|ch_on[0][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv\(11),
	d => \inst4|ch_on[0][10]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputCLKENA0_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][10]~_Duplicate_1_q\);

-- Location: FF_X84_Y5_N28
\inst4|ch_on[0][11]~_Duplicate_1\ : dffeas
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
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][11]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N36
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

-- Location: LABCELL_X85_Y7_N30
\inst4|sr_din[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[13]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[13]~feeder_combout\);

-- Location: LABCELL_X85_Y7_N39
\inst4|sr_din[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[12]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[12]~feeder_combout\);

-- Location: LABCELL_X85_Y7_N45
\inst4|sr_din[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[10]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[10]~feeder_combout\);

-- Location: LABCELL_X85_Y7_N18
\inst4|sr_din[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[6]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[6]~feeder_combout\);

-- Location: LABCELL_X85_Y7_N21
\inst4|sr_din[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[5]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[5]~feeder_combout\);

-- Location: LABCELL_X85_Y7_N24
\inst4|sr_din[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[3]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[3]~feeder_combout\);

-- Location: LABCELL_X85_Y7_N27
\inst4|sr_din[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[2]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[2]~feeder_combout\);

-- Location: LABCELL_X85_Y7_N0
\inst4|sr_din[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[1]~feeder_combout\ = \inst4|cmd_addr[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_cmd_addr[1]~_wirecell_combout\,
	combout => \inst4|sr_din[1]~feeder_combout\);

-- Location: MLABCELL_X84_Y7_N0
\inst4|sr_din~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~8_combout\ = ( \inst4|sr_din\(0) & ( !\inst4|ep.conf1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_ep.conf1~q\,
	dataf => \inst4|ALT_INV_sr_din\(0),
	combout => \inst4|sr_din~8_combout\);

-- Location: MLABCELL_X84_Y7_N3
\inst4|sr_din[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[0]~feeder_combout\ = \inst4|sr_din~8_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_sr_din~8_combout\,
	combout => \inst4|sr_din[0]~feeder_combout\);

-- Location: FF_X84_Y7_N5
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

-- Location: MLABCELL_X84_Y7_N39
\inst4|sr_din[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din[8]~1_combout\ = !\inst4|ep.conf1~q\ $ (\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ep.conf1~q\,
	datad => \inst4|ALT_INV_ep.conf0~q\,
	combout => \inst4|sr_din[8]~1_combout\);

-- Location: FF_X85_Y7_N2
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

-- Location: FF_X85_Y7_N29
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

-- Location: FF_X85_Y7_N26
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

-- Location: LABCELL_X85_Y7_N54
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

-- Location: FF_X85_Y7_N56
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

-- Location: FF_X85_Y7_N23
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

-- Location: FF_X85_Y7_N20
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

-- Location: LABCELL_X85_Y7_N12
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

-- Location: FF_X85_Y7_N14
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

-- Location: LABCELL_X85_Y7_N57
\inst4|sr_din~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~5_combout\ = ( \inst4|sr_din\(7) ) # ( !\inst4|sr_din\(7) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(7),
	combout => \inst4|sr_din~5_combout\);

-- Location: FF_X85_Y7_N58
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

-- Location: LABCELL_X85_Y7_N3
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

-- Location: FF_X85_Y7_N5
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

-- Location: FF_X85_Y7_N47
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

-- Location: LABCELL_X85_Y7_N48
\inst4|sr_din~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~3_combout\ = ( \inst4|sr_din\(10) & ( \inst4|ep.conf0~q\ ) ) # ( \inst4|sr_din\(10) & ( !\inst4|ep.conf0~q\ ) ) # ( !\inst4|sr_din\(10) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst4|ALT_INV_sr_din\(10),
	dataf => \inst4|ALT_INV_ep.conf0~q\,
	combout => \inst4|sr_din~3_combout\);

-- Location: FF_X85_Y7_N50
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

-- Location: FF_X85_Y7_N41
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

-- Location: FF_X85_Y7_N32
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

-- Location: LABCELL_X85_Y7_N15
\inst4|sr_din~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~2_combout\ = ( \inst4|sr_din\(13) ) # ( !\inst4|sr_din\(13) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(13),
	combout => \inst4|sr_din~2_combout\);

-- Location: FF_X85_Y7_N17
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

-- Location: LABCELL_X85_Y7_N6
\inst4|sr_din~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|sr_din~0_combout\ = ( \inst4|sr_din\(14) ) # ( !\inst4|sr_din\(14) & ( !\inst4|ep.conf0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_ep.conf0~q\,
	dataf => \inst4|ALT_INV_sr_din\(14),
	combout => \inst4|sr_din~0_combout\);

-- Location: FF_X85_Y7_N7
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

-- Location: MLABCELL_X39_Y59_N0
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



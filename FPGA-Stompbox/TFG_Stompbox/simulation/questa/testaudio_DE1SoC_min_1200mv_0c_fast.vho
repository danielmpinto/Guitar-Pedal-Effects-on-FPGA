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

-- DATE "03/06/2025 16:16:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
-- AUD_XCK	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_I2C_SCLK	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SCLK	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DIN	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_I2C_SDAT	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DOUT	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|clkdiv[11]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~7\ : std_logic;
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
SIGNAL \FPGA_I2C_SDAT~output_o\ : std_logic;
SIGNAL \AUD_XCK~output_o\ : std_logic;
SIGNAL \AUD_DACDAT~output_o\ : std_logic;
SIGNAL \FPGA_I2C_SCLK~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_DIN~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|cbits[0]~7_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|Selector0~2_combout\ : std_logic;
SIGNAL \FPGA_I2C_SDAT~input_o\ : std_logic;
SIGNAL \inst1|stop~0_combout\ : std_logic;
SIGNAL \inst1|stop~1_combout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|ep.e3~q\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|Selector1~1_combout\ : std_logic;
SIGNAL \inst1|ep.e1~q\ : std_logic;
SIGNAL \inst1|Selector2~1_combout\ : std_logic;
SIGNAL \inst1|ep.e2~q\ : std_logic;
SIGNAL \inst1|settmp~0_combout\ : std_logic;
SIGNAL \inst1|caddr[0]~0_combout\ : std_logic;
SIGNAL \inst1|ctmp[0]~1_combout\ : std_logic;
SIGNAL \inst1|caddr[1]~2_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|caddr[2]~1_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|ep.e5~0_combout\ : std_logic;
SIGNAL \inst1|ep.e5~q\ : std_logic;
SIGNAL \inst1|ctmp[0]~3_combout\ : std_logic;
SIGNAL \inst1|ctmp[6]~4_combout\ : std_logic;
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|ctmp[0]~11_combout\ : std_logic;
SIGNAL \inst1|Add2~1\ : std_logic;
SIGNAL \inst1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|ctmp[1]~10_combout\ : std_logic;
SIGNAL \inst1|Add2~3\ : std_logic;
SIGNAL \inst1|Add2~4_combout\ : std_logic;
SIGNAL \inst1|ctmp[2]~9_combout\ : std_logic;
SIGNAL \inst1|Add2~5\ : std_logic;
SIGNAL \inst1|Add2~6_combout\ : std_logic;
SIGNAL \inst1|ctmp[3]~8_combout\ : std_logic;
SIGNAL \inst1|Add2~7\ : std_logic;
SIGNAL \inst1|Add2~8_combout\ : std_logic;
SIGNAL \inst1|ctmp[4]~7_combout\ : std_logic;
SIGNAL \inst1|Add2~9\ : std_logic;
SIGNAL \inst1|Add2~10_combout\ : std_logic;
SIGNAL \inst1|ctmp[5]~6_combout\ : std_logic;
SIGNAL \inst1|Add2~11\ : std_logic;
SIGNAL \inst1|Add2~12_combout\ : std_logic;
SIGNAL \inst1|ctmp[6]~5_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|Equal4~1_combout\ : std_logic;
SIGNAL \inst1|Selector0~3_combout\ : std_logic;
SIGNAL \inst1|ep.e0~q\ : std_logic;
SIGNAL \inst1|Add2~13\ : std_logic;
SIGNAL \inst1|Add2~14_combout\ : std_logic;
SIGNAL \inst1|ctmp~0_combout\ : std_logic;
SIGNAL \inst1|ctmp~2_combout\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst1|incbits~0_combout\ : std_logic;
SIGNAL \inst1|incbits~1_combout\ : std_logic;
SIGNAL \inst1|cbits[0]~17_combout\ : std_logic;
SIGNAL \inst1|cbits[0]~8\ : std_logic;
SIGNAL \inst1|cbits[1]~9_combout\ : std_logic;
SIGNAL \inst1|cbits[1]~10\ : std_logic;
SIGNAL \inst1|cbits[2]~11_combout\ : std_logic;
SIGNAL \inst1|cbits[2]~12\ : std_logic;
SIGNAL \inst1|cbits[3]~13_combout\ : std_logic;
SIGNAL \inst1|cbits[3]~14\ : std_logic;
SIGNAL \inst1|cbits[4]~15_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|ep.e4~0_combout\ : std_logic;
SIGNAL \inst1|ep.e4~q\ : std_logic;
SIGNAL \inst1|sdat~4_combout\ : std_logic;
SIGNAL \inst1|ep.e4~1_combout\ : std_logic;
SIGNAL \inst1|Mux12~4_combout\ : std_logic;
SIGNAL \inst1|Mux12~5_combout\ : std_logic;
SIGNAL \inst1|Mux12~13_combout\ : std_logic;
SIGNAL \inst1|sdat~0_combout\ : std_logic;
SIGNAL \inst1|sdat~1_combout\ : std_logic;
SIGNAL \inst1|sdat~2_combout\ : std_logic;
SIGNAL \inst1|Mux12~9_combout\ : std_logic;
SIGNAL \inst1|Mux12~8_combout\ : std_logic;
SIGNAL \inst1|Mux12~14_combout\ : std_logic;
SIGNAL \inst1|Mux12~11_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux12~10_combout\ : std_logic;
SIGNAL \inst1|Mux12~12_combout\ : std_logic;
SIGNAL \inst1|sdat~3_combout\ : std_logic;
SIGNAL \inst1|sdat~5_combout\ : std_logic;
SIGNAL \inst1|sdat~q\ : std_logic;
SIGNAL \inst1|setbitz~combout\ : std_logic;
SIGNAL \inst4|clkdiv[0]~33_combout\ : std_logic;
SIGNAL \inst1|cclkdiv[1]~0_combout\ : std_logic;
SIGNAL \inst4|clkdiv[1]~11_combout\ : std_logic;
SIGNAL \inst4|clkdiv[1]~12\ : std_logic;
SIGNAL \inst4|clkdiv[2]~13_combout\ : std_logic;
SIGNAL \inst4|clkdiv[2]~14\ : std_logic;
SIGNAL \inst4|clkdiv[3]~15_combout\ : std_logic;
SIGNAL \inst4|clkdiv[3]~16\ : std_logic;
SIGNAL \inst4|clkdiv[4]~17_combout\ : std_logic;
SIGNAL \inst4|clkdiv[4]~18\ : std_logic;
SIGNAL \inst4|clkdiv[5]~19_combout\ : std_logic;
SIGNAL \inst4|clkdiv[5]~20\ : std_logic;
SIGNAL \inst4|clkdiv[6]~21_combout\ : std_logic;
SIGNAL \inst4|clkdiv[6]~22\ : std_logic;
SIGNAL \inst4|clkdiv[7]~23_combout\ : std_logic;
SIGNAL \inst4|clkdiv[7]~24\ : std_logic;
SIGNAL \inst4|clkdiv[8]~25_combout\ : std_logic;
SIGNAL \inst4|clkdiv[8]~26\ : std_logic;
SIGNAL \inst4|clkdiv[9]~27_combout\ : std_logic;
SIGNAL \inst4|clkdiv[9]~28\ : std_logic;
SIGNAL \inst4|clkdiv[10]~29_combout\ : std_logic;
SIGNAL \inst4|clkdiv[10]~30\ : std_logic;
SIGNAL \inst4|clkdiv[11]~31_combout\ : std_logic;
SIGNAL \inst4|clkdiv[11]~clkctrl_outclk\ : std_logic;
SIGNAL \ADC_DOUT~input_o\ : std_logic;
SIGNAL \inst4|sr_dout[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[9]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[11]~feeder_combout\ : std_logic;
SIGNAL \inst4|sr_dout[12]~feeder_combout\ : std_logic;
SIGNAL \inst4|es.sready~0_combout\ : std_logic;
SIGNAL \inst4|ep.sready~q\ : std_logic;
SIGNAL \inst4|cmd_addr[1]~0_combout\ : std_logic;
SIGNAL \inst4|es.conf0~2_combout\ : std_logic;
SIGNAL \inst4|ep.conf0~q\ : std_logic;
SIGNAL \inst4|cmd_addr[0]~1_combout\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|Selector1~1_combout\ : std_logic;
SIGNAL \inst4|ep.idle~q\ : std_logic;
SIGNAL \inst4|Selector2~0_combout\ : std_logic;
SIGNAL \inst4|ep.rd0~q\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|ep.rd1~q\ : std_logic;
SIGNAL \inst4|cs_cycle[1]~1_combout\ : std_logic;
SIGNAL \inst4|cs~0_combout\ : std_logic;
SIGNAL \inst4|cs_cycle[2]~3_combout\ : std_logic;
SIGNAL \inst4|cs_cycle[3]~2_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst4|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|ep.conf1~q\ : std_logic;
SIGNAL \inst4|cs_cycle[0]~0_combout\ : std_logic;
SIGNAL \inst4|cs_cycle[1]~4_combout\ : std_logic;
SIGNAL \inst4|es.save~0_combout\ : std_logic;
SIGNAL \inst4|es.save~1_combout\ : std_logic;
SIGNAL \inst4|ep.save~q\ : std_logic;
SIGNAL \inst4|Decoder0~0_combout\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \inst2|adcdats~q\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \inst2|bclks~q\ : std_logic;
SIGNAL \inst2|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst2|cbits[1]~2_combout\ : std_logic;
SIGNAL \inst2|cbits[2]~1_combout\ : std_logic;
SIGNAL \inst2|es.e5~0_combout\ : std_logic;
SIGNAL \inst2|cbits[3]~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|ep.e4~q\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \inst2|adclrcs~feeder_combout\ : std_logic;
SIGNAL \inst2|adclrcs~q\ : std_logic;
SIGNAL \inst2|es.e5~1_combout\ : std_logic;
SIGNAL \inst2|ep.e5~q\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|ep.e0~q\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|ep.e1~q\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Selector2~1_combout\ : std_logic;
SIGNAL \inst2|ep.e2~q\ : std_logic;
SIGNAL \inst2|es.e3~0_combout\ : std_logic;
SIGNAL \inst2|ep.e3~q\ : std_logic;
SIGNAL \inst4|Decoder0~1_combout\ : std_logic;
SIGNAL \inst4|ch_on[1][11]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][10]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][9]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][8]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][7]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][6]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][5]~q\ : std_logic;
SIGNAL \inst4|ch_on[1][4]~q\ : std_logic;
SIGNAL \inst5|Add0~1_cout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|signal_dist~3_combout\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|LessThan1~2_cout\ : std_logic;
SIGNAL \inst5|LessThan1~4_cout\ : std_logic;
SIGNAL \inst5|LessThan1~6_cout\ : std_logic;
SIGNAL \inst5|LessThan1~8_cout\ : std_logic;
SIGNAL \inst5|LessThan1~10_cout\ : std_logic;
SIGNAL \inst5|LessThan1~12_cout\ : std_logic;
SIGNAL \inst5|LessThan1~14_cout\ : std_logic;
SIGNAL \inst5|LessThan1~16_cout\ : std_logic;
SIGNAL \inst5|LessThan1~17_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|signal_dist~0_combout\ : std_logic;
SIGNAL \inst5|signal_dist~1_combout\ : std_logic;
SIGNAL \inst5|signal_dist~2_combout\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|LessThan0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|LessThan0~7_combout\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|LessThan0~8_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|LessThan0~5_combout\ : std_logic;
SIGNAL \inst5|signal_dist~4_combout\ : std_logic;
SIGNAL \inst5|signal_dist[0]~5_combout\ : std_logic;
SIGNAL \inst5|signal_dist[1]~6_combout\ : std_logic;
SIGNAL \inst5|signal_dist[2]~7_combout\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Add0~21_combout\ : std_logic;
SIGNAL \inst5|signal_dist[3]~8_combout\ : std_logic;
SIGNAL \inst5|Add0~22\ : std_logic;
SIGNAL \inst5|Add0~23_combout\ : std_logic;
SIGNAL \inst5|signal_dist[4]~9_combout\ : std_logic;
SIGNAL \inst5|Add0~24\ : std_logic;
SIGNAL \inst5|Add0~25_combout\ : std_logic;
SIGNAL \inst5|signal_dist[5]~10_combout\ : std_logic;
SIGNAL \inst5|Add0~26\ : std_logic;
SIGNAL \inst5|Add0~27_combout\ : std_logic;
SIGNAL \inst5|signal_dist[6]~11_combout\ : std_logic;
SIGNAL \inst5|Add0~28\ : std_logic;
SIGNAL \inst5|Add0~29_combout\ : std_logic;
SIGNAL \inst5|signal_dist[7]~12_combout\ : std_logic;
SIGNAL \inst5|Add0~30\ : std_logic;
SIGNAL \inst5|Add0~31_combout\ : std_logic;
SIGNAL \inst5|signal_dist[8]~13_combout\ : std_logic;
SIGNAL \inst5|Add0~32\ : std_logic;
SIGNAL \inst5|Add0~33_combout\ : std_logic;
SIGNAL \inst5|signal_dist[9]~14_combout\ : std_logic;
SIGNAL \inst5|Add0~34\ : std_logic;
SIGNAL \inst5|Add0~35_combout\ : std_logic;
SIGNAL \inst5|signal_dist[10]~15_combout\ : std_logic;
SIGNAL \inst5|Add0~36\ : std_logic;
SIGNAL \inst5|Add0~37_combout\ : std_logic;
SIGNAL \inst5|signal_dist[11]~16_combout\ : std_logic;
SIGNAL \inst5|Add0~38\ : std_logic;
SIGNAL \inst5|Add0~39_combout\ : std_logic;
SIGNAL \inst5|signal_dist[12]~17_combout\ : std_logic;
SIGNAL \inst5|signal_dist[13]~18_combout\ : std_logic;
SIGNAL \inst5|signal_dist[14]~19_combout\ : std_logic;
SIGNAL \inst5|signal_dist[15]~20_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \inst3|srdato[16]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst3|srdato[15]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \inst3|srdato[14]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \inst3|srdato[13]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst3|srdato[12]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst3|srdato[11]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst3|srdato[10]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst3|srdato[9]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst3|srdato[8]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst3|srdato[7]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst3|srdato[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst3|srdato[5]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst3|srdato[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst3|srdato[3]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst3|srdato[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst3|srdato[1]~feeder_combout\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \inst3|daclrcs~feeder_combout\ : std_logic;
SIGNAL \inst3|daclrcs~q\ : std_logic;
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
SIGNAL \inst3|cbits[0]~3_combout\ : std_logic;
SIGNAL \inst3|cbits[1]~2_combout\ : std_logic;
SIGNAL \inst3|cbits[2]~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|cbits[3]~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst3|ep.e5~q\ : std_logic;
SIGNAL \inst3|es.e6~0_combout\ : std_logic;
SIGNAL \inst3|ep.e6~q\ : std_logic;
SIGNAL \inst3|srdato~1_combout\ : std_logic;
SIGNAL \inst3|srdato[11]~0_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst4|ch_on[0][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|ch_on[0][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|sr_din~16_combout\ : std_logic;
SIGNAL \inst4|cmd_addr[1]~_wirecell_combout\ : std_logic;
SIGNAL \inst4|sr_din~15_combout\ : std_logic;
SIGNAL \inst4|sr_din[11]~1_combout\ : std_logic;
SIGNAL \inst4|sr_din~14_combout\ : std_logic;
SIGNAL \inst4|sr_din~13_combout\ : std_logic;
SIGNAL \inst4|sr_din~12_combout\ : std_logic;
SIGNAL \inst4|sr_din~11_combout\ : std_logic;
SIGNAL \inst4|sr_din~10_combout\ : std_logic;
SIGNAL \inst4|sr_din~9_combout\ : std_logic;
SIGNAL \inst4|sr_din~8_combout\ : std_logic;
SIGNAL \inst4|sr_din~7_combout\ : std_logic;
SIGNAL \inst4|sr_din~6_combout\ : std_logic;
SIGNAL \inst4|sr_din~5_combout\ : std_logic;
SIGNAL \inst4|sr_din~4_combout\ : std_logic;
SIGNAL \inst4|sr_din~3_combout\ : std_logic;
SIGNAL \inst4|sr_din~2_combout\ : std_logic;
SIGNAL \inst4|sr_din~0_combout\ : std_logic;
SIGNAL \inst2|cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|cbits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|cclkdiv\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|sr_dout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst4|sr_din\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|cbits\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|srdato\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst1|caddr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|cs_cycle\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|clkdiv\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|ctmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|cmd_addr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|srdato\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|ALT_INV_sdat~q\ : std_logic;
SIGNAL \inst4|ALT_INV_ep.conf0~q\ : std_logic;
SIGNAL \inst3|ALT_INV_ep.e1~q\ : std_logic;
SIGNAL \inst4|ALT_INV_cs~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ctmp\ : std_logic_vector(7 DOWNTO 7);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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

\inst5|s1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\inst5|s1|Mult0|auto_generated|mac_mult1~dataout\ & \inst5|s1|Mult0|auto_generated|mac_mult1~7\ & \inst5|s1|Mult0|auto_generated|mac_mult1~6\ & \inst5|s1|Mult0|auto_generated|mac_mult1~5\ & \inst5|s1|Mult0|auto_generated|mac_mult1~4\ & 
\inst5|s1|Mult0|auto_generated|mac_mult1~3\ & \inst5|s1|Mult0|auto_generated|mac_mult1~2\ & \inst5|s1|Mult0|auto_generated|mac_mult1~1\ & \inst5|s1|Mult0|auto_generated|mac_mult1~0\);

\inst5|s1|Mult0|auto_generated|mac_out2~0\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst5|s1|Mult0|auto_generated|mac_out2~1\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst5|s1|Mult0|auto_generated|mac_out2~2\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst5|s1|Mult0|auto_generated|mac_out2~3\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst5|s1|Mult0|auto_generated|mac_out2~4\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst5|s1|Mult0|auto_generated|mac_out2~5\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst5|s1|Mult0|auto_generated|mac_out2~6\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst5|s1|Mult0|auto_generated|mac_out2~7\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst5|s1|Mult0|auto_generated|mac_out2~dataout\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst5|s1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst5|signal_dist[15]~20_combout\ & \inst5|signal_dist[14]~19_combout\ & \inst5|signal_dist[13]~18_combout\ & \inst5|signal_dist[12]~17_combout\ & \inst5|signal_dist[11]~16_combout\ & 
\inst5|signal_dist[10]~15_combout\ & \inst5|signal_dist[9]~14_combout\ & \inst5|signal_dist[8]~13_combout\ & \inst5|signal_dist[7]~12_combout\ & \inst5|signal_dist[6]~11_combout\ & \inst5|signal_dist[5]~10_combout\ & \inst5|signal_dist[4]~9_combout\ & 
\inst5|signal_dist[3]~8_combout\ & \inst5|signal_dist[2]~7_combout\ & \inst5|signal_dist[1]~6_combout\ & \inst5|signal_dist[0]~5_combout\ & gnd & gnd);

\inst5|s1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \inst4|sr_dout\(11) & \inst4|sr_dout\(10) & \inst4|sr_dout\(9) & \inst4|sr_dout\(8) & \inst4|sr_dout\(7) & \inst4|sr_dout\(6) & \inst4|sr_dout\(5) & \inst4|sr_dout\(4) & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst5|s1|Mult0|auto_generated|mac_mult1~0\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst5|s1|Mult0|auto_generated|mac_mult1~1\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst5|s1|Mult0|auto_generated|mac_mult1~2\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst5|s1|Mult0|auto_generated|mac_mult1~3\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst5|s1|Mult0|auto_generated|mac_mult1~4\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst5|s1|Mult0|auto_generated|mac_mult1~5\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst5|s1|Mult0|auto_generated|mac_mult1~6\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst5|s1|Mult0|auto_generated|mac_mult1~7\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst5|s1|Mult0|auto_generated|mac_mult1~dataout\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst5|s1|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);

\inst4|clkdiv[11]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|clkdiv\(11));

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY[0]~inputclkctrl_outclk\ <= NOT \KEY[0]~inputclkctrl_outclk\;
\inst1|ALT_INV_sdat~q\ <= NOT \inst1|sdat~q\;
\inst4|ALT_INV_ep.conf0~q\ <= NOT \inst4|ep.conf0~q\;
\inst3|ALT_INV_ep.e1~q\ <= NOT \inst3|ep.e1~q\;
\inst4|ALT_INV_cs~0_combout\ <= NOT \inst4|cs~0_combout\;
\inst1|ALT_INV_ctmp\(7) <= NOT \inst1|ctmp\(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X87_Y0_N16
\FPGA_I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_sdat~q\,
	oe => \inst1|setbitz~combout\,
	devoe => ww_devoe,
	o => \FPGA_I2C_SDAT~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\AUD_XCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cclkdiv\(1),
	devoe => ww_devoe,
	o => \AUD_XCK~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\AUD_DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|srdato\(16),
	devoe => ww_devoe,
	o => \AUD_DACDAT~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\FPGA_I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_ctmp\(7),
	devoe => ww_devoe,
	o => \FPGA_I2C_SCLK~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ch_on[0][4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ch_on[0][5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ch_on[0][6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ch_on[0][7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ch_on[0][8]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ch_on[0][9]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ch_on[0][10]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ch_on[0][11]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|clkdiv\(11),
	devoe => ww_devoe,
	o => \ADC_SCLK~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_cs~0_combout\,
	devoe => ww_devoe,
	o => \ADC_CS_N~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\ADC_DIN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sr_din\(15),
	devoe => ww_devoe,
	o => \ADC_DIN~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X85_Y5_N22
\inst1|cbits[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cbits[0]~7_combout\ = \inst1|cbits\(0) $ (VCC)
-- \inst1|cbits[0]~8\ = CARRY(\inst1|cbits\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(0),
	datad => VCC,
	combout => \inst1|cbits[0]~7_combout\,
	cout => \inst1|cbits[0]~8\);

-- Location: IOIBUF_X0_Y36_N15
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
\KEY[0]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~inputclkctrl_outclk\);

-- Location: LCCOMB_X87_Y5_N4
\inst1|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~2_combout\ = (!\inst1|Equal3~0_combout\ & (!\inst1|ctmp\(7) & (\inst1|ep.e4~q\ & \inst1|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|ctmp\(7),
	datac => \inst1|ep.e4~q\,
	datad => \inst1|Equal4~1_combout\,
	combout => \inst1|Selector0~2_combout\);

-- Location: IOIBUF_X87_Y0_N15
\FPGA_I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FPGA_I2C_SDAT,
	o => \FPGA_I2C_SDAT~input_o\);

-- Location: LCCOMB_X86_Y5_N26
\inst1|stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|stop~0_combout\ = (!\inst1|cbits\(1) & (!\inst1|cbits\(2) & !\inst1|cbits\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cbits\(1),
	datac => \inst1|cbits\(2),
	datad => \inst1|cbits\(0),
	combout => \inst1|stop~0_combout\);

-- Location: LCCOMB_X87_Y5_N14
\inst1|stop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|stop~1_combout\ = (\inst1|stop~0_combout\ & ((\inst1|cbits\(4)) # (\inst1|cbits\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(4),
	datac => \inst1|stop~0_combout\,
	datad => \inst1|cbits\(3),
	combout => \inst1|stop~1_combout\);

-- Location: LCCOMB_X88_Y5_N8
\inst1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\inst1|ep.e2~q\ & ((!\inst1|Equal4~1_combout\) # (!\inst1|ctmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctmp\(7),
	datac => \inst1|ep.e2~q\,
	datad => \inst1|Equal4~1_combout\,
	combout => \inst1|Selector2~0_combout\);

-- Location: LCCOMB_X86_Y5_N20
\inst1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|Equal5~0_combout\ & (!\FPGA_I2C_SDAT~input_o\ & ((\inst1|settmp~0_combout\)))) # (!\inst1|Equal5~0_combout\ & ((\inst1|ep.e3~q\) # ((!\FPGA_I2C_SDAT~input_o\ & \inst1|settmp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal5~0_combout\,
	datab => \FPGA_I2C_SDAT~input_o\,
	datac => \inst1|ep.e3~q\,
	datad => \inst1|settmp~0_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X86_Y5_N21
\inst1|ep.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e3~q\);

-- Location: LCCOMB_X88_Y5_N22
\inst1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|Equal5~0_combout\ & (((!\inst1|stop~1_combout\ & \inst1|ep.e1~q\)) # (!\inst1|ep.e0~q\))) # (!\inst1|Equal5~0_combout\ & (((\inst1|ep.e1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stop~1_combout\,
	datab => \inst1|Equal5~0_combout\,
	datac => \inst1|ep.e0~q\,
	datad => \inst1|ep.e1~q\,
	combout => \inst1|Selector1~0_combout\);

-- Location: LCCOMB_X88_Y5_N18
\inst1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~1_combout\ = (\inst1|Selector1~0_combout\) # ((\inst1|Equal2~0_combout\ & (\inst1|ep.e3~q\ & \inst1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|ep.e3~q\,
	datac => \inst1|Selector1~0_combout\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|Selector1~1_combout\);

-- Location: FF_X88_Y5_N19
\inst1|ep.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Selector1~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e1~q\);

-- Location: LCCOMB_X88_Y5_N24
\inst1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~1_combout\ = (\inst1|Selector2~0_combout\) # ((\inst1|stop~1_combout\ & (\inst1|Equal5~0_combout\ & \inst1|ep.e1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stop~1_combout\,
	datab => \inst1|Equal5~0_combout\,
	datac => \inst1|Selector2~0_combout\,
	datad => \inst1|ep.e1~q\,
	combout => \inst1|Selector2~1_combout\);

-- Location: FF_X88_Y5_N25
\inst1|ep.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Selector2~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e2~q\);

-- Location: LCCOMB_X87_Y5_N18
\inst1|settmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|settmp~0_combout\ = (\inst1|Equal4~1_combout\ & (\inst1|ctmp\(7) & \inst1|ep.e2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~1_combout\,
	datab => \inst1|ctmp\(7),
	datad => \inst1|ep.e2~q\,
	combout => \inst1|settmp~0_combout\);

-- Location: LCCOMB_X86_Y5_N24
\inst1|caddr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|caddr[0]~0_combout\ = (\inst1|Selector0~2_combout\ & (((!\inst1|caddr\(0))))) # (!\inst1|Selector0~2_combout\ & (\inst1|caddr\(0) & ((!\inst1|settmp~0_combout\) # (!\FPGA_I2C_SDAT~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector0~2_combout\,
	datab => \FPGA_I2C_SDAT~input_o\,
	datac => \inst1|caddr\(0),
	datad => \inst1|settmp~0_combout\,
	combout => \inst1|caddr[0]~0_combout\);

-- Location: FF_X86_Y5_N25
\inst1|caddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|caddr[0]~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|caddr\(0));

-- Location: LCCOMB_X86_Y5_N0
\inst1|ctmp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[0]~1_combout\ = (!\inst1|Selector0~2_combout\ & ((!\inst1|settmp~0_combout\) # (!\FPGA_I2C_SDAT~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector0~2_combout\,
	datac => \FPGA_I2C_SDAT~input_o\,
	datad => \inst1|settmp~0_combout\,
	combout => \inst1|ctmp[0]~1_combout\);

-- Location: LCCOMB_X86_Y5_N4
\inst1|caddr[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|caddr[1]~2_combout\ = (\inst1|caddr\(1) & ((\inst1|ctmp[0]~1_combout\) # ((\inst1|Selector0~2_combout\ & !\inst1|caddr\(0))))) # (!\inst1|caddr\(1) & (\inst1|Selector0~2_combout\ & ((\inst1|caddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector0~2_combout\,
	datab => \inst1|ctmp[0]~1_combout\,
	datac => \inst1|caddr\(1),
	datad => \inst1|caddr\(0),
	combout => \inst1|caddr[1]~2_combout\);

-- Location: FF_X86_Y5_N5
\inst1|caddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|caddr[1]~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|caddr\(1));

-- Location: LCCOMB_X86_Y5_N30
\inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|caddr\(2) $ (((\inst1|caddr\(0) & \inst1|caddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|caddr\(0),
	datac => \inst1|caddr\(1),
	datad => \inst1|caddr\(2),
	combout => \inst1|Add1~0_combout\);

-- Location: LCCOMB_X86_Y5_N18
\inst1|caddr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|caddr[2]~1_combout\ = (\inst1|Add1~0_combout\ & ((\inst1|Selector0~2_combout\) # ((\inst1|ctmp[0]~1_combout\ & \inst1|caddr\(2))))) # (!\inst1|Add1~0_combout\ & (\inst1|ctmp[0]~1_combout\ & (\inst1|caddr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~0_combout\,
	datab => \inst1|ctmp[0]~1_combout\,
	datac => \inst1|caddr\(2),
	datad => \inst1|Selector0~2_combout\,
	combout => \inst1|caddr[2]~1_combout\);

-- Location: FF_X86_Y5_N19
\inst1|caddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|caddr[2]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|caddr\(2));

-- Location: LCCOMB_X86_Y5_N14
\inst1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (\inst1|caddr\(0) & (\inst1|caddr\(1) & \inst1|caddr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|caddr\(0),
	datac => \inst1|caddr\(1),
	datad => \inst1|caddr\(2),
	combout => \inst1|Equal3~0_combout\);

-- Location: LCCOMB_X87_Y5_N8
\inst1|ep.e5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ep.e5~0_combout\ = (\inst1|ep.e5~q\) # ((\inst1|Equal3~0_combout\ & (\inst1|ep.e4~q\ & \inst1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|ep.e4~q\,
	datac => \inst1|ep.e5~q\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|ep.e5~0_combout\);

-- Location: FF_X87_Y5_N9
\inst1|ep.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ep.e5~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e5~q\);

-- Location: LCCOMB_X88_Y5_N12
\inst1|ctmp[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[0]~3_combout\ = (\inst1|ep.e5~q\ & (\inst1|ctmp[0]~1_combout\ & ((\inst1|ep.e0~q\) # (!\inst1|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ep.e5~q\,
	datab => \inst1|ctmp[0]~1_combout\,
	datac => \inst1|ep.e0~q\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|ctmp[0]~3_combout\);

-- Location: LCCOMB_X88_Y5_N14
\inst1|ctmp[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[6]~4_combout\ = (\inst1|ep.e5~q\) # (((!\inst1|ep.e0~q\ & \inst1|Equal5~0_combout\)) # (!\inst1|ctmp[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ep.e5~q\,
	datab => \inst1|ctmp[0]~1_combout\,
	datac => \inst1|ep.e0~q\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|ctmp[6]~4_combout\);

-- Location: LCCOMB_X89_Y5_N10
\inst1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = \inst1|ctmp\(0) $ (VCC)
-- \inst1|Add2~1\ = CARRY(\inst1|ctmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctmp\(0),
	datad => VCC,
	combout => \inst1|Add2~0_combout\,
	cout => \inst1|Add2~1\);

-- Location: LCCOMB_X89_Y5_N2
\inst1|ctmp[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[0]~11_combout\ = (\inst1|ctmp[0]~3_combout\ & ((\inst1|ctmp\(0)) # ((!\inst1|ctmp[6]~4_combout\ & \inst1|Add2~0_combout\)))) # (!\inst1|ctmp[0]~3_combout\ & (!\inst1|ctmp[6]~4_combout\ & ((\inst1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp[0]~3_combout\,
	datab => \inst1|ctmp[6]~4_combout\,
	datac => \inst1|ctmp\(0),
	datad => \inst1|Add2~0_combout\,
	combout => \inst1|ctmp[0]~11_combout\);

-- Location: FF_X89_Y5_N3
\inst1|ctmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ctmp[0]~11_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(0));

-- Location: LCCOMB_X89_Y5_N12
\inst1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_combout\ = (\inst1|ctmp\(1) & (!\inst1|Add2~1\)) # (!\inst1|ctmp\(1) & ((\inst1|Add2~1\) # (GND)))
-- \inst1|Add2~3\ = CARRY((!\inst1|Add2~1\) # (!\inst1|ctmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctmp\(1),
	datad => VCC,
	cin => \inst1|Add2~1\,
	combout => \inst1|Add2~2_combout\,
	cout => \inst1|Add2~3\);

-- Location: LCCOMB_X90_Y5_N24
\inst1|ctmp[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[1]~10_combout\ = (\inst1|ctmp[0]~3_combout\ & ((\inst1|ctmp\(1)) # ((!\inst1|ctmp[6]~4_combout\ & \inst1|Add2~2_combout\)))) # (!\inst1|ctmp[0]~3_combout\ & (!\inst1|ctmp[6]~4_combout\ & ((\inst1|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp[0]~3_combout\,
	datab => \inst1|ctmp[6]~4_combout\,
	datac => \inst1|ctmp\(1),
	datad => \inst1|Add2~2_combout\,
	combout => \inst1|ctmp[1]~10_combout\);

-- Location: FF_X90_Y5_N25
\inst1|ctmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ctmp[1]~10_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(1));

-- Location: LCCOMB_X89_Y5_N14
\inst1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~4_combout\ = (\inst1|ctmp\(2) & (\inst1|Add2~3\ $ (GND))) # (!\inst1|ctmp\(2) & (!\inst1|Add2~3\ & VCC))
-- \inst1|Add2~5\ = CARRY((\inst1|ctmp\(2) & !\inst1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctmp\(2),
	datad => VCC,
	cin => \inst1|Add2~3\,
	combout => \inst1|Add2~4_combout\,
	cout => \inst1|Add2~5\);

-- Location: LCCOMB_X89_Y5_N0
\inst1|ctmp[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[2]~9_combout\ = (\inst1|ctmp[0]~3_combout\ & ((\inst1|ctmp\(2)) # ((\inst1|Add2~4_combout\ & !\inst1|ctmp[6]~4_combout\)))) # (!\inst1|ctmp[0]~3_combout\ & (\inst1|Add2~4_combout\ & ((!\inst1|ctmp[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp[0]~3_combout\,
	datab => \inst1|Add2~4_combout\,
	datac => \inst1|ctmp\(2),
	datad => \inst1|ctmp[6]~4_combout\,
	combout => \inst1|ctmp[2]~9_combout\);

-- Location: FF_X89_Y5_N1
\inst1|ctmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ctmp[2]~9_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(2));

-- Location: LCCOMB_X89_Y5_N16
\inst1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~6_combout\ = (\inst1|ctmp\(3) & (!\inst1|Add2~5\)) # (!\inst1|ctmp\(3) & ((\inst1|Add2~5\) # (GND)))
-- \inst1|Add2~7\ = CARRY((!\inst1|Add2~5\) # (!\inst1|ctmp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp\(3),
	datad => VCC,
	cin => \inst1|Add2~5\,
	combout => \inst1|Add2~6_combout\,
	cout => \inst1|Add2~7\);

-- Location: LCCOMB_X89_Y5_N30
\inst1|ctmp[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[3]~8_combout\ = (\inst1|ctmp[0]~3_combout\ & ((\inst1|ctmp\(3)) # ((!\inst1|ctmp[6]~4_combout\ & \inst1|Add2~6_combout\)))) # (!\inst1|ctmp[0]~3_combout\ & (!\inst1|ctmp[6]~4_combout\ & ((\inst1|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp[0]~3_combout\,
	datab => \inst1|ctmp[6]~4_combout\,
	datac => \inst1|ctmp\(3),
	datad => \inst1|Add2~6_combout\,
	combout => \inst1|ctmp[3]~8_combout\);

-- Location: FF_X89_Y5_N31
\inst1|ctmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ctmp[3]~8_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(3));

-- Location: LCCOMB_X89_Y5_N18
\inst1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~8_combout\ = (\inst1|ctmp\(4) & (\inst1|Add2~7\ $ (GND))) # (!\inst1|ctmp\(4) & (!\inst1|Add2~7\ & VCC))
-- \inst1|Add2~9\ = CARRY((\inst1|ctmp\(4) & !\inst1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctmp\(4),
	datad => VCC,
	cin => \inst1|Add2~7\,
	combout => \inst1|Add2~8_combout\,
	cout => \inst1|Add2~9\);

-- Location: LCCOMB_X89_Y5_N28
\inst1|ctmp[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[4]~7_combout\ = (\inst1|ctmp[0]~3_combout\ & ((\inst1|ctmp\(4)) # ((!\inst1|ctmp[6]~4_combout\ & \inst1|Add2~8_combout\)))) # (!\inst1|ctmp[0]~3_combout\ & (!\inst1|ctmp[6]~4_combout\ & ((\inst1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp[0]~3_combout\,
	datab => \inst1|ctmp[6]~4_combout\,
	datac => \inst1|ctmp\(4),
	datad => \inst1|Add2~8_combout\,
	combout => \inst1|ctmp[4]~7_combout\);

-- Location: FF_X89_Y5_N29
\inst1|ctmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ctmp[4]~7_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(4));

-- Location: LCCOMB_X89_Y5_N20
\inst1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~10_combout\ = (\inst1|ctmp\(5) & (!\inst1|Add2~9\)) # (!\inst1|ctmp\(5) & ((\inst1|Add2~9\) # (GND)))
-- \inst1|Add2~11\ = CARRY((!\inst1|Add2~9\) # (!\inst1|ctmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp\(5),
	datad => VCC,
	cin => \inst1|Add2~9\,
	combout => \inst1|Add2~10_combout\,
	cout => \inst1|Add2~11\);

-- Location: LCCOMB_X89_Y5_N26
\inst1|ctmp[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[5]~6_combout\ = (\inst1|ctmp[0]~3_combout\ & ((\inst1|ctmp\(5)) # ((!\inst1|ctmp[6]~4_combout\ & \inst1|Add2~10_combout\)))) # (!\inst1|ctmp[0]~3_combout\ & (!\inst1|ctmp[6]~4_combout\ & ((\inst1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp[0]~3_combout\,
	datab => \inst1|ctmp[6]~4_combout\,
	datac => \inst1|ctmp\(5),
	datad => \inst1|Add2~10_combout\,
	combout => \inst1|ctmp[5]~6_combout\);

-- Location: FF_X89_Y5_N27
\inst1|ctmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ctmp[5]~6_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(5));

-- Location: LCCOMB_X89_Y5_N22
\inst1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~12_combout\ = (\inst1|ctmp\(6) & (\inst1|Add2~11\ $ (GND))) # (!\inst1|ctmp\(6) & (!\inst1|Add2~11\ & VCC))
-- \inst1|Add2~13\ = CARRY((\inst1|ctmp\(6) & !\inst1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctmp\(6),
	datad => VCC,
	cin => \inst1|Add2~11\,
	combout => \inst1|Add2~12_combout\,
	cout => \inst1|Add2~13\);

-- Location: LCCOMB_X89_Y5_N8
\inst1|ctmp[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp[6]~5_combout\ = (\inst1|Add2~12_combout\ & (((\inst1|ctmp\(6) & \inst1|ctmp[0]~3_combout\)) # (!\inst1|ctmp[6]~4_combout\))) # (!\inst1|Add2~12_combout\ & (((\inst1|ctmp\(6) & \inst1|ctmp[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~12_combout\,
	datab => \inst1|ctmp[6]~4_combout\,
	datac => \inst1|ctmp\(6),
	datad => \inst1|ctmp[0]~3_combout\,
	combout => \inst1|ctmp[6]~5_combout\);

-- Location: FF_X89_Y5_N9
\inst1|ctmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ctmp[6]~5_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(6));

-- Location: LCCOMB_X89_Y5_N4
\inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (\inst1|ctmp\(5) & (\inst1|ctmp\(6) & (\inst1|ctmp\(3) & \inst1|ctmp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp\(5),
	datab => \inst1|ctmp\(6),
	datac => \inst1|ctmp\(3),
	datad => \inst1|ctmp\(4),
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X89_Y5_N6
\inst1|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~1_combout\ = (\inst1|ctmp\(2) & (\inst1|ctmp\(0) & (\inst1|Equal4~0_combout\ & \inst1|ctmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp\(2),
	datab => \inst1|ctmp\(0),
	datac => \inst1|Equal4~0_combout\,
	datad => \inst1|ctmp\(1),
	combout => \inst1|Equal4~1_combout\);

-- Location: LCCOMB_X88_Y5_N30
\inst1|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~3_combout\ = (\inst1|ctmp[0]~1_combout\ & ((\inst1|ep.e0~q\) # ((\inst1|Equal4~1_combout\ & !\inst1|ctmp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~1_combout\,
	datab => \inst1|ctmp[0]~1_combout\,
	datac => \inst1|ep.e0~q\,
	datad => \inst1|ctmp\(7),
	combout => \inst1|Selector0~3_combout\);

-- Location: FF_X88_Y5_N31
\inst1|ep.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|Selector0~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e0~q\);

-- Location: LCCOMB_X89_Y5_N24
\inst1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~14_combout\ = \inst1|ctmp\(7) $ (!\inst1|Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctmp\(7),
	cin => \inst1|Add2~13\,
	combout => \inst1|Add2~14_combout\);

-- Location: LCCOMB_X88_Y5_N2
\inst1|ctmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp~0_combout\ = (\inst1|ep.e5~q\ & (!\inst1|ctmp\(7))) # (!\inst1|ep.e5~q\ & ((\inst1|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ep.e5~q\,
	datab => \inst1|ctmp\(7),
	datad => \inst1|Add2~14_combout\,
	combout => \inst1|ctmp~0_combout\);

-- Location: LCCOMB_X88_Y5_N16
\inst1|ctmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctmp~2_combout\ = (\inst1|ctmp[0]~1_combout\ & (!\inst1|ctmp~0_combout\ & ((\inst1|ep.e0~q\) # (!\inst1|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ep.e0~q\,
	datab => \inst1|Equal5~0_combout\,
	datac => \inst1|ctmp[0]~1_combout\,
	datad => \inst1|ctmp~0_combout\,
	combout => \inst1|ctmp~2_combout\);

-- Location: FF_X88_Y5_N17
\inst1|ctmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ctmp~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctmp\(7));

-- Location: LCCOMB_X88_Y5_N28
\inst1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = (!\inst1|ctmp\(7) & \inst1|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctmp\(7),
	datad => \inst1|Equal4~1_combout\,
	combout => \inst1|Equal5~0_combout\);

-- Location: LCCOMB_X87_Y5_N12
\inst1|incbits~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|incbits~0_combout\ = (\inst1|ep.e1~q\ & (((!\inst1|cbits\(4) & !\inst1|cbits\(3))) # (!\inst1|stop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(4),
	datab => \inst1|ep.e1~q\,
	datac => \inst1|stop~0_combout\,
	datad => \inst1|cbits\(3),
	combout => \inst1|incbits~0_combout\);

-- Location: LCCOMB_X88_Y5_N0
\inst1|incbits~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|incbits~1_combout\ = ((!\inst1|incbits~0_combout\ & ((!\inst1|ep.e3~q\) # (!\inst1|Equal2~0_combout\)))) # (!\inst1|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal5~0_combout\,
	datac => \inst1|ep.e3~q\,
	datad => \inst1|incbits~0_combout\,
	combout => \inst1|incbits~1_combout\);

-- Location: LCCOMB_X86_Y5_N28
\inst1|cbits[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cbits[0]~17_combout\ = (\inst1|Selector0~2_combout\) # (((\FPGA_I2C_SDAT~input_o\ & \inst1|settmp~0_combout\)) # (!\inst1|incbits~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector0~2_combout\,
	datab => \FPGA_I2C_SDAT~input_o\,
	datac => \inst1|incbits~1_combout\,
	datad => \inst1|settmp~0_combout\,
	combout => \inst1|cbits[0]~17_combout\);

-- Location: FF_X85_Y5_N23
\inst1|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|cbits[0]~7_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sclr => \inst1|incbits~1_combout\,
	ena => \inst1|cbits[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(0));

-- Location: LCCOMB_X85_Y5_N24
\inst1|cbits[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cbits[1]~9_combout\ = (\inst1|cbits\(1) & (!\inst1|cbits[0]~8\)) # (!\inst1|cbits\(1) & ((\inst1|cbits[0]~8\) # (GND)))
-- \inst1|cbits[1]~10\ = CARRY((!\inst1|cbits[0]~8\) # (!\inst1|cbits\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cbits\(1),
	datad => VCC,
	cin => \inst1|cbits[0]~8\,
	combout => \inst1|cbits[1]~9_combout\,
	cout => \inst1|cbits[1]~10\);

-- Location: FF_X85_Y5_N25
\inst1|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|cbits[1]~9_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sclr => \inst1|incbits~1_combout\,
	ena => \inst1|cbits[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(1));

-- Location: LCCOMB_X85_Y5_N26
\inst1|cbits[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cbits[2]~11_combout\ = (\inst1|cbits\(2) & (\inst1|cbits[1]~10\ $ (GND))) # (!\inst1|cbits\(2) & (!\inst1|cbits[1]~10\ & VCC))
-- \inst1|cbits[2]~12\ = CARRY((\inst1|cbits\(2) & !\inst1|cbits[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(2),
	datad => VCC,
	cin => \inst1|cbits[1]~10\,
	combout => \inst1|cbits[2]~11_combout\,
	cout => \inst1|cbits[2]~12\);

-- Location: FF_X85_Y5_N27
\inst1|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|cbits[2]~11_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sclr => \inst1|incbits~1_combout\,
	ena => \inst1|cbits[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(2));

-- Location: LCCOMB_X85_Y5_N28
\inst1|cbits[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cbits[3]~13_combout\ = (\inst1|cbits\(3) & (!\inst1|cbits[2]~12\)) # (!\inst1|cbits\(3) & ((\inst1|cbits[2]~12\) # (GND)))
-- \inst1|cbits[3]~14\ = CARRY((!\inst1|cbits[2]~12\) # (!\inst1|cbits\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cbits\(3),
	datad => VCC,
	cin => \inst1|cbits[2]~12\,
	combout => \inst1|cbits[3]~13_combout\,
	cout => \inst1|cbits[3]~14\);

-- Location: FF_X85_Y5_N29
\inst1|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|cbits[3]~13_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sclr => \inst1|incbits~1_combout\,
	ena => \inst1|cbits[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(3));

-- Location: LCCOMB_X85_Y5_N30
\inst1|cbits[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cbits[4]~15_combout\ = \inst1|cbits\(4) $ (!\inst1|cbits[3]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(4),
	cin => \inst1|cbits[3]~14\,
	combout => \inst1|cbits[4]~15_combout\);

-- Location: FF_X85_Y5_N31
\inst1|cbits[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|cbits[4]~15_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sclr => \inst1|incbits~1_combout\,
	ena => \inst1|cbits[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cbits\(4));

-- Location: LCCOMB_X87_Y5_N16
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = ((!\inst1|cbits\(3)) # (!\inst1|stop~0_combout\)) # (!\inst1|cbits\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(4),
	datac => \inst1|stop~0_combout\,
	datad => \inst1|cbits\(3),
	combout => \inst1|Equal2~0_combout\);

-- Location: LCCOMB_X88_Y5_N10
\inst1|ep.e4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ep.e4~0_combout\ = (\inst1|Equal5~0_combout\ & (!\inst1|Equal2~0_combout\ & (\inst1|ep.e3~q\))) # (!\inst1|Equal5~0_combout\ & (((\inst1|ep.e4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|ep.e3~q\,
	datac => \inst1|ep.e4~q\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|ep.e4~0_combout\);

-- Location: FF_X88_Y5_N11
\inst1|ep.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|ep.e4~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ep.e4~q\);

-- Location: LCCOMB_X88_Y5_N26
\inst1|sdat~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sdat~4_combout\ = (\inst1|Equal5~0_combout\ & (\inst1|ep.e0~q\ & ((\inst1|ep.e4~q\) # (!\inst1|sdat~q\)))) # (!\inst1|Equal5~0_combout\ & (((!\inst1|sdat~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ep.e4~q\,
	datab => \inst1|sdat~q\,
	datac => \inst1|ep.e0~q\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|sdat~4_combout\);

-- Location: LCCOMB_X88_Y5_N20
\inst1|ep.e4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ep.e4~1_combout\ = (!\inst1|Equal2~0_combout\ & (!\inst1|ctmp\(7) & (\inst1|ep.e3~q\ & \inst1|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|ctmp\(7),
	datac => \inst1|ep.e3~q\,
	datad => \inst1|Equal4~1_combout\,
	combout => \inst1|ep.e4~1_combout\);

-- Location: LCCOMB_X86_Y5_N6
\inst1|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~4_combout\ = (\inst1|caddr\(2) & ((\inst1|cbits\(0) $ (\inst1|caddr\(1))))) # (!\inst1|caddr\(2) & (!\inst1|cbits\(1) & ((!\inst1|caddr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(1),
	datab => \inst1|cbits\(0),
	datac => \inst1|caddr\(1),
	datad => \inst1|caddr\(2),
	combout => \inst1|Mux12~4_combout\);

-- Location: LCCOMB_X86_Y5_N8
\inst1|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~5_combout\ = (\inst1|cbits\(0) & (!\inst1|caddr\(1) & (\inst1|cbits\(1) $ (!\inst1|caddr\(2))))) # (!\inst1|cbits\(0) & (\inst1|caddr\(2) $ (((!\inst1|caddr\(1)) # (!\inst1|cbits\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(1),
	datab => \inst1|cbits\(0),
	datac => \inst1|caddr\(1),
	datad => \inst1|caddr\(2),
	combout => \inst1|Mux12~5_combout\);

-- Location: LCCOMB_X86_Y5_N10
\inst1|Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~13_combout\ = (\inst1|caddr\(0) & ((\inst1|Mux12~5_combout\))) # (!\inst1|caddr\(0) & (\inst1|Mux12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux12~4_combout\,
	datac => \inst1|Mux12~5_combout\,
	datad => \inst1|caddr\(0),
	combout => \inst1|Mux12~13_combout\);

-- Location: LCCOMB_X86_Y5_N16
\inst1|sdat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sdat~0_combout\ = (\inst1|cbits\(0) & (\inst1|caddr\(1) & (\inst1|caddr\(0) $ (!\inst1|caddr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|caddr\(0),
	datab => \inst1|cbits\(0),
	datac => \inst1|caddr\(1),
	datad => \inst1|caddr\(2),
	combout => \inst1|sdat~0_combout\);

-- Location: LCCOMB_X86_Y5_N2
\inst1|sdat~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sdat~1_combout\ = (\inst1|cbits\(2) & (\inst1|Mux12~13_combout\)) # (!\inst1|cbits\(2) & (((\inst1|cbits\(1) & \inst1|sdat~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux12~13_combout\,
	datab => \inst1|cbits\(1),
	datac => \inst1|cbits\(2),
	datad => \inst1|sdat~0_combout\,
	combout => \inst1|sdat~1_combout\);

-- Location: LCCOMB_X85_Y5_N0
\inst1|sdat~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sdat~2_combout\ = (!\inst1|cbits\(4) & (\inst1|cbits\(3) & (!\inst1|incbits~1_combout\ & \inst1|sdat~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(4),
	datab => \inst1|cbits\(3),
	datac => \inst1|incbits~1_combout\,
	datad => \inst1|sdat~1_combout\,
	combout => \inst1|sdat~2_combout\);

-- Location: LCCOMB_X85_Y5_N6
\inst1|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~9_combout\ = (\inst1|caddr\(1) & (\inst1|caddr\(0) & (\inst1|cbits\(2) $ (!\inst1|caddr\(2))))) # (!\inst1|caddr\(1) & ((\inst1|caddr\(2)) # ((\inst1|caddr\(0) & \inst1|cbits\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|caddr\(1),
	datab => \inst1|caddr\(0),
	datac => \inst1|cbits\(2),
	datad => \inst1|caddr\(2),
	combout => \inst1|Mux12~9_combout\);

-- Location: LCCOMB_X85_Y5_N4
\inst1|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~8_combout\ = (!\inst1|caddr\(1) & ((\inst1|caddr\(0) & (\inst1|cbits\(2) $ (!\inst1|caddr\(2)))) # (!\inst1|caddr\(0) & (!\inst1|cbits\(2) & \inst1|caddr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|caddr\(1),
	datab => \inst1|caddr\(0),
	datac => \inst1|cbits\(2),
	datad => \inst1|caddr\(2),
	combout => \inst1|Mux12~8_combout\);

-- Location: LCCOMB_X85_Y5_N16
\inst1|Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~14_combout\ = (\inst1|cbits\(1) & (\inst1|Mux12~9_combout\)) # (!\inst1|cbits\(1) & ((\inst1|Mux12~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux12~9_combout\,
	datac => \inst1|Mux12~8_combout\,
	datad => \inst1|cbits\(1),
	combout => \inst1|Mux12~14_combout\);

-- Location: LCCOMB_X85_Y5_N14
\inst1|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~11_combout\ = (\inst1|cbits\(4) & (\inst1|cbits\(0))) # (!\inst1|cbits\(4) & ((\inst1|cbits\(2) & (\inst1|cbits\(0) & !\inst1|cbits\(1))) # (!\inst1|cbits\(2) & ((\inst1|cbits\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(0),
	datab => \inst1|cbits\(4),
	datac => \inst1|cbits\(2),
	datad => \inst1|cbits\(1),
	combout => \inst1|Mux12~11_combout\);

-- Location: LCCOMB_X85_Y5_N10
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (!\inst1|caddr\(1) & \inst1|caddr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|caddr\(1),
	datad => \inst1|caddr\(2),
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y5_N20
\inst1|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~10_combout\ = (\inst1|Mux4~0_combout\ & ((\inst1|cbits\(1) & (\inst1|cbits\(2) $ (!\inst1|caddr\(0)))) # (!\inst1|cbits\(1) & (\inst1|cbits\(2) & !\inst1|caddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux4~0_combout\,
	datab => \inst1|cbits\(1),
	datac => \inst1|cbits\(2),
	datad => \inst1|caddr\(0),
	combout => \inst1|Mux12~10_combout\);

-- Location: LCCOMB_X85_Y5_N8
\inst1|Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~12_combout\ = (\inst1|cbits\(4) & ((\inst1|Mux12~11_combout\ & (\inst1|Mux12~14_combout\)) # (!\inst1|Mux12~11_combout\ & ((\inst1|Mux12~10_combout\))))) # (!\inst1|cbits\(4) & (((\inst1|Mux12~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cbits\(4),
	datab => \inst1|Mux12~14_combout\,
	datac => \inst1|Mux12~11_combout\,
	datad => \inst1|Mux12~10_combout\,
	combout => \inst1|Mux12~12_combout\);

-- Location: LCCOMB_X85_Y5_N18
\inst1|sdat~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sdat~3_combout\ = (\inst1|sdat~2_combout\) # ((\inst1|Mux12~12_combout\ & (!\inst1|incbits~1_combout\ & !\inst1|cbits\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdat~2_combout\,
	datab => \inst1|Mux12~12_combout\,
	datac => \inst1|incbits~1_combout\,
	datad => \inst1|cbits\(3),
	combout => \inst1|sdat~3_combout\);

-- Location: LCCOMB_X88_Y5_N4
\inst1|sdat~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sdat~5_combout\ = (!\inst1|sdat~3_combout\ & (((\inst1|ep.e4~1_combout\) # (!\inst1|incbits~1_combout\)) # (!\inst1|sdat~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sdat~4_combout\,
	datab => \inst1|ep.e4~1_combout\,
	datac => \inst1|sdat~3_combout\,
	datad => \inst1|incbits~1_combout\,
	combout => \inst1|sdat~5_combout\);

-- Location: FF_X88_Y5_N5
\inst1|sdat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|sdat~5_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sdat~q\);

-- Location: LCCOMB_X87_Y5_N26
\inst1|setbitz\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|setbitz~combout\ = (!\inst1|ep.e3~q\ & !\inst1|ep.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ep.e3~q\,
	datad => \inst1|ep.e2~q\,
	combout => \inst1|setbitz~combout\);

-- Location: LCCOMB_X1_Y36_N28
\inst4|clkdiv[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[0]~33_combout\ = !\inst4|clkdiv\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|clkdiv\(0),
	combout => \inst4|clkdiv[0]~33_combout\);

-- Location: FF_X1_Y36_N29
\inst4|clkdiv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[0]~33_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(0));

-- Location: LCCOMB_X1_Y36_N30
\inst1|cclkdiv[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cclkdiv[1]~0_combout\ = \inst1|cclkdiv\(1) $ (\inst4|clkdiv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cclkdiv\(1),
	datad => \inst4|clkdiv\(0),
	combout => \inst1|cclkdiv[1]~0_combout\);

-- Location: FF_X1_Y36_N31
\inst1|cclkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|cclkdiv[1]~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cclkdiv\(1));

-- Location: LCCOMB_X1_Y36_N4
\inst4|clkdiv[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[1]~11_combout\ = (\inst4|clkdiv\(1) & (\inst4|clkdiv\(0) $ (VCC))) # (!\inst4|clkdiv\(1) & (\inst4|clkdiv\(0) & VCC))
-- \inst4|clkdiv[1]~12\ = CARRY((\inst4|clkdiv\(1) & \inst4|clkdiv\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|clkdiv\(1),
	datab => \inst4|clkdiv\(0),
	datad => VCC,
	combout => \inst4|clkdiv[1]~11_combout\,
	cout => \inst4|clkdiv[1]~12\);

-- Location: FF_X1_Y36_N5
\inst4|clkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[1]~11_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(1));

-- Location: LCCOMB_X1_Y36_N6
\inst4|clkdiv[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[2]~13_combout\ = (\inst4|clkdiv\(2) & (!\inst4|clkdiv[1]~12\)) # (!\inst4|clkdiv\(2) & ((\inst4|clkdiv[1]~12\) # (GND)))
-- \inst4|clkdiv[2]~14\ = CARRY((!\inst4|clkdiv[1]~12\) # (!\inst4|clkdiv\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|clkdiv\(2),
	datad => VCC,
	cin => \inst4|clkdiv[1]~12\,
	combout => \inst4|clkdiv[2]~13_combout\,
	cout => \inst4|clkdiv[2]~14\);

-- Location: FF_X1_Y36_N7
\inst4|clkdiv[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[2]~13_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(2));

-- Location: LCCOMB_X1_Y36_N8
\inst4|clkdiv[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[3]~15_combout\ = (\inst4|clkdiv\(3) & (\inst4|clkdiv[2]~14\ $ (GND))) # (!\inst4|clkdiv\(3) & (!\inst4|clkdiv[2]~14\ & VCC))
-- \inst4|clkdiv[3]~16\ = CARRY((\inst4|clkdiv\(3) & !\inst4|clkdiv[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|clkdiv\(3),
	datad => VCC,
	cin => \inst4|clkdiv[2]~14\,
	combout => \inst4|clkdiv[3]~15_combout\,
	cout => \inst4|clkdiv[3]~16\);

-- Location: FF_X1_Y36_N9
\inst4|clkdiv[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[3]~15_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(3));

-- Location: LCCOMB_X1_Y36_N10
\inst4|clkdiv[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[4]~17_combout\ = (\inst4|clkdiv\(4) & (!\inst4|clkdiv[3]~16\)) # (!\inst4|clkdiv\(4) & ((\inst4|clkdiv[3]~16\) # (GND)))
-- \inst4|clkdiv[4]~18\ = CARRY((!\inst4|clkdiv[3]~16\) # (!\inst4|clkdiv\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|clkdiv\(4),
	datad => VCC,
	cin => \inst4|clkdiv[3]~16\,
	combout => \inst4|clkdiv[4]~17_combout\,
	cout => \inst4|clkdiv[4]~18\);

-- Location: FF_X1_Y36_N11
\inst4|clkdiv[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[4]~17_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(4));

-- Location: LCCOMB_X1_Y36_N12
\inst4|clkdiv[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[5]~19_combout\ = (\inst4|clkdiv\(5) & (\inst4|clkdiv[4]~18\ $ (GND))) # (!\inst4|clkdiv\(5) & (!\inst4|clkdiv[4]~18\ & VCC))
-- \inst4|clkdiv[5]~20\ = CARRY((\inst4|clkdiv\(5) & !\inst4|clkdiv[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|clkdiv\(5),
	datad => VCC,
	cin => \inst4|clkdiv[4]~18\,
	combout => \inst4|clkdiv[5]~19_combout\,
	cout => \inst4|clkdiv[5]~20\);

-- Location: FF_X1_Y36_N13
\inst4|clkdiv[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[5]~19_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(5));

-- Location: LCCOMB_X1_Y36_N14
\inst4|clkdiv[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[6]~21_combout\ = (\inst4|clkdiv\(6) & (!\inst4|clkdiv[5]~20\)) # (!\inst4|clkdiv\(6) & ((\inst4|clkdiv[5]~20\) # (GND)))
-- \inst4|clkdiv[6]~22\ = CARRY((!\inst4|clkdiv[5]~20\) # (!\inst4|clkdiv\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|clkdiv\(6),
	datad => VCC,
	cin => \inst4|clkdiv[5]~20\,
	combout => \inst4|clkdiv[6]~21_combout\,
	cout => \inst4|clkdiv[6]~22\);

-- Location: FF_X1_Y36_N15
\inst4|clkdiv[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[6]~21_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(6));

-- Location: LCCOMB_X1_Y36_N16
\inst4|clkdiv[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[7]~23_combout\ = (\inst4|clkdiv\(7) & (\inst4|clkdiv[6]~22\ $ (GND))) # (!\inst4|clkdiv\(7) & (!\inst4|clkdiv[6]~22\ & VCC))
-- \inst4|clkdiv[7]~24\ = CARRY((\inst4|clkdiv\(7) & !\inst4|clkdiv[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|clkdiv\(7),
	datad => VCC,
	cin => \inst4|clkdiv[6]~22\,
	combout => \inst4|clkdiv[7]~23_combout\,
	cout => \inst4|clkdiv[7]~24\);

-- Location: FF_X1_Y36_N17
\inst4|clkdiv[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[7]~23_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(7));

-- Location: LCCOMB_X1_Y36_N18
\inst4|clkdiv[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[8]~25_combout\ = (\inst4|clkdiv\(8) & (!\inst4|clkdiv[7]~24\)) # (!\inst4|clkdiv\(8) & ((\inst4|clkdiv[7]~24\) # (GND)))
-- \inst4|clkdiv[8]~26\ = CARRY((!\inst4|clkdiv[7]~24\) # (!\inst4|clkdiv\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|clkdiv\(8),
	datad => VCC,
	cin => \inst4|clkdiv[7]~24\,
	combout => \inst4|clkdiv[8]~25_combout\,
	cout => \inst4|clkdiv[8]~26\);

-- Location: FF_X1_Y36_N19
\inst4|clkdiv[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[8]~25_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(8));

-- Location: LCCOMB_X1_Y36_N20
\inst4|clkdiv[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[9]~27_combout\ = (\inst4|clkdiv\(9) & (\inst4|clkdiv[8]~26\ $ (GND))) # (!\inst4|clkdiv\(9) & (!\inst4|clkdiv[8]~26\ & VCC))
-- \inst4|clkdiv[9]~28\ = CARRY((\inst4|clkdiv\(9) & !\inst4|clkdiv[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|clkdiv\(9),
	datad => VCC,
	cin => \inst4|clkdiv[8]~26\,
	combout => \inst4|clkdiv[9]~27_combout\,
	cout => \inst4|clkdiv[9]~28\);

-- Location: FF_X1_Y36_N21
\inst4|clkdiv[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[9]~27_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(9));

-- Location: LCCOMB_X1_Y36_N22
\inst4|clkdiv[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[10]~29_combout\ = (\inst4|clkdiv\(10) & (!\inst4|clkdiv[9]~28\)) # (!\inst4|clkdiv\(10) & ((\inst4|clkdiv[9]~28\) # (GND)))
-- \inst4|clkdiv[10]~30\ = CARRY((!\inst4|clkdiv[9]~28\) # (!\inst4|clkdiv\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|clkdiv\(10),
	datad => VCC,
	cin => \inst4|clkdiv[9]~28\,
	combout => \inst4|clkdiv[10]~29_combout\,
	cout => \inst4|clkdiv[10]~30\);

-- Location: FF_X1_Y36_N23
\inst4|clkdiv[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkdiv[10]~29_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(10));

-- Location: LCCOMB_X1_Y36_N24
\inst4|clkdiv[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkdiv[11]~31_combout\ = \inst4|clkdiv\(11) $ (!\inst4|clkdiv[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|clkdiv\(11),
	cin => \inst4|clkdiv[10]~30\,
	combout => \inst4|clkdiv[11]~31_combout\);

-- Location: FF_X1_Y36_N25
\inst4|clkdiv[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst4|clkdiv[11]~31_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkdiv\(11));

-- Location: CLKCTRL_G3
\inst4|clkdiv[11]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|clkdiv[11]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|clkdiv[11]~clkctrl_outclk\);

-- Location: IOIBUF_X40_Y73_N1
\ADC_DOUT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_DOUT,
	o => \ADC_DOUT~input_o\);

-- Location: LCCOMB_X41_Y71_N6
\inst4|sr_dout[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[0]~feeder_combout\ = \ADC_DOUT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DOUT~input_o\,
	combout => \inst4|sr_dout[0]~feeder_combout\);

-- Location: FF_X41_Y71_N7
\inst4|sr_dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[0]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(0));

-- Location: LCCOMB_X41_Y71_N12
\inst4|sr_dout[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[1]~feeder_combout\ = \inst4|sr_dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(0),
	combout => \inst4|sr_dout[1]~feeder_combout\);

-- Location: FF_X41_Y71_N13
\inst4|sr_dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[1]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(1));

-- Location: LCCOMB_X41_Y71_N10
\inst4|sr_dout[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[2]~feeder_combout\ = \inst4|sr_dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(1),
	combout => \inst4|sr_dout[2]~feeder_combout\);

-- Location: FF_X41_Y71_N11
\inst4|sr_dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[2]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(2));

-- Location: LCCOMB_X41_Y71_N8
\inst4|sr_dout[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[3]~feeder_combout\ = \inst4|sr_dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(2),
	combout => \inst4|sr_dout[3]~feeder_combout\);

-- Location: FF_X41_Y71_N9
\inst4|sr_dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[3]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(3));

-- Location: LCCOMB_X38_Y70_N24
\inst4|sr_dout[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[4]~feeder_combout\ = \inst4|sr_dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(3),
	combout => \inst4|sr_dout[4]~feeder_combout\);

-- Location: FF_X38_Y70_N25
\inst4|sr_dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[4]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(4));

-- Location: LCCOMB_X38_Y70_N10
\inst4|sr_dout[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[5]~feeder_combout\ = \inst4|sr_dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(4),
	combout => \inst4|sr_dout[5]~feeder_combout\);

-- Location: FF_X38_Y70_N11
\inst4|sr_dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[5]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(5));

-- Location: LCCOMB_X38_Y70_N20
\inst4|sr_dout[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[6]~feeder_combout\ = \inst4|sr_dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(5),
	combout => \inst4|sr_dout[6]~feeder_combout\);

-- Location: FF_X38_Y70_N21
\inst4|sr_dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[6]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(6));

-- Location: LCCOMB_X38_Y70_N22
\inst4|sr_dout[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[7]~feeder_combout\ = \inst4|sr_dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(6),
	combout => \inst4|sr_dout[7]~feeder_combout\);

-- Location: FF_X38_Y70_N23
\inst4|sr_dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[7]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(7));

-- Location: FF_X38_Y70_N1
\inst4|sr_dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(7),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(8));

-- Location: LCCOMB_X38_Y70_N26
\inst4|sr_dout[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[9]~feeder_combout\ = \inst4|sr_dout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(8),
	combout => \inst4|sr_dout[9]~feeder_combout\);

-- Location: FF_X38_Y70_N27
\inst4|sr_dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[9]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(9));

-- Location: FF_X38_Y70_N29
\inst4|sr_dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(9),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(10));

-- Location: LCCOMB_X38_Y70_N14
\inst4|sr_dout[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[11]~feeder_combout\ = \inst4|sr_dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(10),
	combout => \inst4|sr_dout[11]~feeder_combout\);

-- Location: FF_X38_Y70_N15
\inst4|sr_dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[11]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(11));

-- Location: LCCOMB_X39_Y70_N22
\inst4|sr_dout[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_dout[12]~feeder_combout\ = \inst4|sr_dout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(11),
	combout => \inst4|sr_dout[12]~feeder_combout\);

-- Location: FF_X39_Y70_N23
\inst4|sr_dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_dout[12]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(12));

-- Location: FF_X39_Y70_N9
\inst4|sr_dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(12),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|ep.rd1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_dout\(13));

-- Location: LCCOMB_X39_Y70_N30
\inst4|es.sready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|es.sready~0_combout\ = (\inst4|ep.save~q\ & (!\inst4|sr_dout\(12) & \inst4|sr_dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.save~q\,
	datac => \inst4|sr_dout\(12),
	datad => \inst4|sr_dout\(13),
	combout => \inst4|es.sready~0_combout\);

-- Location: FF_X39_Y70_N31
\inst4|ep.sready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|es.sready~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.sready~q\);

-- Location: LCCOMB_X34_Y70_N16
\inst4|cmd_addr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[1]~0_combout\ = \inst4|cmd_addr\(1) $ (((\inst4|cmd_addr\(0) & !\inst4|ep.conf0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cmd_addr\(0),
	datac => \inst4|cmd_addr\(1),
	datad => \inst4|ep.conf0~q\,
	combout => \inst4|cmd_addr[1]~0_combout\);

-- Location: FF_X34_Y70_N17
\inst4|cmd_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|cmd_addr[1]~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cmd_addr\(1));

-- Location: LCCOMB_X34_Y70_N12
\inst4|es.conf0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|es.conf0~2_combout\ = (((\inst4|cmd_addr\(0) & \inst4|cmd_addr\(1))) # (!\inst4|Equal2~0_combout\)) # (!\inst4|ep.conf1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cmd_addr\(0),
	datab => \inst4|ep.conf1~q\,
	datac => \inst4|Equal2~0_combout\,
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|es.conf0~2_combout\);

-- Location: FF_X34_Y70_N13
\inst4|ep.conf0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|es.conf0~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.conf0~q\);

-- Location: LCCOMB_X34_Y70_N10
\inst4|cmd_addr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[0]~1_combout\ = \inst4|cmd_addr\(0) $ (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|cmd_addr\(0),
	datad => \inst4|ep.conf0~q\,
	combout => \inst4|cmd_addr[0]~1_combout\);

-- Location: FF_X34_Y70_N11
\inst4|cmd_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|cmd_addr[0]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cmd_addr\(0));

-- Location: LCCOMB_X34_Y70_N20
\inst4|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = (\inst4|cmd_addr\(0) & \inst4|cmd_addr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cmd_addr\(0),
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|Selector1~0_combout\);

-- Location: LCCOMB_X39_Y70_N20
\inst4|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~1_combout\ = (\inst4|ep.sready~q\) # ((\inst4|ep.conf1~q\ & (\inst4|Selector1~0_combout\ & \inst4|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.sready~q\,
	datab => \inst4|ep.conf1~q\,
	datac => \inst4|Selector1~0_combout\,
	datad => \inst4|Equal2~0_combout\,
	combout => \inst4|Selector1~1_combout\);

-- Location: FF_X39_Y70_N21
\inst4|ep.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|Selector1~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.idle~q\);

-- Location: LCCOMB_X39_Y70_N6
\inst4|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~0_combout\ = (\inst4|ep.idle~q\) # ((\inst4|ep.save~q\ & ((\inst4|sr_dout\(12)) # (!\inst4|sr_dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.save~q\,
	datab => \inst4|ep.idle~q\,
	datac => \inst4|sr_dout\(12),
	datad => \inst4|sr_dout\(13),
	combout => \inst4|Selector2~0_combout\);

-- Location: FF_X39_Y70_N7
\inst4|ep.rd0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|Selector2~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.rd0~q\);

-- Location: LCCOMB_X39_Y70_N0
\inst4|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = (\inst4|ep.rd0~q\) # ((!\inst4|es.save~0_combout\ & \inst4|ep.rd1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|es.save~0_combout\,
	datac => \inst4|ep.rd1~q\,
	datad => \inst4|ep.rd0~q\,
	combout => \inst4|Selector3~0_combout\);

-- Location: FF_X39_Y70_N1
\inst4|ep.rd1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|Selector3~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.rd1~q\);

-- Location: LCCOMB_X39_Y70_N18
\inst4|cs_cycle[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[1]~1_combout\ = (\inst4|cs_cycle\(0) & ((\inst4|ep.save~q\) # ((\inst4|ep.conf1~q\) # (\inst4|ep.rd1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.save~q\,
	datab => \inst4|ep.conf1~q\,
	datac => \inst4|cs_cycle\(0),
	datad => \inst4|ep.rd1~q\,
	combout => \inst4|cs_cycle[1]~1_combout\);

-- Location: LCCOMB_X39_Y70_N12
\inst4|cs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cs~0_combout\ = (\inst4|ep.save~q\) # ((\inst4|ep.conf1~q\) # (\inst4|ep.rd1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.save~q\,
	datab => \inst4|ep.conf1~q\,
	datad => \inst4|ep.rd1~q\,
	combout => \inst4|cs~0_combout\);

-- Location: LCCOMB_X39_Y70_N16
\inst4|cs_cycle[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[2]~3_combout\ = \inst4|cs_cycle\(2) $ (((\inst4|cs_cycle\(1) & (\inst4|cs_cycle\(0) & \inst4|cs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cs_cycle\(1),
	datab => \inst4|cs_cycle\(0),
	datac => \inst4|cs_cycle\(2),
	datad => \inst4|cs~0_combout\,
	combout => \inst4|cs_cycle[2]~3_combout\);

-- Location: FF_X39_Y70_N17
\inst4|cs_cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|cs_cycle[2]~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(2));

-- Location: LCCOMB_X39_Y70_N14
\inst4|cs_cycle[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[3]~2_combout\ = \inst4|cs_cycle\(3) $ (((\inst4|cs_cycle\(1) & (\inst4|cs_cycle[1]~1_combout\ & \inst4|cs_cycle\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cs_cycle\(1),
	datab => \inst4|cs_cycle[1]~1_combout\,
	datac => \inst4|cs_cycle\(3),
	datad => \inst4|cs_cycle\(2),
	combout => \inst4|cs_cycle[3]~2_combout\);

-- Location: FF_X39_Y70_N15
\inst4|cs_cycle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|cs_cycle[3]~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(3));

-- Location: LCCOMB_X39_Y70_N28
\inst4|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = (\inst4|cs_cycle\(1) & (\inst4|cs_cycle\(0) & (\inst4|cs_cycle\(3) & \inst4|cs_cycle\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cs_cycle\(1),
	datab => \inst4|cs_cycle\(0),
	datac => \inst4|cs_cycle\(3),
	datad => \inst4|cs_cycle\(2),
	combout => \inst4|Equal2~0_combout\);

-- Location: LCCOMB_X34_Y70_N26
\inst4|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = ((!\inst4|Equal2~0_combout\ & \inst4|ep.conf1~q\)) # (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~0_combout\,
	datac => \inst4|ep.conf1~q\,
	datad => \inst4|ep.conf0~q\,
	combout => \inst4|Selector0~0_combout\);

-- Location: FF_X34_Y70_N27
\inst4|ep.conf1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|Selector0~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.conf1~q\);

-- Location: LCCOMB_X39_Y70_N4
\inst4|cs_cycle[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[0]~0_combout\ = \inst4|cs_cycle\(0) $ (((\inst4|ep.save~q\) # ((\inst4|ep.conf1~q\) # (\inst4|ep.rd1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.save~q\,
	datab => \inst4|ep.conf1~q\,
	datac => \inst4|cs_cycle\(0),
	datad => \inst4|ep.rd1~q\,
	combout => \inst4|cs_cycle[0]~0_combout\);

-- Location: FF_X39_Y70_N5
\inst4|cs_cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|cs_cycle[0]~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(0));

-- Location: LCCOMB_X39_Y70_N26
\inst4|cs_cycle[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cs_cycle[1]~4_combout\ = \inst4|cs_cycle\(1) $ (((\inst4|cs_cycle\(0) & \inst4|cs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cs_cycle\(0),
	datac => \inst4|cs_cycle\(1),
	datad => \inst4|cs~0_combout\,
	combout => \inst4|cs_cycle[1]~4_combout\);

-- Location: FF_X39_Y70_N27
\inst4|cs_cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|cs_cycle[1]~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cs_cycle\(1));

-- Location: LCCOMB_X39_Y70_N24
\inst4|es.save~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|es.save~0_combout\ = (\inst4|cs_cycle\(1) & (!\inst4|cs_cycle\(0) & (\inst4|cs_cycle\(3) & \inst4|cs_cycle\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cs_cycle\(1),
	datab => \inst4|cs_cycle\(0),
	datac => \inst4|cs_cycle\(3),
	datad => \inst4|cs_cycle\(2),
	combout => \inst4|es.save~0_combout\);

-- Location: LCCOMB_X39_Y70_N10
\inst4|es.save~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|es.save~1_combout\ = (\inst4|es.save~0_combout\ & \inst4|ep.rd1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|es.save~0_combout\,
	datad => \inst4|ep.rd1~q\,
	combout => \inst4|es.save~1_combout\);

-- Location: FF_X39_Y70_N11
\inst4|ep.save\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|es.save~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ep.save~q\);

-- Location: LCCOMB_X39_Y70_N2
\inst4|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~0_combout\ = (\inst4|ep.save~q\ & (!\inst4|sr_dout\(12) & !\inst4|sr_dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.save~q\,
	datac => \inst4|sr_dout\(12),
	datad => \inst4|sr_dout\(13),
	combout => \inst4|Decoder0~0_combout\);

-- Location: IOIBUF_X42_Y73_N1
\AUD_ADCDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: FF_X43_Y70_N27
\inst2|adcdats\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \AUD_ADCDAT~input_o\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|adcdats~q\);

-- Location: IOIBUF_X47_Y73_N1
\AUD_BCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: FF_X47_Y71_N9
\inst2|bclks\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \AUD_BCLK~input_o\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|bclks~q\);

-- Location: LCCOMB_X45_Y71_N16
\inst2|cbits[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cbits[0]~3_combout\ = !\inst2|cbits\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|cbits\(0),
	combout => \inst2|cbits[0]~3_combout\);

-- Location: FF_X45_Y71_N17
\inst2|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|cbits[0]~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(0));

-- Location: LCCOMB_X45_Y71_N22
\inst2|cbits[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cbits[1]~2_combout\ = \inst2|cbits\(1) $ (((\inst2|cbits\(0) & \inst2|ep.e3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cbits\(0),
	datac => \inst2|cbits\(1),
	datad => \inst2|ep.e3~q\,
	combout => \inst2|cbits[1]~2_combout\);

-- Location: FF_X45_Y71_N23
\inst2|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|cbits[1]~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(1));

-- Location: LCCOMB_X45_Y71_N4
\inst2|cbits[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cbits[2]~1_combout\ = \inst2|cbits\(2) $ (((\inst2|cbits\(1) & (\inst2|ep.e3~q\ & \inst2|cbits\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cbits\(1),
	datab => \inst2|ep.e3~q\,
	datac => \inst2|cbits\(2),
	datad => \inst2|cbits\(0),
	combout => \inst2|cbits[2]~1_combout\);

-- Location: FF_X45_Y71_N5
\inst2|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|cbits[2]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(2));

-- Location: LCCOMB_X45_Y71_N30
\inst2|es.e5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|es.e5~0_combout\ = (\inst2|cbits\(0) & (\inst2|cbits\(1) & \inst2|ep.e3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cbits\(0),
	datac => \inst2|cbits\(1),
	datad => \inst2|ep.e3~q\,
	combout => \inst2|es.e5~0_combout\);

-- Location: LCCOMB_X45_Y71_N2
\inst2|cbits[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cbits[3]~0_combout\ = \inst2|cbits\(3) $ (((\inst2|es.e5~0_combout\ & \inst2|cbits\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|es.e5~0_combout\,
	datab => \inst2|cbits\(2),
	datac => \inst2|cbits\(3),
	combout => \inst2|cbits[3]~0_combout\);

-- Location: FF_X45_Y71_N3
\inst2|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|cbits[3]~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cbits\(3));

-- Location: LCCOMB_X45_Y71_N18
\inst2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (((!\inst2|cbits\(3)) # (!\inst2|cbits\(2))) # (!\inst2|cbits\(0))) # (!\inst2|cbits\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cbits\(1),
	datab => \inst2|cbits\(0),
	datac => \inst2|cbits\(2),
	datad => \inst2|cbits\(3),
	combout => \inst2|Selector3~0_combout\);

-- Location: LCCOMB_X45_Y71_N28
\inst2|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (\inst2|bclks~q\ & ((\inst2|ep.e4~q\) # ((\inst2|ep.e3~q\ & \inst2|Selector3~0_combout\)))) # (!\inst2|bclks~q\ & (\inst2|ep.e3~q\ & ((\inst2|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bclks~q\,
	datab => \inst2|ep.e3~q\,
	datac => \inst2|ep.e4~q\,
	datad => \inst2|Selector3~0_combout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: FF_X45_Y71_N29
\inst2|ep.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector3~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e4~q\);

-- Location: IOIBUF_X47_Y73_N15
\AUD_ADCLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: LCCOMB_X46_Y71_N24
\inst2|adclrcs~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|adclrcs~feeder_combout\ = \AUD_ADCLRCK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AUD_ADCLRCK~input_o\,
	combout => \inst2|adclrcs~feeder_combout\);

-- Location: FF_X46_Y71_N25
\inst2|adclrcs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|adclrcs~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|adclrcs~q\);

-- Location: LCCOMB_X45_Y71_N8
\inst2|es.e5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|es.e5~1_combout\ = (\inst2|es.e5~0_combout\ & (\inst2|cbits\(3) & \inst2|cbits\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|es.e5~0_combout\,
	datab => \inst2|cbits\(3),
	datac => \inst2|cbits\(2),
	combout => \inst2|es.e5~1_combout\);

-- Location: FF_X45_Y71_N9
\inst2|ep.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|es.e5~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e5~q\);

-- Location: LCCOMB_X45_Y71_N20
\inst2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (!\inst2|ep.e5~q\ & ((\inst2|ep.e0~q\) # (!\inst2|adclrcs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|adclrcs~q\,
	datac => \inst2|ep.e0~q\,
	datad => \inst2|ep.e5~q\,
	combout => \inst2|Selector0~0_combout\);

-- Location: FF_X45_Y71_N21
\inst2|ep.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector0~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e0~q\);

-- Location: LCCOMB_X45_Y71_N6
\inst2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|adclrcs~q\ & (((\inst2|ep.e1~q\ & \inst2|bclks~q\)))) # (!\inst2|adclrcs~q\ & (((\inst2|ep.e1~q\)) # (!\inst2|ep.e0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|adclrcs~q\,
	datab => \inst2|ep.e0~q\,
	datac => \inst2|ep.e1~q\,
	datad => \inst2|bclks~q\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X45_Y71_N7
\inst2|ep.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector1~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e1~q\);

-- Location: LCCOMB_X45_Y71_N0
\inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst2|ep.e2~q\) # ((\inst2|ep.e4~q\) # ((\inst2|adclrcs~q\ & \inst2|ep.e1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ep.e2~q\,
	datab => \inst2|ep.e4~q\,
	datac => \inst2|adclrcs~q\,
	datad => \inst2|ep.e1~q\,
	combout => \inst2|Selector2~0_combout\);

-- Location: LCCOMB_X45_Y71_N26
\inst2|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~1_combout\ = (\inst2|Selector2~0_combout\ & !\inst2|bclks~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Selector2~0_combout\,
	datad => \inst2|bclks~q\,
	combout => \inst2|Selector2~1_combout\);

-- Location: FF_X45_Y71_N27
\inst2|ep.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Selector2~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e2~q\);

-- Location: LCCOMB_X45_Y71_N24
\inst2|es.e3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|es.e3~0_combout\ = (\inst2|ep.e2~q\ & \inst2|bclks~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ep.e2~q\,
	datad => \inst2|bclks~q\,
	combout => \inst2|es.e3~0_combout\);

-- Location: FF_X45_Y71_N25
\inst2|ep.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|es.e3~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ep.e3~q\);

-- Location: FF_X43_Y70_N13
\inst2|srdato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|adcdats~q\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(0));

-- Location: FF_X43_Y70_N31
\inst2|srdato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(0),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(1));

-- Location: FF_X43_Y70_N1
\inst2|srdato[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(1),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(2));

-- Location: FF_X42_Y70_N5
\inst2|srdato[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(2),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(3));

-- Location: FF_X42_Y70_N27
\inst2|srdato[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(3),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(4));

-- Location: FF_X42_Y70_N9
\inst2|srdato[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(4),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(5));

-- Location: FF_X42_Y70_N11
\inst2|srdato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(5),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(6));

-- Location: FF_X42_Y70_N13
\inst2|srdato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(6),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(7));

-- Location: FF_X42_Y70_N23
\inst2|srdato[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(7),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(8));

-- Location: FF_X42_Y70_N17
\inst2|srdato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(8),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(9));

-- Location: FF_X42_Y70_N31
\inst2|srdato[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(9),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(10));

-- Location: FF_X42_Y70_N7
\inst2|srdato[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(10),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(11));

-- Location: FF_X43_Y70_N29
\inst2|srdato[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(11),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(12));

-- Location: FF_X43_Y70_N21
\inst2|srdato[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(12),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(13));

-- Location: FF_X43_Y70_N3
\inst2|srdato[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(13),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(14));

-- Location: FF_X43_Y70_N19
\inst2|srdato[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|srdato\(14),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst2|ep.e3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|srdato\(15));

-- Location: LCCOMB_X40_Y70_N2
\inst4|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~1_combout\ = (\inst4|ep.save~q\ & (\inst4|sr_dout\(12) & !\inst4|sr_dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.save~q\,
	datab => \inst4|sr_dout\(12),
	datad => \inst4|sr_dout\(13),
	combout => \inst4|Decoder0~1_combout\);

-- Location: FF_X41_Y70_N15
\inst4|ch_on[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(11),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][11]~q\);

-- Location: FF_X40_Y70_N19
\inst4|ch_on[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(10),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][10]~q\);

-- Location: FF_X40_Y70_N17
\inst4|ch_on[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(9),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][9]~q\);

-- Location: FF_X40_Y70_N15
\inst4|ch_on[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(8),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][8]~q\);

-- Location: FF_X41_Y70_N21
\inst4|ch_on[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(7),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][7]~q\);

-- Location: FF_X40_Y70_N11
\inst4|ch_on[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(6),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][6]~q\);

-- Location: FF_X40_Y70_N9
\inst4|ch_on[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(5),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][5]~q\);

-- Location: FF_X41_Y70_N1
\inst4|ch_on[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(4),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[1][4]~q\);

-- Location: LCCOMB_X41_Y70_N8
\inst5|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_cout\ = CARRY(!\inst4|ch_on[1][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ch_on[1][4]~q\,
	datad => VCC,
	cout => \inst5|Add0~1_cout\);

-- Location: LCCOMB_X41_Y70_N10
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst4|ch_on[1][5]~q\ & ((\inst5|Add0~1_cout\) # (GND))) # (!\inst4|ch_on[1][5]~q\ & (!\inst5|Add0~1_cout\))
-- \inst5|Add0~3\ = CARRY((\inst4|ch_on[1][5]~q\) # (!\inst5|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][5]~q\,
	datad => VCC,
	cin => \inst5|Add0~1_cout\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X41_Y70_N12
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst4|ch_on[1][6]~q\ & (!\inst5|Add0~3\ & VCC)) # (!\inst4|ch_on[1][6]~q\ & (\inst5|Add0~3\ $ (GND)))
-- \inst5|Add0~5\ = CARRY((!\inst4|ch_on[1][6]~q\ & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ch_on[1][6]~q\,
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X41_Y70_N14
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst4|ch_on[1][7]~q\ & ((\inst5|Add0~5\) # (GND))) # (!\inst4|ch_on[1][7]~q\ & (!\inst5|Add0~5\))
-- \inst5|Add0~7\ = CARRY((\inst4|ch_on[1][7]~q\) # (!\inst5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][7]~q\,
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X41_Y70_N16
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst4|ch_on[1][8]~q\ & (!\inst5|Add0~7\ & VCC)) # (!\inst4|ch_on[1][8]~q\ & (\inst5|Add0~7\ $ (GND)))
-- \inst5|Add0~9\ = CARRY((!\inst4|ch_on[1][8]~q\ & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][8]~q\,
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X41_Y70_N18
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst4|ch_on[1][9]~q\ & ((\inst5|Add0~9\) # (GND))) # (!\inst4|ch_on[1][9]~q\ & (!\inst5|Add0~9\))
-- \inst5|Add0~11\ = CARRY((\inst4|ch_on[1][9]~q\) # (!\inst5|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][9]~q\,
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X41_Y70_N20
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst4|ch_on[1][10]~q\ & (!\inst5|Add0~11\ & VCC)) # (!\inst4|ch_on[1][10]~q\ & (\inst5|Add0~11\ $ (GND)))
-- \inst5|Add0~13\ = CARRY((!\inst4|ch_on[1][10]~q\ & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ch_on[1][10]~q\,
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X41_Y70_N22
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst4|ch_on[1][11]~q\ & ((\inst5|Add0~13\) # (GND))) # (!\inst4|ch_on[1][11]~q\ & (!\inst5|Add0~13\))
-- \inst5|Add0~15\ = CARRY((\inst4|ch_on[1][11]~q\) # (!\inst5|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ch_on[1][11]~q\,
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X41_Y70_N24
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = \inst5|Add0~15\ $ (GND)
-- \inst5|Add0~17\ = CARRY(!\inst5|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X43_Y70_N30
\inst5|signal_dist~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~3_combout\ = (\inst2|srdato\(15) & (\inst2|srdato\(11) $ (!\inst5|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(15),
	datab => \inst2|srdato\(11),
	datad => \inst5|Add0~16_combout\,
	combout => \inst5|signal_dist~3_combout\);

-- Location: LCCOMB_X43_Y70_N6
\inst5|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = (\inst2|srdato\(0)) # ((\inst2|srdato\(1)) # (\inst2|srdato\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(0),
	datab => \inst2|srdato\(1),
	datad => \inst2|srdato\(2),
	combout => \inst5|LessThan1~0_combout\);

-- Location: LCCOMB_X42_Y70_N2
\inst5|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~2_cout\ = CARRY(\inst5|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~0_combout\,
	datad => VCC,
	cout => \inst5|LessThan1~2_cout\);

-- Location: LCCOMB_X42_Y70_N4
\inst5|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~4_cout\ = CARRY((\inst4|ch_on[1][4]~q\ & ((!\inst5|LessThan1~2_cout\) # (!\inst2|srdato\(3)))) # (!\inst4|ch_on[1][4]~q\ & (!\inst2|srdato\(3) & !\inst5|LessThan1~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][4]~q\,
	datab => \inst2|srdato\(3),
	datad => VCC,
	cin => \inst5|LessThan1~2_cout\,
	cout => \inst5|LessThan1~4_cout\);

-- Location: LCCOMB_X42_Y70_N6
\inst5|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~6_cout\ = CARRY((\inst2|srdato\(4) & ((!\inst5|LessThan1~4_cout\) # (!\inst4|ch_on[1][5]~q\))) # (!\inst2|srdato\(4) & (!\inst4|ch_on[1][5]~q\ & !\inst5|LessThan1~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(4),
	datab => \inst4|ch_on[1][5]~q\,
	datad => VCC,
	cin => \inst5|LessThan1~4_cout\,
	cout => \inst5|LessThan1~6_cout\);

-- Location: LCCOMB_X42_Y70_N8
\inst5|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~8_cout\ = CARRY((\inst4|ch_on[1][6]~q\ & ((!\inst5|LessThan1~6_cout\) # (!\inst2|srdato\(5)))) # (!\inst4|ch_on[1][6]~q\ & (!\inst2|srdato\(5) & !\inst5|LessThan1~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][6]~q\,
	datab => \inst2|srdato\(5),
	datad => VCC,
	cin => \inst5|LessThan1~6_cout\,
	cout => \inst5|LessThan1~8_cout\);

-- Location: LCCOMB_X42_Y70_N10
\inst5|LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~10_cout\ = CARRY((\inst2|srdato\(6) & ((!\inst5|LessThan1~8_cout\) # (!\inst4|ch_on[1][7]~q\))) # (!\inst2|srdato\(6) & (!\inst4|ch_on[1][7]~q\ & !\inst5|LessThan1~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(6),
	datab => \inst4|ch_on[1][7]~q\,
	datad => VCC,
	cin => \inst5|LessThan1~8_cout\,
	cout => \inst5|LessThan1~10_cout\);

-- Location: LCCOMB_X42_Y70_N12
\inst5|LessThan1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~12_cout\ = CARRY((\inst2|srdato\(7) & (\inst4|ch_on[1][8]~q\ & !\inst5|LessThan1~10_cout\)) # (!\inst2|srdato\(7) & ((\inst4|ch_on[1][8]~q\) # (!\inst5|LessThan1~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(7),
	datab => \inst4|ch_on[1][8]~q\,
	datad => VCC,
	cin => \inst5|LessThan1~10_cout\,
	cout => \inst5|LessThan1~12_cout\);

-- Location: LCCOMB_X42_Y70_N14
\inst5|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~14_cout\ = CARRY((\inst4|ch_on[1][9]~q\ & (\inst2|srdato\(8) & !\inst5|LessThan1~12_cout\)) # (!\inst4|ch_on[1][9]~q\ & ((\inst2|srdato\(8)) # (!\inst5|LessThan1~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][9]~q\,
	datab => \inst2|srdato\(8),
	datad => VCC,
	cin => \inst5|LessThan1~12_cout\,
	cout => \inst5|LessThan1~14_cout\);

-- Location: LCCOMB_X42_Y70_N16
\inst5|LessThan1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~16_cout\ = CARRY((\inst4|ch_on[1][10]~q\ & ((!\inst5|LessThan1~14_cout\) # (!\inst2|srdato\(9)))) # (!\inst4|ch_on[1][10]~q\ & (!\inst2|srdato\(9) & !\inst5|LessThan1~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][10]~q\,
	datab => \inst2|srdato\(9),
	datad => VCC,
	cin => \inst5|LessThan1~14_cout\,
	cout => \inst5|LessThan1~16_cout\);

-- Location: LCCOMB_X42_Y70_N18
\inst5|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~17_combout\ = (\inst4|ch_on[1][11]~q\ & (!\inst5|LessThan1~16_cout\ & \inst2|srdato\(10))) # (!\inst4|ch_on[1][11]~q\ & ((\inst2|srdato\(10)) # (!\inst5|LessThan1~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][11]~q\,
	datad => \inst2|srdato\(10),
	cin => \inst5|LessThan1~16_cout\,
	combout => \inst5|LessThan1~17_combout\);

-- Location: LCCOMB_X41_Y70_N26
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = !\inst5|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\);

-- Location: LCCOMB_X43_Y70_N2
\inst5|signal_dist~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~0_combout\ = (\inst2|srdato\(13) & (\inst5|Add0~18_combout\ & (\inst2|srdato\(14) & \inst2|srdato\(12)))) # (!\inst2|srdato\(13) & (((\inst2|srdato\(14)) # (\inst2|srdato\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(13),
	datab => \inst5|Add0~18_combout\,
	datac => \inst2|srdato\(14),
	datad => \inst2|srdato\(12),
	combout => \inst5|signal_dist~0_combout\);

-- Location: LCCOMB_X43_Y70_N20
\inst5|signal_dist~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~1_combout\ = (\inst2|srdato\(15) & (\inst2|srdato\(13) & ((\inst2|srdato\(11)) # (!\inst5|Add0~16_combout\)))) # (!\inst2|srdato\(15) & ((\inst2|srdato\(11)) # ((\inst2|srdato\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(15),
	datab => \inst2|srdato\(11),
	datac => \inst2|srdato\(13),
	datad => \inst5|Add0~16_combout\,
	combout => \inst5|signal_dist~1_combout\);

-- Location: LCCOMB_X43_Y70_N18
\inst5|signal_dist~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~2_combout\ = (\inst5|signal_dist~0_combout\ & (((!\inst5|signal_dist~1_combout\) # (!\inst2|srdato\(15))))) # (!\inst5|signal_dist~0_combout\ & ((\inst5|LessThan1~17_combout\) # ((\inst2|srdato\(15)) # (\inst5|signal_dist~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan1~17_combout\,
	datab => \inst5|signal_dist~0_combout\,
	datac => \inst2|srdato\(15),
	datad => \inst5|signal_dist~1_combout\,
	combout => \inst5|signal_dist~2_combout\);

-- Location: LCCOMB_X42_Y70_N22
\inst5|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~6_combout\ = (\inst5|Add0~10_combout\ & (((\inst5|Add0~8_combout\ & !\inst2|srdato\(7))) # (!\inst2|srdato\(8)))) # (!\inst5|Add0~10_combout\ & (\inst5|Add0~8_combout\ & (!\inst2|srdato\(8) & !\inst2|srdato\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~8_combout\,
	datab => \inst5|Add0~10_combout\,
	datac => \inst2|srdato\(8),
	datad => \inst2|srdato\(7),
	combout => \inst5|LessThan0~6_combout\);

-- Location: LCCOMB_X42_Y70_N30
\inst5|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~7_combout\ = (\inst5|LessThan0~6_combout\ & ((\inst5|Add0~12_combout\) # (!\inst2|srdato\(9)))) # (!\inst5|LessThan0~6_combout\ & (\inst5|Add0~12_combout\ & !\inst2|srdato\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~6_combout\,
	datab => \inst5|Add0~12_combout\,
	datad => \inst2|srdato\(9),
	combout => \inst5|LessThan0~7_combout\);

-- Location: LCCOMB_X42_Y70_N26
\inst5|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~8_combout\ = (\inst5|LessThan0~7_combout\ & ((\inst5|Add0~14_combout\) # (!\inst2|srdato\(10)))) # (!\inst5|LessThan0~7_combout\ & (\inst5|Add0~14_combout\ & !\inst2|srdato\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~7_combout\,
	datab => \inst5|Add0~14_combout\,
	datad => \inst2|srdato\(10),
	combout => \inst5|LessThan0~8_combout\);

-- Location: LCCOMB_X41_Y70_N2
\inst5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = (\inst2|srdato\(10) & (\inst5|Add0~14_combout\ & (\inst5|Add0~12_combout\ $ (!\inst2|srdato\(9))))) # (!\inst2|srdato\(10) & (!\inst5|Add0~14_combout\ & (\inst5|Add0~12_combout\ $ (!\inst2|srdato\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(10),
	datab => \inst5|Add0~12_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst2|srdato\(9),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y70_N24
\inst5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = (\inst5|LessThan0~0_combout\ & (\inst5|Add0~10_combout\ $ (!\inst2|srdato\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~0_combout\,
	datab => \inst5|Add0~10_combout\,
	datad => \inst2|srdato\(8),
	combout => \inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X41_Y70_N4
\inst5|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~2_combout\ = (\inst5|Add0~2_combout\ & (((\inst4|ch_on[1][4]~q\ & !\inst2|srdato\(3))) # (!\inst2|srdato\(4)))) # (!\inst5|Add0~2_combout\ & (!\inst2|srdato\(4) & (\inst4|ch_on[1][4]~q\ & !\inst2|srdato\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~2_combout\,
	datab => \inst2|srdato\(4),
	datac => \inst4|ch_on[1][4]~q\,
	datad => \inst2|srdato\(3),
	combout => \inst5|LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y70_N0
\inst5|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~3_combout\ = (\inst5|LessThan0~2_combout\ & ((\inst5|Add0~4_combout\) # (!\inst2|srdato\(5)))) # (!\inst5|LessThan0~2_combout\ & (!\inst2|srdato\(5) & \inst5|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LessThan0~2_combout\,
	datac => \inst2|srdato\(5),
	datad => \inst5|Add0~4_combout\,
	combout => \inst5|LessThan0~3_combout\);

-- Location: LCCOMB_X42_Y70_N20
\inst5|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~4_combout\ = (\inst5|Add0~6_combout\ & ((\inst5|LessThan0~3_combout\) # (!\inst2|srdato\(6)))) # (!\inst5|Add0~6_combout\ & (\inst5|LessThan0~3_combout\ & !\inst2|srdato\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|LessThan0~3_combout\,
	datad => \inst2|srdato\(6),
	combout => \inst5|LessThan0~4_combout\);

-- Location: LCCOMB_X42_Y70_N28
\inst5|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~5_combout\ = (\inst5|LessThan0~1_combout\ & (\inst5|LessThan0~4_combout\ & (\inst2|srdato\(7) $ (!\inst5|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(7),
	datab => \inst5|LessThan0~1_combout\,
	datac => \inst5|Add0~8_combout\,
	datad => \inst5|LessThan0~4_combout\,
	combout => \inst5|LessThan0~5_combout\);

-- Location: LCCOMB_X43_Y70_N24
\inst5|signal_dist~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist~4_combout\ = (\inst5|signal_dist~2_combout\) # ((\inst5|signal_dist~3_combout\ & ((\inst5|LessThan0~8_combout\) # (\inst5|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|signal_dist~3_combout\,
	datab => \inst5|signal_dist~2_combout\,
	datac => \inst5|LessThan0~8_combout\,
	datad => \inst5|LessThan0~5_combout\,
	combout => \inst5|signal_dist~4_combout\);

-- Location: LCCOMB_X43_Y70_N12
\inst5|signal_dist[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[0]~5_combout\ = (\inst2|srdato\(0) & !\inst5|signal_dist~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|srdato\(0),
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[0]~5_combout\);

-- Location: LCCOMB_X43_Y70_N10
\inst5|signal_dist[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[1]~6_combout\ = (\inst2|srdato\(1) & !\inst5|signal_dist~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|srdato\(1),
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[1]~6_combout\);

-- Location: LCCOMB_X43_Y70_N0
\inst5|signal_dist[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[2]~7_combout\ = (\inst2|srdato\(2) & !\inst5|signal_dist~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|srdato\(2),
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[2]~7_combout\);

-- Location: LCCOMB_X40_Y70_N0
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = \inst4|ch_on[1][4]~q\ $ (\inst2|srdato\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ch_on[1][4]~q\,
	datad => \inst2|srdato\(15),
	combout => \inst5|Add0~20_combout\);

-- Location: LCCOMB_X40_Y70_N6
\inst5|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~21_combout\ = (\inst5|Add0~20_combout\ & (\inst2|srdato\(15) $ (VCC))) # (!\inst5|Add0~20_combout\ & (\inst2|srdato\(15) & VCC))
-- \inst5|Add0~22\ = CARRY((\inst5|Add0~20_combout\ & \inst2|srdato\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~20_combout\,
	datab => \inst2|srdato\(15),
	datad => VCC,
	combout => \inst5|Add0~21_combout\,
	cout => \inst5|Add0~22\);

-- Location: LCCOMB_X41_Y70_N30
\inst5|signal_dist[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[3]~8_combout\ = (\inst5|signal_dist~4_combout\ & ((\inst5|Add0~21_combout\))) # (!\inst5|signal_dist~4_combout\ & (\inst2|srdato\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(3),
	datac => \inst5|Add0~21_combout\,
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[3]~8_combout\);

-- Location: LCCOMB_X40_Y70_N8
\inst5|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~23_combout\ = (\inst5|Add0~22\ & (\inst4|ch_on[1][5]~q\ $ ((!\inst2|srdato\(15))))) # (!\inst5|Add0~22\ & ((\inst4|ch_on[1][5]~q\ $ (\inst2|srdato\(15))) # (GND)))
-- \inst5|Add0~24\ = CARRY((\inst4|ch_on[1][5]~q\ $ (!\inst2|srdato\(15))) # (!\inst5|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][5]~q\,
	datab => \inst2|srdato\(15),
	datad => VCC,
	cin => \inst5|Add0~22\,
	combout => \inst5|Add0~23_combout\,
	cout => \inst5|Add0~24\);

-- Location: LCCOMB_X41_Y70_N0
\inst5|signal_dist[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[4]~9_combout\ = (\inst5|signal_dist~4_combout\ & (\inst5|Add0~23_combout\)) # (!\inst5|signal_dist~4_combout\ & ((\inst2|srdato\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~23_combout\,
	datab => \inst2|srdato\(4),
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[4]~9_combout\);

-- Location: LCCOMB_X40_Y70_N10
\inst5|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~25_combout\ = (\inst5|Add0~24\ & ((\inst4|ch_on[1][6]~q\ $ (\inst2|srdato\(15))))) # (!\inst5|Add0~24\ & (\inst4|ch_on[1][6]~q\ $ (\inst2|srdato\(15) $ (VCC))))
-- \inst5|Add0~26\ = CARRY((!\inst5|Add0~24\ & (\inst4|ch_on[1][6]~q\ $ (\inst2|srdato\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][6]~q\,
	datab => \inst2|srdato\(15),
	datad => VCC,
	cin => \inst5|Add0~24\,
	combout => \inst5|Add0~25_combout\,
	cout => \inst5|Add0~26\);

-- Location: LCCOMB_X43_Y70_N8
\inst5|signal_dist[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[5]~10_combout\ = (\inst5|signal_dist~4_combout\ & (\inst5|Add0~25_combout\)) # (!\inst5|signal_dist~4_combout\ & ((\inst2|srdato\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~25_combout\,
	datab => \inst5|signal_dist~4_combout\,
	datad => \inst2|srdato\(5),
	combout => \inst5|signal_dist[5]~10_combout\);

-- Location: LCCOMB_X40_Y70_N12
\inst5|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~27_combout\ = (\inst5|Add0~26\ & (\inst4|ch_on[1][7]~q\ $ ((!\inst2|srdato\(15))))) # (!\inst5|Add0~26\ & ((\inst4|ch_on[1][7]~q\ $ (\inst2|srdato\(15))) # (GND)))
-- \inst5|Add0~28\ = CARRY((\inst4|ch_on[1][7]~q\ $ (!\inst2|srdato\(15))) # (!\inst5|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][7]~q\,
	datab => \inst2|srdato\(15),
	datad => VCC,
	cin => \inst5|Add0~26\,
	combout => \inst5|Add0~27_combout\,
	cout => \inst5|Add0~28\);

-- Location: LCCOMB_X43_Y70_N22
\inst5|signal_dist[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[6]~11_combout\ = (\inst5|signal_dist~4_combout\ & ((\inst5|Add0~27_combout\))) # (!\inst5|signal_dist~4_combout\ & (\inst2|srdato\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(6),
	datac => \inst5|Add0~27_combout\,
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[6]~11_combout\);

-- Location: LCCOMB_X40_Y70_N14
\inst5|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~29_combout\ = (\inst5|Add0~28\ & ((\inst4|ch_on[1][8]~q\ $ (\inst2|srdato\(15))))) # (!\inst5|Add0~28\ & (\inst4|ch_on[1][8]~q\ $ (\inst2|srdato\(15) $ (VCC))))
-- \inst5|Add0~30\ = CARRY((!\inst5|Add0~28\ & (\inst4|ch_on[1][8]~q\ $ (\inst2|srdato\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][8]~q\,
	datab => \inst2|srdato\(15),
	datad => VCC,
	cin => \inst5|Add0~28\,
	combout => \inst5|Add0~29_combout\,
	cout => \inst5|Add0~30\);

-- Location: LCCOMB_X40_Y70_N26
\inst5|signal_dist[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[7]~12_combout\ = (\inst5|signal_dist~4_combout\ & ((\inst5|Add0~29_combout\))) # (!\inst5|signal_dist~4_combout\ & (\inst2|srdato\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(7),
	datac => \inst5|signal_dist~4_combout\,
	datad => \inst5|Add0~29_combout\,
	combout => \inst5|signal_dist[7]~12_combout\);

-- Location: LCCOMB_X40_Y70_N16
\inst5|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~31_combout\ = (\inst5|Add0~30\ & (\inst4|ch_on[1][9]~q\ $ ((!\inst2|srdato\(15))))) # (!\inst5|Add0~30\ & ((\inst4|ch_on[1][9]~q\ $ (\inst2|srdato\(15))) # (GND)))
-- \inst5|Add0~32\ = CARRY((\inst4|ch_on[1][9]~q\ $ (!\inst2|srdato\(15))) # (!\inst5|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][9]~q\,
	datab => \inst2|srdato\(15),
	datad => VCC,
	cin => \inst5|Add0~30\,
	combout => \inst5|Add0~31_combout\,
	cout => \inst5|Add0~32\);

-- Location: LCCOMB_X43_Y70_N26
\inst5|signal_dist[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[8]~13_combout\ = (\inst5|signal_dist~4_combout\ & (\inst5|Add0~31_combout\)) # (!\inst5|signal_dist~4_combout\ & ((\inst2|srdato\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~31_combout\,
	datab => \inst2|srdato\(8),
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[8]~13_combout\);

-- Location: LCCOMB_X40_Y70_N18
\inst5|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~33_combout\ = (\inst5|Add0~32\ & ((\inst4|ch_on[1][10]~q\ $ (\inst2|srdato\(15))))) # (!\inst5|Add0~32\ & (\inst4|ch_on[1][10]~q\ $ (\inst2|srdato\(15) $ (VCC))))
-- \inst5|Add0~34\ = CARRY((!\inst5|Add0~32\ & (\inst4|ch_on[1][10]~q\ $ (\inst2|srdato\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ch_on[1][10]~q\,
	datab => \inst2|srdato\(15),
	datad => VCC,
	cin => \inst5|Add0~32\,
	combout => \inst5|Add0~33_combout\,
	cout => \inst5|Add0~34\);

-- Location: LCCOMB_X41_Y70_N28
\inst5|signal_dist[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[9]~14_combout\ = (\inst5|signal_dist~4_combout\ & ((\inst5|Add0~33_combout\))) # (!\inst5|signal_dist~4_combout\ & (\inst2|srdato\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|srdato\(9),
	datac => \inst5|Add0~33_combout\,
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[9]~14_combout\);

-- Location: LCCOMB_X40_Y70_N20
\inst5|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~35_combout\ = (\inst5|Add0~34\ & (\inst2|srdato\(15) $ ((!\inst4|ch_on[1][11]~q\)))) # (!\inst5|Add0~34\ & ((\inst2|srdato\(15) $ (\inst4|ch_on[1][11]~q\)) # (GND)))
-- \inst5|Add0~36\ = CARRY((\inst2|srdato\(15) $ (!\inst4|ch_on[1][11]~q\)) # (!\inst5|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(15),
	datab => \inst4|ch_on[1][11]~q\,
	datad => VCC,
	cin => \inst5|Add0~34\,
	combout => \inst5|Add0~35_combout\,
	cout => \inst5|Add0~36\);

-- Location: LCCOMB_X40_Y70_N4
\inst5|signal_dist[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[10]~15_combout\ = (\inst5|signal_dist~4_combout\ & (\inst5|Add0~35_combout\)) # (!\inst5|signal_dist~4_combout\ & ((\inst2|srdato\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~35_combout\,
	datac => \inst5|signal_dist~4_combout\,
	datad => \inst2|srdato\(10),
	combout => \inst5|signal_dist[10]~15_combout\);

-- Location: LCCOMB_X40_Y70_N22
\inst5|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~37_combout\ = (\inst2|srdato\(15) & (\inst5|Add0~36\ $ (GND))) # (!\inst2|srdato\(15) & (!\inst5|Add0~36\ & VCC))
-- \inst5|Add0~38\ = CARRY((\inst2|srdato\(15) & !\inst5|Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(15),
	datad => VCC,
	cin => \inst5|Add0~36\,
	combout => \inst5|Add0~37_combout\,
	cout => \inst5|Add0~38\);

-- Location: LCCOMB_X41_Y70_N6
\inst5|signal_dist[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[11]~16_combout\ = (\inst5|signal_dist~4_combout\ & ((\inst5|Add0~37_combout\))) # (!\inst5|signal_dist~4_combout\ & (\inst2|srdato\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(11),
	datab => \inst5|Add0~37_combout\,
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[11]~16_combout\);

-- Location: LCCOMB_X40_Y70_N24
\inst5|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~39_combout\ = \inst5|Add0~38\ $ (\inst2|srdato\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|srdato\(15),
	cin => \inst5|Add0~38\,
	combout => \inst5|Add0~39_combout\);

-- Location: LCCOMB_X43_Y70_N28
\inst5|signal_dist[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[12]~17_combout\ = (\inst5|signal_dist~4_combout\ & (\inst5|Add0~39_combout\)) # (!\inst5|signal_dist~4_combout\ & ((\inst2|srdato\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~39_combout\,
	datac => \inst2|srdato\(12),
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[12]~17_combout\);

-- Location: LCCOMB_X43_Y70_N14
\inst5|signal_dist[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[13]~18_combout\ = (\inst5|signal_dist~4_combout\ & ((\inst5|Add0~39_combout\))) # (!\inst5|signal_dist~4_combout\ & (\inst2|srdato\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(13),
	datac => \inst5|Add0~39_combout\,
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[13]~18_combout\);

-- Location: LCCOMB_X43_Y70_N16
\inst5|signal_dist[14]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[14]~19_combout\ = (\inst5|signal_dist~4_combout\ & ((\inst5|Add0~39_combout\))) # (!\inst5|signal_dist~4_combout\ & (\inst2|srdato\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(14),
	datac => \inst5|Add0~39_combout\,
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[14]~19_combout\);

-- Location: LCCOMB_X43_Y70_N4
\inst5|signal_dist[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|signal_dist[15]~20_combout\ = (\inst5|signal_dist~4_combout\ & ((\inst5|Add0~39_combout\))) # (!\inst5|signal_dist~4_combout\ & (\inst2|srdato\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|srdato\(15),
	datac => \inst5|Add0~39_combout\,
	datad => \inst5|signal_dist~4_combout\,
	combout => \inst5|signal_dist[15]~20_combout\);

-- Location: DSPMULT_X44_Y70_N0
\inst5|s1|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	aclr => \ALT_INV_KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	dataa => \inst5|s1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst5|s1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|s1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y70_N2
\inst5|s1|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|s1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X45_Y70_N16
\inst3|srdato[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[16]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT27\,
	combout => \inst3|srdato[16]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N26
\inst3|srdato[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[15]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT22\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT22\,
	combout => \inst3|srdato[15]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N30
\inst3|srdato[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[14]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT21\,
	combout => \inst3|srdato[14]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N22
\inst3|srdato[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[13]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT20\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT20\,
	combout => \inst3|srdato[13]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N14
\inst3|srdato[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[12]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT19\,
	combout => \inst3|srdato[12]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N8
\inst3|srdato[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[11]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	combout => \inst3|srdato[11]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N4
\inst3|srdato[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[10]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	combout => \inst3|srdato[10]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N0
\inst3|srdato[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[9]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT16\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	combout => \inst3|srdato[9]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N24
\inst3|srdato[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[8]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \inst3|srdato[8]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N6
\inst3|srdato[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[7]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \inst3|srdato[7]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N2
\inst3|srdato[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[6]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \inst3|srdato[6]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N28
\inst3|srdato[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[5]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	combout => \inst3|srdato[5]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N18
\inst3|srdato[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[4]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \inst3|srdato[4]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N20
\inst3|srdato[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[3]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \inst3|srdato[3]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N10
\inst3|srdato[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[2]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \inst3|srdato[2]~feeder_combout\);

-- Location: LCCOMB_X45_Y70_N12
\inst3|srdato[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[1]~feeder_combout\ = \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s1|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \inst3|srdato[1]~feeder_combout\);

-- Location: IOIBUF_X49_Y73_N22
\AUD_DACLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: LCCOMB_X48_Y71_N24
\inst3|daclrcs~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|daclrcs~feeder_combout\ = \AUD_DACLRCK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AUD_DACLRCK~input_o\,
	combout => \inst3|daclrcs~feeder_combout\);

-- Location: FF_X48_Y71_N25
\inst3|daclrcs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|daclrcs~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|daclrcs~q\);

-- Location: LCCOMB_X47_Y71_N6
\inst3|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector0~0_combout\ = (\inst3|daclrcs~q\ & (((\inst3|ep.e0~q\) # (!\inst2|bclks~q\)))) # (!\inst3|daclrcs~q\ & (!\inst3|Selector2~0_combout\ & (\inst3|ep.e0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector2~0_combout\,
	datab => \inst3|daclrcs~q\,
	datac => \inst3|ep.e0~q\,
	datad => \inst2|bclks~q\,
	combout => \inst3|Selector0~0_combout\);

-- Location: FF_X47_Y71_N7
\inst3|ep.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Selector0~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e0~q\);

-- Location: LCCOMB_X47_Y71_N0
\inst3|es.e1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|es.e1~0_combout\ = (!\inst3|ep.e0~q\ & (\inst3|daclrcs~q\ & !\inst2|bclks~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ep.e0~q\,
	datab => \inst3|daclrcs~q\,
	datad => \inst2|bclks~q\,
	combout => \inst3|es.e1~0_combout\);

-- Location: FF_X47_Y71_N1
\inst3|ep.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|es.e1~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e1~q\);

-- Location: LCCOMB_X47_Y71_N8
\inst3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector1~0_combout\ = (\inst3|ep.e6~q\) # ((\inst3|ep.e1~q\) # ((\inst3|ep.e2~q\ & !\inst2|bclks~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ep.e6~q\,
	datab => \inst3|ep.e2~q\,
	datac => \inst2|bclks~q\,
	datad => \inst3|ep.e1~q\,
	combout => \inst3|Selector1~0_combout\);

-- Location: LCCOMB_X47_Y71_N18
\inst3|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector1~1_combout\ = (\inst3|Selector1~0_combout\) # ((\inst3|ep.e4~q\ & ((!\inst3|Equal0~0_combout\) # (!\inst3|cbits\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cbits\(3),
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|ep.e4~q\,
	datad => \inst3|Selector1~0_combout\,
	combout => \inst3|Selector1~1_combout\);

-- Location: FF_X47_Y71_N19
\inst3|ep.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Selector1~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e2~q\);

-- Location: LCCOMB_X47_Y71_N2
\inst3|es.e3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|es.e3~0_combout\ = (\inst2|bclks~q\ & ((\inst3|ep.e2~q\) # (\inst3|ep.e3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ep.e2~q\,
	datac => \inst3|ep.e3~q\,
	datad => \inst2|bclks~q\,
	combout => \inst3|es.e3~0_combout\);

-- Location: FF_X47_Y71_N3
\inst3|ep.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|es.e3~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e3~q\);

-- Location: LCCOMB_X47_Y71_N26
\inst3|es.e4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|es.e4~0_combout\ = (\inst3|ep.e3~q\ & !\inst2|bclks~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ep.e3~q\,
	datac => \inst2|bclks~q\,
	combout => \inst3|es.e4~0_combout\);

-- Location: FF_X47_Y71_N27
\inst3|ep.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|es.e4~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e4~q\);

-- Location: LCCOMB_X47_Y71_N20
\inst3|cbits[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cbits[0]~3_combout\ = \inst3|cbits\(0) $ (\inst3|ep.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cbits\(0),
	datad => \inst3|ep.e4~q\,
	combout => \inst3|cbits[0]~3_combout\);

-- Location: FF_X47_Y71_N21
\inst3|cbits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|cbits[0]~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(0));

-- Location: LCCOMB_X47_Y71_N10
\inst3|cbits[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cbits[1]~2_combout\ = \inst3|cbits\(1) $ (((\inst3|ep.e4~q\ & \inst3|cbits\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ep.e4~q\,
	datab => \inst3|cbits\(0),
	datac => \inst3|cbits\(1),
	combout => \inst3|cbits[1]~2_combout\);

-- Location: FF_X47_Y71_N11
\inst3|cbits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|cbits[1]~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(1));

-- Location: LCCOMB_X47_Y71_N24
\inst3|cbits[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cbits[2]~1_combout\ = \inst3|cbits\(2) $ (((\inst3|cbits\(1) & (\inst3|cbits\(0) & \inst3|ep.e4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cbits\(1),
	datab => \inst3|cbits\(0),
	datac => \inst3|cbits\(2),
	datad => \inst3|ep.e4~q\,
	combout => \inst3|cbits[2]~1_combout\);

-- Location: FF_X47_Y71_N25
\inst3|cbits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|cbits[2]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(2));

-- Location: LCCOMB_X47_Y71_N30
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|cbits\(1) & (\inst3|cbits\(0) & \inst3|cbits\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cbits\(1),
	datab => \inst3|cbits\(0),
	datad => \inst3|cbits\(2),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y71_N22
\inst3|cbits[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cbits[3]~0_combout\ = \inst3|cbits\(3) $ (((\inst3|Equal0~0_combout\ & \inst3|ep.e4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~0_combout\,
	datac => \inst3|cbits\(3),
	datad => \inst3|ep.e4~q\,
	combout => \inst3|cbits[3]~0_combout\);

-- Location: FF_X47_Y71_N23
\inst3|cbits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|cbits[3]~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cbits\(3));

-- Location: LCCOMB_X47_Y71_N16
\inst3|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector2~0_combout\ = (\inst3|cbits\(3) & (\inst3|Equal0~0_combout\ & \inst3|ep.e4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cbits\(3),
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|ep.e4~q\,
	combout => \inst3|Selector2~0_combout\);

-- Location: LCCOMB_X47_Y71_N28
\inst3|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Selector2~1_combout\ = (\inst3|ep.e5~q\ & ((\inst2|bclks~q\) # ((\inst3|daclrcs~q\)))) # (!\inst3|ep.e5~q\ & (((\inst3|Selector2~0_combout\ & \inst3|daclrcs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bclks~q\,
	datab => \inst3|Selector2~0_combout\,
	datac => \inst3|ep.e5~q\,
	datad => \inst3|daclrcs~q\,
	combout => \inst3|Selector2~1_combout\);

-- Location: FF_X47_Y71_N29
\inst3|ep.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Selector2~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e5~q\);

-- Location: LCCOMB_X47_Y71_N12
\inst3|es.e6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|es.e6~0_combout\ = (\inst3|ep.e5~q\ & (!\inst2|bclks~q\ & !\inst3|daclrcs~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ep.e5~q\,
	datac => \inst2|bclks~q\,
	datad => \inst3|daclrcs~q\,
	combout => \inst3|es.e6~0_combout\);

-- Location: FF_X47_Y71_N13
\inst3|ep.e6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|es.e6~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ep.e6~q\);

-- Location: LCCOMB_X47_Y70_N8
\inst3|srdato~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato~1_combout\ = (\inst3|ep.e6~q\ & (((\inst3|srdato\(16))))) # (!\inst3|ep.e6~q\ & ((\inst3|ep.e4~q\ & ((\inst3|srdato\(16)))) # (!\inst3|ep.e4~q\ & (\inst3|srdato\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ep.e6~q\,
	datab => \inst3|ep.e4~q\,
	datac => \inst3|srdato\(0),
	datad => \inst3|srdato\(16),
	combout => \inst3|srdato~1_combout\);

-- Location: FF_X47_Y70_N9
\inst3|srdato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sclr => \inst3|ep.e1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(0));

-- Location: LCCOMB_X47_Y70_N26
\inst3|srdato[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|srdato[11]~0_combout\ = \inst3|ep.e1~q\ $ (((\inst3|ep.e6~q\) # (\inst3|ep.e4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ep.e6~q\,
	datab => \inst3|ep.e4~q\,
	datac => \inst3|ep.e1~q\,
	combout => \inst3|srdato[11]~0_combout\);

-- Location: FF_X45_Y70_N13
\inst3|srdato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[1]~feeder_combout\,
	asdata => \inst3|srdato\(0),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(1));

-- Location: FF_X45_Y70_N11
\inst3|srdato[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[2]~feeder_combout\,
	asdata => \inst3|srdato\(1),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(2));

-- Location: FF_X45_Y70_N21
\inst3|srdato[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[3]~feeder_combout\,
	asdata => \inst3|srdato\(2),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(3));

-- Location: FF_X45_Y70_N19
\inst3|srdato[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[4]~feeder_combout\,
	asdata => \inst3|srdato\(3),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(4));

-- Location: FF_X45_Y70_N29
\inst3|srdato[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[5]~feeder_combout\,
	asdata => \inst3|srdato\(4),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(5));

-- Location: FF_X45_Y70_N3
\inst3|srdato[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[6]~feeder_combout\,
	asdata => \inst3|srdato\(5),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(6));

-- Location: FF_X45_Y70_N7
\inst3|srdato[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[7]~feeder_combout\,
	asdata => \inst3|srdato\(6),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(7));

-- Location: FF_X45_Y70_N25
\inst3|srdato[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[8]~feeder_combout\,
	asdata => \inst3|srdato\(7),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(8));

-- Location: FF_X45_Y70_N1
\inst3|srdato[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[9]~feeder_combout\,
	asdata => \inst3|srdato\(8),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(9));

-- Location: FF_X45_Y70_N5
\inst3|srdato[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[10]~feeder_combout\,
	asdata => \inst3|srdato\(9),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(10));

-- Location: FF_X45_Y70_N9
\inst3|srdato[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[11]~feeder_combout\,
	asdata => \inst3|srdato\(10),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(11));

-- Location: FF_X45_Y70_N15
\inst3|srdato[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[12]~feeder_combout\,
	asdata => \inst3|srdato\(11),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(12));

-- Location: FF_X45_Y70_N23
\inst3|srdato[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[13]~feeder_combout\,
	asdata => \inst3|srdato\(12),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(13));

-- Location: FF_X45_Y70_N31
\inst3|srdato[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[14]~feeder_combout\,
	asdata => \inst3|srdato\(13),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(14));

-- Location: FF_X45_Y70_N27
\inst3|srdato[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[15]~feeder_combout\,
	asdata => \inst3|srdato\(14),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(15));

-- Location: FF_X45_Y70_N17
\inst3|srdato[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|srdato[16]~feeder_combout\,
	asdata => \inst3|srdato\(15),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst3|ALT_INV_ep.e1~q\,
	ena => \inst3|srdato[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|srdato\(16));

-- Location: LCCOMB_X38_Y70_N16
\inst4|ch_on[0][4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][4]~_Duplicate_1feeder_combout\ = \inst4|sr_dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(4),
	combout => \inst4|ch_on[0][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X38_Y70_N17
\inst4|ch_on[0][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|ch_on[0][4]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X38_Y70_N2
\inst4|ch_on[0][5]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][5]~_Duplicate_1feeder_combout\ = \inst4|sr_dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(5),
	combout => \inst4|ch_on[0][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X38_Y70_N3
\inst4|ch_on[0][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|ch_on[0][5]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X38_Y70_N12
\inst4|ch_on[0][6]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][6]~_Duplicate_1feeder_combout\ = \inst4|sr_dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(6),
	combout => \inst4|ch_on[0][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X38_Y70_N13
\inst4|ch_on[0][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|ch_on[0][6]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][6]~_Duplicate_1_q\);

-- Location: FF_X38_Y70_N7
\inst4|ch_on[0][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(7),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X38_Y70_N8
\inst4|ch_on[0][8]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][8]~_Duplicate_1feeder_combout\ = \inst4|sr_dout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(8),
	combout => \inst4|ch_on[0][8]~_Duplicate_1feeder_combout\);

-- Location: FF_X38_Y70_N9
\inst4|ch_on[0][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|ch_on[0][8]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][8]~_Duplicate_1_q\);

-- Location: FF_X38_Y70_N19
\inst4|ch_on[0][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(9),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][9]~_Duplicate_1_q\);

-- Location: LCCOMB_X38_Y70_N4
\inst4|ch_on[0][10]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|ch_on[0][10]~_Duplicate_1feeder_combout\ = \inst4|sr_dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sr_dout\(10),
	combout => \inst4|ch_on[0][10]~_Duplicate_1feeder_combout\);

-- Location: FF_X38_Y70_N5
\inst4|ch_on[0][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|ch_on[0][10]~_Duplicate_1feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][10]~_Duplicate_1_q\);

-- Location: FF_X38_Y70_N31
\inst4|ch_on[0][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	asdata => \inst4|sr_dout\(11),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ch_on[0][11]~_Duplicate_1_q\);

-- Location: LCCOMB_X34_Y70_N24
\inst4|sr_din~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~16_combout\ = (!\inst4|ep.conf1~q\ & \inst4|sr_din\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf1~q\,
	datac => \inst4|sr_din\(0),
	combout => \inst4|sr_din~16_combout\);

-- Location: LCCOMB_X34_Y70_N8
\inst4|cmd_addr[1]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cmd_addr[1]~_wirecell_combout\ = !\inst4|cmd_addr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|cmd_addr[1]~_wirecell_combout\);

-- Location: FF_X34_Y70_N25
\inst4|sr_din[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~16_combout\,
	asdata => \inst4|cmd_addr[1]~_wirecell_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => \inst4|ALT_INV_ep.conf0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(0));

-- Location: LCCOMB_X34_Y70_N22
\inst4|sr_din~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~15_combout\ = (\inst4|ep.conf0~q\ & (\inst4|sr_din\(0))) # (!\inst4|ep.conf0~q\ & ((!\inst4|cmd_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datab => \inst4|sr_din\(0),
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|sr_din~15_combout\);

-- Location: LCCOMB_X34_Y70_N6
\inst4|sr_din[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din[11]~1_combout\ = \inst4|ep.conf1~q\ $ (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ep.conf1~q\,
	datad => \inst4|ep.conf0~q\,
	combout => \inst4|sr_din[11]~1_combout\);

-- Location: FF_X34_Y70_N23
\inst4|sr_din[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~15_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(1));

-- Location: LCCOMB_X35_Y72_N2
\inst4|sr_din~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~14_combout\ = (\inst4|ep.conf0~q\ & (\inst4|sr_din\(1))) # (!\inst4|ep.conf0~q\ & ((!\inst4|cmd_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datac => \inst4|sr_din\(1),
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|sr_din~14_combout\);

-- Location: FF_X35_Y72_N3
\inst4|sr_din[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~14_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(2));

-- Location: LCCOMB_X35_Y72_N16
\inst4|sr_din~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~13_combout\ = (\inst4|ep.conf0~q\ & (\inst4|sr_din\(2))) # (!\inst4|ep.conf0~q\ & ((!\inst4|cmd_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datab => \inst4|sr_din\(2),
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|sr_din~13_combout\);

-- Location: FF_X35_Y72_N17
\inst4|sr_din[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~13_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(3));

-- Location: LCCOMB_X35_Y72_N30
\inst4|sr_din~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~12_combout\ = (\inst4|sr_din\(3)) # (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datad => \inst4|sr_din\(3),
	combout => \inst4|sr_din~12_combout\);

-- Location: FF_X35_Y72_N31
\inst4|sr_din[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~12_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(4));

-- Location: LCCOMB_X35_Y72_N4
\inst4|sr_din~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~11_combout\ = (\inst4|ep.conf0~q\ & (\inst4|sr_din\(4))) # (!\inst4|ep.conf0~q\ & ((!\inst4|cmd_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datac => \inst4|sr_din\(4),
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|sr_din~11_combout\);

-- Location: FF_X35_Y72_N5
\inst4|sr_din[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~11_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(5));

-- Location: LCCOMB_X35_Y72_N10
\inst4|sr_din~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~10_combout\ = (\inst4|ep.conf0~q\ & (\inst4|sr_din\(5))) # (!\inst4|ep.conf0~q\ & ((!\inst4|cmd_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datac => \inst4|sr_din\(5),
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|sr_din~10_combout\);

-- Location: FF_X35_Y72_N11
\inst4|sr_din[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~10_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(6));

-- Location: LCCOMB_X35_Y72_N24
\inst4|sr_din~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~9_combout\ = (\inst4|sr_din\(6)) # (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datad => \inst4|sr_din\(6),
	combout => \inst4|sr_din~9_combout\);

-- Location: FF_X35_Y72_N25
\inst4|sr_din[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~9_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(7));

-- Location: LCCOMB_X35_Y72_N6
\inst4|sr_din~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~8_combout\ = (\inst4|sr_din\(7)) # (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datad => \inst4|sr_din\(7),
	combout => \inst4|sr_din~8_combout\);

-- Location: FF_X35_Y72_N7
\inst4|sr_din[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~8_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(8));

-- Location: LCCOMB_X35_Y72_N20
\inst4|sr_din~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~7_combout\ = (\inst4|sr_din\(8)) # (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datad => \inst4|sr_din\(8),
	combout => \inst4|sr_din~7_combout\);

-- Location: FF_X35_Y72_N21
\inst4|sr_din[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~7_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(9));

-- Location: LCCOMB_X35_Y72_N26
\inst4|sr_din~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~6_combout\ = (\inst4|ep.conf0~q\ & (\inst4|sr_din\(9))) # (!\inst4|ep.conf0~q\ & ((!\inst4|cmd_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datab => \inst4|sr_din\(9),
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|sr_din~6_combout\);

-- Location: FF_X35_Y72_N27
\inst4|sr_din[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~6_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(10));

-- Location: LCCOMB_X35_Y72_N0
\inst4|sr_din~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~5_combout\ = (\inst4|sr_din\(10)) # (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sr_din\(10),
	datad => \inst4|ep.conf0~q\,
	combout => \inst4|sr_din~5_combout\);

-- Location: FF_X35_Y72_N1
\inst4|sr_din[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~5_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(11));

-- Location: LCCOMB_X35_Y72_N22
\inst4|sr_din~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~4_combout\ = (\inst4|ep.conf0~q\ & (\inst4|sr_din\(11))) # (!\inst4|ep.conf0~q\ & ((!\inst4|cmd_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datab => \inst4|sr_din\(11),
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|sr_din~4_combout\);

-- Location: FF_X35_Y72_N23
\inst4|sr_din[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(12));

-- Location: LCCOMB_X35_Y72_N28
\inst4|sr_din~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~3_combout\ = (\inst4|ep.conf0~q\ & (\inst4|sr_din\(12))) # (!\inst4|ep.conf0~q\ & ((!\inst4|cmd_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datac => \inst4|sr_din\(12),
	datad => \inst4|cmd_addr\(1),
	combout => \inst4|sr_din~3_combout\);

-- Location: FF_X35_Y72_N29
\inst4|sr_din[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(13));

-- Location: LCCOMB_X35_Y72_N18
\inst4|sr_din~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~2_combout\ = (\inst4|sr_din\(13)) # (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datad => \inst4|sr_din\(13),
	combout => \inst4|sr_din~2_combout\);

-- Location: FF_X35_Y72_N19
\inst4|sr_din[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(14));

-- Location: LCCOMB_X35_Y72_N8
\inst4|sr_din~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sr_din~0_combout\ = (\inst4|sr_din\(14)) # (!\inst4|ep.conf0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ep.conf0~q\,
	datad => \inst4|sr_din\(14),
	combout => \inst4|sr_din~0_combout\);

-- Location: FF_X35_Y72_N9
\inst4|sr_din[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkdiv[11]~clkctrl_outclk\,
	d => \inst4|sr_din~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \inst4|sr_din[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sr_din\(15));

-- Location: IOIBUF_X115_Y26_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_AUD_XCK <= \AUD_XCK~output_o\;

ww_AUD_DACDAT <= \AUD_DACDAT~output_o\;

ww_FPGA_I2C_SCLK <= \FPGA_I2C_SCLK~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_ADC_SCLK <= \ADC_SCLK~output_o\;

ww_ADC_CS_N <= \ADC_CS_N~output_o\;

ww_ADC_DIN <= \ADC_DIN~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

FPGA_I2C_SDAT <= \FPGA_I2C_SDAT~output_o\;
END structure;



-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/28/2022 17:06:09"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	F : IN std_logic_vector(1 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	INVA : IN std_logic;
	ENA : IN std_logic;
	ENB : IN std_logic;
	CI : IN std_logic;
	CO : OUT std_logic;
	Z : OUT std_logic_vector(31 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- A[31]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CO	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[8]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[9]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[11]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[12]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[13]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[14]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[15]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[16]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[17]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[18]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[19]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[20]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[21]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[22]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[23]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[24]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[25]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[26]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[27]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[28]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[29]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[30]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[31]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INVA	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENA	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENB	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CI	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_INVA : std_logic;
SIGNAL ww_ENA : std_logic;
SIGNAL ww_ENB : std_logic;
SIGNAL ww_CI : std_logic;
SIGNAL ww_CO : std_logic;
SIGNAL ww_Z : std_logic_vector(31 DOWNTO 0);
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \CO~output_o\ : std_logic;
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[4]~output_o\ : std_logic;
SIGNAL \Z[5]~output_o\ : std_logic;
SIGNAL \Z[6]~output_o\ : std_logic;
SIGNAL \Z[7]~output_o\ : std_logic;
SIGNAL \Z[8]~output_o\ : std_logic;
SIGNAL \Z[9]~output_o\ : std_logic;
SIGNAL \Z[10]~output_o\ : std_logic;
SIGNAL \Z[11]~output_o\ : std_logic;
SIGNAL \Z[12]~output_o\ : std_logic;
SIGNAL \Z[13]~output_o\ : std_logic;
SIGNAL \Z[14]~output_o\ : std_logic;
SIGNAL \Z[15]~output_o\ : std_logic;
SIGNAL \Z[16]~output_o\ : std_logic;
SIGNAL \Z[17]~output_o\ : std_logic;
SIGNAL \Z[18]~output_o\ : std_logic;
SIGNAL \Z[19]~output_o\ : std_logic;
SIGNAL \Z[20]~output_o\ : std_logic;
SIGNAL \Z[21]~output_o\ : std_logic;
SIGNAL \Z[22]~output_o\ : std_logic;
SIGNAL \Z[23]~output_o\ : std_logic;
SIGNAL \Z[24]~output_o\ : std_logic;
SIGNAL \Z[25]~output_o\ : std_logic;
SIGNAL \Z[26]~output_o\ : std_logic;
SIGNAL \Z[27]~output_o\ : std_logic;
SIGNAL \Z[28]~output_o\ : std_logic;
SIGNAL \Z[29]~output_o\ : std_logic;
SIGNAL \Z[30]~output_o\ : std_logic;
SIGNAL \Z[31]~output_o\ : std_logic;
SIGNAL \F[0]~input_o\ : std_logic;
SIGNAL \F[1]~input_o\ : std_logic;
SIGNAL \alu_last|decoder_1|Decoder0~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ENB~input_o\ : std_logic;
SIGNAL \alu_last|y~combout\ : std_logic;
SIGNAL \INVA~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ENA~input_o\ : std_logic;
SIGNAL \alu_last|x~combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \p:30:alu|y~combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \p:29:alu|x~combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \p:29:alu|y~combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \p:27:alu|y~combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \p:26:alu|y~combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \p:23:alu|y~combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \p:22:alu|y~combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \p:20:alu|x~combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \p:20:alu|y~combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \p:19:alu|x~combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \p:19:alu|y~combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \p:17:alu|x~combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \p:15:alu|y~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \p:15:alu|x~combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \p:14:alu|y~combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \p:14:alu|x~combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \p:13:alu|y~combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \p:12:alu|y~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \p:12:alu|x~combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \p:11:alu|x~combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \p:10:alu|y~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \p:8:alu|y~combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \p:5:alu|x~combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \p:5:alu|y~combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \p:4:alu|y~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \p:3:alu|x~combout\ : std_logic;
SIGNAL \CI~input_o\ : std_logic;
SIGNAL \p:0:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \p:1:alu|x~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \p:1:alu|y~combout\ : std_logic;
SIGNAL \p:1:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \p:2:alu|y~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \p:2:alu|x~combout\ : std_logic;
SIGNAL \p:2:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \p:3:alu|y~combout\ : std_logic;
SIGNAL \p:3:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \p:4:alu|x~combout\ : std_logic;
SIGNAL \p:4:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \p:5:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \p:6:alu|y~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \p:6:alu|x~combout\ : std_logic;
SIGNAL \p:6:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \p:7:alu|x~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \p:7:alu|y~combout\ : std_logic;
SIGNAL \p:7:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \p:8:alu|x~combout\ : std_logic;
SIGNAL \p:8:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \p:9:alu|y~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \p:9:alu|x~combout\ : std_logic;
SIGNAL \p:9:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \p:10:alu|x~combout\ : std_logic;
SIGNAL \p:10:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \p:11:alu|y~combout\ : std_logic;
SIGNAL \p:11:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \p:12:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \p:13:alu|x~combout\ : std_logic;
SIGNAL \p:13:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \p:14:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \p:15:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \p:16:alu|y~combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \p:16:alu|x~combout\ : std_logic;
SIGNAL \p:16:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \p:17:alu|y~combout\ : std_logic;
SIGNAL \p:17:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \p:18:alu|y~combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \p:18:alu|x~combout\ : std_logic;
SIGNAL \p:18:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \p:19:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \p:20:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \p:21:alu|x~combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \p:21:alu|y~combout\ : std_logic;
SIGNAL \p:21:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \p:22:alu|x~combout\ : std_logic;
SIGNAL \p:22:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \p:23:alu|x~combout\ : std_logic;
SIGNAL \p:23:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \p:24:alu|x~combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \p:24:alu|y~combout\ : std_logic;
SIGNAL \p:24:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \p:25:alu|x~combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \p:25:alu|y~combout\ : std_logic;
SIGNAL \p:25:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \p:26:alu|x~combout\ : std_logic;
SIGNAL \p:26:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \p:27:alu|x~combout\ : std_logic;
SIGNAL \p:27:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \p:28:alu|x~combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \p:28:alu|y~combout\ : std_logic;
SIGNAL \p:28:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \p:29:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \p:30:alu|x~combout\ : std_logic;
SIGNAL \p:30:alu|fadder_1|co~combout\ : std_logic;
SIGNAL \alu_last|fadder_1|co~combout\ : std_logic;
SIGNAL \p:0:alu|Z~0_combout\ : std_logic;
SIGNAL \p:0:alu|Z~1_combout\ : std_logic;
SIGNAL \p:1:alu|Z~0_combout\ : std_logic;
SIGNAL \p:1:alu|Z~1_combout\ : std_logic;
SIGNAL \p:2:alu|Z~0_combout\ : std_logic;
SIGNAL \p:2:alu|Z~1_combout\ : std_logic;
SIGNAL \p:3:alu|Z~0_combout\ : std_logic;
SIGNAL \p:3:alu|Z~1_combout\ : std_logic;
SIGNAL \p:4:alu|Z~0_combout\ : std_logic;
SIGNAL \p:4:alu|Z~1_combout\ : std_logic;
SIGNAL \p:5:alu|Z~0_combout\ : std_logic;
SIGNAL \p:5:alu|Z~1_combout\ : std_logic;
SIGNAL \p:6:alu|Z~0_combout\ : std_logic;
SIGNAL \p:6:alu|Z~1_combout\ : std_logic;
SIGNAL \p:7:alu|Z~0_combout\ : std_logic;
SIGNAL \p:7:alu|Z~1_combout\ : std_logic;
SIGNAL \p:8:alu|Z~0_combout\ : std_logic;
SIGNAL \p:8:alu|Z~1_combout\ : std_logic;
SIGNAL \p:9:alu|Z~0_combout\ : std_logic;
SIGNAL \p:9:alu|Z~1_combout\ : std_logic;
SIGNAL \p:10:alu|Z~0_combout\ : std_logic;
SIGNAL \p:10:alu|Z~1_combout\ : std_logic;
SIGNAL \p:11:alu|Z~0_combout\ : std_logic;
SIGNAL \p:11:alu|Z~1_combout\ : std_logic;
SIGNAL \p:12:alu|Z~0_combout\ : std_logic;
SIGNAL \p:12:alu|Z~1_combout\ : std_logic;
SIGNAL \p:13:alu|Z~0_combout\ : std_logic;
SIGNAL \p:13:alu|Z~1_combout\ : std_logic;
SIGNAL \p:14:alu|Z~0_combout\ : std_logic;
SIGNAL \p:14:alu|Z~1_combout\ : std_logic;
SIGNAL \p:15:alu|Z~0_combout\ : std_logic;
SIGNAL \p:15:alu|Z~1_combout\ : std_logic;
SIGNAL \p:16:alu|Z~0_combout\ : std_logic;
SIGNAL \p:16:alu|Z~1_combout\ : std_logic;
SIGNAL \p:17:alu|Z~0_combout\ : std_logic;
SIGNAL \p:17:alu|Z~1_combout\ : std_logic;
SIGNAL \p:18:alu|Z~0_combout\ : std_logic;
SIGNAL \p:18:alu|Z~1_combout\ : std_logic;
SIGNAL \p:19:alu|Z~0_combout\ : std_logic;
SIGNAL \p:19:alu|Z~1_combout\ : std_logic;
SIGNAL \p:20:alu|Z~0_combout\ : std_logic;
SIGNAL \p:20:alu|Z~1_combout\ : std_logic;
SIGNAL \p:21:alu|Z~0_combout\ : std_logic;
SIGNAL \p:21:alu|Z~1_combout\ : std_logic;
SIGNAL \p:22:alu|Z~0_combout\ : std_logic;
SIGNAL \p:22:alu|Z~1_combout\ : std_logic;
SIGNAL \p:23:alu|Z~0_combout\ : std_logic;
SIGNAL \p:23:alu|Z~1_combout\ : std_logic;
SIGNAL \p:24:alu|Z~0_combout\ : std_logic;
SIGNAL \p:24:alu|Z~1_combout\ : std_logic;
SIGNAL \p:25:alu|Z~0_combout\ : std_logic;
SIGNAL \p:25:alu|Z~1_combout\ : std_logic;
SIGNAL \p:26:alu|Z~0_combout\ : std_logic;
SIGNAL \p:26:alu|Z~1_combout\ : std_logic;
SIGNAL \p:27:alu|Z~0_combout\ : std_logic;
SIGNAL \p:27:alu|Z~1_combout\ : std_logic;
SIGNAL \p:28:alu|Z~0_combout\ : std_logic;
SIGNAL \p:28:alu|Z~1_combout\ : std_logic;
SIGNAL \p:29:alu|Z~0_combout\ : std_logic;
SIGNAL \p:29:alu|Z~1_combout\ : std_logic;
SIGNAL \p:30:alu|Z~0_combout\ : std_logic;
SIGNAL \p:30:alu|Z~1_combout\ : std_logic;
SIGNAL \alu_last|Z~0_combout\ : std_logic;
SIGNAL \p:0:alu|fadder_1|x~combout\ : std_logic;
SIGNAL \alu_last|Z~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_F <= F;
ww_A <= A;
ww_B <= B;
ww_INVA <= INVA;
ww_ENA <= ENA;
ww_ENB <= ENB;
ww_CI <= CI;
CO <= ww_CO;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N16
\CO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_last|fadder_1|co~combout\,
	devoe => ww_devoe,
	o => \CO~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:0:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[0]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:1:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[1]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:2:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[2]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:3:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:4:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Z[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:5:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[5]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:6:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[6]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Z[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:7:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[7]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Z[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:8:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[8]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\Z[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:9:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[9]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\Z[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:10:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[10]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\Z[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:11:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[11]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Z[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:12:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[12]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Z[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:13:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[13]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Z[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:14:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[14]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Z[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:15:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[15]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\Z[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:16:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Z[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:17:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Z[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:18:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[18]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Z[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:19:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[19]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Z[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:20:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[20]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Z[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:21:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[21]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\Z[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:22:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[22]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Z[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:23:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[23]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\Z[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:24:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[24]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\Z[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:25:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[25]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\Z[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:26:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[26]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\Z[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:27:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[27]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Z[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:28:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[28]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Z[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:29:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[29]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Z[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p:30:alu|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[30]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Z[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_last|Z~1_combout\,
	devoe => ww_devoe,
	o => \Z[31]~output_o\);

-- Location: IOIBUF_X52_Y73_N8
\F[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(0),
	o => \F[0]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\F[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F(1),
	o => \F[1]~input_o\);

-- Location: LCCOMB_X67_Y69_N0
\alu_last|decoder_1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_last|decoder_1|Decoder0~0_combout\ = (\F[0]~input_o\ & \F[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F[0]~input_o\,
	datad => \F[1]~input_o\,
	combout => \alu_last|decoder_1|Decoder0~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\ENB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENB,
	o => \ENB~input_o\);

-- Location: LCCOMB_X60_Y69_N20
\alu_last|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_last|y~combout\ = (!\ENB~input_o\) # (!\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \ENB~input_o\,
	combout => \alu_last|y~combout\);

-- Location: IOIBUF_X81_Y73_N1
\INVA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INVA,
	o => \INVA~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\ENA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENA,
	o => \ENA~input_o\);

-- Location: LCCOMB_X60_Y69_N16
\alu_last|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_last|x~combout\ = \INVA~input_o\ $ (((\A[0]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVA~input_o\,
	datac => \A[0]~input_o\,
	datad => \ENA~input_o\,
	combout => \alu_last|x~combout\);

-- Location: IOIBUF_X60_Y73_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X60_Y69_N2
\p:30:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:30:alu|y~combout\ = (\ENB~input_o\ & \B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datac => \B[30]~input_o\,
	combout => \p:30:alu|y~combout\);

-- Location: IOIBUF_X58_Y73_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X59_Y69_N2
\p:29:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:29:alu|x~combout\ = \INVA~input_o\ $ (((\A[29]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INVA~input_o\,
	datac => \A[29]~input_o\,
	datad => \ENA~input_o\,
	combout => \p:29:alu|x~combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X67_Y69_N18
\p:29:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:29:alu|y~combout\ = (\B[29]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \ENB~input_o\,
	combout => \p:29:alu|y~combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X80_Y69_N6
\p:27:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:27:alu|y~combout\ = (\B[27]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datad => \ENB~input_o\,
	combout => \p:27:alu|y~combout\);

-- Location: IOIBUF_X107_Y73_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X80_Y69_N10
\p:26:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:26:alu|y~combout\ = (\ENB~input_o\ & \B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENB~input_o\,
	datad => \B[26]~input_o\,
	combout => \p:26:alu|y~combout\);

-- Location: IOIBUF_X72_Y73_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X73_Y69_N6
\p:23:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:23:alu|y~combout\ = (\ENB~input_o\ & \B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datad => \B[23]~input_o\,
	combout => \p:23:alu|y~combout\);

-- Location: IOIBUF_X74_Y73_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X73_Y69_N26
\p:22:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:22:alu|y~combout\ = (\ENB~input_o\ & \B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datad => \B[22]~input_o\,
	combout => \p:22:alu|y~combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X66_Y69_N24
\p:20:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:20:alu|x~combout\ = \INVA~input_o\ $ (((\A[20]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \INVA~input_o\,
	datad => \ENA~input_o\,
	combout => \p:20:alu|x~combout\);

-- Location: IOIBUF_X62_Y73_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X65_Y69_N12
\p:20:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:20:alu|y~combout\ = (\ENB~input_o\ & \B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datac => \B[20]~input_o\,
	combout => \p:20:alu|y~combout\);

-- Location: IOIBUF_X38_Y73_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X66_Y69_N26
\p:19:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:19:alu|x~combout\ = \INVA~input_o\ $ (((\A[19]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INVA~input_o\,
	datac => \A[19]~input_o\,
	datad => \ENA~input_o\,
	combout => \p:19:alu|x~combout\);

-- Location: IOIBUF_X62_Y73_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X66_Y69_N4
\p:19:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:19:alu|y~combout\ = (\ENB~input_o\ & \B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datac => \B[19]~input_o\,
	combout => \p:19:alu|y~combout\);

-- Location: IOIBUF_X67_Y73_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X66_Y69_N10
\p:17:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:17:alu|x~combout\ = \INVA~input_o\ $ (((\A[17]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \INVA~input_o\,
	datad => \ENA~input_o\,
	combout => \p:17:alu|x~combout\);

-- Location: IOIBUF_X79_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X80_Y70_N30
\p:15:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:15:alu|y~combout\ = (\B[15]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \ENB~input_o\,
	combout => \p:15:alu|y~combout\);

-- Location: IOIBUF_X102_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X80_Y70_N20
\p:15:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:15:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVA~input_o\,
	datab => \ENA~input_o\,
	datac => \A[15]~input_o\,
	combout => \p:15:alu|x~combout\);

-- Location: IOIBUF_X87_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X80_Y70_N26
\p:14:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:14:alu|y~combout\ = (\ENB~input_o\ & \B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENB~input_o\,
	datad => \B[14]~input_o\,
	combout => \p:14:alu|y~combout\);

-- Location: IOIBUF_X81_Y73_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X80_Y70_N8
\p:14:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:14:alu|x~combout\ = \INVA~input_o\ $ (((\A[14]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVA~input_o\,
	datab => \A[14]~input_o\,
	datac => \ENA~input_o\,
	combout => \p:14:alu|x~combout\);

-- Location: IOIBUF_X109_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X81_Y70_N10
\p:13:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:13:alu|y~combout\ = (\ENB~input_o\ & \B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENB~input_o\,
	datad => \B[13]~input_o\,
	combout => \p:13:alu|y~combout\);

-- Location: IOIBUF_X85_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X81_Y70_N6
\p:12:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:12:alu|y~combout\ = (\B[12]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \ENB~input_o\,
	combout => \p:12:alu|y~combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X81_Y70_N20
\p:12:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:12:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENA~input_o\,
	datac => \INVA~input_o\,
	datad => \A[12]~input_o\,
	combout => \p:12:alu|x~combout\);

-- Location: IOIBUF_X89_Y73_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X81_Y69_N0
\p:11:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:11:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INVA~input_o\,
	datac => \ENA~input_o\,
	datad => \A[11]~input_o\,
	combout => \p:11:alu|x~combout\);

-- Location: IOIBUF_X94_Y73_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X81_Y69_N12
\p:10:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:10:alu|y~combout\ = (\B[10]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datac => \ENB~input_o\,
	combout => \p:10:alu|y~combout\);

-- Location: IOIBUF_X109_Y73_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X81_Y69_N28
\p:8:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:8:alu|y~combout\ = (\ENB~input_o\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENB~input_o\,
	datad => \B[8]~input_o\,
	combout => \p:8:alu|y~combout\);

-- Location: IOIBUF_X54_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X54_Y72_N4
\p:5:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:5:alu|x~combout\ = \INVA~input_o\ $ (((\A[5]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INVA~input_o\,
	datac => \A[5]~input_o\,
	datad => \ENA~input_o\,
	combout => \p:5:alu|x~combout\);

-- Location: IOIBUF_X29_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X53_Y72_N28
\p:5:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:5:alu|y~combout\ = (\B[5]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ENB~input_o\,
	combout => \p:5:alu|y~combout\);

-- Location: IOIBUF_X49_Y73_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X53_Y72_N30
\p:4:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:4:alu|y~combout\ = (\B[4]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \ENB~input_o\,
	combout => \p:4:alu|y~combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X52_Y72_N10
\p:3:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:3:alu|x~combout\ = \INVA~input_o\ $ (((\A[3]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \INVA~input_o\,
	datad => \ENA~input_o\,
	combout => \p:3:alu|x~combout\);

-- Location: IOIBUF_X58_Y0_N22
\CI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CI,
	o => \CI~input_o\);

-- Location: LCCOMB_X60_Y69_N6
\p:0:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:0:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\alu_last|y~combout\ & (\CI~input_o\ & \alu_last|x~combout\)) # (!\alu_last|y~combout\ & ((\CI~input_o\) # (\alu_last|x~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_last|decoder_1|Decoder0~0_combout\,
	datab => \alu_last|y~combout\,
	datac => \CI~input_o\,
	datad => \alu_last|x~combout\,
	combout => \p:0:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X52_Y72_N18
\p:1:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:1:alu|x~combout\ = \INVA~input_o\ $ (((\A[1]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INVA~input_o\,
	datac => \A[1]~input_o\,
	datad => \ENA~input_o\,
	combout => \p:1:alu|x~combout\);

-- Location: IOIBUF_X38_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X52_Y72_N4
\p:1:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:1:alu|y~combout\ = (\B[1]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \ENB~input_o\,
	combout => \p:1:alu|y~combout\);

-- Location: LCCOMB_X52_Y72_N22
\p:1:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:1:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:0:alu|fadder_1|co~combout\ & ((\p:1:alu|x~combout\) # (\p:1:alu|y~combout\))) # (!\p:0:alu|fadder_1|co~combout\ & (\p:1:alu|x~combout\ & \p:1:alu|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:0:alu|fadder_1|co~combout\,
	datab => \p:1:alu|x~combout\,
	datac => \p:1:alu|y~combout\,
	datad => \alu_last|decoder_1|Decoder0~0_combout\,
	combout => \p:1:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X38_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X52_Y72_N24
\p:2:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:2:alu|y~combout\ = (\ENB~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENB~input_o\,
	datac => \B[2]~input_o\,
	combout => \p:2:alu|y~combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X52_Y72_N14
\p:2:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:2:alu|x~combout\ = \INVA~input_o\ $ (((\A[2]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INVA~input_o\,
	datac => \A[2]~input_o\,
	datad => \ENA~input_o\,
	combout => \p:2:alu|x~combout\);

-- Location: LCCOMB_X52_Y72_N16
\p:2:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:2:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:1:alu|fadder_1|co~combout\ & ((\p:2:alu|y~combout\) # (\p:2:alu|x~combout\))) # (!\p:1:alu|fadder_1|co~combout\ & (\p:2:alu|y~combout\ & \p:2:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:1:alu|fadder_1|co~combout\,
	datab => \p:2:alu|y~combout\,
	datac => \p:2:alu|x~combout\,
	datad => \alu_last|decoder_1|Decoder0~0_combout\,
	combout => \p:2:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X52_Y72_N20
\p:3:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:3:alu|y~combout\ = (\ENB~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENB~input_o\,
	datac => \B[3]~input_o\,
	combout => \p:3:alu|y~combout\);

-- Location: LCCOMB_X52_Y72_N2
\p:3:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:3:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:3:alu|x~combout\ & ((\p:2:alu|fadder_1|co~combout\) # (\p:3:alu|y~combout\))) # (!\p:3:alu|x~combout\ & (\p:2:alu|fadder_1|co~combout\ & \p:3:alu|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:3:alu|x~combout\,
	datab => \p:2:alu|fadder_1|co~combout\,
	datac => \p:3:alu|y~combout\,
	datad => \alu_last|decoder_1|Decoder0~0_combout\,
	combout => \p:3:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X52_Y72_N8
\p:4:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:4:alu|x~combout\ = \INVA~input_o\ $ (((\A[4]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INVA~input_o\,
	datac => \A[4]~input_o\,
	datad => \ENA~input_o\,
	combout => \p:4:alu|x~combout\);

-- Location: LCCOMB_X53_Y72_N16
\p:4:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:4:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:4:alu|y~combout\ & ((\p:3:alu|fadder_1|co~combout\) # (\p:4:alu|x~combout\))) # (!\p:4:alu|y~combout\ & (\p:3:alu|fadder_1|co~combout\ & \p:4:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:4:alu|y~combout\,
	datab => \p:3:alu|fadder_1|co~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:4:alu|x~combout\,
	combout => \p:4:alu|fadder_1|co~combout\);

-- Location: LCCOMB_X53_Y72_N10
\p:5:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:5:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:5:alu|x~combout\ & ((\p:5:alu|y~combout\) # (\p:4:alu|fadder_1|co~combout\))) # (!\p:5:alu|x~combout\ & (\p:5:alu|y~combout\ & \p:4:alu|fadder_1|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:5:alu|x~combout\,
	datab => \p:5:alu|y~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:4:alu|fadder_1|co~combout\,
	combout => \p:5:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X52_Y73_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X53_Y72_N2
\p:6:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:6:alu|y~combout\ = (\ENB~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENB~input_o\,
	datac => \B[6]~input_o\,
	combout => \p:6:alu|y~combout\);

-- Location: IOIBUF_X35_Y73_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X54_Y72_N18
\p:6:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:6:alu|x~combout\ = \INVA~input_o\ $ (((\A[6]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INVA~input_o\,
	datac => \A[6]~input_o\,
	datad => \ENA~input_o\,
	combout => \p:6:alu|x~combout\);

-- Location: LCCOMB_X53_Y72_N12
\p:6:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:6:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:5:alu|fadder_1|co~combout\ & ((\p:6:alu|y~combout\) # (\p:6:alu|x~combout\))) # (!\p:5:alu|fadder_1|co~combout\ & (\p:6:alu|y~combout\ & \p:6:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:5:alu|fadder_1|co~combout\,
	datab => \p:6:alu|y~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:6:alu|x~combout\,
	combout => \p:6:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X54_Y72_N0
\p:7:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:7:alu|x~combout\ = \INVA~input_o\ $ (((\A[7]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \INVA~input_o\,
	datad => \ENA~input_o\,
	combout => \p:7:alu|x~combout\);

-- Location: IOIBUF_X49_Y73_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X53_Y72_N0
\p:7:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:7:alu|y~combout\ = (\B[7]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datac => \ENB~input_o\,
	combout => \p:7:alu|y~combout\);

-- Location: LCCOMB_X53_Y72_N14
\p:7:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:7:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:6:alu|fadder_1|co~combout\ & ((\p:7:alu|x~combout\) # (\p:7:alu|y~combout\))) # (!\p:6:alu|fadder_1|co~combout\ & (\p:7:alu|x~combout\ & \p:7:alu|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:6:alu|fadder_1|co~combout\,
	datab => \p:7:alu|x~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:7:alu|y~combout\,
	combout => \p:7:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X105_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X81_Y69_N10
\p:8:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:8:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENA~input_o\,
	datac => \A[8]~input_o\,
	datad => \INVA~input_o\,
	combout => \p:8:alu|x~combout\);

-- Location: LCCOMB_X81_Y69_N30
\p:8:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:8:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:8:alu|y~combout\ & ((\p:7:alu|fadder_1|co~combout\) # (\p:8:alu|x~combout\))) # (!\p:8:alu|y~combout\ & (\p:7:alu|fadder_1|co~combout\ & \p:8:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_last|decoder_1|Decoder0~0_combout\,
	datab => \p:8:alu|y~combout\,
	datac => \p:7:alu|fadder_1|co~combout\,
	datad => \p:8:alu|x~combout\,
	combout => \p:8:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X94_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X81_Y69_N24
\p:9:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:9:alu|y~combout\ = (\ENB~input_o\ & \B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENB~input_o\,
	datad => \B[9]~input_o\,
	combout => \p:9:alu|y~combout\);

-- Location: IOIBUF_X89_Y73_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X81_Y69_N22
\p:9:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:9:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INVA~input_o\,
	datac => \ENA~input_o\,
	datad => \A[9]~input_o\,
	combout => \p:9:alu|x~combout\);

-- Location: LCCOMB_X81_Y69_N16
\p:9:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:9:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:8:alu|fadder_1|co~combout\ & ((\p:9:alu|y~combout\) # (\p:9:alu|x~combout\))) # (!\p:8:alu|fadder_1|co~combout\ & (\p:9:alu|y~combout\ & \p:9:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:8:alu|fadder_1|co~combout\,
	datab => \p:9:alu|y~combout\,
	datac => \p:9:alu|x~combout\,
	datad => \alu_last|decoder_1|Decoder0~0_combout\,
	combout => \p:9:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X81_Y69_N18
\p:10:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:10:alu|x~combout\ = \INVA~input_o\ $ (((\A[10]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \INVA~input_o\,
	datac => \ENA~input_o\,
	combout => \p:10:alu|x~combout\);

-- Location: LCCOMB_X81_Y69_N2
\p:10:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:10:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:10:alu|y~combout\ & ((\p:9:alu|fadder_1|co~combout\) # (\p:10:alu|x~combout\))) # (!\p:10:alu|y~combout\ & (\p:9:alu|fadder_1|co~combout\ & \p:10:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:10:alu|y~combout\,
	datab => \p:9:alu|fadder_1|co~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:10:alu|x~combout\,
	combout => \p:10:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X89_Y73_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X81_Y70_N24
\p:11:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:11:alu|y~combout\ = (\ENB~input_o\ & \B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datad => \B[11]~input_o\,
	combout => \p:11:alu|y~combout\);

-- Location: LCCOMB_X81_Y70_N2
\p:11:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:11:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:11:alu|x~combout\ & ((\p:10:alu|fadder_1|co~combout\) # (\p:11:alu|y~combout\))) # (!\p:11:alu|x~combout\ & (\p:10:alu|fadder_1|co~combout\ & \p:11:alu|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:11:alu|x~combout\,
	datab => \alu_last|decoder_1|Decoder0~0_combout\,
	datac => \p:10:alu|fadder_1|co~combout\,
	datad => \p:11:alu|y~combout\,
	combout => \p:11:alu|fadder_1|co~combout\);

-- Location: LCCOMB_X81_Y70_N4
\p:12:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:12:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:12:alu|y~combout\ & ((\p:12:alu|x~combout\) # (\p:11:alu|fadder_1|co~combout\))) # (!\p:12:alu|y~combout\ & (\p:12:alu|x~combout\ & \p:11:alu|fadder_1|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:12:alu|y~combout\,
	datab => \p:12:alu|x~combout\,
	datac => \p:11:alu|fadder_1|co~combout\,
	datad => \alu_last|decoder_1|Decoder0~0_combout\,
	combout => \p:12:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X85_Y73_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X81_Y70_N0
\p:13:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:13:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENA~input_o\,
	datac => \INVA~input_o\,
	datad => \A[13]~input_o\,
	combout => \p:13:alu|x~combout\);

-- Location: LCCOMB_X81_Y70_N22
\p:13:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:13:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:13:alu|y~combout\ & ((\p:12:alu|fadder_1|co~combout\) # (\p:13:alu|x~combout\))) # (!\p:13:alu|y~combout\ & (\p:12:alu|fadder_1|co~combout\ & \p:13:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:13:alu|y~combout\,
	datab => \alu_last|decoder_1|Decoder0~0_combout\,
	datac => \p:12:alu|fadder_1|co~combout\,
	datad => \p:13:alu|x~combout\,
	combout => \p:13:alu|fadder_1|co~combout\);

-- Location: LCCOMB_X80_Y70_N12
\p:14:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:14:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:14:alu|y~combout\ & ((\p:14:alu|x~combout\) # (\p:13:alu|fadder_1|co~combout\))) # (!\p:14:alu|y~combout\ & (\p:14:alu|x~combout\ & \p:13:alu|fadder_1|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:14:alu|y~combout\,
	datab => \p:14:alu|x~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:13:alu|fadder_1|co~combout\,
	combout => \p:14:alu|fadder_1|co~combout\);

-- Location: LCCOMB_X80_Y70_N6
\p:15:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:15:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:15:alu|y~combout\ & ((\p:15:alu|x~combout\) # (\p:14:alu|fadder_1|co~combout\))) # (!\p:15:alu|y~combout\ & (\p:15:alu|x~combout\ & \p:14:alu|fadder_1|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:15:alu|y~combout\,
	datab => \p:15:alu|x~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:14:alu|fadder_1|co~combout\,
	combout => \p:15:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X81_Y73_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X80_Y70_N18
\p:16:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:16:alu|y~combout\ = (\ENB~input_o\ & \B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENB~input_o\,
	datad => \B[16]~input_o\,
	combout => \p:16:alu|y~combout\);

-- Location: IOIBUF_X105_Y73_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X80_Y70_N16
\p:16:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:16:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENA~input_o\,
	datac => \INVA~input_o\,
	datad => \A[16]~input_o\,
	combout => \p:16:alu|x~combout\);

-- Location: LCCOMB_X80_Y70_N0
\p:16:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:16:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:15:alu|fadder_1|co~combout\ & ((\p:16:alu|y~combout\) # (\p:16:alu|x~combout\))) # (!\p:15:alu|fadder_1|co~combout\ & (\p:16:alu|y~combout\ & \p:16:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:15:alu|fadder_1|co~combout\,
	datab => \p:16:alu|y~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:16:alu|x~combout\,
	combout => \p:16:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X67_Y73_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X66_Y69_N12
\p:17:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:17:alu|y~combout\ = (\ENB~input_o\ & \B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datac => \B[17]~input_o\,
	combout => \p:17:alu|y~combout\);

-- Location: LCCOMB_X66_Y69_N22
\p:17:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:17:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:17:alu|x~combout\ & ((\p:16:alu|fadder_1|co~combout\) # (\p:17:alu|y~combout\))) # (!\p:17:alu|x~combout\ & (\p:16:alu|fadder_1|co~combout\ & \p:17:alu|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:17:alu|x~combout\,
	datab => \p:16:alu|fadder_1|co~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:17:alu|y~combout\,
	combout => \p:17:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X66_Y69_N8
\p:18:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:18:alu|y~combout\ = (\ENB~input_o\ & \B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datad => \B[18]~input_o\,
	combout => \p:18:alu|y~combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X66_Y69_N6
\p:18:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:18:alu|x~combout\ = \INVA~input_o\ $ (((\A[18]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \INVA~input_o\,
	datad => \ENA~input_o\,
	combout => \p:18:alu|x~combout\);

-- Location: LCCOMB_X66_Y69_N0
\p:18:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:18:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:17:alu|fadder_1|co~combout\ & ((\p:18:alu|y~combout\) # (\p:18:alu|x~combout\))) # (!\p:17:alu|fadder_1|co~combout\ & (\p:18:alu|y~combout\ & \p:18:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:17:alu|fadder_1|co~combout\,
	datab => \p:18:alu|y~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:18:alu|x~combout\,
	combout => \p:18:alu|fadder_1|co~combout\);

-- Location: LCCOMB_X66_Y69_N18
\p:19:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:19:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:19:alu|x~combout\ & ((\p:19:alu|y~combout\) # (\p:18:alu|fadder_1|co~combout\))) # (!\p:19:alu|x~combout\ & (\p:19:alu|y~combout\ & \p:18:alu|fadder_1|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:19:alu|x~combout\,
	datab => \p:19:alu|y~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:18:alu|fadder_1|co~combout\,
	combout => \p:19:alu|fadder_1|co~combout\);

-- Location: LCCOMB_X65_Y69_N6
\p:20:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:20:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:20:alu|x~combout\ & ((\p:20:alu|y~combout\) # (\p:19:alu|fadder_1|co~combout\))) # (!\p:20:alu|x~combout\ & (\p:20:alu|y~combout\ & \p:19:alu|fadder_1|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_last|decoder_1|Decoder0~0_combout\,
	datab => \p:20:alu|x~combout\,
	datac => \p:20:alu|y~combout\,
	datad => \p:19:alu|fadder_1|co~combout\,
	combout => \p:20:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X65_Y69_N0
\p:21:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:21:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVA~input_o\,
	datac => \ENA~input_o\,
	datad => \A[21]~input_o\,
	combout => \p:21:alu|x~combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X65_Y69_N26
\p:21:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:21:alu|y~combout\ = (\ENB~input_o\ & \B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datad => \B[21]~input_o\,
	combout => \p:21:alu|y~combout\);

-- Location: LCCOMB_X65_Y69_N24
\p:21:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:21:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:20:alu|fadder_1|co~combout\ & ((\p:21:alu|x~combout\) # (\p:21:alu|y~combout\))) # (!\p:20:alu|fadder_1|co~combout\ & (\p:21:alu|x~combout\ & \p:21:alu|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:20:alu|fadder_1|co~combout\,
	datab => \p:21:alu|x~combout\,
	datac => \p:21:alu|y~combout\,
	datad => \alu_last|decoder_1|Decoder0~0_combout\,
	combout => \p:21:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X74_Y73_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X73_Y69_N16
\p:22:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:22:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVA~input_o\,
	datab => \ENA~input_o\,
	datac => \A[22]~input_o\,
	combout => \p:22:alu|x~combout\);

-- Location: LCCOMB_X73_Y69_N28
\p:22:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:22:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:22:alu|y~combout\ & ((\p:21:alu|fadder_1|co~combout\) # (\p:22:alu|x~combout\))) # (!\p:22:alu|y~combout\ & (\p:21:alu|fadder_1|co~combout\ & \p:22:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:22:alu|y~combout\,
	datab => \p:21:alu|fadder_1|co~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:22:alu|x~combout\,
	combout => \p:22:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X72_Y73_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X73_Y69_N20
\p:23:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:23:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVA~input_o\,
	datab => \ENA~input_o\,
	datac => \A[23]~input_o\,
	combout => \p:23:alu|x~combout\);

-- Location: LCCOMB_X73_Y69_N30
\p:23:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:23:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:23:alu|y~combout\ & ((\p:22:alu|fadder_1|co~combout\) # (\p:23:alu|x~combout\))) # (!\p:23:alu|y~combout\ & (\p:22:alu|fadder_1|co~combout\ & \p:23:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:23:alu|y~combout\,
	datab => \p:22:alu|fadder_1|co~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:23:alu|x~combout\,
	combout => \p:23:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X100_Y73_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X73_Y69_N24
\p:24:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:24:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVA~input_o\,
	datab => \ENA~input_o\,
	datad => \A[24]~input_o\,
	combout => \p:24:alu|x~combout\);

-- Location: IOIBUF_X115_Y69_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X73_Y69_N10
\p:24:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:24:alu|y~combout\ = (\ENB~input_o\ & \B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datac => \B[24]~input_o\,
	combout => \p:24:alu|y~combout\);

-- Location: LCCOMB_X73_Y69_N8
\p:24:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:24:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:23:alu|fadder_1|co~combout\ & ((\p:24:alu|x~combout\) # (\p:24:alu|y~combout\))) # (!\p:23:alu|fadder_1|co~combout\ & (\p:24:alu|x~combout\ & \p:24:alu|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:23:alu|fadder_1|co~combout\,
	datab => \p:24:alu|x~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:24:alu|y~combout\,
	combout => \p:24:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X102_Y73_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X74_Y69_N24
\p:25:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:25:alu|x~combout\ = \INVA~input_o\ $ (((\A[25]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVA~input_o\,
	datac => \A[25]~input_o\,
	datad => \ENA~input_o\,
	combout => \p:25:alu|x~combout\);

-- Location: IOIBUF_X98_Y73_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X74_Y69_N10
\p:25:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:25:alu|y~combout\ = (\ENB~input_o\ & \B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENB~input_o\,
	datac => \B[25]~input_o\,
	combout => \p:25:alu|y~combout\);

-- Location: LCCOMB_X74_Y69_N28
\p:25:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:25:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:24:alu|fadder_1|co~combout\ & ((\p:25:alu|x~combout\) # (\p:25:alu|y~combout\))) # (!\p:24:alu|fadder_1|co~combout\ & (\p:25:alu|x~combout\ & \p:25:alu|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:24:alu|fadder_1|co~combout\,
	datab => \p:25:alu|x~combout\,
	datac => \alu_last|decoder_1|Decoder0~0_combout\,
	datad => \p:25:alu|y~combout\,
	combout => \p:25:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X83_Y73_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X80_Y69_N24
\p:26:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:26:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENA~input_o\,
	datac => \INVA~input_o\,
	datad => \A[26]~input_o\,
	combout => \p:26:alu|x~combout\);

-- Location: LCCOMB_X80_Y69_N4
\p:26:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:26:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:26:alu|y~combout\ & ((\p:25:alu|fadder_1|co~combout\) # (\p:26:alu|x~combout\))) # (!\p:26:alu|y~combout\ & (\p:25:alu|fadder_1|co~combout\ & \p:26:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:26:alu|y~combout\,
	datab => \alu_last|decoder_1|Decoder0~0_combout\,
	datac => \p:25:alu|fadder_1|co~combout\,
	datad => \p:26:alu|x~combout\,
	combout => \p:26:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X107_Y73_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X80_Y69_N28
\p:27:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:27:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENA~input_o\,
	datac => \INVA~input_o\,
	datad => \A[27]~input_o\,
	combout => \p:27:alu|x~combout\);

-- Location: LCCOMB_X80_Y69_N22
\p:27:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:27:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:27:alu|y~combout\ & ((\p:26:alu|fadder_1|co~combout\) # (\p:27:alu|x~combout\))) # (!\p:27:alu|y~combout\ & (\p:26:alu|fadder_1|co~combout\ & \p:27:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:27:alu|y~combout\,
	datab => \alu_last|decoder_1|Decoder0~0_combout\,
	datac => \p:26:alu|fadder_1|co~combout\,
	datad => \p:27:alu|x~combout\,
	combout => \p:27:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X83_Y73_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X80_Y69_N8
\p:28:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:28:alu|x~combout\ = \INVA~input_o\ $ (((\ENA~input_o\ & \A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INVA~input_o\,
	datab => \ENA~input_o\,
	datad => \A[28]~input_o\,
	combout => \p:28:alu|x~combout\);

-- Location: IOIBUF_X83_Y73_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X80_Y69_N18
\p:28:alu|y\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:28:alu|y~combout\ = (\B[28]~input_o\ & \ENB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \ENB~input_o\,
	combout => \p:28:alu|y~combout\);

-- Location: LCCOMB_X80_Y69_N16
\p:28:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:28:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:27:alu|fadder_1|co~combout\ & ((\p:28:alu|x~combout\) # (\p:28:alu|y~combout\))) # (!\p:27:alu|fadder_1|co~combout\ & (\p:28:alu|x~combout\ & \p:28:alu|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:27:alu|fadder_1|co~combout\,
	datab => \alu_last|decoder_1|Decoder0~0_combout\,
	datac => \p:28:alu|x~combout\,
	datad => \p:28:alu|y~combout\,
	combout => \p:28:alu|fadder_1|co~combout\);

-- Location: LCCOMB_X60_Y69_N8
\p:29:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:29:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:29:alu|x~combout\ & ((\p:29:alu|y~combout\) # (\p:28:alu|fadder_1|co~combout\))) # (!\p:29:alu|x~combout\ & (\p:29:alu|y~combout\ & \p:28:alu|fadder_1|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:29:alu|x~combout\,
	datab => \p:29:alu|y~combout\,
	datac => \p:28:alu|fadder_1|co~combout\,
	datad => \alu_last|decoder_1|Decoder0~0_combout\,
	combout => \p:29:alu|fadder_1|co~combout\);

-- Location: IOIBUF_X29_Y73_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X59_Y69_N24
\p:30:alu|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:30:alu|x~combout\ = \INVA~input_o\ $ (((\A[30]~input_o\ & \ENA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \INVA~input_o\,
	datad => \ENA~input_o\,
	combout => \p:30:alu|x~combout\);

-- Location: LCCOMB_X60_Y69_N10
\p:30:alu|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:30:alu|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\p:30:alu|y~combout\ & ((\p:29:alu|fadder_1|co~combout\) # (\p:30:alu|x~combout\))) # (!\p:30:alu|y~combout\ & (\p:29:alu|fadder_1|co~combout\ & \p:30:alu|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_last|decoder_1|Decoder0~0_combout\,
	datab => \p:30:alu|y~combout\,
	datac => \p:29:alu|fadder_1|co~combout\,
	datad => \p:30:alu|x~combout\,
	combout => \p:30:alu|fadder_1|co~combout\);

-- Location: LCCOMB_X60_Y69_N4
\alu_last|fadder_1|co\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_last|fadder_1|co~combout\ = (\alu_last|decoder_1|Decoder0~0_combout\ & ((\alu_last|y~combout\ & (\alu_last|x~combout\ & \p:30:alu|fadder_1|co~combout\)) # (!\alu_last|y~combout\ & ((\alu_last|x~combout\) # (\p:30:alu|fadder_1|co~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_last|decoder_1|Decoder0~0_combout\,
	datab => \alu_last|y~combout\,
	datac => \alu_last|x~combout\,
	datad => \p:30:alu|fadder_1|co~combout\,
	combout => \alu_last|fadder_1|co~combout\);

-- Location: LCCOMB_X60_Y69_N30
\p:0:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:0:alu|Z~0_combout\ = \alu_last|x~combout\ $ (((\CI~input_o\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CI~input_o\,
	datac => \F[0]~input_o\,
	datad => \alu_last|x~combout\,
	combout => \p:0:alu|Z~0_combout\);

-- Location: LCCOMB_X60_Y69_N0
\p:0:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:0:alu|Z~1_combout\ = (\alu_last|y~combout\ & ((\F[1]~input_o\ & (\p:0:alu|Z~0_combout\)) # (!\F[1]~input_o\ & ((\F[0]~input_o\))))) # (!\alu_last|y~combout\ & ((\p:0:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:0:alu|Z~0_combout\ & 
-- (\F[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:0:alu|Z~0_combout\,
	datab => \F[1]~input_o\,
	datac => \F[0]~input_o\,
	datad => \alu_last|y~combout\,
	combout => \p:0:alu|Z~1_combout\);

-- Location: LCCOMB_X52_Y72_N12
\p:1:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:1:alu|Z~0_combout\ = \p:1:alu|x~combout\ $ (((\F[0]~input_o\ & \p:0:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:1:alu|x~combout\,
	datad => \p:0:alu|fadder_1|co~combout\,
	combout => \p:1:alu|Z~0_combout\);

-- Location: LCCOMB_X52_Y72_N30
\p:1:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:1:alu|Z~1_combout\ = (\p:1:alu|y~combout\ & ((\p:1:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:1:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:1:alu|y~combout\ & ((\F[1]~input_o\ & (\p:1:alu|Z~0_combout\)) # (!\F[1]~input_o\ & ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:1:alu|Z~0_combout\,
	datab => \F[1]~input_o\,
	datac => \p:1:alu|y~combout\,
	datad => \F[0]~input_o\,
	combout => \p:1:alu|Z~1_combout\);

-- Location: LCCOMB_X52_Y72_N0
\p:2:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:2:alu|Z~0_combout\ = \p:2:alu|x~combout\ $ (((\p:1:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p:2:alu|x~combout\,
	datac => \p:1:alu|fadder_1|co~combout\,
	datad => \F[0]~input_o\,
	combout => \p:2:alu|Z~0_combout\);

-- Location: LCCOMB_X52_Y72_N26
\p:2:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:2:alu|Z~1_combout\ = (\p:2:alu|y~combout\ & ((\p:2:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:2:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:2:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:2:alu|Z~0_combout\))) # (!\F[1]~input_o\ & (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:2:alu|y~combout\,
	datac => \p:2:alu|Z~0_combout\,
	datad => \F[1]~input_o\,
	combout => \p:2:alu|Z~1_combout\);

-- Location: LCCOMB_X52_Y72_N28
\p:3:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:3:alu|Z~0_combout\ = \p:3:alu|x~combout\ $ (((\p:2:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:3:alu|x~combout\,
	datab => \p:2:alu|fadder_1|co~combout\,
	datad => \F[0]~input_o\,
	combout => \p:3:alu|Z~0_combout\);

-- Location: LCCOMB_X52_Y72_N6
\p:3:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:3:alu|Z~1_combout\ = (\p:3:alu|y~combout\ & ((\p:3:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:3:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:3:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:3:alu|Z~0_combout\))) # (!\F[1]~input_o\ & (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:3:alu|Z~0_combout\,
	datac => \p:3:alu|y~combout\,
	datad => \F[1]~input_o\,
	combout => \p:3:alu|Z~1_combout\);

-- Location: LCCOMB_X53_Y72_N24
\p:4:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:4:alu|Z~0_combout\ = \p:4:alu|x~combout\ $ (((\p:3:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:3:alu|fadder_1|co~combout\,
	datab => \F[0]~input_o\,
	datad => \p:4:alu|x~combout\,
	combout => \p:4:alu|Z~0_combout\);

-- Location: LCCOMB_X53_Y72_N26
\p:4:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:4:alu|Z~1_combout\ = (\p:4:alu|y~combout\ & ((\p:4:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:4:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:4:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:4:alu|Z~0_combout\))) # (!\F[1]~input_o\ & (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~input_o\,
	datab => \F[0]~input_o\,
	datac => \p:4:alu|y~combout\,
	datad => \p:4:alu|Z~0_combout\,
	combout => \p:4:alu|Z~1_combout\);

-- Location: LCCOMB_X53_Y72_N20
\p:5:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:5:alu|Z~0_combout\ = \p:5:alu|x~combout\ $ (((\F[0]~input_o\ & \p:4:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:5:alu|x~combout\,
	datab => \F[0]~input_o\,
	datad => \p:4:alu|fadder_1|co~combout\,
	combout => \p:5:alu|Z~0_combout\);

-- Location: LCCOMB_X53_Y72_N22
\p:5:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:5:alu|Z~1_combout\ = (\p:5:alu|y~combout\ & ((\p:5:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:5:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:5:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:5:alu|Z~0_combout\))) # (!\F[1]~input_o\ & (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:5:alu|Z~0_combout\,
	datac => \F[1]~input_o\,
	datad => \p:5:alu|y~combout\,
	combout => \p:5:alu|Z~1_combout\);

-- Location: LCCOMB_X53_Y72_N8
\p:6:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:6:alu|Z~0_combout\ = \p:6:alu|x~combout\ $ (((\p:5:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:5:alu|fadder_1|co~combout\,
	datab => \F[0]~input_o\,
	datad => \p:6:alu|x~combout\,
	combout => \p:6:alu|Z~0_combout\);

-- Location: LCCOMB_X53_Y72_N18
\p:6:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:6:alu|Z~1_combout\ = (\p:6:alu|y~combout\ & ((\p:6:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:6:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:6:alu|y~combout\ & ((\F[1]~input_o\ & (\p:6:alu|Z~0_combout\)) # (!\F[1]~input_o\ & ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~input_o\,
	datab => \p:6:alu|y~combout\,
	datac => \p:6:alu|Z~0_combout\,
	datad => \F[0]~input_o\,
	combout => \p:6:alu|Z~1_combout\);

-- Location: LCCOMB_X53_Y72_N4
\p:7:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:7:alu|Z~0_combout\ = \p:7:alu|x~combout\ $ (((\p:6:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:6:alu|fadder_1|co~combout\,
	datab => \F[0]~input_o\,
	datac => \p:7:alu|x~combout\,
	combout => \p:7:alu|Z~0_combout\);

-- Location: LCCOMB_X53_Y72_N6
\p:7:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:7:alu|Z~1_combout\ = (\p:7:alu|y~combout\ & ((\p:7:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:7:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:7:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:7:alu|Z~0_combout\))) # (!\F[1]~input_o\ & (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~input_o\,
	datab => \F[0]~input_o\,
	datac => \p:7:alu|Z~0_combout\,
	datad => \p:7:alu|y~combout\,
	combout => \p:7:alu|Z~1_combout\);

-- Location: LCCOMB_X81_Y69_N20
\p:8:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:8:alu|Z~0_combout\ = \p:8:alu|x~combout\ $ (((\F[0]~input_o\ & \p:7:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datac => \p:7:alu|fadder_1|co~combout\,
	datad => \p:8:alu|x~combout\,
	combout => \p:8:alu|Z~0_combout\);

-- Location: LCCOMB_X81_Y69_N6
\p:8:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:8:alu|Z~1_combout\ = (\p:8:alu|y~combout\ & ((\p:8:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:8:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:8:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:8:alu|Z~0_combout\))) # (!\F[1]~input_o\ & (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:8:alu|Z~0_combout\,
	datac => \F[1]~input_o\,
	datad => \p:8:alu|y~combout\,
	combout => \p:8:alu|Z~1_combout\);

-- Location: LCCOMB_X81_Y69_N8
\p:9:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:9:alu|Z~0_combout\ = \p:9:alu|x~combout\ $ (((\p:8:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:8:alu|fadder_1|co~combout\,
	datac => \p:9:alu|x~combout\,
	datad => \F[0]~input_o\,
	combout => \p:9:alu|Z~0_combout\);

-- Location: LCCOMB_X81_Y69_N26
\p:9:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:9:alu|Z~1_combout\ = (\p:9:alu|y~combout\ & ((\p:9:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:9:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:9:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:9:alu|Z~0_combout\))) # (!\F[1]~input_o\ & (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \F[1]~input_o\,
	datac => \p:9:alu|Z~0_combout\,
	datad => \p:9:alu|y~combout\,
	combout => \p:9:alu|Z~1_combout\);

-- Location: LCCOMB_X81_Y69_N4
\p:10:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:10:alu|Z~0_combout\ = \p:10:alu|x~combout\ $ (((\F[0]~input_o\ & \p:9:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:9:alu|fadder_1|co~combout\,
	datad => \p:10:alu|x~combout\,
	combout => \p:10:alu|Z~0_combout\);

-- Location: LCCOMB_X81_Y69_N14
\p:10:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:10:alu|Z~1_combout\ = (\p:10:alu|y~combout\ & ((\p:10:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:10:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:10:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:10:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \F[1]~input_o\,
	datac => \p:10:alu|Z~0_combout\,
	datad => \p:10:alu|y~combout\,
	combout => \p:10:alu|Z~1_combout\);

-- Location: LCCOMB_X81_Y70_N8
\p:11:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:11:alu|Z~0_combout\ = \p:11:alu|x~combout\ $ (((\F[0]~input_o\ & \p:10:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:11:alu|x~combout\,
	datab => \F[0]~input_o\,
	datac => \p:10:alu|fadder_1|co~combout\,
	combout => \p:11:alu|Z~0_combout\);

-- Location: LCCOMB_X81_Y70_N26
\p:11:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:11:alu|Z~1_combout\ = (\p:11:alu|y~combout\ & ((\p:11:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:11:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:11:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:11:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~input_o\,
	datab => \F[0]~input_o\,
	datac => \p:11:alu|Z~0_combout\,
	datad => \p:11:alu|y~combout\,
	combout => \p:11:alu|Z~1_combout\);

-- Location: LCCOMB_X81_Y70_N28
\p:12:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:12:alu|Z~0_combout\ = \p:12:alu|x~combout\ $ (((\F[0]~input_o\ & \p:11:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[0]~input_o\,
	datac => \p:11:alu|fadder_1|co~combout\,
	datad => \p:12:alu|x~combout\,
	combout => \p:12:alu|Z~0_combout\);

-- Location: LCCOMB_X81_Y70_N14
\p:12:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:12:alu|Z~1_combout\ = (\p:12:alu|y~combout\ & ((\p:12:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:12:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:12:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:12:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:12:alu|y~combout\,
	datab => \F[0]~input_o\,
	datac => \F[1]~input_o\,
	datad => \p:12:alu|Z~0_combout\,
	combout => \p:12:alu|Z~1_combout\);

-- Location: LCCOMB_X81_Y70_N16
\p:13:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:13:alu|Z~0_combout\ = \p:13:alu|x~combout\ $ (((\F[0]~input_o\ & \p:12:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[0]~input_o\,
	datac => \p:12:alu|fadder_1|co~combout\,
	datad => \p:13:alu|x~combout\,
	combout => \p:13:alu|Z~0_combout\);

-- Location: LCCOMB_X81_Y70_N18
\p:13:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:13:alu|Z~1_combout\ = (\p:13:alu|y~combout\ & ((\p:13:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:13:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:13:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:13:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:13:alu|y~combout\,
	datab => \F[0]~input_o\,
	datac => \F[1]~input_o\,
	datad => \p:13:alu|Z~0_combout\,
	combout => \p:13:alu|Z~1_combout\);

-- Location: LCCOMB_X80_Y70_N10
\p:14:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:14:alu|Z~0_combout\ = \p:14:alu|x~combout\ $ (((\F[0]~input_o\ & \p:13:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[0]~input_o\,
	datac => \p:14:alu|x~combout\,
	datad => \p:13:alu|fadder_1|co~combout\,
	combout => \p:14:alu|Z~0_combout\);

-- Location: LCCOMB_X80_Y70_N4
\p:14:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:14:alu|Z~1_combout\ = (\p:14:alu|y~combout\ & ((\p:14:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:14:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:14:alu|y~combout\ & ((\F[1]~input_o\ & (\p:14:alu|Z~0_combout\)) # (!\F[1]~input_o\ & 
-- ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:14:alu|Z~0_combout\,
	datab => \F[1]~input_o\,
	datac => \p:14:alu|y~combout\,
	datad => \F[0]~input_o\,
	combout => \p:14:alu|Z~1_combout\);

-- Location: LCCOMB_X80_Y70_N22
\p:15:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:15:alu|Z~0_combout\ = \p:15:alu|x~combout\ $ (((\p:14:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:14:alu|fadder_1|co~combout\,
	datab => \F[0]~input_o\,
	datad => \p:15:alu|x~combout\,
	combout => \p:15:alu|Z~0_combout\);

-- Location: LCCOMB_X80_Y70_N24
\p:15:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:15:alu|Z~1_combout\ = (\p:15:alu|y~combout\ & ((\p:15:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:15:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:15:alu|y~combout\ & ((\F[1]~input_o\ & (\p:15:alu|Z~0_combout\)) # (!\F[1]~input_o\ & 
-- ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:15:alu|Z~0_combout\,
	datab => \F[1]~input_o\,
	datac => \p:15:alu|y~combout\,
	datad => \F[0]~input_o\,
	combout => \p:15:alu|Z~1_combout\);

-- Location: LCCOMB_X80_Y70_N2
\p:16:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:16:alu|Z~0_combout\ = \p:16:alu|x~combout\ $ (((\p:15:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:15:alu|fadder_1|co~combout\,
	datab => \F[0]~input_o\,
	datad => \p:16:alu|x~combout\,
	combout => \p:16:alu|Z~0_combout\);

-- Location: LCCOMB_X80_Y70_N28
\p:16:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:16:alu|Z~1_combout\ = (\p:16:alu|y~combout\ & ((\p:16:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:16:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:16:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:16:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \F[1]~input_o\,
	datac => \p:16:alu|Z~0_combout\,
	datad => \p:16:alu|y~combout\,
	combout => \p:16:alu|Z~1_combout\);

-- Location: LCCOMB_X66_Y69_N20
\p:17:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:17:alu|Z~0_combout\ = \p:17:alu|x~combout\ $ (((\F[0]~input_o\ & \p:16:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:16:alu|fadder_1|co~combout\,
	datad => \p:17:alu|x~combout\,
	combout => \p:17:alu|Z~0_combout\);

-- Location: LCCOMB_X66_Y69_N14
\p:17:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:17:alu|Z~1_combout\ = (\p:17:alu|y~combout\ & ((\p:17:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:17:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:17:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:17:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:17:alu|Z~0_combout\,
	datac => \F[1]~input_o\,
	datad => \p:17:alu|y~combout\,
	combout => \p:17:alu|Z~1_combout\);

-- Location: LCCOMB_X66_Y69_N16
\p:18:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:18:alu|Z~0_combout\ = \p:18:alu|x~combout\ $ (((\F[0]~input_o\ & \p:17:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datac => \p:17:alu|fadder_1|co~combout\,
	datad => \p:18:alu|x~combout\,
	combout => \p:18:alu|Z~0_combout\);

-- Location: LCCOMB_X66_Y69_N2
\p:18:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:18:alu|Z~1_combout\ = (\p:18:alu|y~combout\ & ((\p:18:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:18:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:18:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:18:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \F[1]~input_o\,
	datac => \p:18:alu|y~combout\,
	datad => \p:18:alu|Z~0_combout\,
	combout => \p:18:alu|Z~1_combout\);

-- Location: LCCOMB_X66_Y69_N28
\p:19:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:19:alu|Z~0_combout\ = \p:19:alu|x~combout\ $ (((\F[0]~input_o\ & \p:18:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:18:alu|fadder_1|co~combout\,
	datac => \p:19:alu|x~combout\,
	combout => \p:19:alu|Z~0_combout\);

-- Location: LCCOMB_X66_Y69_N30
\p:19:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:19:alu|Z~1_combout\ = (\p:19:alu|y~combout\ & ((\p:19:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:19:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:19:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:19:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \F[1]~input_o\,
	datac => \p:19:alu|y~combout\,
	datad => \p:19:alu|Z~0_combout\,
	combout => \p:19:alu|Z~1_combout\);

-- Location: LCCOMB_X65_Y69_N18
\p:20:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:20:alu|Z~0_combout\ = \p:20:alu|x~combout\ $ (((\p:19:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p:19:alu|fadder_1|co~combout\,
	datac => \F[0]~input_o\,
	datad => \p:20:alu|x~combout\,
	combout => \p:20:alu|Z~0_combout\);

-- Location: LCCOMB_X65_Y69_N4
\p:20:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:20:alu|Z~1_combout\ = (\p:20:alu|y~combout\ & ((\p:20:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:20:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:20:alu|y~combout\ & ((\F[1]~input_o\ & (\p:20:alu|Z~0_combout\)) # (!\F[1]~input_o\ & 
-- ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~input_o\,
	datab => \p:20:alu|Z~0_combout\,
	datac => \F[0]~input_o\,
	datad => \p:20:alu|y~combout\,
	combout => \p:20:alu|Z~1_combout\);

-- Location: LCCOMB_X65_Y69_N22
\p:21:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:21:alu|Z~0_combout\ = \p:21:alu|x~combout\ $ (((\p:20:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:20:alu|fadder_1|co~combout\,
	datac => \F[0]~input_o\,
	datad => \p:21:alu|x~combout\,
	combout => \p:21:alu|Z~0_combout\);

-- Location: LCCOMB_X65_Y69_N8
\p:21:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:21:alu|Z~1_combout\ = (\p:21:alu|y~combout\ & ((\p:21:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:21:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:21:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:21:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:21:alu|y~combout\,
	datab => \F[0]~input_o\,
	datac => \p:21:alu|Z~0_combout\,
	datad => \F[1]~input_o\,
	combout => \p:21:alu|Z~1_combout\);

-- Location: LCCOMB_X73_Y69_N2
\p:22:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:22:alu|Z~0_combout\ = \p:22:alu|x~combout\ $ (((\F[0]~input_o\ & \p:21:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:21:alu|fadder_1|co~combout\,
	datad => \p:22:alu|x~combout\,
	combout => \p:22:alu|Z~0_combout\);

-- Location: LCCOMB_X73_Y69_N12
\p:22:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:22:alu|Z~1_combout\ = (\p:22:alu|y~combout\ & ((\p:22:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:22:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:22:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:22:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \F[1]~input_o\,
	datac => \p:22:alu|y~combout\,
	datad => \p:22:alu|Z~0_combout\,
	combout => \p:22:alu|Z~1_combout\);

-- Location: LCCOMB_X73_Y69_N14
\p:23:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:23:alu|Z~0_combout\ = \p:23:alu|x~combout\ $ (((\F[0]~input_o\ & \p:22:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:22:alu|fadder_1|co~combout\,
	datad => \p:23:alu|x~combout\,
	combout => \p:23:alu|Z~0_combout\);

-- Location: LCCOMB_X73_Y69_N0
\p:23:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:23:alu|Z~1_combout\ = (\p:23:alu|y~combout\ & ((\p:23:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:23:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:23:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:23:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:23:alu|Z~0_combout\,
	datac => \F[1]~input_o\,
	datad => \p:23:alu|y~combout\,
	combout => \p:23:alu|Z~1_combout\);

-- Location: LCCOMB_X73_Y69_N18
\p:24:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:24:alu|Z~0_combout\ = \p:24:alu|x~combout\ $ (((\F[0]~input_o\ & \p:23:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datac => \p:23:alu|fadder_1|co~combout\,
	datad => \p:24:alu|x~combout\,
	combout => \p:24:alu|Z~0_combout\);

-- Location: LCCOMB_X73_Y69_N4
\p:24:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:24:alu|Z~1_combout\ = (\p:24:alu|y~combout\ & ((\p:24:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:24:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:24:alu|y~combout\ & ((\F[1]~input_o\ & ((\p:24:alu|Z~0_combout\))) # (!\F[1]~input_o\ & 
-- (\F[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \p:24:alu|Z~0_combout\,
	datac => \F[1]~input_o\,
	datad => \p:24:alu|y~combout\,
	combout => \p:24:alu|Z~1_combout\);

-- Location: LCCOMB_X74_Y69_N6
\p:25:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:25:alu|Z~0_combout\ = \p:25:alu|x~combout\ $ (((\p:24:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:24:alu|fadder_1|co~combout\,
	datac => \F[0]~input_o\,
	datad => \p:25:alu|x~combout\,
	combout => \p:25:alu|Z~0_combout\);

-- Location: LCCOMB_X74_Y69_N16
\p:25:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:25:alu|Z~1_combout\ = (\p:25:alu|y~combout\ & ((\p:25:alu|Z~0_combout\ & (!\F[0]~input_o\)) # (!\p:25:alu|Z~0_combout\ & ((\F[1]~input_o\))))) # (!\p:25:alu|y~combout\ & ((\F[1]~input_o\ & (\p:25:alu|Z~0_combout\)) # (!\F[1]~input_o\ & 
-- ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:25:alu|Z~0_combout\,
	datab => \F[0]~input_o\,
	datac => \F[1]~input_o\,
	datad => \p:25:alu|y~combout\,
	combout => \p:25:alu|Z~1_combout\);

-- Location: LCCOMB_X80_Y69_N26
\p:26:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:26:alu|Z~0_combout\ = \p:26:alu|x~combout\ $ (((\p:25:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:25:alu|fadder_1|co~combout\,
	datac => \F[0]~input_o\,
	datad => \p:26:alu|x~combout\,
	combout => \p:26:alu|Z~0_combout\);

-- Location: LCCOMB_X80_Y69_N12
\p:26:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:26:alu|Z~1_combout\ = (\p:26:alu|y~combout\ & ((\p:26:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:26:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:26:alu|y~combout\ & ((\F[1]~input_o\ & (\p:26:alu|Z~0_combout\)) # (!\F[1]~input_o\ & 
-- ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:26:alu|Z~0_combout\,
	datab => \F[1]~input_o\,
	datac => \F[0]~input_o\,
	datad => \p:26:alu|y~combout\,
	combout => \p:26:alu|Z~1_combout\);

-- Location: LCCOMB_X80_Y69_N30
\p:27:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:27:alu|Z~0_combout\ = \p:27:alu|x~combout\ $ (((\p:26:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p:26:alu|fadder_1|co~combout\,
	datac => \F[0]~input_o\,
	datad => \p:27:alu|x~combout\,
	combout => \p:27:alu|Z~0_combout\);

-- Location: LCCOMB_X80_Y69_N0
\p:27:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:27:alu|Z~1_combout\ = (\p:27:alu|y~combout\ & ((\p:27:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:27:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:27:alu|y~combout\ & ((\F[1]~input_o\ & (\p:27:alu|Z~0_combout\)) # (!\F[1]~input_o\ & 
-- ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:27:alu|Z~0_combout\,
	datab => \F[1]~input_o\,
	datac => \F[0]~input_o\,
	datad => \p:27:alu|y~combout\,
	combout => \p:27:alu|Z~1_combout\);

-- Location: LCCOMB_X80_Y69_N2
\p:28:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:28:alu|Z~0_combout\ = \p:28:alu|x~combout\ $ (((\p:27:alu|fadder_1|co~combout\ & \F[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:27:alu|fadder_1|co~combout\,
	datab => \p:28:alu|x~combout\,
	datac => \F[0]~input_o\,
	combout => \p:28:alu|Z~0_combout\);

-- Location: LCCOMB_X80_Y69_N20
\p:28:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:28:alu|Z~1_combout\ = (\p:28:alu|y~combout\ & ((\p:28:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:28:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:28:alu|y~combout\ & ((\F[1]~input_o\ & (\p:28:alu|Z~0_combout\)) # (!\F[1]~input_o\ & 
-- ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[1]~input_o\,
	datab => \p:28:alu|Z~0_combout\,
	datac => \F[0]~input_o\,
	datad => \p:28:alu|y~combout\,
	combout => \p:28:alu|Z~1_combout\);

-- Location: LCCOMB_X60_Y69_N26
\p:29:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:29:alu|Z~0_combout\ = \p:29:alu|x~combout\ $ (((\F[0]~input_o\ & \p:28:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[0]~input_o\,
	datac => \p:28:alu|fadder_1|co~combout\,
	datad => \p:29:alu|x~combout\,
	combout => \p:29:alu|Z~0_combout\);

-- Location: LCCOMB_X60_Y69_N28
\p:29:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:29:alu|Z~1_combout\ = (\p:29:alu|y~combout\ & ((\p:29:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:29:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:29:alu|y~combout\ & ((\F[1]~input_o\ & (\p:29:alu|Z~0_combout\)) # (!\F[1]~input_o\ & 
-- ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:29:alu|Z~0_combout\,
	datab => \F[1]~input_o\,
	datac => \p:29:alu|y~combout\,
	datad => \F[0]~input_o\,
	combout => \p:29:alu|Z~1_combout\);

-- Location: LCCOMB_X60_Y69_N22
\p:30:alu|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:30:alu|Z~0_combout\ = \p:30:alu|x~combout\ $ (((\F[0]~input_o\ & \p:29:alu|fadder_1|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F[0]~input_o\,
	datac => \p:29:alu|fadder_1|co~combout\,
	datad => \p:30:alu|x~combout\,
	combout => \p:30:alu|Z~0_combout\);

-- Location: LCCOMB_X60_Y69_N24
\p:30:alu|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:30:alu|Z~1_combout\ = (\p:30:alu|y~combout\ & ((\p:30:alu|Z~0_combout\ & ((!\F[0]~input_o\))) # (!\p:30:alu|Z~0_combout\ & (\F[1]~input_o\)))) # (!\p:30:alu|y~combout\ & ((\F[1]~input_o\ & (\p:30:alu|Z~0_combout\)) # (!\F[1]~input_o\ & 
-- ((\F[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:30:alu|Z~0_combout\,
	datab => \F[1]~input_o\,
	datac => \F[0]~input_o\,
	datad => \p:30:alu|y~combout\,
	combout => \p:30:alu|Z~1_combout\);

-- Location: LCCOMB_X60_Y69_N18
\alu_last|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_last|Z~0_combout\ = (\F[0]~input_o\ & (\alu_last|y~combout\ & (!\F[1]~input_o\))) # (!\F[0]~input_o\ & ((\alu_last|y~combout\ & (\F[1]~input_o\ & \alu_last|x~combout\)) # (!\alu_last|y~combout\ & ((\F[1]~input_o\) # (\alu_last|x~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F[0]~input_o\,
	datab => \alu_last|y~combout\,
	datac => \F[1]~input_o\,
	datad => \alu_last|x~combout\,
	combout => \alu_last|Z~0_combout\);

-- Location: LCCOMB_X60_Y69_N12
\p:0:alu|fadder_1|x\ : cycloneive_lcell_comb
-- Equation(s):
-- \p:0:alu|fadder_1|x~combout\ = \alu_last|x~combout\ $ (((!\B[0]~input_o\) # (!\ENB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENB~input_o\,
	datac => \B[0]~input_o\,
	datad => \alu_last|x~combout\,
	combout => \p:0:alu|fadder_1|x~combout\);

-- Location: LCCOMB_X60_Y69_N14
\alu_last|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_last|Z~1_combout\ = (\alu_last|Z~0_combout\) # ((\alu_last|decoder_1|Decoder0~0_combout\ & (\p:30:alu|fadder_1|co~combout\ $ (!\p:0:alu|fadder_1|x~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p:30:alu|fadder_1|co~combout\,
	datab => \alu_last|Z~0_combout\,
	datac => \p:0:alu|fadder_1|x~combout\,
	datad => \alu_last|decoder_1|Decoder0~0_combout\,
	combout => \alu_last|Z~1_combout\);

-- Location: IOIBUF_X83_Y0_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

ww_CO <= \CO~output_o\;

ww_Z(0) <= \Z[0]~output_o\;

ww_Z(1) <= \Z[1]~output_o\;

ww_Z(2) <= \Z[2]~output_o\;

ww_Z(3) <= \Z[3]~output_o\;

ww_Z(4) <= \Z[4]~output_o\;

ww_Z(5) <= \Z[5]~output_o\;

ww_Z(6) <= \Z[6]~output_o\;

ww_Z(7) <= \Z[7]~output_o\;

ww_Z(8) <= \Z[8]~output_o\;

ww_Z(9) <= \Z[9]~output_o\;

ww_Z(10) <= \Z[10]~output_o\;

ww_Z(11) <= \Z[11]~output_o\;

ww_Z(12) <= \Z[12]~output_o\;

ww_Z(13) <= \Z[13]~output_o\;

ww_Z(14) <= \Z[14]~output_o\;

ww_Z(15) <= \Z[15]~output_o\;

ww_Z(16) <= \Z[16]~output_o\;

ww_Z(17) <= \Z[17]~output_o\;

ww_Z(18) <= \Z[18]~output_o\;

ww_Z(19) <= \Z[19]~output_o\;

ww_Z(20) <= \Z[20]~output_o\;

ww_Z(21) <= \Z[21]~output_o\;

ww_Z(22) <= \Z[22]~output_o\;

ww_Z(23) <= \Z[23]~output_o\;

ww_Z(24) <= \Z[24]~output_o\;

ww_Z(25) <= \Z[25]~output_o\;

ww_Z(26) <= \Z[26]~output_o\;

ww_Z(27) <= \Z[27]~output_o\;

ww_Z(28) <= \Z[28]~output_o\;

ww_Z(29) <= \Z[29]~output_o\;

ww_Z(30) <= \Z[30]~output_o\;

ww_Z(31) <= \Z[31]~output_o\;
END structure;



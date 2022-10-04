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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/28/2022 16:39:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fadder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fadder_vhd_vec_tst IS
END fadder_vhd_vec_tst;
ARCHITECTURE fadder_arch OF fadder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ci : STD_LOGIC;
SIGNAL co : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL L : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL sum : STD_LOGIC;
COMPONENT fadder
	PORT (
	ci : IN STD_LOGIC;
	co : BUFFER STD_LOGIC;
	D : IN STD_LOGIC;
	L : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	sum : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fadder
	PORT MAP (
-- list connections between master ports and signals
	ci => ci,
	co => co,
	D => D,
	L => L,
	sum => sum
	);
END fadder_arch;

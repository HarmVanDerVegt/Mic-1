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
-- Generated on "09/28/2022 17:02:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bit_alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bit_alu_vhd_vec_tst IS
END bit_alu_vhd_vec_tst;
ARCHITECTURE bit_alu_arch OF bit_alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL CI : STD_LOGIC;
SIGNAL CO : STD_LOGIC;
SIGNAL ENA : STD_LOGIC;
SIGNAL ENB : STD_LOGIC;
SIGNAL G : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL INVA : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT bit_alu
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	CI : IN STD_LOGIC;
	CO : OUT STD_LOGIC;
	ENA : IN STD_LOGIC;
	ENB : IN STD_LOGIC;
	G : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	INVA : IN STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bit_alu
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CI => CI,
	CO => CO,
	ENA => ENA,
	ENB => ENB,
	G => G,
	INVA => INVA,
	Z => Z
	);

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A <= '0';
		WAIT FOR 40000 ps;
		A <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- CI
t_prcs_CI: PROCESS
BEGIN
	CI <= '0';
WAIT;
END PROCESS t_prcs_CI;

-- ENA
t_prcs_ENA: PROCESS
BEGIN
	ENA <= '1';
WAIT;
END PROCESS t_prcs_ENA;

-- ENB
t_prcs_ENB: PROCESS
BEGIN
	ENB <= '0';
WAIT;
END PROCESS t_prcs_ENB;
-- G[1]
t_prcs_G_1: PROCESS
BEGIN
	G(1) <= '1';
WAIT;
END PROCESS t_prcs_G_1;
-- G[0]
t_prcs_G_0: PROCESS
BEGIN
	G(0) <= '0';
WAIT;
END PROCESS t_prcs_G_0;

-- INVA
t_prcs_INVA: PROCESS
BEGIN
	INVA <= '1';
WAIT;
END PROCESS t_prcs_INVA;
END bit_alu_arch;

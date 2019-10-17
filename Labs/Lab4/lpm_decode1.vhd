-- megafunction wizard: %LPM_DECODE%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_decode 

-- ============================================================
-- File Name: lpm_decode1.vhd
-- Megafunction Name(s):
-- 			lpm_decode
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.1 Build 222 10/21/2009 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2009 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_decode1 IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		eq0		: OUT STD_LOGIC ;
		eq1		: OUT STD_LOGIC ;
		eq2		: OUT STD_LOGIC ;
		eq3		: OUT STD_LOGIC ;
		eq4		: OUT STD_LOGIC ;
		eq5		: OUT STD_LOGIC ;
		eq6		: OUT STD_LOGIC ;
		eq7		: OUT STD_LOGIC 
	);
END lpm_decode1;


ARCHITECTURE SYN OF lpm_decode1 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC ;
	SIGNAL sub_wire4	: STD_LOGIC ;
	SIGNAL sub_wire5	: STD_LOGIC ;
	SIGNAL sub_wire6	: STD_LOGIC ;
	SIGNAL sub_wire7	: STD_LOGIC ;
	SIGNAL sub_wire8	: STD_LOGIC ;



	COMPONENT lpm_decode
	GENERIC (
		lpm_decodes		: NATURAL;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			eq	: OUT STD_LOGIC_VECTOR (lpm_decodes-1 DOWNTO 0);
			data	: IN STD_LOGIC_VECTOR (2 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire8    <= sub_wire0(7);
	sub_wire7    <= sub_wire0(6);
	sub_wire6    <= sub_wire0(5);
	sub_wire5    <= sub_wire0(4);
	sub_wire4    <= sub_wire0(3);
	sub_wire3    <= sub_wire0(2);
	sub_wire2    <= sub_wire0(1);
	sub_wire1    <= sub_wire0(0);
	eq0    <= sub_wire1;
	eq1    <= sub_wire2;
	eq2    <= sub_wire3;
	eq3    <= sub_wire4;
	eq4    <= sub_wire5;
	eq5    <= sub_wire6;
	eq6    <= sub_wire7;
	eq7    <= sub_wire8;

	lpm_decode_component : lpm_decode
	GENERIC MAP (
		lpm_decodes => 8,
		lpm_type => "LPM_DECODE",
		lpm_width => 3
	)
	PORT MAP (
		data => data,
		eq => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: BaseDec NUMERIC "1"
-- Retrieval info: PRIVATE: EnableInput NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
-- Retrieval info: PRIVATE: Latency NUMERIC "0"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: eq0 NUMERIC "1"
-- Retrieval info: PRIVATE: eq1 NUMERIC "1"
-- Retrieval info: PRIVATE: eq2 NUMERIC "1"
-- Retrieval info: PRIVATE: eq3 NUMERIC "1"
-- Retrieval info: PRIVATE: eq4 NUMERIC "1"
-- Retrieval info: PRIVATE: eq5 NUMERIC "1"
-- Retrieval info: PRIVATE: eq6 NUMERIC "1"
-- Retrieval info: PRIVATE: eq7 NUMERIC "1"
-- Retrieval info: PRIVATE: nBit NUMERIC "3"
-- Retrieval info: CONSTANT: LPM_DECODES NUMERIC "8"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DECODE"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "3"
-- Retrieval info: USED_PORT: @eq 0 0 LPM_DECODES 0 OUTPUT NODEFVAL @eq[LPM_DECODES-1..0]
-- Retrieval info: USED_PORT: data 0 0 3 0 INPUT NODEFVAL data[2..0]
-- Retrieval info: USED_PORT: eq0 0 0 0 0 OUTPUT NODEFVAL eq0
-- Retrieval info: USED_PORT: eq1 0 0 0 0 OUTPUT NODEFVAL eq1
-- Retrieval info: USED_PORT: eq2 0 0 0 0 OUTPUT NODEFVAL eq2
-- Retrieval info: USED_PORT: eq3 0 0 0 0 OUTPUT NODEFVAL eq3
-- Retrieval info: USED_PORT: eq4 0 0 0 0 OUTPUT NODEFVAL eq4
-- Retrieval info: USED_PORT: eq5 0 0 0 0 OUTPUT NODEFVAL eq5
-- Retrieval info: USED_PORT: eq6 0 0 0 0 OUTPUT NODEFVAL eq6
-- Retrieval info: USED_PORT: eq7 0 0 0 0 OUTPUT NODEFVAL eq7
-- Retrieval info: CONNECT: @data 0 0 3 0 data 0 0 3 0
-- Retrieval info: CONNECT: eq0 0 0 0 0 @eq 0 0 1 0
-- Retrieval info: CONNECT: eq1 0 0 0 0 @eq 0 0 1 1
-- Retrieval info: CONNECT: eq2 0 0 0 0 @eq 0 0 1 2
-- Retrieval info: CONNECT: eq3 0 0 0 0 @eq 0 0 1 3
-- Retrieval info: CONNECT: eq4 0 0 0 0 @eq 0 0 1 4
-- Retrieval info: CONNECT: eq5 0 0 0 0 @eq 0 0 1 5
-- Retrieval info: CONNECT: eq6 0 0 0 0 @eq 0 0 1 6
-- Retrieval info: CONNECT: eq7 0 0 0 0 @eq 0 0 1 7
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode1_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm

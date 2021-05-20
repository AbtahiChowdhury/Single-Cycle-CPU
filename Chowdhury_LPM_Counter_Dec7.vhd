-- megafunction wizard: %LPM_ADD_SUB%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_ADD_SUB 

-- ============================================================
-- File Name: Chowdhury_LPM_Counter_Dec7.vhd
-- Megafunction Name(s):
-- 			LPM_ADD_SUB
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 16.0.0 Build 211 04/27/2016 SJ Lite Edition
-- ************************************************************


--Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, the Altera Quartus Prime License Agreement,
--the Altera MegaCore Function License Agreement, or other 
--applicable license agreement, including, without limitation, 
--that your use is for the sole purpose of programming logic 
--devices manufactured by Altera and sold by Altera or its 
--authorized distributors.  Please refer to the applicable 
--agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY Chowdhury_LPM_Counter_Dec7 IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		dataa		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		overflow		: OUT STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
	);
END Chowdhury_LPM_Counter_Dec7;


ARCHITECTURE SYN OF chowdhury_lpm_counter_dec7 IS

	SIGNAL sub_wire0_bv	: BIT_VECTOR (1 DOWNTO 0);
	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (1 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC_VECTOR (1 DOWNTO 0);



	COMPONENT lpm_add_sub
	GENERIC (
		lpm_direction		: STRING;
		lpm_hint		: STRING;
		lpm_pipeline		: NATURAL;
		lpm_representation		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			clock	: IN STD_LOGIC ;
			dataa	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			overflow	: OUT STD_LOGIC ;
			result	: OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire0_bv(1 DOWNTO 0) <= "01";
	sub_wire0    <= To_stdlogicvector(sub_wire0_bv);
	overflow    <= sub_wire1;
	result    <= sub_wire2(1 DOWNTO 0);

	LPM_ADD_SUB_component : LPM_ADD_SUB
	GENERIC MAP (
		lpm_direction => "ADD",
		lpm_hint => "ONE_INPUT_IS_CONSTANT=YES,CIN_USED=NO",
		lpm_pipeline => 1,
		lpm_representation => "UNSIGNED",
		lpm_type => "LPM_ADD_SUB",
		lpm_width => 2
	)
	PORT MAP (
		clock => clock,
		dataa => dataa,
		datab => sub_wire0,
		overflow => sub_wire1,
		result => sub_wire2
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: CarryIn NUMERIC "0"
-- Retrieval info: PRIVATE: CarryOut NUMERIC "0"
-- Retrieval info: PRIVATE: ConstantA NUMERIC "0"
-- Retrieval info: PRIVATE: ConstantB NUMERIC "1"
-- Retrieval info: PRIVATE: Function NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "1"
-- Retrieval info: PRIVATE: Latency NUMERIC "1"
-- Retrieval info: PRIVATE: Overflow NUMERIC "1"
-- Retrieval info: PRIVATE: RadixA NUMERIC "10"
-- Retrieval info: PRIVATE: RadixB NUMERIC "10"
-- Retrieval info: PRIVATE: Representation NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
-- Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
-- Retrieval info: PRIVATE: ValidCtB NUMERIC "1"
-- Retrieval info: PRIVATE: WhichConstant NUMERIC "2"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "2"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DIRECTION STRING "ADD"
-- Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=YES,CIN_USED=NO"
-- Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "2"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: USED_PORT: dataa 0 0 2 0 INPUT NODEFVAL "dataa[1..0]"
-- Retrieval info: USED_PORT: overflow 0 0 0 0 OUTPUT NODEFVAL "overflow"
-- Retrieval info: USED_PORT: result 0 0 2 0 OUTPUT NODEFVAL "result[1..0]"
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @dataa 0 0 2 0 dataa 0 0 2 0
-- Retrieval info: CONNECT: @datab 0 0 2 0 1 0 0 2 0
-- Retrieval info: CONNECT: overflow 0 0 0 0 @overflow 0 0 0 0
-- Retrieval info: CONNECT: result 0 0 2 0 @result 0 0 2 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7_inst.vhd FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7_syn.v TRUE
-- Retrieval info: LIB_FILE: lpm
-- megafunction wizard: %LPM_MUX%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_MUX 

-- ============================================================
-- File Name: Chowdhury_LPM_1Bit64x1Mux_Dec7.vhd
-- Megafunction Name(s):
-- 			LPM_MUX
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
USE lpm.lpm_components.all;

ENTITY Chowdhury_LPM_1Bit64x1Mux_Dec7 IS
	PORT
	(
		data0		: IN STD_LOGIC ;
		data1		: IN STD_LOGIC ;
		data10		: IN STD_LOGIC ;
		data11		: IN STD_LOGIC ;
		data12		: IN STD_LOGIC ;
		data13		: IN STD_LOGIC ;
		data14		: IN STD_LOGIC ;
		data15		: IN STD_LOGIC ;
		data16		: IN STD_LOGIC ;
		data17		: IN STD_LOGIC ;
		data18		: IN STD_LOGIC ;
		data19		: IN STD_LOGIC ;
		data2		: IN STD_LOGIC ;
		data20		: IN STD_LOGIC ;
		data21		: IN STD_LOGIC ;
		data22		: IN STD_LOGIC ;
		data23		: IN STD_LOGIC ;
		data24		: IN STD_LOGIC ;
		data25		: IN STD_LOGIC ;
		data26		: IN STD_LOGIC ;
		data27		: IN STD_LOGIC ;
		data28		: IN STD_LOGIC ;
		data29		: IN STD_LOGIC ;
		data3		: IN STD_LOGIC ;
		data30		: IN STD_LOGIC ;
		data31		: IN STD_LOGIC ;
		data32		: IN STD_LOGIC ;
		data33		: IN STD_LOGIC ;
		data34		: IN STD_LOGIC ;
		data35		: IN STD_LOGIC ;
		data36		: IN STD_LOGIC ;
		data37		: IN STD_LOGIC ;
		data38		: IN STD_LOGIC ;
		data39		: IN STD_LOGIC ;
		data4		: IN STD_LOGIC ;
		data40		: IN STD_LOGIC ;
		data41		: IN STD_LOGIC ;
		data42		: IN STD_LOGIC ;
		data43		: IN STD_LOGIC ;
		data44		: IN STD_LOGIC ;
		data45		: IN STD_LOGIC ;
		data46		: IN STD_LOGIC ;
		data47		: IN STD_LOGIC ;
		data48		: IN STD_LOGIC ;
		data49		: IN STD_LOGIC ;
		data5		: IN STD_LOGIC ;
		data50		: IN STD_LOGIC ;
		data51		: IN STD_LOGIC ;
		data52		: IN STD_LOGIC ;
		data53		: IN STD_LOGIC ;
		data54		: IN STD_LOGIC ;
		data55		: IN STD_LOGIC ;
		data56		: IN STD_LOGIC ;
		data57		: IN STD_LOGIC ;
		data58		: IN STD_LOGIC ;
		data59		: IN STD_LOGIC ;
		data6		: IN STD_LOGIC ;
		data60		: IN STD_LOGIC ;
		data61		: IN STD_LOGIC ;
		data62		: IN STD_LOGIC ;
		data63		: IN STD_LOGIC ;
		data7		: IN STD_LOGIC ;
		data8		: IN STD_LOGIC ;
		data9		: IN STD_LOGIC ;
		sel		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		result		: OUT STD_LOGIC 
	);
END Chowdhury_LPM_1Bit64x1Mux_Dec7;


ARCHITECTURE SYN OF chowdhury_lpm_1bit64x1mux_dec7 IS

--	type STD_LOGIC_2D is array (NATURAL RANGE <>, NATURAL RANGE <>) of STD_LOGIC;

	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1	: STD_LOGIC_2D (63 DOWNTO 0, 0 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC ;
	SIGNAL sub_wire4	: STD_LOGIC ;
	SIGNAL sub_wire5	: STD_LOGIC ;
	SIGNAL sub_wire6	: STD_LOGIC ;
	SIGNAL sub_wire7	: STD_LOGIC ;
	SIGNAL sub_wire8	: STD_LOGIC ;
	SIGNAL sub_wire9	: STD_LOGIC ;
	SIGNAL sub_wire10	: STD_LOGIC ;
	SIGNAL sub_wire11	: STD_LOGIC ;
	SIGNAL sub_wire12	: STD_LOGIC ;
	SIGNAL sub_wire13	: STD_LOGIC ;
	SIGNAL sub_wire14	: STD_LOGIC ;
	SIGNAL sub_wire15	: STD_LOGIC ;
	SIGNAL sub_wire16	: STD_LOGIC ;
	SIGNAL sub_wire17	: STD_LOGIC ;
	SIGNAL sub_wire18	: STD_LOGIC ;
	SIGNAL sub_wire19	: STD_LOGIC ;
	SIGNAL sub_wire20	: STD_LOGIC ;
	SIGNAL sub_wire21	: STD_LOGIC ;
	SIGNAL sub_wire22	: STD_LOGIC ;
	SIGNAL sub_wire23	: STD_LOGIC ;
	SIGNAL sub_wire24	: STD_LOGIC ;
	SIGNAL sub_wire25	: STD_LOGIC ;
	SIGNAL sub_wire26	: STD_LOGIC ;
	SIGNAL sub_wire27	: STD_LOGIC ;
	SIGNAL sub_wire28	: STD_LOGIC ;
	SIGNAL sub_wire29	: STD_LOGIC ;
	SIGNAL sub_wire30	: STD_LOGIC ;
	SIGNAL sub_wire31	: STD_LOGIC ;
	SIGNAL sub_wire32	: STD_LOGIC ;
	SIGNAL sub_wire33	: STD_LOGIC ;
	SIGNAL sub_wire34	: STD_LOGIC ;
	SIGNAL sub_wire35	: STD_LOGIC ;
	SIGNAL sub_wire36	: STD_LOGIC ;
	SIGNAL sub_wire37	: STD_LOGIC ;
	SIGNAL sub_wire38	: STD_LOGIC ;
	SIGNAL sub_wire39	: STD_LOGIC ;
	SIGNAL sub_wire40	: STD_LOGIC ;
	SIGNAL sub_wire41	: STD_LOGIC ;
	SIGNAL sub_wire42	: STD_LOGIC ;
	SIGNAL sub_wire43	: STD_LOGIC ;
	SIGNAL sub_wire44	: STD_LOGIC ;
	SIGNAL sub_wire45	: STD_LOGIC ;
	SIGNAL sub_wire46	: STD_LOGIC ;
	SIGNAL sub_wire47	: STD_LOGIC ;
	SIGNAL sub_wire48	: STD_LOGIC ;
	SIGNAL sub_wire49	: STD_LOGIC ;
	SIGNAL sub_wire50	: STD_LOGIC ;
	SIGNAL sub_wire51	: STD_LOGIC ;
	SIGNAL sub_wire52	: STD_LOGIC ;
	SIGNAL sub_wire53	: STD_LOGIC ;
	SIGNAL sub_wire54	: STD_LOGIC ;
	SIGNAL sub_wire55	: STD_LOGIC ;
	SIGNAL sub_wire56	: STD_LOGIC ;
	SIGNAL sub_wire57	: STD_LOGIC ;
	SIGNAL sub_wire58	: STD_LOGIC ;
	SIGNAL sub_wire59	: STD_LOGIC ;
	SIGNAL sub_wire60	: STD_LOGIC ;
	SIGNAL sub_wire61	: STD_LOGIC ;
	SIGNAL sub_wire62	: STD_LOGIC ;
	SIGNAL sub_wire63	: STD_LOGIC ;
	SIGNAL sub_wire64	: STD_LOGIC ;
	SIGNAL sub_wire65	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire66	: STD_LOGIC ;

BEGIN
	sub_wire64    <= data0;
	sub_wire63    <= data1;
	sub_wire62    <= data2;
	sub_wire61    <= data3;
	sub_wire60    <= data4;
	sub_wire59    <= data5;
	sub_wire58    <= data6;
	sub_wire57    <= data7;
	sub_wire56    <= data8;
	sub_wire55    <= data9;
	sub_wire54    <= data10;
	sub_wire53    <= data11;
	sub_wire52    <= data12;
	sub_wire51    <= data13;
	sub_wire50    <= data14;
	sub_wire49    <= data15;
	sub_wire48    <= data16;
	sub_wire47    <= data17;
	sub_wire46    <= data18;
	sub_wire45    <= data19;
	sub_wire44    <= data20;
	sub_wire43    <= data21;
	sub_wire42    <= data22;
	sub_wire41    <= data23;
	sub_wire40    <= data24;
	sub_wire39    <= data25;
	sub_wire38    <= data26;
	sub_wire37    <= data27;
	sub_wire36    <= data28;
	sub_wire35    <= data29;
	sub_wire34    <= data30;
	sub_wire33    <= data31;
	sub_wire32    <= data32;
	sub_wire31    <= data33;
	sub_wire30    <= data34;
	sub_wire29    <= data35;
	sub_wire28    <= data36;
	sub_wire27    <= data37;
	sub_wire26    <= data38;
	sub_wire25    <= data39;
	sub_wire24    <= data40;
	sub_wire23    <= data41;
	sub_wire22    <= data42;
	sub_wire21    <= data43;
	sub_wire20    <= data44;
	sub_wire19    <= data45;
	sub_wire18    <= data46;
	sub_wire17    <= data47;
	sub_wire16    <= data48;
	sub_wire15    <= data49;
	sub_wire14    <= data50;
	sub_wire13    <= data51;
	sub_wire12    <= data52;
	sub_wire11    <= data53;
	sub_wire10    <= data54;
	sub_wire9    <= data55;
	sub_wire8    <= data56;
	sub_wire7    <= data57;
	sub_wire6    <= data58;
	sub_wire5    <= data59;
	sub_wire4    <= data60;
	sub_wire3    <= data61;
	sub_wire2    <= data62;
	sub_wire0    <= data63;
	sub_wire1(63, 0)    <= sub_wire0;
	sub_wire1(62, 0)    <= sub_wire2;
	sub_wire1(61, 0)    <= sub_wire3;
	sub_wire1(60, 0)    <= sub_wire4;
	sub_wire1(59, 0)    <= sub_wire5;
	sub_wire1(58, 0)    <= sub_wire6;
	sub_wire1(57, 0)    <= sub_wire7;
	sub_wire1(56, 0)    <= sub_wire8;
	sub_wire1(55, 0)    <= sub_wire9;
	sub_wire1(54, 0)    <= sub_wire10;
	sub_wire1(53, 0)    <= sub_wire11;
	sub_wire1(52, 0)    <= sub_wire12;
	sub_wire1(51, 0)    <= sub_wire13;
	sub_wire1(50, 0)    <= sub_wire14;
	sub_wire1(49, 0)    <= sub_wire15;
	sub_wire1(48, 0)    <= sub_wire16;
	sub_wire1(47, 0)    <= sub_wire17;
	sub_wire1(46, 0)    <= sub_wire18;
	sub_wire1(45, 0)    <= sub_wire19;
	sub_wire1(44, 0)    <= sub_wire20;
	sub_wire1(43, 0)    <= sub_wire21;
	sub_wire1(42, 0)    <= sub_wire22;
	sub_wire1(41, 0)    <= sub_wire23;
	sub_wire1(40, 0)    <= sub_wire24;
	sub_wire1(39, 0)    <= sub_wire25;
	sub_wire1(38, 0)    <= sub_wire26;
	sub_wire1(37, 0)    <= sub_wire27;
	sub_wire1(36, 0)    <= sub_wire28;
	sub_wire1(35, 0)    <= sub_wire29;
	sub_wire1(34, 0)    <= sub_wire30;
	sub_wire1(33, 0)    <= sub_wire31;
	sub_wire1(32, 0)    <= sub_wire32;
	sub_wire1(31, 0)    <= sub_wire33;
	sub_wire1(30, 0)    <= sub_wire34;
	sub_wire1(29, 0)    <= sub_wire35;
	sub_wire1(28, 0)    <= sub_wire36;
	sub_wire1(27, 0)    <= sub_wire37;
	sub_wire1(26, 0)    <= sub_wire38;
	sub_wire1(25, 0)    <= sub_wire39;
	sub_wire1(24, 0)    <= sub_wire40;
	sub_wire1(23, 0)    <= sub_wire41;
	sub_wire1(22, 0)    <= sub_wire42;
	sub_wire1(21, 0)    <= sub_wire43;
	sub_wire1(20, 0)    <= sub_wire44;
	sub_wire1(19, 0)    <= sub_wire45;
	sub_wire1(18, 0)    <= sub_wire46;
	sub_wire1(17, 0)    <= sub_wire47;
	sub_wire1(16, 0)    <= sub_wire48;
	sub_wire1(15, 0)    <= sub_wire49;
	sub_wire1(14, 0)    <= sub_wire50;
	sub_wire1(13, 0)    <= sub_wire51;
	sub_wire1(12, 0)    <= sub_wire52;
	sub_wire1(11, 0)    <= sub_wire53;
	sub_wire1(10, 0)    <= sub_wire54;
	sub_wire1(9, 0)    <= sub_wire55;
	sub_wire1(8, 0)    <= sub_wire56;
	sub_wire1(7, 0)    <= sub_wire57;
	sub_wire1(6, 0)    <= sub_wire58;
	sub_wire1(5, 0)    <= sub_wire59;
	sub_wire1(4, 0)    <= sub_wire60;
	sub_wire1(3, 0)    <= sub_wire61;
	sub_wire1(2, 0)    <= sub_wire62;
	sub_wire1(1, 0)    <= sub_wire63;
	sub_wire1(0, 0)    <= sub_wire64;
	sub_wire66    <= sub_wire65(0);
	result    <= sub_wire66;

	LPM_MUX_component : LPM_MUX
	GENERIC MAP (
		lpm_size => 64,
		lpm_type => "LPM_MUX",
		lpm_width => 1,
		lpm_widths => 6
	)
	PORT MAP (
		data => sub_wire1,
		sel => sel,
		result => sub_wire65
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "64"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "6"
-- Retrieval info: USED_PORT: data0 0 0 0 0 INPUT NODEFVAL "data0"
-- Retrieval info: USED_PORT: data1 0 0 0 0 INPUT NODEFVAL "data1"
-- Retrieval info: USED_PORT: data10 0 0 0 0 INPUT NODEFVAL "data10"
-- Retrieval info: USED_PORT: data11 0 0 0 0 INPUT NODEFVAL "data11"
-- Retrieval info: USED_PORT: data12 0 0 0 0 INPUT NODEFVAL "data12"
-- Retrieval info: USED_PORT: data13 0 0 0 0 INPUT NODEFVAL "data13"
-- Retrieval info: USED_PORT: data14 0 0 0 0 INPUT NODEFVAL "data14"
-- Retrieval info: USED_PORT: data15 0 0 0 0 INPUT NODEFVAL "data15"
-- Retrieval info: USED_PORT: data16 0 0 0 0 INPUT NODEFVAL "data16"
-- Retrieval info: USED_PORT: data17 0 0 0 0 INPUT NODEFVAL "data17"
-- Retrieval info: USED_PORT: data18 0 0 0 0 INPUT NODEFVAL "data18"
-- Retrieval info: USED_PORT: data19 0 0 0 0 INPUT NODEFVAL "data19"
-- Retrieval info: USED_PORT: data2 0 0 0 0 INPUT NODEFVAL "data2"
-- Retrieval info: USED_PORT: data20 0 0 0 0 INPUT NODEFVAL "data20"
-- Retrieval info: USED_PORT: data21 0 0 0 0 INPUT NODEFVAL "data21"
-- Retrieval info: USED_PORT: data22 0 0 0 0 INPUT NODEFVAL "data22"
-- Retrieval info: USED_PORT: data23 0 0 0 0 INPUT NODEFVAL "data23"
-- Retrieval info: USED_PORT: data24 0 0 0 0 INPUT NODEFVAL "data24"
-- Retrieval info: USED_PORT: data25 0 0 0 0 INPUT NODEFVAL "data25"
-- Retrieval info: USED_PORT: data26 0 0 0 0 INPUT NODEFVAL "data26"
-- Retrieval info: USED_PORT: data27 0 0 0 0 INPUT NODEFVAL "data27"
-- Retrieval info: USED_PORT: data28 0 0 0 0 INPUT NODEFVAL "data28"
-- Retrieval info: USED_PORT: data29 0 0 0 0 INPUT NODEFVAL "data29"
-- Retrieval info: USED_PORT: data3 0 0 0 0 INPUT NODEFVAL "data3"
-- Retrieval info: USED_PORT: data30 0 0 0 0 INPUT NODEFVAL "data30"
-- Retrieval info: USED_PORT: data31 0 0 0 0 INPUT NODEFVAL "data31"
-- Retrieval info: USED_PORT: data32 0 0 0 0 INPUT NODEFVAL "data32"
-- Retrieval info: USED_PORT: data33 0 0 0 0 INPUT NODEFVAL "data33"
-- Retrieval info: USED_PORT: data34 0 0 0 0 INPUT NODEFVAL "data34"
-- Retrieval info: USED_PORT: data35 0 0 0 0 INPUT NODEFVAL "data35"
-- Retrieval info: USED_PORT: data36 0 0 0 0 INPUT NODEFVAL "data36"
-- Retrieval info: USED_PORT: data37 0 0 0 0 INPUT NODEFVAL "data37"
-- Retrieval info: USED_PORT: data38 0 0 0 0 INPUT NODEFVAL "data38"
-- Retrieval info: USED_PORT: data39 0 0 0 0 INPUT NODEFVAL "data39"
-- Retrieval info: USED_PORT: data4 0 0 0 0 INPUT NODEFVAL "data4"
-- Retrieval info: USED_PORT: data40 0 0 0 0 INPUT NODEFVAL "data40"
-- Retrieval info: USED_PORT: data41 0 0 0 0 INPUT NODEFVAL "data41"
-- Retrieval info: USED_PORT: data42 0 0 0 0 INPUT NODEFVAL "data42"
-- Retrieval info: USED_PORT: data43 0 0 0 0 INPUT NODEFVAL "data43"
-- Retrieval info: USED_PORT: data44 0 0 0 0 INPUT NODEFVAL "data44"
-- Retrieval info: USED_PORT: data45 0 0 0 0 INPUT NODEFVAL "data45"
-- Retrieval info: USED_PORT: data46 0 0 0 0 INPUT NODEFVAL "data46"
-- Retrieval info: USED_PORT: data47 0 0 0 0 INPUT NODEFVAL "data47"
-- Retrieval info: USED_PORT: data48 0 0 0 0 INPUT NODEFVAL "data48"
-- Retrieval info: USED_PORT: data49 0 0 0 0 INPUT NODEFVAL "data49"
-- Retrieval info: USED_PORT: data5 0 0 0 0 INPUT NODEFVAL "data5"
-- Retrieval info: USED_PORT: data50 0 0 0 0 INPUT NODEFVAL "data50"
-- Retrieval info: USED_PORT: data51 0 0 0 0 INPUT NODEFVAL "data51"
-- Retrieval info: USED_PORT: data52 0 0 0 0 INPUT NODEFVAL "data52"
-- Retrieval info: USED_PORT: data53 0 0 0 0 INPUT NODEFVAL "data53"
-- Retrieval info: USED_PORT: data54 0 0 0 0 INPUT NODEFVAL "data54"
-- Retrieval info: USED_PORT: data55 0 0 0 0 INPUT NODEFVAL "data55"
-- Retrieval info: USED_PORT: data56 0 0 0 0 INPUT NODEFVAL "data56"
-- Retrieval info: USED_PORT: data57 0 0 0 0 INPUT NODEFVAL "data57"
-- Retrieval info: USED_PORT: data58 0 0 0 0 INPUT NODEFVAL "data58"
-- Retrieval info: USED_PORT: data59 0 0 0 0 INPUT NODEFVAL "data59"
-- Retrieval info: USED_PORT: data6 0 0 0 0 INPUT NODEFVAL "data6"
-- Retrieval info: USED_PORT: data60 0 0 0 0 INPUT NODEFVAL "data60"
-- Retrieval info: USED_PORT: data61 0 0 0 0 INPUT NODEFVAL "data61"
-- Retrieval info: USED_PORT: data62 0 0 0 0 INPUT NODEFVAL "data62"
-- Retrieval info: USED_PORT: data63 0 0 0 0 INPUT NODEFVAL "data63"
-- Retrieval info: USED_PORT: data7 0 0 0 0 INPUT NODEFVAL "data7"
-- Retrieval info: USED_PORT: data8 0 0 0 0 INPUT NODEFVAL "data8"
-- Retrieval info: USED_PORT: data9 0 0 0 0 INPUT NODEFVAL "data9"
-- Retrieval info: USED_PORT: result 0 0 0 0 OUTPUT NODEFVAL "result"
-- Retrieval info: USED_PORT: sel 0 0 6 0 INPUT NODEFVAL "sel[5..0]"
-- Retrieval info: CONNECT: @data 1 0 1 0 data0 0 0 0 0
-- Retrieval info: CONNECT: @data 1 1 1 0 data1 0 0 0 0
-- Retrieval info: CONNECT: @data 1 10 1 0 data10 0 0 0 0
-- Retrieval info: CONNECT: @data 1 11 1 0 data11 0 0 0 0
-- Retrieval info: CONNECT: @data 1 12 1 0 data12 0 0 0 0
-- Retrieval info: CONNECT: @data 1 13 1 0 data13 0 0 0 0
-- Retrieval info: CONNECT: @data 1 14 1 0 data14 0 0 0 0
-- Retrieval info: CONNECT: @data 1 15 1 0 data15 0 0 0 0
-- Retrieval info: CONNECT: @data 1 16 1 0 data16 0 0 0 0
-- Retrieval info: CONNECT: @data 1 17 1 0 data17 0 0 0 0
-- Retrieval info: CONNECT: @data 1 18 1 0 data18 0 0 0 0
-- Retrieval info: CONNECT: @data 1 19 1 0 data19 0 0 0 0
-- Retrieval info: CONNECT: @data 1 2 1 0 data2 0 0 0 0
-- Retrieval info: CONNECT: @data 1 20 1 0 data20 0 0 0 0
-- Retrieval info: CONNECT: @data 1 21 1 0 data21 0 0 0 0
-- Retrieval info: CONNECT: @data 1 22 1 0 data22 0 0 0 0
-- Retrieval info: CONNECT: @data 1 23 1 0 data23 0 0 0 0
-- Retrieval info: CONNECT: @data 1 24 1 0 data24 0 0 0 0
-- Retrieval info: CONNECT: @data 1 25 1 0 data25 0 0 0 0
-- Retrieval info: CONNECT: @data 1 26 1 0 data26 0 0 0 0
-- Retrieval info: CONNECT: @data 1 27 1 0 data27 0 0 0 0
-- Retrieval info: CONNECT: @data 1 28 1 0 data28 0 0 0 0
-- Retrieval info: CONNECT: @data 1 29 1 0 data29 0 0 0 0
-- Retrieval info: CONNECT: @data 1 3 1 0 data3 0 0 0 0
-- Retrieval info: CONNECT: @data 1 30 1 0 data30 0 0 0 0
-- Retrieval info: CONNECT: @data 1 31 1 0 data31 0 0 0 0
-- Retrieval info: CONNECT: @data 1 32 1 0 data32 0 0 0 0
-- Retrieval info: CONNECT: @data 1 33 1 0 data33 0 0 0 0
-- Retrieval info: CONNECT: @data 1 34 1 0 data34 0 0 0 0
-- Retrieval info: CONNECT: @data 1 35 1 0 data35 0 0 0 0
-- Retrieval info: CONNECT: @data 1 36 1 0 data36 0 0 0 0
-- Retrieval info: CONNECT: @data 1 37 1 0 data37 0 0 0 0
-- Retrieval info: CONNECT: @data 1 38 1 0 data38 0 0 0 0
-- Retrieval info: CONNECT: @data 1 39 1 0 data39 0 0 0 0
-- Retrieval info: CONNECT: @data 1 4 1 0 data4 0 0 0 0
-- Retrieval info: CONNECT: @data 1 40 1 0 data40 0 0 0 0
-- Retrieval info: CONNECT: @data 1 41 1 0 data41 0 0 0 0
-- Retrieval info: CONNECT: @data 1 42 1 0 data42 0 0 0 0
-- Retrieval info: CONNECT: @data 1 43 1 0 data43 0 0 0 0
-- Retrieval info: CONNECT: @data 1 44 1 0 data44 0 0 0 0
-- Retrieval info: CONNECT: @data 1 45 1 0 data45 0 0 0 0
-- Retrieval info: CONNECT: @data 1 46 1 0 data46 0 0 0 0
-- Retrieval info: CONNECT: @data 1 47 1 0 data47 0 0 0 0
-- Retrieval info: CONNECT: @data 1 48 1 0 data48 0 0 0 0
-- Retrieval info: CONNECT: @data 1 49 1 0 data49 0 0 0 0
-- Retrieval info: CONNECT: @data 1 5 1 0 data5 0 0 0 0
-- Retrieval info: CONNECT: @data 1 50 1 0 data50 0 0 0 0
-- Retrieval info: CONNECT: @data 1 51 1 0 data51 0 0 0 0
-- Retrieval info: CONNECT: @data 1 52 1 0 data52 0 0 0 0
-- Retrieval info: CONNECT: @data 1 53 1 0 data53 0 0 0 0
-- Retrieval info: CONNECT: @data 1 54 1 0 data54 0 0 0 0
-- Retrieval info: CONNECT: @data 1 55 1 0 data55 0 0 0 0
-- Retrieval info: CONNECT: @data 1 56 1 0 data56 0 0 0 0
-- Retrieval info: CONNECT: @data 1 57 1 0 data57 0 0 0 0
-- Retrieval info: CONNECT: @data 1 58 1 0 data58 0 0 0 0
-- Retrieval info: CONNECT: @data 1 59 1 0 data59 0 0 0 0
-- Retrieval info: CONNECT: @data 1 6 1 0 data6 0 0 0 0
-- Retrieval info: CONNECT: @data 1 60 1 0 data60 0 0 0 0
-- Retrieval info: CONNECT: @data 1 61 1 0 data61 0 0 0 0
-- Retrieval info: CONNECT: @data 1 62 1 0 data62 0 0 0 0
-- Retrieval info: CONNECT: @data 1 63 1 0 data63 0 0 0 0
-- Retrieval info: CONNECT: @data 1 7 1 0 data7 0 0 0 0
-- Retrieval info: CONNECT: @data 1 8 1 0 data8 0 0 0 0
-- Retrieval info: CONNECT: @data 1 9 1 0 data9 0 0 0 0
-- Retrieval info: CONNECT: @sel 0 0 6 0 sel 0 0 6 0
-- Retrieval info: CONNECT: result 0 0 0 0 @result 0 0 1 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_1Bit64x1Mux_Dec7.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_1Bit64x1Mux_Dec7.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_1Bit64x1Mux_Dec7.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_1Bit64x1Mux_Dec7.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_1Bit64x1Mux_Dec7_inst.vhd FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_1Bit64x1Mux_Dec7_syn.v TRUE
-- Retrieval info: LIB_FILE: lpm
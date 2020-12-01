// megafunction wizard: %LPM_CLSHIFT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_CLSHIFT 

// ============================================================
// File Name: Chowdhury_LPM_32BitShiftArithmetic_Dec7.v
// Megafunction Name(s):
// 			LPM_CLSHIFT
//
// Simulation Library Files(s):
// 			
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 16.0.0 Build 211 04/27/2016 SJ Lite Edition
// ************************************************************


//Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, the Altera Quartus Prime License Agreement,
//the Altera MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Altera and sold by Altera or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.


//lpm_clshift LPM_SHIFTTYPE="ARITHMETIC" LPM_WIDTH=32 LPM_WIDTHDIST=5 data direction distance overflow result
//VERSION_BEGIN 16.0 cbx_lpm_clshift 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  Chowdhury_LPM_32BitShiftArithmetic_Dec7_lpm_clshift
	( 
	data,
	direction,
	distance,
	overflow,
	result) /* synthesis synthesis_clearbox=1 */;
	input   [31:0]  data;
	input   direction;
	input   [4:0]  distance;
	output   overflow;
	output   [31:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   direction;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]  direction_w;
	wire  [31:0]  ov_w;
	wire  [15:0]  pad_left_w;
	wire  [1:0]  pad_right_w0;
	wire  [2:0]  pad_right_w1;
	wire  [4:0]  pad_right_w2;
	wire  [8:0]  pad_right_w3;
	wire  [16:0]  pad_right_w4;
	wire  [191:0]  sbit_w;

	assign
		direction_w = {direction},
		ov_w = {((distance[4] & (sbit_w[159] ^ sbit_w[143])) | ov_w[30]), ((distance[4] & (sbit_w[159] ^ sbit_w[144])) | ov_w[29]), ((distance[4] & (sbit_w[159] ^ sbit_w[145])) | ov_w[28]), ((distance[4] & (sbit_w[159] ^ sbit_w[146])) | ov_w[27]), ((distance[4] & (sbit_w[159] ^ sbit_w[147])) | ov_w[26]), ((distance[4] & (sbit_w[159] ^ sbit_w[148])) | ov_w[25]), ((distance[4] & (sbit_w[159] ^ sbit_w[149])) | ov_w[24]), ((distance[4] & (sbit_w[159] ^ sbit_w[150])) | ov_w[23]), ((distance[4] & (sbit_w[159] ^ sbit_w[151])) | ov_w[22]), ((distance[4] & (sbit_w[159] ^ sbit_w[152])) | ov_w[21]), ((distance[4] & (sbit_w[159] ^ sbit_w[153])) | ov_w[20]), ((distance[4] & (sbit_w[159] ^ sbit_w[154])) | ov_w[19]), ((distance[4] & (sbit_w[159] ^ sbit_w[155])) | ov_w[18]), ((distance[4] & (sbit_w[159] ^ sbit_w[156])) | ov_w[17]), ((distance[4] & (sbit_w[159] ^ sbit_w[157])) | ov_w[16]), ((distance[4] & (sbit_w[159] ^ sbit_w[158])) | ov_w[15]), ((distance[3] & (sbit_w[127] ^ sbit_w[119])) | ov_w[14]), ((distance[3] & (sbit_w[127] ^ sbit_w[120])) | ov_w[13]), ((distance[3] & (sbit_w[127] ^ sbit_w[121])) | ov_w[12]), ((distance[3] & (sbit_w[127] ^ sbit_w[122])) | ov_w[11]), ((distance[3] & (sbit_w[127] ^ sbit_w[123])) | ov_w[10]), ((distance[3] & (sbit_w[127] ^ sbit_w[124])) | ov_w[9]), ((distance[3] & (sbit_w[127] ^ sbit_w[125])) | ov_w[8]), ((distance[3] & (sbit_w[127] ^ sbit_w[126])) | ov_w[7]), ((distance[2] & (sbit_w[95] ^ sbit_w[91])) | ov_w[6]), ((distance[2] & (sbit_w[95] ^ sbit_w[92])) | ov_w[5]), ((distance[2] & (sbit_w[95] ^ sbit_w[93])) | ov_w[4]), ((distance[2] & (sbit_w[95] ^ sbit_w[94])) | ov_w[3]), ((distance[1] & (sbit_w[63] ^ sbit_w[61])) | ov_w[2]), ((distance[1] & (sbit_w[63] ^ sbit_w[62])) | ov_w[1]), ((distance[0] & (sbit_w[31] ^ sbit_w[30])) | ov_w[0]), 1'b0},
		overflow = (ov_w[31] & (~ direction_w[0])),
		pad_left_w = {16{1'b0}},
		pad_right_w0 = {2{sbit_w[31]}},
		pad_right_w1 = {3{sbit_w[63]}},
		pad_right_w2 = {5{sbit_w[95]}},
		pad_right_w3 = {9{sbit_w[127]}},
		pad_right_w4 = {17{sbit_w[159]}},
		result = sbit_w[191:160],
		sbit_w = {((({32{(distance[4] & (~ direction_w))}} & {sbit_w[143:128], pad_left_w[15:0]}) | ({32{(distance[4] & direction_w)}} & {pad_right_w4[15:0], sbit_w[159:144]})) | ({32{(~ distance[4])}} & sbit_w[159:128])), ((({32{(distance[3] & (~ direction_w))}} & {sbit_w[119:96], pad_left_w[7:0]}) | ({32{(distance[3] & direction_w)}} & {pad_right_w3[7:0], sbit_w[127:104]})) | ({32{(~ distance[3])}} & sbit_w[127:96])), ((({32{(distance[2] & (~ direction_w))}} & {sbit_w[91:64], pad_left_w[3:0]}) | ({32{(distance[2] & direction_w)}} & {pad_right_w2[3:0], sbit_w[95:68]})) | ({32{(~ distance[2])}} & sbit_w[95:64])), ((({32{(distance[1] & (~ direction_w))}} & {sbit_w[61:32], pad_left_w[1:0]}) | ({32{(distance[1] & direction_w)}} & {pad_right_w1[1:0], sbit_w[63:34]})) | ({32{(~ distance[1])}} & sbit_w[63:32])), ((({32{(distance[0] & (~ direction_w))}} & {sbit_w[30:0], pad_left_w[0]}) | ({32{(distance[0] & direction_w)}} & {pad_right_w0[0], sbit_w[31:1]})) | ({32{(~ distance[0])}} & sbit_w[31:0])), data};
endmodule //Chowdhury_LPM_32BitShiftArithmetic_Dec7_lpm_clshift
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module Chowdhury_LPM_32BitShiftArithmetic_Dec7 (
	data,
	direction,
	distance,
	overflow,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	[31:0]  data;
	input	  direction;
	input	[4:0]  distance;
	output	  overflow;
	output	[31:0]  result;

	wire  sub_wire0;
	wire [31:0] sub_wire1;
	wire  overflow = sub_wire0;
	wire [31:0] result = sub_wire1[31:0];

	Chowdhury_LPM_32BitShiftArithmetic_Dec7_lpm_clshift	Chowdhury_LPM_32BitShiftArithmetic_Dec7_lpm_clshift_component (
				.data (data),
				.direction (direction),
				.distance (distance),
				.overflow (sub_wire0),
				.result (sub_wire1));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: LPM_SHIFTTYPE NUMERIC "1"
// Retrieval info: PRIVATE: LPM_WIDTH NUMERIC "32"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: lpm_widthdist NUMERIC "5"
// Retrieval info: PRIVATE: lpm_widthdist_style NUMERIC "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: PRIVATE: port_direction NUMERIC "2"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SHIFTTYPE STRING "ARITHMETIC"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CLSHIFT"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
// Retrieval info: CONSTANT: LPM_WIDTHDIST NUMERIC "5"
// Retrieval info: USED_PORT: data 0 0 32 0 INPUT NODEFVAL "data[31..0]"
// Retrieval info: USED_PORT: direction 0 0 0 0 INPUT NODEFVAL "direction"
// Retrieval info: USED_PORT: distance 0 0 5 0 INPUT NODEFVAL "distance[4..0]"
// Retrieval info: USED_PORT: overflow 0 0 0 0 OUTPUT NODEFVAL "overflow"
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
// Retrieval info: CONNECT: @data 0 0 32 0 data 0 0 32 0
// Retrieval info: CONNECT: @direction 0 0 0 0 direction 0 0 0 0
// Retrieval info: CONNECT: @distance 0 0 5 0 distance 0 0 5 0
// Retrieval info: CONNECT: overflow 0 0 0 0 @overflow 0 0 0 0
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitShiftArithmetic_Dec7.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitShiftArithmetic_Dec7.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitShiftArithmetic_Dec7.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitShiftArithmetic_Dec7.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitShiftArithmetic_Dec7_inst.vhd FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitShiftArithmetic_Dec7_syn.v TRUE

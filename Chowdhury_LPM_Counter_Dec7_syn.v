// megafunction wizard: %LPM_ADD_SUB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_ADD_SUB 

// ============================================================
// File Name: Chowdhury_LPM_Counter_Dec7.v
// Megafunction Name(s):
// 			LPM_ADD_SUB
//
// Simulation Library Files(s):
// 			lpm
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


//lpm_add_sub DEVICE_FAMILY="Cyclone V" LPM_DIRECTION="ADD" LPM_PIPELINE=1 LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=2 ONE_INPUT_IS_CONSTANT="YES" clock dataa datab overflow result
//VERSION_BEGIN 16.0 cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lut 2 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  Chowdhury_LPM_Counter_Dec7_add_sub
	( 
	clock,
	dataa,
	datab,
	overflow,
	result) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   [1:0]  dataa;
	input   [1:0]  datab;
	output   overflow;
	output   [1:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   clock;
	tri0   [1:0]  dataa;
	tri0   [1:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	[1:0]	wire_pipeline_dffe_Q;
	wire	[1:0]	wire_pipeline_dffe_D;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	[0:0]	wire_overflow_dffe_Q;
	wire	[0:0]	wire_overflow_dffe_D;
	wire	[2:0]	wire_result_int;

	assign
		wire_result_int = dataa + datab;
	//synopsys translate_off
	initial
		wire_pipeline_dffe_Q = 0;
	//synopsys translate_on
	always @(posedge clock)
		wire_pipeline_dffe_Q <= wire_pipeline_dffe_D;
	//synopsys translate_off
	initial
		wire_overflow_dffe_Q = 0;
	//synopsys translate_on
	always @(posedge clock)
		wire_overflow_dffe_Q <= wire_overflow_dffe_D;
	assign
		result = wire_pipeline_dffe_Q[1:0],
		wire_pipeline_dffe_D[1:0] = wire_result_int[1:0];
	assign
		overflow = wire_overflow_dffe_Q[0:0],
		wire_overflow_dffe_D[0:0] = wire_result_int[2:2];
endmodule //Chowdhury_LPM_Counter_Dec7_add_sub
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module Chowdhury_LPM_Counter_Dec7 (
	clock,
	dataa,
	overflow,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  clock;
	input	[1:0]  dataa;
	output	  overflow;
	output	[1:0]  result;

	wire [1:0] sub_wire0 = 2'h1;
	wire  sub_wire1;
	wire [1:0] sub_wire2;
	wire  overflow = sub_wire1;
	wire [1:0] result = sub_wire2[1:0];

	Chowdhury_LPM_Counter_Dec7_add_sub	Chowdhury_LPM_Counter_Dec7_add_sub_component (
				.clock (clock),
				.dataa (dataa),
				.datab (sub_wire0),
				.overflow (sub_wire1),
				.result (sub_wire2));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "0"
// Retrieval info: PRIVATE: ConstantA NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "1"
// Retrieval info: PRIVATE: Function NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "1"
// Retrieval info: PRIVATE: Latency NUMERIC "1"
// Retrieval info: PRIVATE: Overflow NUMERIC "1"
// Retrieval info: PRIVATE: RadixA NUMERIC "10"
// Retrieval info: PRIVATE: RadixB NUMERIC "10"
// Retrieval info: PRIVATE: Representation NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
// Retrieval info: PRIVATE: ValidCtB NUMERIC "1"
// Retrieval info: PRIVATE: WhichConstant NUMERIC "2"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: nBit NUMERIC "2"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "ADD"
// Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=YES,CIN_USED=NO"
// Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "1"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "2"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: dataa 0 0 2 0 INPUT NODEFVAL "dataa[1..0]"
// Retrieval info: USED_PORT: overflow 0 0 0 0 OUTPUT NODEFVAL "overflow"
// Retrieval info: USED_PORT: result 0 0 2 0 OUTPUT NODEFVAL "result[1..0]"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @dataa 0 0 2 0 dataa 0 0 2 0
// Retrieval info: CONNECT: @datab 0 0 2 0 1 0 0 2 0
// Retrieval info: CONNECT: overflow 0 0 0 0 @overflow 0 0 0 0
// Retrieval info: CONNECT: result 0 0 2 0 @result 0 0 2 0
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7_inst.vhd FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_Counter_Dec7_syn.v TRUE
// Retrieval info: LIB_FILE: lpm
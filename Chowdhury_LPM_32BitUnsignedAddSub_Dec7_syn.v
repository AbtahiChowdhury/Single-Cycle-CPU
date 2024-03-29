// megafunction wizard: %LPM_ADD_SUB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_ADD_SUB 

// ============================================================
// File Name: Chowdhury_LPM_32BitUnsignedAddSub_Dec7.v
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


//lpm_add_sub DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=32 ONE_INPUT_IS_CONSTANT="NO" add_sub dataa datab overflow result
//VERSION_BEGIN 16.0 cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lut 32 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  Chowdhury_LPM_32BitUnsignedAddSub_Dec7_add_sub
	( 
	add_sub,
	dataa,
	datab,
	overflow,
	result) /* synthesis synthesis_clearbox=1 */;
	input   add_sub;
	input   [31:0]  dataa;
	input   [31:0]  datab;
	output   overflow;
	output   [31:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   add_sub;
	tri0   [31:0]  dataa;
	tri0   [31:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]   wire_add_sub_cella_0cout;
	wire  [0:0]   wire_add_sub_cella_1cout;
	wire  [0:0]   wire_add_sub_cella_2cout;
	wire  [0:0]   wire_add_sub_cella_3cout;
	wire  [0:0]   wire_add_sub_cella_4cout;
	wire  [0:0]   wire_add_sub_cella_5cout;
	wire  [0:0]   wire_add_sub_cella_6cout;
	wire  [0:0]   wire_add_sub_cella_7cout;
	wire  [0:0]   wire_add_sub_cella_8cout;
	wire  [0:0]   wire_add_sub_cella_9cout;
	wire  [0:0]   wire_add_sub_cella_10cout;
	wire  [0:0]   wire_add_sub_cella_11cout;
	wire  [0:0]   wire_add_sub_cella_12cout;
	wire  [0:0]   wire_add_sub_cella_13cout;
	wire  [0:0]   wire_add_sub_cella_14cout;
	wire  [0:0]   wire_add_sub_cella_15cout;
	wire  [0:0]   wire_add_sub_cella_16cout;
	wire  [0:0]   wire_add_sub_cella_17cout;
	wire  [0:0]   wire_add_sub_cella_18cout;
	wire  [0:0]   wire_add_sub_cella_19cout;
	wire  [0:0]   wire_add_sub_cella_20cout;
	wire  [0:0]   wire_add_sub_cella_21cout;
	wire  [0:0]   wire_add_sub_cella_22cout;
	wire  [0:0]   wire_add_sub_cella_23cout;
	wire  [0:0]   wire_add_sub_cella_24cout;
	wire  [0:0]   wire_add_sub_cella_25cout;
	wire  [0:0]   wire_add_sub_cella_26cout;
	wire  [0:0]   wire_add_sub_cella_27cout;
	wire  [0:0]   wire_add_sub_cella_28cout;
	wire  [0:0]   wire_add_sub_cella_29cout;
	wire  [0:0]   wire_add_sub_cella_30cout;
	wire  [0:0]   wire_add_sub_cella_31cout;
	wire  [31:0]   wire_add_sub_cella_datad;
	wire  [31:0]   wire_add_sub_cella_dataf;
	wire  [0:0]   wire_add_sub_cella_0sumout;
	wire  [0:0]   wire_add_sub_cella_1sumout;
	wire  [0:0]   wire_add_sub_cella_2sumout;
	wire  [0:0]   wire_add_sub_cella_3sumout;
	wire  [0:0]   wire_add_sub_cella_4sumout;
	wire  [0:0]   wire_add_sub_cella_5sumout;
	wire  [0:0]   wire_add_sub_cella_6sumout;
	wire  [0:0]   wire_add_sub_cella_7sumout;
	wire  [0:0]   wire_add_sub_cella_8sumout;
	wire  [0:0]   wire_add_sub_cella_9sumout;
	wire  [0:0]   wire_add_sub_cella_10sumout;
	wire  [0:0]   wire_add_sub_cella_11sumout;
	wire  [0:0]   wire_add_sub_cella_12sumout;
	wire  [0:0]   wire_add_sub_cella_13sumout;
	wire  [0:0]   wire_add_sub_cella_14sumout;
	wire  [0:0]   wire_add_sub_cella_15sumout;
	wire  [0:0]   wire_add_sub_cella_16sumout;
	wire  [0:0]   wire_add_sub_cella_17sumout;
	wire  [0:0]   wire_add_sub_cella_18sumout;
	wire  [0:0]   wire_add_sub_cella_19sumout;
	wire  [0:0]   wire_add_sub_cella_20sumout;
	wire  [0:0]   wire_add_sub_cella_21sumout;
	wire  [0:0]   wire_add_sub_cella_22sumout;
	wire  [0:0]   wire_add_sub_cella_23sumout;
	wire  [0:0]   wire_add_sub_cella_24sumout;
	wire  [0:0]   wire_add_sub_cella_25sumout;
	wire  [0:0]   wire_add_sub_cella_26sumout;
	wire  [0:0]   wire_add_sub_cella_27sumout;
	wire  [0:0]   wire_add_sub_cella_28sumout;
	wire  [0:0]   wire_add_sub_cella_29sumout;
	wire  [0:0]   wire_add_sub_cella_30sumout;
	wire  [0:0]   wire_add_sub_cella_31sumout;
	wire  [0:0]  lsb_cin_wire;
	wire  [0:0]  overflow_wire;

	cyclonev_lcell_comb   add_sub_cella_0
	( 
	.cin(lsb_cin_wire),
	.combout(),
	.cout(wire_add_sub_cella_0cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[0:0]),
	.dataf(wire_add_sub_cella_dataf[0:0]),
	.shareout(),
	.sumout(wire_add_sub_cella_0sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_0.extended_lut = "off",
		add_sub_cella_0.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_0.shared_arith = "off",
		add_sub_cella_0.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_1
	( 
	.cin(wire_add_sub_cella_0cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_1cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[1:1]),
	.dataf(wire_add_sub_cella_dataf[1:1]),
	.shareout(),
	.sumout(wire_add_sub_cella_1sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_1.extended_lut = "off",
		add_sub_cella_1.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_1.shared_arith = "off",
		add_sub_cella_1.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_2
	( 
	.cin(wire_add_sub_cella_1cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_2cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[2:2]),
	.dataf(wire_add_sub_cella_dataf[2:2]),
	.shareout(),
	.sumout(wire_add_sub_cella_2sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_2.extended_lut = "off",
		add_sub_cella_2.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_2.shared_arith = "off",
		add_sub_cella_2.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_3
	( 
	.cin(wire_add_sub_cella_2cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_3cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[3:3]),
	.dataf(wire_add_sub_cella_dataf[3:3]),
	.shareout(),
	.sumout(wire_add_sub_cella_3sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_3.extended_lut = "off",
		add_sub_cella_3.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_3.shared_arith = "off",
		add_sub_cella_3.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_4
	( 
	.cin(wire_add_sub_cella_3cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_4cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[4:4]),
	.dataf(wire_add_sub_cella_dataf[4:4]),
	.shareout(),
	.sumout(wire_add_sub_cella_4sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_4.extended_lut = "off",
		add_sub_cella_4.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_4.shared_arith = "off",
		add_sub_cella_4.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_5
	( 
	.cin(wire_add_sub_cella_4cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_5cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[5:5]),
	.dataf(wire_add_sub_cella_dataf[5:5]),
	.shareout(),
	.sumout(wire_add_sub_cella_5sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_5.extended_lut = "off",
		add_sub_cella_5.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_5.shared_arith = "off",
		add_sub_cella_5.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_6
	( 
	.cin(wire_add_sub_cella_5cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_6cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[6:6]),
	.dataf(wire_add_sub_cella_dataf[6:6]),
	.shareout(),
	.sumout(wire_add_sub_cella_6sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_6.extended_lut = "off",
		add_sub_cella_6.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_6.shared_arith = "off",
		add_sub_cella_6.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_7
	( 
	.cin(wire_add_sub_cella_6cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_7cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[7:7]),
	.dataf(wire_add_sub_cella_dataf[7:7]),
	.shareout(),
	.sumout(wire_add_sub_cella_7sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_7.extended_lut = "off",
		add_sub_cella_7.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_7.shared_arith = "off",
		add_sub_cella_7.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_8
	( 
	.cin(wire_add_sub_cella_7cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_8cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[8:8]),
	.dataf(wire_add_sub_cella_dataf[8:8]),
	.shareout(),
	.sumout(wire_add_sub_cella_8sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_8.extended_lut = "off",
		add_sub_cella_8.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_8.shared_arith = "off",
		add_sub_cella_8.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_9
	( 
	.cin(wire_add_sub_cella_8cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_9cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[9:9]),
	.dataf(wire_add_sub_cella_dataf[9:9]),
	.shareout(),
	.sumout(wire_add_sub_cella_9sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_9.extended_lut = "off",
		add_sub_cella_9.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_9.shared_arith = "off",
		add_sub_cella_9.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_10
	( 
	.cin(wire_add_sub_cella_9cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_10cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[10:10]),
	.dataf(wire_add_sub_cella_dataf[10:10]),
	.shareout(),
	.sumout(wire_add_sub_cella_10sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_10.extended_lut = "off",
		add_sub_cella_10.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_10.shared_arith = "off",
		add_sub_cella_10.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_11
	( 
	.cin(wire_add_sub_cella_10cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_11cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[11:11]),
	.dataf(wire_add_sub_cella_dataf[11:11]),
	.shareout(),
	.sumout(wire_add_sub_cella_11sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_11.extended_lut = "off",
		add_sub_cella_11.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_11.shared_arith = "off",
		add_sub_cella_11.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_12
	( 
	.cin(wire_add_sub_cella_11cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_12cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[12:12]),
	.dataf(wire_add_sub_cella_dataf[12:12]),
	.shareout(),
	.sumout(wire_add_sub_cella_12sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_12.extended_lut = "off",
		add_sub_cella_12.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_12.shared_arith = "off",
		add_sub_cella_12.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_13
	( 
	.cin(wire_add_sub_cella_12cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_13cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[13:13]),
	.dataf(wire_add_sub_cella_dataf[13:13]),
	.shareout(),
	.sumout(wire_add_sub_cella_13sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_13.extended_lut = "off",
		add_sub_cella_13.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_13.shared_arith = "off",
		add_sub_cella_13.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_14
	( 
	.cin(wire_add_sub_cella_13cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_14cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[14:14]),
	.dataf(wire_add_sub_cella_dataf[14:14]),
	.shareout(),
	.sumout(wire_add_sub_cella_14sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_14.extended_lut = "off",
		add_sub_cella_14.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_14.shared_arith = "off",
		add_sub_cella_14.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_15
	( 
	.cin(wire_add_sub_cella_14cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_15cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[15:15]),
	.dataf(wire_add_sub_cella_dataf[15:15]),
	.shareout(),
	.sumout(wire_add_sub_cella_15sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_15.extended_lut = "off",
		add_sub_cella_15.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_15.shared_arith = "off",
		add_sub_cella_15.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_16
	( 
	.cin(wire_add_sub_cella_15cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_16cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[16:16]),
	.dataf(wire_add_sub_cella_dataf[16:16]),
	.shareout(),
	.sumout(wire_add_sub_cella_16sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_16.extended_lut = "off",
		add_sub_cella_16.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_16.shared_arith = "off",
		add_sub_cella_16.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_17
	( 
	.cin(wire_add_sub_cella_16cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_17cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[17:17]),
	.dataf(wire_add_sub_cella_dataf[17:17]),
	.shareout(),
	.sumout(wire_add_sub_cella_17sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_17.extended_lut = "off",
		add_sub_cella_17.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_17.shared_arith = "off",
		add_sub_cella_17.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_18
	( 
	.cin(wire_add_sub_cella_17cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_18cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[18:18]),
	.dataf(wire_add_sub_cella_dataf[18:18]),
	.shareout(),
	.sumout(wire_add_sub_cella_18sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_18.extended_lut = "off",
		add_sub_cella_18.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_18.shared_arith = "off",
		add_sub_cella_18.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_19
	( 
	.cin(wire_add_sub_cella_18cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_19cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[19:19]),
	.dataf(wire_add_sub_cella_dataf[19:19]),
	.shareout(),
	.sumout(wire_add_sub_cella_19sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_19.extended_lut = "off",
		add_sub_cella_19.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_19.shared_arith = "off",
		add_sub_cella_19.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_20
	( 
	.cin(wire_add_sub_cella_19cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_20cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[20:20]),
	.dataf(wire_add_sub_cella_dataf[20:20]),
	.shareout(),
	.sumout(wire_add_sub_cella_20sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_20.extended_lut = "off",
		add_sub_cella_20.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_20.shared_arith = "off",
		add_sub_cella_20.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_21
	( 
	.cin(wire_add_sub_cella_20cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_21cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[21:21]),
	.dataf(wire_add_sub_cella_dataf[21:21]),
	.shareout(),
	.sumout(wire_add_sub_cella_21sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_21.extended_lut = "off",
		add_sub_cella_21.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_21.shared_arith = "off",
		add_sub_cella_21.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_22
	( 
	.cin(wire_add_sub_cella_21cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_22cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[22:22]),
	.dataf(wire_add_sub_cella_dataf[22:22]),
	.shareout(),
	.sumout(wire_add_sub_cella_22sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_22.extended_lut = "off",
		add_sub_cella_22.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_22.shared_arith = "off",
		add_sub_cella_22.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_23
	( 
	.cin(wire_add_sub_cella_22cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_23cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[23:23]),
	.dataf(wire_add_sub_cella_dataf[23:23]),
	.shareout(),
	.sumout(wire_add_sub_cella_23sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_23.extended_lut = "off",
		add_sub_cella_23.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_23.shared_arith = "off",
		add_sub_cella_23.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_24
	( 
	.cin(wire_add_sub_cella_23cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_24cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[24:24]),
	.dataf(wire_add_sub_cella_dataf[24:24]),
	.shareout(),
	.sumout(wire_add_sub_cella_24sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_24.extended_lut = "off",
		add_sub_cella_24.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_24.shared_arith = "off",
		add_sub_cella_24.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_25
	( 
	.cin(wire_add_sub_cella_24cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_25cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[25:25]),
	.dataf(wire_add_sub_cella_dataf[25:25]),
	.shareout(),
	.sumout(wire_add_sub_cella_25sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_25.extended_lut = "off",
		add_sub_cella_25.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_25.shared_arith = "off",
		add_sub_cella_25.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_26
	( 
	.cin(wire_add_sub_cella_25cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_26cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[26:26]),
	.dataf(wire_add_sub_cella_dataf[26:26]),
	.shareout(),
	.sumout(wire_add_sub_cella_26sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_26.extended_lut = "off",
		add_sub_cella_26.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_26.shared_arith = "off",
		add_sub_cella_26.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_27
	( 
	.cin(wire_add_sub_cella_26cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_27cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[27:27]),
	.dataf(wire_add_sub_cella_dataf[27:27]),
	.shareout(),
	.sumout(wire_add_sub_cella_27sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_27.extended_lut = "off",
		add_sub_cella_27.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_27.shared_arith = "off",
		add_sub_cella_27.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_28
	( 
	.cin(wire_add_sub_cella_27cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_28cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[28:28]),
	.dataf(wire_add_sub_cella_dataf[28:28]),
	.shareout(),
	.sumout(wire_add_sub_cella_28sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_28.extended_lut = "off",
		add_sub_cella_28.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_28.shared_arith = "off",
		add_sub_cella_28.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_29
	( 
	.cin(wire_add_sub_cella_28cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_29cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[29:29]),
	.dataf(wire_add_sub_cella_dataf[29:29]),
	.shareout(),
	.sumout(wire_add_sub_cella_29sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_29.extended_lut = "off",
		add_sub_cella_29.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_29.shared_arith = "off",
		add_sub_cella_29.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_30
	( 
	.cin(wire_add_sub_cella_29cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_30cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[30:30]),
	.dataf(wire_add_sub_cella_dataf[30:30]),
	.shareout(),
	.sumout(wire_add_sub_cella_30sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_30.extended_lut = "off",
		add_sub_cella_30.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_30.shared_arith = "off",
		add_sub_cella_30.lpm_type = "cyclonev_lcell_comb";
	cyclonev_lcell_comb   add_sub_cella_31
	( 
	.cin(wire_add_sub_cella_30cout[0:0]),
	.combout(),
	.cout(wire_add_sub_cella_31cout[0:0]),
	.datac(add_sub),
	.datad(wire_add_sub_cella_datad[31:31]),
	.dataf(wire_add_sub_cella_dataf[31:31]),
	.shareout(),
	.sumout(wire_add_sub_cella_31sumout[0:0]),
	.dataa(1'b0),
	.datab(1'b0),
	.datae(1'b0),
	.datag(1'b0),
	.sharein(1'b0)
	);
	defparam
		add_sub_cella_31.extended_lut = "off",
		add_sub_cella_31.lut_mask = 64'h00000FF00000FF00,
		add_sub_cella_31.shared_arith = "off",
		add_sub_cella_31.lpm_type = "cyclonev_lcell_comb";
	assign
		wire_add_sub_cella_datad = dataa,
		wire_add_sub_cella_dataf = datab;
	assign
		lsb_cin_wire = (~ add_sub),
		overflow = overflow_wire,
		overflow_wire = ((~ add_sub) ^ wire_add_sub_cella_31cout[0:0]),
		result = {wire_add_sub_cella_31sumout[0:0], wire_add_sub_cella_30sumout[0:0], wire_add_sub_cella_29sumout[0:0], wire_add_sub_cella_28sumout[0:0], wire_add_sub_cella_27sumout[0:0], wire_add_sub_cella_26sumout[0:0], wire_add_sub_cella_25sumout[0:0], wire_add_sub_cella_24sumout[0:0], wire_add_sub_cella_23sumout[0:0], wire_add_sub_cella_22sumout[0:0], wire_add_sub_cella_21sumout[0:0], wire_add_sub_cella_20sumout[0:0], wire_add_sub_cella_19sumout[0:0], wire_add_sub_cella_18sumout[0:0], wire_add_sub_cella_17sumout[0:0], wire_add_sub_cella_16sumout[0:0], wire_add_sub_cella_15sumout[0:0], wire_add_sub_cella_14sumout[0:0], wire_add_sub_cella_13sumout[0:0], wire_add_sub_cella_12sumout[0:0], wire_add_sub_cella_11sumout[0:0], wire_add_sub_cella_10sumout[0:0], wire_add_sub_cella_9sumout[0:0], wire_add_sub_cella_8sumout[0:0], wire_add_sub_cella_7sumout[0:0], wire_add_sub_cella_6sumout[0:0], wire_add_sub_cella_5sumout[0:0], wire_add_sub_cella_4sumout[0:0], wire_add_sub_cella_3sumout[0:0], wire_add_sub_cella_2sumout[0:0], wire_add_sub_cella_1sumout[0:0], wire_add_sub_cella_0sumout[0:0]};
endmodule //Chowdhury_LPM_32BitUnsignedAddSub_Dec7_add_sub
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module Chowdhury_LPM_32BitUnsignedAddSub_Dec7 (
	add_sub,
	dataa,
	datab,
	overflow,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  add_sub;
	input	[31:0]  dataa;
	input	[31:0]  datab;
	output	  overflow;
	output	[31:0]  result;

	wire  sub_wire0;
	wire [31:0] sub_wire1;
	wire  overflow = sub_wire0;
	wire [31:0] result = sub_wire1[31:0];

	Chowdhury_LPM_32BitUnsignedAddSub_Dec7_add_sub	Chowdhury_LPM_32BitUnsignedAddSub_Dec7_add_sub_component (
				.add_sub (add_sub),
				.dataa (dataa),
				.datab (datab),
				.overflow (sub_wire0),
				.result (sub_wire1));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "0"
// Retrieval info: PRIVATE: ConstantA NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: Function NUMERIC "2"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: Overflow NUMERIC "1"
// Retrieval info: PRIVATE: RadixA NUMERIC "10"
// Retrieval info: PRIVATE: RadixB NUMERIC "10"
// Retrieval info: PRIVATE: Representation NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
// Retrieval info: PRIVATE: ValidCtB NUMERIC "0"
// Retrieval info: PRIVATE: WhichConstant NUMERIC "0"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: nBit NUMERIC "32"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
// Retrieval info: USED_PORT: add_sub 0 0 0 0 INPUT NODEFVAL "add_sub"
// Retrieval info: USED_PORT: dataa 0 0 32 0 INPUT NODEFVAL "dataa[31..0]"
// Retrieval info: USED_PORT: datab 0 0 32 0 INPUT NODEFVAL "datab[31..0]"
// Retrieval info: USED_PORT: overflow 0 0 0 0 OUTPUT NODEFVAL "overflow"
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
// Retrieval info: CONNECT: @add_sub 0 0 0 0 add_sub 0 0 0 0
// Retrieval info: CONNECT: @dataa 0 0 32 0 dataa 0 0 32 0
// Retrieval info: CONNECT: @datab 0 0 32 0 datab 0 0 32 0
// Retrieval info: CONNECT: overflow 0 0 0 0 @overflow 0 0 0 0
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitUnsignedAddSub_Dec7.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitUnsignedAddSub_Dec7.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitUnsignedAddSub_Dec7.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitUnsignedAddSub_Dec7.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitUnsignedAddSub_Dec7_inst.vhd FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Chowdhury_LPM_32BitUnsignedAddSub_Dec7_syn.v TRUE
// Retrieval info: LIB_FILE: lpm

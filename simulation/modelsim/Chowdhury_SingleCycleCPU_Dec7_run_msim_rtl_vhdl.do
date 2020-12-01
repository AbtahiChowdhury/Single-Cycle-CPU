transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_SingleCycleCPU_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_CPUController_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_3PortRegisterFile_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_InstructionMemory_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_DataMemory_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_NALU_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_ALU_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_Extender_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_UnsignedAddSub_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_SignedAddSub_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_UnsignedMultiplier_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_UnsignedDivider_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_1BitFullSubtractor_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_1BitDiv_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_And_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_Or_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_Nor_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_UnsignedSetLessThan_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_SignedSetLessThan_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_ShiftLeftLogical_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_ShiftRightLogical_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_ShiftRightArithmetic_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_Compare_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_32BitRegister_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_32BitInstructionRegister_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_5Bit2x1Mux_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32Bit2x1Mux_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_DataMemory_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_InstructionMemory_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_5x32Decoder_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32Bit32x1Mux_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32BitSignedAddSub_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32BitUnsignedAddSub_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32BitSignedComparator_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32BitUnsignedComparator_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32BitShiftLogical_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32BitShiftArithmetic_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32BitAdder_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_Counter_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_32Bit64x1Mux_Dec7.vhd}
vcom -93 -work work {D:/altera_lite/org/Chowdhury_CPU/Chowdhury_LPM_1Bit64x1Mux_Dec7.vhd}


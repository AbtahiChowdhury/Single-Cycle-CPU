LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_SingleCycleCPU_Dec7 IS
	COMPONENT Chowdhury_SingleCycleCPU_Dec7 IS
		PORT(CLK : IN STD_LOGIC);
	END COMPONENT Chowdhury_SingleCycleCPU_Dec7;
END PACKAGE Chowdhury_Package_SingleCycleCPU_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_SingleCycleCPU_Dec7 IS
	PORT(CLK : IN STD_LOGIC);
END Chowdhury_SingleCycleCPU_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_SingleCycleCPU_Dec7 IS
	
	COMPONENT Chowdhury_ALU_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  ALUCTR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			  A,B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  EQUAL_FLAG : OUT STD_LOGIC;
			  NEGATIVE_FLAG : OUT STD_LOGIC;
			  OVERFLOW_FLAG : OUT STD_LOGIC;
			  ZERO_FLAG : OUT STD_LOGIC;
			  Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_NALU_Dec7 IS
		PORT(PC_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  IMM16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  OPCODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			  PCSRC : IN STD_LOGIC;
			  EQ_FLAG : IN STD_LOGIC;
			  PC_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_3PortRegisterFile_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  REGWR : IN STD_LOGIC;
			  RW,RA,RB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			  DATAW : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  DATAA,DATAB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_32BitRegister_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  EN : IN STD_LOGIC;
			  D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_32BitInstructionRegister_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  EN : IN STD_LOGIC;
			  D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_DataMemory_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  MEMWR : IN STD_LOGIC;
			  ADR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  DATAIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  DATAOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_InstructionMemory_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  ADR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  DATAOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_LPM_32Bit2x1Mux_Dec7 IS
		PORT(data0x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data1x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  sel : IN STD_LOGIC ;
			  result : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_LPM_5Bit2x1Mux_Dec7 IS
		PORT(data0x : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			  data1x : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			  sel : IN STD_LOGIC ;
			  result : OUT STD_LOGIC_VECTOR (4 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_Extender_Dec7 IS
		PORT(EXTOP : IN STD_LOGIC;
			  WORD16 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			  WORD32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_LPM_Counter_Dec7 IS
	PORT(clock : IN STD_LOGIC ;
		  dataa : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		  overflow : OUT STD_LOGIC ;
		  result : OUT STD_LOGIC_VECTOR (1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_CPUController_Dec7 IS
		PORT(IR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  ALUCTR : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
			  PCSRC : OUT STD_LOGIC;
			  REGDST : OUT STD_LOGIC;
			  REGWR : OUT STD_LOGIC;
			  MEMTOREG : OUT STD_LOGIC;
			  MEMWR : OUT STD_LOGIC;
			  ALUSRC : OUT STD_LOGIC;
			  EXTOP : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL InstructionRegister : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"FFFFFFFF";
	SIGNAL ProgramCounter : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	
	SIGNAL NALU_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL ALU_OF_OUT,ALU_NF_OUT,ALU_ZF_OUT,ALU_EQ_OUT : STD_LOGIC := '0';
	SIGNAL ALU_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL REGFILEA_OUT,REGFILEB_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL ALUSRC_MUX_OUT,MEMTOREG_MUX_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL REGDST_MUX_OUT : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
	SIGNAL EXTENDER_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL DATAMEM_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL INSTRUCTIONMEM_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"FFFFFFFF";
	
	SIGNAL ALUCTR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
	SIGNAL PCSRC : STD_LOGIC := '0';
	SIGNAL REGDST : STD_LOGIC := '0';
	SIGNAL REGWR : STD_LOGIC := '0';
	SIGNAL MEMTOREG : STD_LOGIC := '0';
	SIGNAL MEMWR : STD_LOGIC := '0';
	SIGNAL ALUSRC : STD_LOGIC := '0';
	SIGNAL EXTOP : STD_LOGIC := '0';
	
	SIGNAL COUNT : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	SIGNAL COUNT_OV : STD_LOGIC := '0';
	
BEGIN
	
	IR: Chowdhury_32BitInstructionRegister_Dec7 PORT MAP(
		CLK=>CLK,
		EN=>'1',
		D=>INSTRUCTIONMEM_OUT,
		Q=>InstructionRegister
	);
	
	PC: Chowdhury_32BitRegister_Dec7 PORT MAP(
		CLK=>CLK,
		EN=>COUNT_OV,
		D=>NALU_OUT,
		Q=>ProgramCounter
	);
	
	Counter: Chowdhury_LPM_Counter_Dec7 PORT MAP(
		clock=>CLK,
		dataa=>COUNT,
		overflow=>COUNT_OV,
		result=>COUNT
	);
	
	NALU: Chowdhury_NALU_Dec7 PORT MAP(
		PC_I=>PROgramCounter,
		IMM16=>EXTENDER_OUT,
		OPCODE=>INStructionRegister(31 DOWNTO 26),
		PCSRC=>PCSRC,
		EQ_FLAG=>ALU_EQ_OUT,
		PC_O=>NALU_OUT
	);
	
	Controller: Chowdhury_CPUController_Dec7 PORT MAP(
		IR=>InstructionRegister,
		ALUCTR=>ALUCTR,
		PCSRC=>PCSRC,
		REGDST=>REGDST,
		REGWR=>REGWR,
		MEMTOREG=>MEMTOREG,
		MEMWR=>MEMWR,
		ALUSRC=>ALUSRC,
		EXTOP=>EXTOP
	);
	
	InstructionMemory: Chowdhury_InstructionMemory_Dec7 PORT MAP(
		CLK=>CLK,
		ADR=>ProgramCounter,
		DATAOUT=>INSTRUCTIONMEM_OUT
	);

	RegDstMux: Chowdhury_LPM_5Bit2x1Mux_Dec7 PORT MAP(
		data0x=>InstructionRegister(20 DOWNTO 16),
		data1x=>InstructionRegister(15 DOWNTO 11),
		sel=>REGDST,
		result=>REGDST_MUX_OUT
	);
	
	RegisterFile: Chowdhury_3PortRegisterFile_Dec7 PORT MAP(
		CLK=>CLK,
		REGWR=>REGWR,
		RW=>REGDST_MUX_OUT,
		RA=>InstructionRegister(25 DOWNTO 21),
		RB=>InstructionRegister(20 DOWNTO 16),
		DATAW=>MEMTOREG_MUX_OUT,
		DATAA=>REGFILEA_OUT,
		DATAB=>REGFILEB_OUT
	);
	
	Extender: Chowdhury_Extender_Dec7 PORT MAP(
		EXTOP=>EXTOP,
		WORD16=>InstructionRegister(15 DOWNTO 0),
		WORD32=>EXTENDER_OUT
	);
	
	ALUSrcMux: Chowdhury_LPM_32Bit2x1Mux_Dec7 PORT MAP(
		data0x=>REGFILEB_OUT,
		data1x=>EXTENDER_OUT,
		sel=>ALUSRC,
		result=>ALUSRC_MUX_OUT
	);
	
	ALU: Chowdhury_ALU_Dec7 PORT MAP(
		CLK=>CLK,
		ALUCTR=>ALUCTR,
		A=>REGFILEA_OUT,
		B=>ALUSRC_MUX_OUT,
		EQUAL_FLAG=>ALU_EQ_OUT,
		NEGATIVE_FLAG=>ALU_NF_OUT,
		OVERFLOW_FLAG=>ALU_OF_OUT,
		ZERO_FLAG=>ALU_ZF_OUT,
		Z=>ALU_OUT
	);
	
	DataMemory: Chowdhury_DataMemory_Dec7 PORT MAP(
		CLK=>CLK,
		MEMWR=>MEMWR,
		ADR=>ALU_OUT,
		DATAIN=>REGFILEB_OUT,
		DATAOUT=>DATAMEM_OUT
	);
	
	MemToRegMux: Chowdhury_LPM_32Bit2x1Mux_Dec7 PORT MAP(
		data0x=>ALU_OUT,
		data1x=>DATAMEM_OUT,
		sel=>MEMTOREG,
		result=>MEMTOREG_MUX_OUT
	);
	
END Chowdhury_Behaviour;
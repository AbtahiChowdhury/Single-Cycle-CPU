LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_ALU_Dec7 IS
	COMPONENT Chowdhury_ALU_Dec7 IS
		PORT(CLK : IN STD_LOGIC;
			  ALUCTR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			  A,B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  EQUAL_FLAG : OUT STD_LOGIC;
			  NEGATIVE_FLAG : OUT STD_LOGIC;
			  OVERFLOW_FLAG : OUT STD_LOGIC;
			  ZERO_FLAG : OUT STD_LOGIC;
			  Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_ALU_Dec7;
END PACKAGE Chowdhury_Package_ALU_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Chowdhury_ALU_Dec7 IS
	PORT(CLK : IN STD_LOGIC;
		  ALUCTR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		  A,B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  EQUAL_FLAG : OUT STD_LOGIC;
		  NEGATIVE_FLAG : OUT STD_LOGIC;
		  OVERFLOW_FLAG : OUT STD_LOGIC;
		  ZERO_FLAG : OUT STD_LOGIC;
		  Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_ALU_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_ALU_Dec7 IS
	
	COMPONENT Chowdhury_SignedAddSub_Dec7 IS
		PORT(ADDSUB : IN STD_LOGIC;
			  RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  OVERFLOW : OUT STD_LOGIC;
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_UnsignedAddSub_Dec7 IS
		PORT(ADDSUB : IN STD_LOGIC;
			  RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  OVERFLOW : OUT STD_LOGIC;
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_And_Dec7 IS
		PORT(RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_Or_Dec7 IS
		PORT(RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_Nor_Dec7 IS
		PORT(RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_UnsignedSetLessThan_Dec7 IS
		PORT(RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_SignedSetLessThan_Dec7 IS
		PORT(RS,RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_ShiftLeftLogical_Dec7 IS
		PORT(RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  SHAMT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			  OVERFLOW : OUT STD_LOGIC;
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_ShiftRightLogical_Dec7 IS
		PORT(RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  SHAMT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			  OVERFLOW : OUT STD_LOGIC;
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_ShiftRightArithmetic_Dec7 IS
		PORT(RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  SHAMT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			  OVERFLOW : OUT STD_LOGIC;
			  RD : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_UnsignedMultiplier_Dec7 IS
		PORT(A,B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  PH,PL : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_UnsignedDivider_Dec7 IS
		PORT(DIVIDEND,DIVISOR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  QUOTIENT,REMAINDER : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_Compare_Dec7 IS
		PORT(RS : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  EQUAL : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT Chowdhury_LPM_32Bit64x1Mux_Dec7 IS
		PORT(data0x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data1x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data2x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data3x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data4x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data5x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data6x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data7x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data8x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data9x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data10x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data11x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data12x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data13x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data14x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data15x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data16x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data17x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data18x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data19x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data20x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data21x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data22x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data23x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data24x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data25x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data26x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data27x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data28x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data29x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data30x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data31x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data32x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data33x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data34x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data35x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data36x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data37x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data38x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data39x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data40x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data41x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data42x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data43x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data44x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data45x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data46x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data47x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data48x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data49x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data50x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data51x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data52x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data53x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data54x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data55x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data56x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data57x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data58x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data59x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data60x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data61x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data62x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data63x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  sel : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			  result : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_LPM_1Bit64x1Mux_Dec7 IS
		PORT(data0 : IN STD_LOGIC;
			  data1 : IN STD_LOGIC;
			  data2 : IN STD_LOGIC;
			  data3 : IN STD_LOGIC;
			  data4 : IN STD_LOGIC;
			  data5 : IN STD_LOGIC;
			  data6 : IN STD_LOGIC;
			  data7 : IN STD_LOGIC;
			  data8 : IN STD_LOGIC;
			  data9 : IN STD_LOGIC;
			  data10 : IN STD_LOGIC;
			  data11 : IN STD_LOGIC;
			  data12 : IN STD_LOGIC;
			  data13 : IN STD_LOGIC;
			  data14 : IN STD_LOGIC;
			  data15 : IN STD_LOGIC;
			  data16 : IN STD_LOGIC;
			  data17 : IN STD_LOGIC;
			  data18 : IN STD_LOGIC;
			  data19 : IN STD_LOGIC;
			  data20 : IN STD_LOGIC;
			  data21 : IN STD_LOGIC;
			  data22 : IN STD_LOGIC;
			  data23 : IN STD_LOGIC;
			  data24 : IN STD_LOGIC;
			  data25 : IN STD_LOGIC;
			  data26 : IN STD_LOGIC;
			  data27 : IN STD_LOGIC;
			  data28 : IN STD_LOGIC;
			  data29 : IN STD_LOGIC;
			  data30 : IN STD_LOGIC;
			  data31 : IN STD_LOGIC;
			  data32 : IN STD_LOGIC;
			  data33 : IN STD_LOGIC;
			  data34 : IN STD_LOGIC;
			  data35 : IN STD_LOGIC;
			  data36 : IN STD_LOGIC;
			  data37 : IN STD_LOGIC;
			  data38 : IN STD_LOGIC;
			  data39 : IN STD_LOGIC;
			  data40 : IN STD_LOGIC;
			  data41 : IN STD_LOGIC;
			  data42 : IN STD_LOGIC;
			  data43 : IN STD_LOGIC;
			  data44 : IN STD_LOGIC;
			  data45 : IN STD_LOGIC;
			  data46 : IN STD_LOGIC;
			  data47 : IN STD_LOGIC;
			  data48 : IN STD_LOGIC;
			  data49 : IN STD_LOGIC;
			  data50 : IN STD_LOGIC;
			  data51 : IN STD_LOGIC;
			  data52 : IN STD_LOGIC;
			  data53 : IN STD_LOGIC;
			  data54 : IN STD_LOGIC;
			  data55 : IN STD_LOGIC;
			  data56 : IN STD_LOGIC;
			  data57 : IN STD_LOGIC;
			  data58 : IN STD_LOGIC;
			  data59 : IN STD_LOGIC;
			  data60 : IN STD_LOGIC;
			  data61 : IN STD_LOGIC;
			  data62 : IN STD_LOGIC;
			  data63 : IN STD_LOGIC;
			  sel : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			  result : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL AS : STD_LOGIC := '0';
	
	SIGNAL ADD_O,ADDU_O,SUB_O,SUBU_O : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL MULTHI_O,MULTLO_O : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL DIVR_O,DIVQ_O : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL AND_O,OR_O,NOR_O : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL SLT_O,SLTU_O : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL SLL_O,SRL_O,SRA_O : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	SIGNAL MUX_O : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	
	SIGNAL ADD_OV,ADDU_OV,SUB_OV,SUBU_OV : STD_LOGIC := '0';
	SIGNAL SLL_OV,SRL_OV,SRA_OV : STD_LOGIC := '0';
	
	SIGNAL ALU_O : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	
BEGIN
	
	ADD_OP: Chowdhury_SignedAddSub_Dec7 PORT MAP(ADDSUB=>'1', RS=>A, RT=>B, OVERFLOW=>ADD_OV, RD=>ADD_O);
	ADDU_OP: Chowdhury_UnsignedAddSub_Dec7 PORT MAP(ADDSUB=>'1', RS=>A, RT=>B, OVERFLOW=>ADDU_OV, RD=>ADDU_O);
	SUB_OP: Chowdhury_SignedAddSub_Dec7 PORT MAP(ADDSUB=>'0', RS=>A, RT=>B, OVERFLOW=>SUB_OV, RD=>SUB_O);
	SUBU_OP: Chowdhury_UnsignedAddSub_Dec7 PORT MAP(ADDSUB=>'0', RS=>A, RT=>B, OVERFLOW=>SUBU_OV, RD=>SUBU_O);
	MULTU_OP: Chowdhury_UnsignedMultiplier_Dec7 PORT MAP(A=>A, B=>B, PH=>MULTHI_O, PL=>MULTLO_O);
	DIVU_OP: Chowdhury_UnsignedDivider_Dec7 PORT MAP(DIVIDEND=>A, DIVISOR=>B, QUOTIENT=>DIVQ_O, REMAINDER=>DIVR_O);
	AND_OP: Chowdhury_And_Dec7 PORT MAP(RS=>A, RT=>B, RD=>AND_O);
	OR_OP: Chowdhury_Or_Dec7 PORT MAP(RS=>A, RT=>B, RD=>OR_O);
	NOR_OP: Chowdhury_Nor_Dec7 PORT MAP(RS=>A, RT=>B, RD=>NOR_O);
	SLT_OP: Chowdhury_SignedSetLessThan_Dec7 PORT MAP(RS=>A, RT=>B, RD=>SLT_O);
	SLTU_OP: Chowdhury_UnsignedSetLessThan_Dec7 PORT MAP(RS=>A, RT=>B, RD=>SLTU_O);
	SLL_OP: Chowdhury_ShiftLeftLogical_Dec7 PORT MAP(RT=>A, SHAMT=>B(4 DOWNTO 0), OVERFLOW=>SLL_OV, RD=>SLL_O);
	SRL_OP: Chowdhury_ShiftRightLogical_Dec7 PORT MAP(RT=>A, SHAMT=>B(4 DOWNTO 0), OVERFLOW=>SRL_OV, RD=>SRL_O);
	SRA_OP: Chowdhury_ShiftRightArithmetic_Dec7 PORT MAP(RT=>A, SHAMT=>B(4 DOWNTO 0), OVERFLOW=>SRA_OV, RD=>SRA_O);
	EQ_OP: Chowdhury_Compare_Dec7 PORT MAP(RS=>A, RT=>B, EQUAL=>EQUAL_FLAG);
	
	ALUOutputMUX: Chowdhury_LPM_32Bit64x1Mux_Dec7 PORT MAP(
		data0x=>SLL_O,
		data1x=>X"00000000",
		data2x=>SRL_O,
		data3x=>SRA_O,
		data4x=>X"00000000",
		data5x=>X"00000000",
		data6x=>X"00000000",
		data7x=>X"00000000",
		data8x=>X"00000000",
		data9x=>X"00000000",
		data10x=>X"00000000",
		data11x=>X"00000000",
		data12x=>X"00000000",
		data13x=>X"00000000",
		data14x=>X"00000000",
		data15x=>X"00000000",
		data16x=>MULTHI_O,
		data17x=>X"00000000",
		data18x=>MULTLO_O,
		data19x=>X"00000000",
		data20x=>X"00000000",
		data21x=>X"00000000",
		data22x=>X"00000000",
		data23x=>X"00000000",
		data24x=>X"00000000",
		data25x=>X"00000000",
		data26x=>DIVR_O,
		data27x=>DIVQ_O,
		data28x=>X"00000000",
		data29x=>X"00000000",
		data30x=>X"00000000",
		data31x=>X"00000000",
		data32x=>ADD_O,
		data33x=>ADDU_O,
		data34x=>SUB_O,
		data35x=>SUBU_O,
		data36x=>AND_O,
		data37x=>OR_O,
		data38x=>NOR_O,
		data39x=>X"00000000",
		data40x=>X"00000000",
		data41x=>X"00000000",
		data42x=>SLT_O,
		data43x=>SLTU_O,
		data44x=>X"00000000",
		data45x=>X"00000000",
		data46x=>X"00000000",
		data47x=>X"00000000",
		data48x=>X"00000000",
		data49x=>X"00000000",
		data50x=>X"00000000",
		data51x=>X"00000000",
		data52x=>X"00000000",
		data53x=>X"00000000",
		data54x=>X"00000000",
		data55x=>X"00000000",
		data56x=>X"00000000",
		data57x=>X"00000000",
		data58x=>X"00000000",
		data59x=>X"00000000",
		data60x=>X"00000000",
		data61x=>X"00000000",
		data62x=>X"00000000",
		data63x=>X"00000000",
		sel=>ALUCTR,
		result=>ALU_O
	);
	
	ALUOverflowOutputMUX: Chowdhury_LPM_1Bit64x1Mux_Dec7 PORT MAP(
		data0=>SLL_OV,
		data1=>'0',
		data2=>SRL_OV,
		data3=>SRA_OV,
		data4=>'0',
		data5=>'0',
		data6=>'0',
		data7=>'0',
		data8=>'0',
		data9=>'0',
		data10=>'0',
		data11=>'0',
		data12=>'0',
		data13=>'0',
		data14=>'0',
		data15=>'0',
		data16=>'0',
		data17=>'0',
		data18=>'0',
		data19=>'0',
		data20=>'0',
		data21=>'0',
		data22=>'0',
		data23=>'0',
		data24=>'0',
		data25=>'0',
		data26=>'0',
		data27=>'0',
		data28=>'0',
		data29=>'0',
		data30=>'0',
		data31=>'0',
		data32=>ADD_OV,
		data33=>ADDU_OV,
		data34=>SUB_OV,
		data35=>SUBU_OV,
		data36=>'0',
		data37=>'0',
		data38=>'0',
		data39=>'0',
		data40=>'0',
		data41=>'0',
		data42=>'0',
		data43=>'0',
		data44=>'0',
		data45=>'0',
		data46=>'0',
		data47=>'0',
		data48=>'0',
		data49=>'0',
		data50=>'0',
		data51=>'0',
		data52=>'0',
		data53=>'0',
		data54=>'0',
		data55=>'0',
		data56=>'0',
		data57=>'0',
		data58=>'0',
		data59=>'0',
		data60=>'0',
		data61=>'0',
		data62=>'0',
		data63=>'0',
		sel=>ALUCTR,
		result=>OVERFLOW_FLAG
	);
	
	NEGATIVE_FLAG <= ALU_O(31);
	ZERO_FLAG <= '1' WHEN ALU_O = x"00000000" ELSE
					 '0';
	
	Z <= ALU_O;
	
END Chowdhury_Behaviour;
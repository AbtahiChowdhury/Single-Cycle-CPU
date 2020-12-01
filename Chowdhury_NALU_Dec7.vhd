LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE Chowdhury_Package_NALU_Dec7 IS
	COMPONENT Chowdhury_NALU_Dec7 IS
		PORT(PC_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  IMM16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			  OPCODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			  PCSRC : IN STD_LOGIC;
			  EQ_FLAG : IN STD_LOGIC;
			  PC_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT Chowdhury_NALU_Dec7;
END PACKAGE Chowdhury_Package_NALU_Dec7;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Chowdhury_NALU_Dec7 IS
	PORT(PC_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  IMM16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  OPCODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		  PCSRC : IN STD_LOGIC;
		  EQ_FLAG : IN STD_LOGIC;
		  PC_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Chowdhury_NALU_Dec7;

ARCHITECTURE Chowdhury_Behaviour OF Chowdhury_NALU_Dec7 IS
	
	COMPONENT Chowdhury_LPM_32Bit2x1Mux_Dec7 IS
		PORT(data0x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  data1x : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  sel : IN STD_LOGIC ;
			  result : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_LPM_32BitSignedAddSub_Dec7 IS
		PORT(add_sub : IN STD_LOGIC ;
			  dataa : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  datab : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  overflow : OUT STD_LOGIC ;
			  result : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Chowdhury_LPM_32BitShiftLogical_Dec7 IS
		PORT(data : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  direction : IN STD_LOGIC ;
			  distance : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			  overflow : OUT STD_LOGIC ;
			  result : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL PCP4,PCP4PI,SIMM : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
	
BEGIN
	
	Adder1: Chowdhury_LPM_32BitSignedAddSub_Dec7 PORT MAP(
		add_sub=>'1',
		dataa=>PC_I,
		datab=>x"00000004",
		result=>PCP4
	);
	
	Adder2: Chowdhury_LPM_32BitSignedAddSub_Dec7 PORT MAP(
		add_sub=>'1',
		dataa=>PCP4,
		datab=>SIMM,
		result=>PCP4PI
	);
	
	Shifter: Chowdhury_LPM_32BitShiftLogical_Dec7 PORT MAP(
		data=>IMM16,
		direction=>'0',
		distance=>"00010",
		result=>SIMM
	);
	
	PROCESS (OPCODE,PCSRC,EQ_FLAG,IMM16,PC_I) BEGIN
		IF ((OPCODE = "000100") AND (PCSRC = '1') AND (EQ_FLAG = '1')) THEN
			PC_O <= PCP4PI;
		ELSIF ((OPCODE = "000100") AND (PCSRC = '1') AND (EQ_FLAG = '0')) THEN
			PC_O <= PCP4;
		ELSIF ((OPCODE = "000101") AND (PCSRC = '1') AND (EQ_FLAG = '1')) THEN
			PC_O <= PCP4;
		ELSIF ((OPCODE = "000101") AND (PCSRC = '1') AND (EQ_FLAG = '0')) THEN
			PC_O <= PCP4PI;
		ELSIF ((OPCODE = "000010") AND (PCSRC = '1')) THEN
			PC_O <= SIMM;
		ELSE
			PC_O <= PCP4;
		END IF;
	END PROCESS;
	
END Chowdhury_Behaviour;